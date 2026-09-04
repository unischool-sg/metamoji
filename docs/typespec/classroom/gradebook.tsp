import "@typespec/http";
import "./common.tsp";
import "./collabo.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// 成績表・テストログ (com.metamoji.forSchool.service)
// ============================================================
//
// `com.metamoji.forSchool.service.ScCollaboURLConnectionForXxx`
// (apk/smali_classes2/com/metamoji/forSchool/service/*.smali)。授業ルーム内の「テスト」機能
// (小テスト実施ログ・採点・レポート提出状況)を扱う小規模なAPI群。
//
// **継承関係**: 全クラスが [collabo.tsp](./collabo.tsp) で解析済みの
// `com.metamoji.ns.service.NsCollaboURLConnection` を直接継承しており(`.super`行で確認)、
// 通信方式・認証情報の作り方は`NsCollabo*`系と完全に同一です。
// - `POST` + `multipart/form-data`。認証パートは基底クラスの
//   `createAuthInfoParam(companyId, email, password, qwd)` (継承元で解析済み、
//   [collabo.tsp](./collabo.tsp) の `NsAuthInfo` と同一構造)が生成する `authInfo` パート。
// - 追加パラメータは `param` という1つのパートに、`HashMap<String, Object>` を
//   `CmJson.createJsonValue()` でJSON文字列化して`application/json`として詰める
//   (`NsCollabo*`系の`roomInfo`/`roomID`のような複数パート分割ではなく、`param`単一パートにまとめる点が特徴)。
//
// **`ScCollaboURLConnectionForUpdateDeadlineInfo` について(意図的に未収録)**:
// このクラスも同じ基底クラスを継承していますが、送信先パスは`cosmos/UpdateRoomInfo`であり、
// [collabo.tsp](./collabo.tsp) で既に`updateRoomInfo`/`updateRoomMode`として`@sharedRoute`付きで
// ドキュメント化済みの同一エンドポイントです。そのため本ファイルには重複するoperationを追加していません。
// このクラス固有の挙動としては、`roomID`を(JSONではなく)素のフォームパートとして送り、
// `roomInfo`パートのJSONを`NsCollaboURLConnectionForCreateRoom.mode2ParamStrWithValidFlag(...)`
// (`apk/smali_classes3/com/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom.smali`)経由で
// 組み立てている点が確認できました。このヘルパーは`{ "companyID":"<companyId>", <残りのフィールド> }`
// という形のJSONを生成し、残りのフィールドは以下の「締切(deadline)」関連キーです
// (`mode2ParamDicWithValidFlag`で設定):
// - `validFlag`: `int`。呼び出し元では`0x8001`とのAND結果が`0x8001`と一致する場合のみ送信される
//   (ビットフラグの一種と見られるが詳細意味は未確認)。
// - `startTime` / `endTime`: `int64` (epoch milliseconds、`startDate`/`endDate`
//   フィールドから`NsShareViewCommand.convertDateFromDate()`で変換)。
// - `beforeMode2` / `afterMode2`: `int`。`prevStartMode`/`endMode`
//   (`com.metamoji.forSchool.ScSchoolManager$DeadlineMode`列挙、`DONTSEE`/`READONLY`/その他)から
//   `0`/`1`/`3`(before)、`0`/`0x11`/`0x13`(after)にマッピングされる。
// - `testingMode2`: 固定値 `0x13` (19)。
// - `reportMode2`: 固定値 `0x41` (65)。
// - `endReportMode2`: `endMode`が`DONTSEE`なら`0`、それ以外は`1`。
// - `remandMode2`: 固定値 `0x13` (19、`afterMode2`計算時の中間変数`p1`を再利用)。
// - `lockMode2`: 固定値 `1`。
// これらは既存の`NsRoomInfo`モデルには含まれていないフィールドです。`updateRoomInfo`/`updateRoomMode`と
// 同じ`roomInfo`パートを共有しつつ全く異なるキー集合を送るため、将来的に`NsRoomInfo`へ統合する場合は
// 追加の任意フィールドとして取り込むことを検討してください(本ファイルでは追加していません)。

/** `getScoreList`の`param`パートのJSON構造。 */
model ScGetScoreListParam {
  /** 取得対象のルームID一覧。 */
  roomIdList: string[];

  /** サーバー側でログを記録するかどうかのフラグと見られる(詳細未確認)。 */
  needLog: boolean;
}

/** `getTestingLogList`の`param`パートのJSON構造。 */
model ScGetTestingLogListParam {
  /** 対象ルームID(単一)。 */
  roomID: string;
}

/** `setReport`の`param`パートのJSON構造。 */
model ScSetReportParam {
  /** 対象ルームID。 */
  roomID: string;

  /** レポート提出状況を更新する対象ユーザーID。 */
  userID: string;

  /** レポート提出状況コード(意味は未確認の整数値)。 */
  report: int32;
}

/** `setScore`の`param`パートのJSON構造。 */
model ScSetScoreParam {
  /** 対象ルームID。 */
  roomID: string;

  /** 採点対象ユーザーID。 */
  userID: string;

  /** 得点。 */
  score: int32;

  /**
   * `clearScore`フラグがtrueの場合のみ追加される特殊フィールド。
   * 固定文字列`"ClearScore"`をBase64エンコードした値(`ScCollaboURLConnectionForSetScore`の
   * `Ljava/lang/String;->getBytes()`ではなく`NsShareViewCommand.base64Encode()`を使用)が入り、
   * サーバー側に「採点結果をクリアする」ことを伝える合図と見られる。通常の採点更新時は含まれない。
   */
  scoreString?: string;
}

interface Gradebook {
  /**
   * 指定したルーム群のテスト成績一覧を取得する。
   *
   * multipartパート: `authInfo` (`NsAuthInfo`、[collabo.tsp](./collabo.tsp)と同一構造),
   * `param` (`ScGetScoreListParam`)。
   *
   * - 元Javaクラス: `ScCollaboURLConnectionForGetScoreList`
   * - パス: `/cosmos/GetScoreList`
   */
  @post
  @route("/cosmos/GetScoreList")
  op getScoreList(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      param: HttpPart<ScGetScoreListParam>;
    }
  ): Record<unknown>;

  /**
   * 指定したルームのテスト実施ログ一覧を取得する。
   *
   * multipartパート: `authInfo` (`NsAuthInfo`), `param` (`ScGetTestingLogListParam`)。
   *
   * - 元Javaクラス: `ScCollaboURLConnectionForGetTestingLogList`
   * - パス: `/cosmos/GetTestingLogList`
   */
  @post
  @route("/cosmos/GetTestingLogList")
  op getTestingLogList(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      param: HttpPart<ScGetTestingLogListParam>;
    }
  ): Record<unknown>;

  /**
   * 指定ユーザーのレポート提出状況を更新する。
   *
   * multipartパート: `authInfo` (`NsAuthInfo`), `param` (`ScSetReportParam`)。
   *
   * - 元Javaクラス: `ScCollaboURLConnectionForSetReport`
   * - パス: `/cosmos/SetReport`
   */
  @post
  @route("/cosmos/SetReport")
  op setReport(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      param: HttpPart<ScSetReportParam>;
    }
  ): Record<unknown>;

  /**
   * 指定ユーザーの得点を設定する(`clearScore`指定時は採点結果クリアの合図を兼ねる)。
   *
   * multipartパート: `authInfo` (`NsAuthInfo`), `param` (`ScSetScoreParam`)。
   *
   * - 元Javaクラス: `ScCollaboURLConnectionForSetScore`
   * - パス: `/cosmos/SetScore`
   */
  @post
  @route("/cosmos/SetScore")
  op setScore(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      param: HttpPart<ScSetScoreParam>;
    }
  ): Record<unknown>;
}
