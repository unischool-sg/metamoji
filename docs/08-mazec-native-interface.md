# mazec手書き認識 ネイティブインターフェース詳細

**目的の再確認**: 以下はネイティブ認識エンジン自体をリバースエンジニアリング・流用するためのものではなく、「アプリ側がエンジンとどういうインターフェースでやり取りしているか」を把握し、新アプリで**別の**認識エンジンに差し替える際の接続点の設計参考にするためのもの。

## 1. エンジンの正体(`strings`調査による発見)

`libMazecRecognizer.so`の文字列から、内部で **SVM-light**(Thorsten Joachims作、著作権表記あり)分類器と、C++マングル名から`mazecrcg`名前空間・`HandsInkGetEngineVersion`等のエクスポートシンボルが確認できた。これは**HandsInk**という(mazecとは別の)手書き認識SDKをベースに、MetaMoJi独自のラッパー(`mazecrcg`名前空間、Bigramモデル、外字リソース`EUDCResource`等)を被せた構成であることを示す。

`libmazecRACLibJa.so`(最大2.3MB)には**picojson**(JSONパーサー)と**組み込みSQLite**(`mazecrac::SQLiteConn`)が同梱されており、`mazecrac::ConvertEngine`という「かな漢字変換」的なクラス(`getReadings`, `clauseConvert`, `predict`, `commit`)も含まれる — つまり生の手書き認識結果に対して、IME的な変換処理をさらに一段階重ねている。

`libTextLineExtractorComponent.so`もSVM-lightベース、`libTextNoTextClassifyComponent.so`は**Numerical Recipes in C**を土台にした数値計算ルーチンを使用、`libDrawUnitComponent.so`はベジェ曲線フィッティング(`DrGrBezierManager`)による図形補正エンジン、`libsqldbjni.so`は標準的なSQLite JNIラッパー。

## 2. `MazecRACLibJNI` ネイティブメソッド一覧

`libMazecRecognizer.so`→`libmazecRACLibJa.so`の順にロード。

**認識器ライフサイクル/設定**
`createRecognizer(ILjava/lang/String;)J`, `destroyRecognizer(J)V`, `createContext(J)J`, `createContextWithConfig(JJ)J`, `destroyContext(JJ)V`, `getVersion(J)Ljava/lang/String;`, `setIMResourceDirectory(Ljava/lang/String;)V`, `setGuidelines(JFFFF)V`, `setFilter(JI)V`, `setWordspacingCoef(JF)V`, `clearStrokes(J)V`, `clearHwSelection(J)V`, `setHwBlockSelection(J[J[II)V`, `setHwCandidateSelection(J[JILjava/lang/String;I)V`

**認識実行**
`recognize(...)`(3種のオーバーロード、ストローク座標配列・時刻配列・各種パラメータを渡す)、`getCharStrokeBlocks(...)`/`getWordStrokeBlocks(...)`(文字/単語単位のストローク塊取得)、`categoryForText(...)`, `getFilterCharactersJNI(...)`

**結果オブジェクト(`HwRecognitionResult_*`)**: `_destroy`, `_getCandidatesCount`, `_getCandidatesAt`, `_getAltBlocksCount`, `_getAltBlocks`, `_getStrokeBlocks`, `_getTopCandidateString`, `_selectCandidate`, `_setActive`

**学習/ユーザー辞書**: `recognizer_learnCharacter`, `recognizer_learnSelectedRecogCand`, `recognizer_getLearnedEntry`, `recognizer_getLearingCount`(原文ママのtypo), `recognizer_deleteLearnedEntry`, `recognizer_resetLearning`, `recognizer_setLearningDictinaryPath`(原文ママのtypo), `destroyRecognitionLearningInfo`, `getRecognitionLearningLimit`, `setRecognitionLearningLimit`

**`RACConfig`(コンテキスト設定オブジェクト)**: `createJNI`, `destroyJNI`, `getLanguageJNi`, `setLanguageJNI`, `setConversionEnabledJNI`, `setConversionLearningEnabledJNI`, `setFilterJNI`, `setRecognitionConfigJNI`, `setRecognitionUserDictionaryClearFlagsJNI`

## 3. `TextLineExtractor`(自由手書きのテキスト行抽出、`libTextLineExtractorComponent.so`)

シングルトン。`create()`/`close()`、`_attachDictionary`→`attachDictionary(...)`、`_addStrokePoint`→`addStrokePoint(...)`、`_extractTextLine`→`extractTextLine()`、`getResult()`、`setLineCoef(F)`。内部`_xxx`ネイティブはintステータスコードを返し、Java側で`ProcessingStatus` enumに変換するパターン。

## 4. `TextLineUtFigSeparation`(文字/図形の判別、`libTextNoTextClassifyComponent.so`)

シングルトンではなく、`_inkPage`/`_textNoTextClassify`の2つのネイティブハンドルをインスタンスフィールドとして保持。`_init`→`_addStrokePoint(inkPageハンドル)`→`_classify(両ハンドル)`→`_getResult(classifyハンドル)`→`_dispose(両ハンドル)`という手続き型のライフサイクル。

## 5. 描画補正系(`DrawUnitComponent`系、`libDrawUnitComponent.so`)

`DrawUnitComponent`自体はネイティブメソッドを持たず`System.loadLibrary`のゲートのみ。実体は同パッケージ内の3クラス:
- `MeshManager`: 19個のネイティブメソッド(`native_create/destroy`, `native_addBlock*`, `native_blockCount*`, `native_{directSearch,search}With{Bounds,Point,Segment}`, `native_removeAllBlocks/removeBlocksWithId`, `native_updateBlock*`) — ストロークのヒットテスト用の空間メッシュインデックス
- `PathGenerator`: `native_merge([F[FZ)[F`, `native_simplify([F)[F` — 塗り領域用のパス簡略化/結合
- `Recognition`(reshape): `native_recognize([F[F)L…Recognition;` — 手描きの粗い図形をきれいな幾何形状に補正(リシェイプ)

## 6. `TextLineExtractorDic.zip` の中身

3ファイルのみ(ディレクトリなし): `binarySvmScoreTbl.res`(約9.7MB), `unarySvmModel.res`(約212KB), `dictInfo.xml`(メタデータのみ)。`dictInfo.xml`によれば対応エンジンバージョン`2.0.0.0`、著作権表記`2013`、**言語非依存**(テキスト行 vs 非テキストの分離用であり、文字認識自体の辞書ではない)。

## 7. `assets/init/` 配下の初期データ

- `guide/startguide.dat`(約1MB) — オンボーディングガイド(バイナリ)
- `library/*.product`(5ファイル、各4〜7.7MB) — 製品バリアント別のステッカー/テンプレート/背景シート束(`com.metamoji.classroom.item.system001`等)
- `td/taggeddrive.db` + `td/data/default/*.json`(`TD_MASTER`, `TAGORDER`, `FOLDERPROPERTY`, `TAGDEF`, `FOLDERDEF`) — 「TaggedDrive」(タグ=フォルダ方式のファイルシステム)の初期シードデータ。デフォルトで`"Sample for Android"`という1件のフォルダ/タグが用意される

## 8. `lang-resources.json`

13ロケール(`de_DE, en_US, es_ES, fr_FR, it_IT, ja_JP, ko_KR, nl_NL, pl_PL, pt_BR, ru_RU, zh_CN, zh_TW`)それぞれの辞書バージョン範囲。**日本語(`ja_JP`)のみバージョン15(最小11)**で、他は全てバージョン8固定 — 日本語がリード開発言語であることの裏付け。

## 9. mazec対応言語の完全リスト(有料アドオン、11言語+全部入り)

`LbInAppPurchaseConstants`より、言語ごとの個別課金プロダクトID:

| 言語 | プロダクトIDサフィックス |
|---|---|
| 日本語 | `.mazecrecognition.ja` |
| 英語 | `.mazecrecognition.en` |
| フランス語 | `.mazecrecognition.fr` |
| ドイツ語 | `.mazecrecognition.de` |
| イタリア語 | `.mazecrecognition.it` |
| 中国語(簡体/繁体共通) | `.mazecrecognition.zh` |
| 韓国語 | `.mazecrecognition.ko` |
| スペイン語 | `.mazecrecognition.es` |
| ロシア語 | `.mazecrecognition.ru` |
| ポルトガル語 | `.mazecrecognition.pt` |
| オランダ語 | `.mazecrecognition.nl` |
| ポーランド語 | `.mazecrecognition.pl` |
| (全言語バンドル) | `.mazecrecognition.all` |

## 10. Tauri版への示唆(再確認)

- ネイティブエンジン(`.so`群)自体は流用不可。代替候補は[03-tauri-migration-notes.md](03-tauri-migration-notes.md)の通り(Windows Ink / Google ML Kit Digital Ink Recognition / MyScript等)
- 「ストローク取得 → 行抽出(テキスト/図形分離) → 文字認識 → IME的な変換」という4段パイプライン構成自体は、代替エンジンを組み込む際のアーキテクチャとして参考にできる
- ユーザー辞書(手書き文字の学習)は代替エンジン側の対応機能次第。MyScriptなどはカスタム辞書に対応するSDKもあるため、要件次第で選定基準になる
