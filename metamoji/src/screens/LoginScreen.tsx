/**
 * Sign-in.
 *
 * Four ways in, from docs/14 §1's driver list, sharing one outcome — see
 * `store/authStore.ts`. What they share on screen is the **学校ID**: MetaMoJi's
 * accounts are per-school, and every form starts by naming one. That is also
 * what resolves the tenant server, so it is checked on its own before a
 * password is asked for (`cloud.rs`, step 1).
 *
 * 簡易ログイン needs the school's class list, which only exists once the school
 * is known — hence the two-step shape: name the school, then pick a class.
 */

import { useCallback, useState } from "react";
import { useNavigate } from "react-router";

import { Icon } from "../components/Icon";
import { useTranslation } from "../i18n/useTranslation";
import * as api from "../ipc/api";
import type { ClassGroup, School } from "../ipc/api";
import { LOGIN_STRATEGIES, useAuthStore, type LoginStrategy } from "../store/authStore";

export function LoginScreen() {
  const navigate = useNavigate();
  const { t } = useTranslation();

  const rootServer = useAuthStore((s) => s.rootServer);
  const setRootServer = useAuthStore((s) => s.setRootServer);
  const signIn = useAuthStore((s) => s.signIn);
  const busy = useAuthStore((s) => s.busy);
  const error = useAuthStore((s) => s.error);
  const clearError = useAuthStore((s) => s.clearError);

  const [strategy, setStrategy] = useState<LoginStrategy>(LOGIN_STRATEGIES[0]);
  const [coLoginId, setCoLoginId] = useState("");
  const [loginName, setLoginName] = useState("");
  const [password, setPassword] = useState("");
  const [qrPayload, setQrPayload] = useState("");

  // 簡易ログイン only.
  const [classGroupId, setClassGroupId] = useState("");
  const [idNumber, setIdNumber] = useState("");
  const [classes, setClasses] = useState<ClassGroup[] | null>(null);
  const [school, setSchool] = useState<School | null>(null);
  const [lookingUp, setLookingUp] = useState(false);
  const [lookupError, setLookupError] = useState<string | null>(null);

  /** A different school invalidates everything downstream of it. */
  const changeSchool = (value: string) => {
    setCoLoginId(value);
    setSchool(null);
    setClasses(null);
    setClassGroupId("");
    setIdNumber("");
    setLookupError(null);
  };

  /**
   * Resolves the school, and for 簡易ログイン fetches its classes.
   *
   * Split out from submit so a mistyped 学校ID is caught before the user has
   * typed a password, which is also the only point at which the class list can
   * be loaded at all.
   */
  const lookUpSchool = useCallback(async () => {
    const id = coLoginId.trim();
    if (!id) return;

    setLookingUp(true);
    setLookupError(null);
    try {
      const found = await api.cloudResolveSchool(id);
      setSchool(found);
      if (strategy.id === "simple") {
        // No default: the list mixes classes with staff groups (「教師グループ」,
        // 「〜担任団」), so preselecting the first entry would put most students
        // on the wrong one.
        setClasses(await api.cloudClassGroups(id));
      }
    } catch (err) {
      setSchool(null);
      setClasses(null);
      setLookupError(err instanceof Error ? err.message : String(err));
    } finally {
      setLookingUp(false);
    }
  }, [coLoginId, strategy.id]);

  const selectedClass = classes?.find((group) => group.id === classGroupId) ?? null;

  const submit = async (e: React.FormEvent) => {
    e.preventDefault();
    clearError();
    const ok = await signIn(strategy, {
      coLoginId: coLoginId.trim(),
      loginName: loginName.trim(),
      password,
      classGroupId,
      idNumber: idNumber.trim(),
      payload: qrPayload,
    });
    if (ok) navigate("/");
  };

  const needsSchoolField = strategy.id !== "qr";
  const canSubmit =
    !busy &&
    (strategy.id === "qr"
      ? qrPayload.trim().length > 0
      : strategy.id === "sso"
        ? coLoginId.trim().length > 0
        : strategy.id === "simple"
          ? coLoginId.trim().length > 0 && classGroupId !== "" && idNumber.trim().length > 0
          : coLoginId.trim().length > 0 && loginName.trim().length > 0);

  return (
    <div className="app">
      <header className="topbar">
        <button
          type="button"
          className="icon-btn"
          onClick={() => navigate("/")}
          title={t("ノート一覧に戻る")}
        >
          <Icon name="arrow_back" />
          <span className="sr-only">{t("ノート一覧に戻る")}</span>
        </button>
        <span className="topbar__title">{t("サインイン")}</span>
      </header>

      <main className="settings">
        <form onSubmit={submit}>
          <section>
            <h2>{t("サインイン方法")}</h2>
            <div className="pen-list">
              {LOGIN_STRATEGIES.map((item) => (
                <button
                  key={item.id}
                  type="button"
                  className="pen-row"
                  aria-pressed={strategy.id === item.id}
                  onClick={() => {
                    clearError();
                    setLookupError(null);
                    setClasses(null);
                    setStrategy(item);
                  }}
                >
                  {t(item.label)}
                </button>
              ))}
            </div>
          </section>

          <section>
            {needsSchoolField && (
              <>
                <div className="field">
                  <label htmlFor="coLoginId">{t("学校 ID")}</label>
                  <div style={{ display: "flex", gap: "var(--space-2)" }}>
                    <input
                      id="coLoginId"
                      type="text"
                      autoComplete="organization"
                      autoFocus
                      value={coLoginId}
                      onChange={(e) => changeSchool(e.target.value)}
                      onBlur={() => {
                        if (strategy.id === "simple") void lookUpSchool();
                      }}
                      style={{ flex: 1 }}
                    />
                    <button
                      type="button"
                      className="btn"
                      disabled={lookingUp || coLoginId.trim().length === 0}
                      onClick={() => void lookUpSchool()}
                    >
                      {lookingUp ? t("確認中…") : t("確認")}
                    </button>
                  </div>
                </div>
                <p className="setting-note">
                  {school
                    ? t("接続先: {server}", { server: school.serverUrl })
                    : t("学校から配布された ID を入力します。")}
                </p>
              </>
            )}

            {lookupError && (
              <div className="notice notice--error" style={{ marginBottom: "var(--space-4)" }}>
                <Icon name="error" size={20} />
                <span>{lookupError}</span>
              </div>
            )}

            {strategy.id === "normal" && (
              <div className="field">
                <label htmlFor="loginName">{t("ユーザー ID")}</label>
                <input
                  id="loginName"
                  type="text"
                  autoComplete="username"
                  value={loginName}
                  onChange={(e) => setLoginName(e.target.value)}
                />
              </div>
            )}

            {strategy.id === "simple" && (
              <>
                <div className="field">
                  <label htmlFor="classGroup">{t("クラス")}</label>
                  <select
                    id="classGroup"
                    value={classGroupId}
                    disabled={!classes || classes.length === 0}
                    onChange={(e) => {
                      setClassGroupId(e.target.value);
                      setIdNumber("");
                    }}
                  >
                    {!classes && <option value="">{t("先に学校 ID を確認してください")}</option>}
                    {classes && <option value="">{t("選択してください")}</option>}
                    {classes?.length === 0 && (
                      <option value="">{t("クラスが登録されていません")}</option>
                    )}
                    {classes?.map((group) => (
                      <option key={group.id} value={group.id}>
                        {group.name}
                      </option>
                    ))}
                  </select>
                </div>

                <div className="field">
                  <label htmlFor="idNumber">{t("出席番号")}</label>
                  {/*
                   * Schools may or may not publish the roll. With a list this is
                   * a picker; without one it has to be typed, and refusing to
                   * accept a typed number would lock those schools out.
                   */}
                  {selectedClass && selectedClass.idNumbers.length > 0 ? (
                    <select
                      id="idNumber"
                      value={idNumber}
                      onChange={(e) => setIdNumber(e.target.value)}
                    >
                      <option value="">{t("選択してください")}</option>
                      {selectedClass.idNumbers.map((number) => (
                        <option key={number} value={number}>
                          {number}
                        </option>
                      ))}
                    </select>
                  ) : (
                    <input
                      id="idNumber"
                      type="text"
                      inputMode="numeric"
                      value={idNumber}
                      onChange={(e) => setIdNumber(e.target.value)}
                    />
                  )}
                </div>
              </>
            )}

            {strategy.id === "qr" && (
              <>
                <div className="field">
                  <label htmlFor="qr">{t("QR コードの内容")}</label>
                  <input
                    id="qr"
                    type="text"
                    value={qrPayload}
                    onChange={(e) => setQrPayload(e.target.value)}
                    placeholder="$cid=school01,uid=student01"
                  />
                </div>
                <p className="setting-note">
                  {t(
                    "QR コードには学校 ID とユーザー ID が入っています。パスワードは入っていないため、下に入力してください。",
                  )}
                </p>
              </>
            )}

            {strategy.id !== "sso" && (
              <div className="field">
                <label htmlFor="password">{t("パスワード")}</label>
                <input
                  id="password"
                  type="password"
                  autoComplete="current-password"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                />
              </div>
            )}

            {error && (
              <div className="notice notice--error">
                <Icon name="error" size={20} />
                <span>{error}</span>
              </div>
            )}

            <div className="dialog__actions" style={{ marginTop: "var(--space-4)" }}>
              <button type="submit" className="btn btn--primary" disabled={!canSubmit}>
                {busy ? t("接続中…") : t("サインイン")}
              </button>
            </div>
          </section>

          <section>
            <h2>{t("接続先")}</h2>
            <div className="field">
              <label htmlFor="server">{t("ルートサーバー")}</label>
              <input
                id="server"
                type="url"
                value={rootServer}
                onChange={(e) => void setRootServer(e.target.value)}
              />
            </div>
            <p className="setting-note">
              {t(
                "通常は変更しません。学校がサーバーを自前で運用している場合(オンプレミス)のみ、配布されたアドレスを入力します。",
              )}
            </p>
          </section>
        </form>
      </main>
    </div>
  );
}
