# PDFエンジン詳細仕様(パーサー/フィルタ/暗号化/書き出し)

`com.metamoji.pdf.*`(独自PDFパーサー/コンテンツストリーム解釈)と`com.metamoji.nt.pdfsave.*`(独自PDFライター)を精読した結果。両者ともフルスクラッチのPDF実装で、Android標準の`PdfRenderer`とは別物。

## 1. パーサーアーキテクチャ(`com.metamoji.pdf.core`)

- **xref探索**: ファイル末尾から後方走査で`%%EOF`→`startxref`を探す、PDF仕様§7.5.5準拠の標準的な実装
- **xref形式**: 旧来のASCIIテーブル(`xref`/`trailer`、`/Prev`チェーン)と、PDF1.5以降のクロスリファレンスストリーム(`/Type/ObjStm`の圧縮オブジェクトストリーム含む)の**両方**に対応、ハイブリッド参照(`/XRefStm`)も処理
- **壊れたPDFへのフォールバック**: xrefチェーンが壊れている場合、`N G obj`パターンをファイル全体からブルートフォース走査する修復ロジックあり(市販PDFライブラリ相当の堅牢性)
- **オブジェクトモデル**: `PDFObj$Type`は`NULL/BOOL/INT/DOUBLE/STRING/NAME/ARRAY/DICTIONARY/STREAM/REFERENCE`というPDFのCOSオブジェクトモデルを完全にカバー。間接参照はキャッシュ付きで解決(`PDFXRef.getObj`)
- バージョンオーバーライド(`/Catalog`の`/Version`が古いヘッダのバージョンを上書き)にも対応、PDF1.4+の仕様に忠実

## 2. デコードフィルタ(標準PDFフィルタを完全再現)

| フィルタ | 実装 |
|---|---|
| FlateDecode | `java.util.zip.InflaterInputStream`のラッパー |
| LZWDecode | 自前LZWデコーダ(クリアテーブル処理含む、Algorithm 3.8準拠) |
| RunLengthDecode | 反復/コピー長プレフィックス方式 |
| ASCIIHexDecode / ASCII85Decode | 標準変換(ASCII85は5→4グループ変換) |
| Predictor(TIFF/PNG) | Sub/Up/Average/**Paeth**まで含むPNG予測子15をフル実装 |

JBIG2/CCITTFax/DCTDecode(JPEG)はカバーされておらず、Android標準の`BitmapFactory`等に委ねていると推測される。

## 3. 暗号化サポート(読み込み側は非常に広範囲)

| /V | リビジョン | アルゴリズム | 実装クラス |
|---|---|---|---|
| 1/2 | R2/R3 | RC4 40/128bit、MD5鍵導出(Algorithm 2)、所有者パスワード復元(Algorithm 3) | `RC4`, `HashAlgorithm`(MD5) |
| 4 | R4 | `/CF`/`/StmF`/`/StrF`によるフィルタ単位切替。RC4またはAES-128-CBC(salt`"sAlT"`、Algorithm 1準拠) | `V2Filter`, `AESV2Filter`, `CryptFilter` |
| 5 | R5/R6 | AES-256。R6はSHA-256/384/512の反復強化ラウンド(ISO 32000-2 Algorithm 2.B)まで実装 | `AESV3Filter`, `AES`, `HashAlgorithm` |

**読み込み側はRC4-40からAES-256/R6までPDF暗号化仕様のほぼ全域をカバー**している。一方**書き込み側(`PdfEncrypt`)はRC4-128(R3)のみ**をサポート(`/Filter/Standard /V 2 /Length 128 /R 3`固定)。AES出力は無い。パーミッションビットは`PdfEncrypt$Prohibit`(PRINT/MODIFY/COPY/ANNOTATION/FILL_FORM/COPY_FOR_ACCESIBILITY)としてPDF仕様Table 22のPフラグに対応。

## 4. コンテンツストリーム解釈(`com.metamoji.pdf.content`)

`ContentParser`/`Instruction`がページ内容ストリームの演算子(パス構築/塗り、テキストオブジェクト全般`BT/ET/Tf/Tj/TJ`等、XObject描画`Do`、インライン画像`BI...ID...EI`、マークコンテンツ`BDC/BMC/EMC`)を意味論的に解釈する。

**単なる背景画像へのラスタライズ用ではない**: `OCGs`クラスがPDF仕様§8.11準拠のオプショナルコンテンツグループ(レイヤー)可視性評価器(`Not/And/Or`式、`AnyOn/AnyOff/AllOn/AllOff`ポリシー、`/BaseState`)をフル実装しており、`PdfPdfCopy.copyContents()`はPDFページのコンテンツストリームを再トークン化して新しいPDFへ**ベクタのまま**再出力する(ラスタライズしない)機能を持つ。`handleMarkedContent()`は`/OC`マークコンテンツを見て、非表示レイヤーのコンテンツを選択的に除外する。また`df.sprite.pdf.PDFDocument`は同じパーサーを**埋め込みPDF内のテキスト検索**にも使っている(Android標準APIには無い機能)。

## 5. PDFライター(`com.metamoji.nt.pdfsave`)

- `PdfWriter`が低レベルなオブジェクト出力を担当(`N 0 obj`、辞書`<<>>`、ストリーム`stream...endstream`)。出力ストリームはFlate圧縮(`PdfWriter$FlateStream`)
- `PdfXref`は**旧来のASCIIクロスリファレンステーブル形式のみ**出力(xrefストリームは書かない)ー 互換性重視の設計
- 出力PDFバージョンは`max(元文書のバージョン, 4)` ─ 最低でもPDF1.4
- **`PdfPdfCopy`が既存PDFの実ベクタコンテンツ(リソース/XObjectフォーム/注釈の外観ストリーム含む)をそのまま埋め込む** ─ MetaMoJi独自のフォント埋め込み機構は無く、元PDFのフォント/ベクタはコピーによって保持される

## 6. ノート→PDF出力パイプライン

`NtPDFExportRangeTargetPages`がノートページ配列を1ページずつ`PdfSave`/`PdfPdf`に流し込む(ノートページ1つ→PDFページ1つ)。

**生徒別エクスポート(`NtPDFExportMultiUserTargetPages`)** ─ classroom機能ならではの重要な仕組み:
1. ユーザー(生徒)ごとに`ScSchoolUtils.outputTargetSchoolLayerInfo(userId)`を呼び、「その生徒に見せるべきレイヤーIDの集合」をコンテキストに格納
2. §4のOCG/マークコンテンツによるレイヤー可視性制御と組み合わせ、生徒ごとに個人レイヤー/共通レイヤーの可視性を切り替えてページを描画
3. 最後の生徒処理時のみストリームをフラッシュ(複数生徒分をバッチしてから確定)

これは[05-unit-property-schema.md](05-unit-property-schema.md)で触れた「CustomLayer(個人/共通レイヤー)」システムと直結しており、教室での「個別配布用PDF」機能の実装原理が判明したことになる。

## 7. 実際のキャンバス描画とこのパーサーの関係(補足)

意外なことに、ノート編集中の`UnPDFUnit`(埋め込みPDF表示)は**この自前パーサーを主レンダリングには使っていない**。実際のラスタライズはAndroid標準の`android.graphics.pdf.PdfRenderer`を呼ぶ`df.sprite.pdf.PDFDocument.getDocForRender()`が担当し、自前パーサー/ネイティブの`PDFReader.flattenPdf()`は「復号化・破損PDF修復・OCGレイヤーなど`PdfRenderer`が扱えない要素の事前フラット化」という**前処理**の役割に限定されている。つまり自前実装の主な役割は①暗号化PDF対応、②テキスト検索、③レイヤー認識コピー(生徒別エクスポート)であり、日常的な画面表示はOS標準レンダラに委ねている。

## 8. Tauri版への推奨

- **§1〜3のパーサー/フィルタ/暗号化コアは自作せず既存クレートに置き換える**: `lopdf`(オブジェクトモデル+xref、RC4/AES含む復号化を標準サポート)、`flate2`(Flate)、`weezl`(LZW)、`aes`/`md-5`/`sha2`/`rc4`(暗号プリミティブ、必要なら`lopdf`内蔵のものを利用)
- **MetaMoJi固有のビジネスロジックは移植する価値がある**: OCG/マークコンテンツ認識のページコピー(`PdfPdfCopy`)、生徒別レイヤー選択エクスポート(`outputTargetSchoolLayerInfo`)は既製品に無い独自機能
- **レンダリング**: `pdfium-render`(Google PDFiumバインディング)がAndroidの`PdfRenderer`の直接的な代替になり、ページラスタライズに加えテキスト検索/抽出(`FPDFText_*`)も提供するため、自前パーサーの「テキスト検索」役割も置き換えられる可能性が高い
- **PDF出力**: `printpdf`または`lopdf`ベースの手書き出力で、旧来形式のxrefテーブル+Flate圧縮という元アプリと同等のスタイルを再現可能。AES暗号化出力(元アプリはRC4-128止まり)は簡単に強化できる

## 参照ファイル
`apk/smali_classes3/com/metamoji/pdf/PDFDocument.smali`, `apk/smali_classes3/com/metamoji/pdf/core/{PDFXRef,PDFObj,PDFDictionary,PDFArray,PDFStream,FiltersKt,FlateReader,LZWReader,RLEReader,ASCIIHexReader,ASCII85Reader,PredictorReader,RC4,AES,AESV2Filter,AESV3Filter,CryptFilter,V2Filter,HashAlgorithm}.smali`, `apk/smali_classes3/com/metamoji/pdf/content/{ContentParser,Instruction,OCGs}.smali`, `apk/smali_classes3/com/metamoji/nt/pdfsave/{PdfWriter,PdfXref,PdfSave,PdfEncrypt,PdfPdfCopy}.smali`, `apk/smali_classes3/com/metamoji/nt/{NtPDFExportRangeTargetPages,NtPDFExportMultiUserTargetPages}.smali`, `apk/smali_classes3/com/metamoji/un/pdf/UnPDFUnit.smali`, `apk/smali_classes2/com/metamoji/df/sprite/pdf/{PDFDocument,PDFReader}.smali`
