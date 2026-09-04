# ログインドライバー・アプリ起動シーケンス・オフライン編集の詳細

## 1. ログインドライバー(`com.metamoji.li.driver.*`)

共通の抽象基底`LoginDriver`(`UtImmortalTaskBase`を継承、画面回転等の構成変更を跨いで生存するダイアログ所有タスク)がテンプレートメソッドパターンで統一フローを定義:

1. `rawLogin()` → 抽象`loginProc()`をIOディスパッチャで実行、`CsResponseBaseAbstract`を返す
2. エラーコードが特定値(0x67/0x7b)以外ならエラー
3. 成功時 `afterLoginProc(response)` → `CsDCUserInfo`にuserId/email/companyId/restHost/password/qwd等を書き込み、`CabinetUserManager.UpdateUserInfoCacheAsync`でキャッシュ更新

### 各ドライバーの具体的フロー
| ドライバー | フロー |
|---|---|
| `NormalLoginDriver` | `CsLoginParam`(coLoginId+パスワード/qwd)→`CsCloudService.executeLoginWithParam()` |
| `SimpleLoginDriver` | 教室向け「簡易ログイン」。`CsClassRoomLoginParam`(coLoginId+classGroupId+idNumber+password) |
| `GoogleLoginDriver` | Google Sign-InのgoogleIdを受け取り`executeGetLoginInfoWithGoogleId()`。複数校がヒットしたら`SelectSchoolDialog`で選択させてから`executeLoginWithLoginInfo()` |
| `SSODriver` | 埋め込みWebViewが`mmjsso://oidcsuccess`へのリダイレクトを検知しaccessCodeを抽出→`executeGetLoginInfoWithAccessCode()`。複数校なら同じく選択ダイアログ |
| `ExternalLoginDriver` | `CsGetCredentialParam`によるサイレント/セッション復元ログイン |

`SelectSchoolDialog`はGoogle/SSOドライバー共通で使われる、認証情報が複数テナントに紐づく場合のピッカー。

### QRコードログインブートストラップ
`QRCodeParser`は`$key=value,...`(先頭`$`任意)形式を解析。認識キー: `cid`(ルートサーバーURL+ログインID+会社名に分解)、`uid`(ログイン名)、`qwd`、`rootServer`(開発ビルドのみ有効)。**注目すべき実装上の欠陥**: `pwd`キーの処理は結果を破棄するデッドコードになっており、QRコードでパスワードを渡すことはできない。結果は`NormalLoginDriver`に渡される。

## 2. オフライン編集リコンシリエーション(`ScOfflineEditManager`)

### 追跡方式: 専用レイヤー方式(操作ログのキューではない)
`startOfflineEditMode()`は該当ノートが編集可能な学校ページを持つ場合のみフラグを立てる(教師は常に除外)。オフライン編集はページごとに`layerType="system:offline_personal"`という**専用の別レイヤー**内で行われる ─ 個々の操作をキューイングするのではなく、構造的に隔離された1レイヤーがまるごと作られる。

### 再接続時のマージ
`endOfflineEditMode()`→サーバーとの全データ再取得→`reflectOfflineEdit(NtNoteController, removeMode: Boolean)`→`ScCollaboBgTaskForReflectOfflineEdit`が:
1. 対象ページを一時的にサーバー権威の状態へ復元し、協働編集の差分同期(`processDispatchDirections`)を先に走らせて追いつかせる
2. オフラインレイヤーの要素を、生徒本人の**永続的な個人レイヤー**(`layerType="system:personal"`)へ**丸ごと移動**(`transferAllElementsToUnitController`) ─ 操作リプレイではなくレイヤーマージ
3. 空になったオフラインレイヤーを削除

### コンフリクトが「構造的に発生しない」設計
生徒のオフライン描画は常に生徒自身の個人レイヤーにしか着地しないため、教師が同時に共通レイヤーを編集していても衝突しない ─ **アクセス範囲を分離することで衝突可能性そのものを設計上排除**している(真のCRDT/OTは実装していない)。`removeMode=true`(明示的な破棄)の場合はレイヤーごと削除するのみ。接続が途中で切れた場合はオフラインレイヤーをそのまま残し、次回リトライに委ねる。

## 3. アプリ起動シーケンス

### `NoteAnytimeApplication.onCreate()`(順序通り)
`UtStandardString.setContext` → `UtDialogConfig.setDialogTheme` → `CmUtils.initialize`(コアサービスロケータ) → `CmLog.initialize` → `UtLib.initialize`(ロガー登録①) → `TypefaceResolver.setCustomResolver` → `NtUserDefaults.initialize`(SharedPreferencesラッパー、2回呼ばれる) → クラッシュハンドラフック登録 → `CmTaskManager.initialize`(UIスレッドディスパッチャ+待機画面) → `CmByteBuffer.initialize` → `SerializableClasses.initialize` → `TempFileRef.clear` → `ModelModuleInfo`(製品名/バージョン設定) → `UtLib.initialize`(ロガー登録②) → `NwLib.initialize`(ネットワーク層+プロキシ認証ドライバ) → 動画文字列プール設定 → `AmvSettings.initialize`(動画サブシステム) → `VfVideoFileManager.startup()` → `PdfSave.initFlattenPdf()`

### `StartupActivity` → ログイン要否判定
`StartupViewModel.isNeedLogin`(`StateFlow`)を購読。判定ロジック: `LoginPageActivity.isAlreadyLoggedIn()==false`なら要ログイン、それ以外は`CabinetUserUtils.isNeedRelogin()`(セッション有効性チェック)。要ログインならログイン画面へ遷移してStartupActivity終了。不要なら、ライセンス有効性チェック→(初回ログイン直後でなければ)`DvmDocumentManagerInitializer.migration()`実行→**`NtStartup.initialize(activity)`**へ。

### `NtStartup.initialize()`
`DfUtility.initialize` → `NtSystemSettings.initialize` → `SdPrivateDriveManagerInitializer`/`SdDriveManagerInitializer` → バージョンゲート付きの一回限りセットアップ: 初回起動時 `onSetup()` が**`TextLineExtractorManager.initTextLineExtractorDic()`**(手書き行抽出辞書の初期化、[08-mazec-native-interface.md](08-mazec-native-interface.md)参照)を呼ぶ。アップグレード時は`onUpdate()`が同じ辞書初期化+「初回初期化中」表示 → `onStartup()`(Unitコンテナ拡張/モデルクリエイター登録、ペン設定モデル更新、メディアアップロードマネージャ準備) → 非同期タスクで`setupCollaboInfo()`(`CountDownLatch`によるブロッキング待機)実行後、ライブラリ/テンプレート/背景画像のシステムアイテムを順次プロビジョニング、最後にリソースが古ければ`NtResourceDownloadManager.download()`

最終的に`MMJNtCabinetViewMode`設定に応じて`ShareViewActivity`か`MainActivity`へルーティング。クラッシュ復旧データが存在すれば`EditorActivity`(復元コマンド付き)へ直行。

### DI/依存性注入: 完全に手動
Dagger/Hilt/Koin等のフレームワークは一切使われていない。全サブシステムが`getInstance()`/`sharedInstance()`静的アクセサを持つ手作りシングルトン/サービスロケータで、`Application.onCreate()`から固定の命令的順序で`initialize()`される。

## 4. Tauri版への推奨

- **起動シーケンス**: 静的シングルトンの寄せ集めではなく、Rust側で単一の`AppState`を明示的な順序(設定/ログ→ユーザー設定ストア→ネットワーククライアント→ローカルDB/辞書アセット→リソースバージョンチェック)で構築し、フロントエンドへ「準備完了」イベントを発行する形にする(`isNeedLogin`相当のStateFlowゲートは踏襲価値あり)。初回起動/アップグレード時のみ実行する処理は、保存済みスキーマバージョンキーで判定する仕組みを残す
- **ログインドライバー**: `LoginDriver`基底+サブクラスという戦略パターンは、Rustの`trait LoginStrategy { fn login_proc(); fn after_login_proc(); }`にそのまま対応させ、Normal/SSO/Google/QRの各フローをフロントエンドのルーターで振り分ける設計にできる。カスタムスキームによるOAuthリダイレクト捕捉は、埋め込みWebViewのスニッフィングではなくTauriのディープリンク機能で代替する
- **オフライン編集→汎用的な「オフライン下書き」機能への一般化**: レイヤー分離戦略は教室機能に限らず一般化できる。任意の「オフライン下書き+マージ」機能を、作成者スコープの重ね書きレイヤー+成功時の明示的な要素移動+マージ後のレイヤー削除、という形で実装すれば、本格的なCRDT/OTを実装せずに済む

## 参照ファイル
`apk/smali_classes2/com/metamoji/li/driver/{LoginDriver,NormalLoginDriver,SimpleLoginDriver,GoogleLoginDriver,SSODriver,ExternalLoginDriver}.smali`, `apk/smali_classes2/com/metamoji/li/view/qr/QRCodeParser.smali`, `apk/smali_classes2/com/metamoji/forSchool/offlineEdit/ScOfflineEditManager.smali`, `apk/smali_classes2/com/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit.smali`, `apk/smali_classes3/com/metamoji/noteanytime/{NoteAnytimeApplication,StartupActivity}.smali`, `apk/smali_classes3/com/metamoji/nt/NtStartup.smali`
