import "@typespec/http";
import "../common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// リモートファイル形式変換 (Remote Converter / com.metamoji.rc)
// ============================================================
//
// `com.metamoji.rc` パッケージ(apk/smali_classes3/com/metamoji/rc/、5ファイルのみ)。
// 抽象基底クラス `RcRemoteConverterURLConnection`
// (apk/smali_classes3/com/metamoji/rc/RcRemoteConverterURLConnection.smali)が
// [collabo.tsp](../classroom/collabo.tsp)で解析済みの `com.metamoji.ns.service.NsCollaboURLConnection` を
// `.super`で直接継承しており、通信の土台(`baseURL()`によるURL組み立て、`postRequest()`による
// `multipart/form-data`送信、`sendRequest()`のHTTP実行・レスポンス受信処理)は共通です。
// **ただし認証方式はcollabo.tsp/gradebook.tspの`NsAuthInfo`(JSON化1パート)とは異なり**、
// [gallery-media.tsp](../media/gallery-media.tsp)の`Media*`系と同様に`userId`/`password`を素の
// multipartフィールドとしてそのまま送る方式です(`RcTentativeRegistURLConnection.sendRequest()`
// 参照)。`RcRemoteConverterURLConnection`自身が追加するのは、`addContent(builder, name, value)`
// (文字列パート追加)と `addContent(builder, name, File, mimeType)`
// (ファイルパート追加。`RequestBody.create(file, MediaType.get(mimeType))`を
// `file.getName()`をファイル名として`addFormDataPart`する)の2つのヘルパーのみです。
//
// **ベースURL**: `NsCollaboURLConnection.baseURL()`由来(`ModelInfo$BuildOptions.DIGITAL_CABINET_URL_BASE()`。
// 評価版ビルドでは`DevLobbyServer`設定または`CsCloudServiceContext.dcServerURL()`で上書き)。
// `CsCloudService`(DigitalCabinetクラウドAPI本体)と同一ホストです。
//
// **3ステップの非同期ジョブフロー**: 「TentativeRegist」(仮登録)は文字通りジョブの事前登録で、
// 成功すると後続2ステップで使う`jobId1`/`jobId2`の2つのトークンがレスポンスJSONで払い出されます
// (`RcRemoteConverterServiceConstants.TENTATIVE_REGIST_RESPONSE_KEY_JOB_ID_1`/`_2`)。
// **`jobId1`/`jobId2`はクライアント側で生成される値ではなく、`TentativeRegist`のレスポンスから
// 取得してそのまま`ConvertRequest`・`GetConvertedFile`の両方に引き渡す、サーバー発行のジョブ識別子**
// であることを、唯一の呼び出し元 `com.metamoji.ui.ImportActivity` の
// `importFileWithConvertingByRemoteConverter()`
// (apk/smali_classes3/com/metamoji/ui/ImportActivity.smali 1450行目〜)で確認済みです。
// 同メソッドは
// (1) `RcTentativeRegistURLConnection`で`userId`/`password`を送って`jobId1`/`jobId2`を取得、
// (2) `RcConvertRequestURLConnection`にその`jobId1`/`jobId2`と変換元ファイル本体・MIME/拡張子情報を
//     渡して変換を開始、
// (3) `RcGetConvertedFileURLConnection`に同じ`jobId1`/`jobId2`を渡し、2秒間隔
//     (`Thread.sleep(0x7d0)`=2000ms)でポーリングして変換済みファイルを取得、
// という順で呼び出しています。(2)(3)のいずれも`userId`/`password`は一切送信しないため、
// `jobId1`/`jobId2`の組がジョブの認可トークンとして機能していると見られます。
//
// **`importFileWithConvertingByRemoteConverter()`の用途と到達可能性(重要な注意点)**:
// このメソッドは常に変換先MIME `"application/pdf"`・変換先拡張子`".pdf"`を指定しており、
// 「アプリが直接インポートできない外部ファイル形式を、クラウド側でPDFに変換してから
// `importPdf()`でインポートする」ためのフォールバック経路と読み取れます。
// **しかし、APK全体を検索してもこのメソッドの呼び出し元は1つも見つかりませんでした**
// (`grep -rn "importFileWithConvertingByRemoteConverter" apk/smali_classes*/`は定義行のみヒット)。
// 実際にファイル種別を振り分けている`ImportActivity.importFile()`
// (同ファイル923行目〜)の分岐は「atdoc/btshare→`importHayabusaDoc`」「application/pdf→`importPdf`」
// 「画像→`importImage`」「音声→`importAudio`」「動画→`importVideo`」「それ以外→インポート失敗として終了」
// のみで、Remote Converter経路には一切分岐しません。さらに`ImportActivity.availableFileExtensions()`
// (229行目〜)が返す対応拡張子一覧にも`.doc`/`.docx`/`.ppt`/`.pptx`等は含まれていません。
// つまり`com.metamoji.rc`パッケージ自体は完全に実装済みでいつでも呼び出し可能な状態にありますが、
// **v3.15.1.0の実際のUIフローからは配線が外れており、到達不能(未使用)のフォールバック経路と
// 見られます**(他パッケージ調査で見つかった`mazec/purchase`の課金機能や`lb`の`purchaseURL()`と
// 同種の「実装は生きているが呼び出し元がない」ケース)。
//
// **レスポンス形式の特殊性**: 3エンドポイントとも結果コードのフィールド名は`errorCode`ですが、
// **値は数値ではなく文字列**です(`RcRemoteConverterServiceConstants.GENERAL_RESPONSE_ERROR_CODE_SUCCESS`
// = `"0"`)。`CsCloudService`系(`common.tsp`の`CsResponseBase.errorCode: int32`)とは型が異なるため、
// 本ファイルでは独自の`RcResponseBase`を定義しています。

/**
 * Remote Converter系レスポンスの共通フィールド。`errorCode`は**文字列型**である点に注意
 * (`common.tsp`の`CsResponseBase.errorCode: int32`とは異なる)。
 */
model RcResponseBase {
  /** 結果コード。`"0"`=成功 (`RcRemoteConverterServiceConstants.GENERAL_RESPONSE_ERROR_CODE_SUCCESS`)。 */
  errorCode?: string;

  /** エラーメッセージ(エラー時のみ) */
  errorMessage?: string;

  /** 型付きプロパティに写像されなかった生JSON */
  ...Record<unknown>;
}

/**
 * `tentativeRegist`のレスポンス。成功時は`jobId1`/`jobId2`が発行され、後続の
 * `convertRequest`/`getConvertedFile`にそのまま渡す。
 */
model RcTentativeRegistResponse extends RcResponseBase {
  /** サーバー発行のジョブ識別子その1 (`TENTATIVE_REGIST_RESPONSE_KEY_JOB_ID_1`)。 */
  jobId1?: string;

  /** サーバー発行のジョブ識別子その2 (`TENTATIVE_REGIST_RESPONSE_KEY_JOB_ID_2`)。 */
  jobId2?: string;
}

/** `convertRequest`のレスポンス。追加フィールドは呼び出し元で読み取られておらず未確認。 */
model RcConvertRequestResponse extends RcResponseBase {}

/**
 * `getConvertedFile`が変換未完了時に返すJSONステータス応答
 * (完了時はこのJSONではなく変換済みファイル本体のバイナリが返る。`RcGetConvertedFileResult`参照)。
 */
model RcGetConvertedFileStatusResponse extends RcResponseBase {
  /**
   * `GET_CONVERTED_FILE_RESPONSE_KEY_TIME`(`"time"`)として定数定義はされているが、
   * 実際にこの値を読み取るコードはAPK全体を検索しても見つからず未使用(将来の拡張用、
   * またはデッドフィールドと見られる)。名称から次回ポーリングまでの待機時間などと推測されるが未確認。
   */
  time?: string;
}

/**
 * `getConvertedFile`が変換完了時に返す、変換済みファイル本体のバイナリレスポンス。
 * HTTPステータス200かつレスポンスの`Content-Type`が要求した`toMime`と完全一致する場合のみ、
 * このバイナリ形式として扱われる(`RcGetConvertedFileURLConnection.downloadFileOrResponseJsonFromRequest()`
 * が判定)。それ以外は`RcGetConvertedFileStatusResponse`のJSONとして解釈される。
 */
model RcGetConvertedFileResult {
  @header contentType?: string;

  @body body: bytes;
}

@tag("リモートファイル変換")
interface RemoteConverter {
  /**
   * 変換ジョブを仮登録する(3ステップの1番目)。ユーザーID/パスワードを検証し、成功すると
   * 後続2ステップで使う`jobId1`/`jobId2`が発行される。エラーコード`14`はライセンスなし
   * (`TENTATIVE_REGIST_RESPONSE_ERROR_CODE_NO_LICENSE`)。
   *
   * multipartパート: `userId`, `password`, `productName`(固定値`"Android-Share-G-ClassRoom"`),
   * `productVersion`, `timeZone`。`userId`/`password`のいずれかが空の場合、クライアントは
   * リクエスト自体を送信しない(`sendRequest()`のガード節)。
   *
   * - 元Javaクラス: `RcTentativeRegistURLConnection`
   * - パス: `/convert/TentativeRegist`
   */
  @post
  @route("/convert/TentativeRegist")
  op tentativeRegist(
    @multipartBody body: {
      userId: HttpPart<string>;
      password: HttpPart<string>;
      productName: HttpPart<"Android-Share-G-ClassRoom">;
      productVersion: HttpPart<string>;
      timeZone: HttpPart<string>;
    }
  ): RcTentativeRegistResponse;

  /**
   * 変換ジョブを実行する(3ステップの2番目)。`tentativeRegist`のレスポンスで得た`jobId1`/`jobId2`と、
   * 変換元ファイル本体・変換元/変換先のMIMEタイプ・拡張子を送信する。認証情報(`userId`/`password`)は
   * 送信しない(`jobId1`/`jobId2`がジョブの認可トークンとして機能すると見られる)。
   *
   * multipartパート: `jobId1`, `jobId2`, `fromMime`, `fromSuffix`, `toMime`, `toSuffix`,
   * `fileEntity`(ファイル本体。Content-Typeは`fromMime`、ファイル名は元ファイルの`File.getName()`)。
   * 全パート必須(いずれか1つでも未設定だとクライアントはリクエストを送信しない)。
   *
   * - 元Javaクラス: `RcConvertRequestURLConnection`
   * - パス: `/convert/ConvertRequest`
   */
  @post
  @route("/convert/ConvertRequest")
  op convertRequest(
    @multipartBody body: {
      jobId1: HttpPart<string>;
      jobId2: HttpPart<string>;
      fromMime: HttpPart<string>;
      fromSuffix: HttpPart<string>;
      toMime: HttpPart<string>;
      toSuffix: HttpPart<string>;
      fileEntity: HttpPart<{
        @header contentType: string;
        @body body: bytes;
      }>;
    }
  ): RcConvertRequestResponse;

  /**
   * 変換結果を取得する(3ステップの3番目、ポーリング用)。`convertRequest`と同じ`jobId1`/`jobId2`を
   * 送信する。変換が完了していれば変換済みファイル本体(バイナリ)を、まだ変換中であれば
   * `errorCode: "100"`(`GET_CONVERTED_FILE_RESPONSE_ERROR_CODE_CONVERTING`)のJSON応答を返す。
   * 唯一確認できている呼び出し元(`ImportActivity`、ただし現在は到達不能。上記の
   * 「到達可能性」節を参照)は本エンドポイントを2秒間隔でリトライしている。
   *
   * multipartパート: `jobId1`, `jobId2`。両方必須。
   *
   * - 元Javaクラス: `RcGetConvertedFileURLConnection`
   * - パス: `/convert/GetConvertedFile`
   */
  @post
  @route("/convert/GetConvertedFile")
  op getConvertedFile(
    @multipartBody body: {
      jobId1: HttpPart<string>;
      jobId2: HttpPart<string>;
    }
  ): RcGetConvertedFileStatusResponse | RcGetConvertedFileResult;
}
