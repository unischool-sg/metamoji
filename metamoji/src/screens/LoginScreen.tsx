/**
 * Sign-in.
 *
 * The strategy list comes from `authStore`, mirroring docs/14 §1's driver
 * design: several ways in, one outcome. The server address is editable because
 * docs/02 §3 records that the original exposes an on-premises server URL
 * setting for schools that self-host — the same need applies to a reference
 * backend someone runs themselves.
 */

import { useState } from "react";
import { useNavigate } from "react-router";

import { useTranslation } from "../i18n/useTranslation";
import { LOGIN_STRATEGIES, useAuthStore, type LoginStrategy } from "../store/authStore";

export function LoginScreen() {
  const navigate = useNavigate();
  const { t } = useTranslation();

  const serverUrl = useAuthStore((s) => s.serverUrl);
  const setServerUrl = useAuthStore((s) => s.setServerUrl);
  const signIn = useAuthStore((s) => s.signIn);
  const register = useAuthStore((s) => s.register);
  const busy = useAuthStore((s) => s.busy);
  const error = useAuthStore((s) => s.error);
  const clearError = useAuthStore((s) => s.clearError);

  const [strategy, setStrategy] = useState<LoginStrategy>(LOGIN_STRATEGIES[0]);
  const [loginId, setLoginId] = useState("");
  const [password, setPassword] = useState("");
  const [displayName, setDisplayName] = useState("");
  const [qrPayload, setQrPayload] = useState("");
  const [creating, setCreating] = useState(false);

  const submit = async (e: React.FormEvent) => {
    e.preventDefault();
    clearError();

    if (creating) {
      const made = await register(loginId, password, displayName || loginId);
      if (!made) return;
    }
    const ok = await signIn(strategy, { loginId, password, payload: qrPayload });
    if (ok) navigate("/");
  };

  return (
    <div className="app">
      <header className="topbar">
        <button type="button" onClick={() => navigate("/")}>
          {t("← 一覧")}
        </button>
        <span className="topbar__title">{t("サインイン")}</span>
      </header>

      <main className="settings">
        <form onSubmit={submit}>
          <section>
            <h2>{t("接続先")}</h2>
            <div className="field">
              <label htmlFor="server">{t("サーバー")}</label>
              <input
                id="server"
                type="url"
                value={serverUrl}
                onChange={(e) => setServerUrl(e.target.value)}
                placeholder="http://localhost:8787"
              />
            </div>
            <p className="setting-note">
              {t("自前で動かしているサーバーのアドレスを指定します。")}
            </p>
          </section>

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
                    setStrategy(item);
                  }}
                >
                  {t(item.label)}
                </button>
              ))}
            </div>
          </section>

          <section>
            {strategy.id === "qr" && (
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
            )}

            {strategy.id !== "qr" && (
              <div className="field">
                <label htmlFor="loginId">{t("ログイン ID")}</label>
                <input
                  id="loginId"
                  type="text"
                  autoComplete="username"
                  value={loginId}
                  onChange={(e) => setLoginId(e.target.value)}
                />
              </div>
            )}

            {strategy.id !== "sso" && (
              <div className="field">
                <label htmlFor="password">{t("パスワード")}</label>
                <input
                  id="password"
                  type="password"
                  autoComplete={creating ? "new-password" : "current-password"}
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                />
              </div>
            )}

            {creating && (
              <div className="field">
                <label htmlFor="displayName">{t("表示名")}</label>
                <input
                  id="displayName"
                  type="text"
                  value={displayName}
                  onChange={(e) => setDisplayName(e.target.value)}
                />
              </div>
            )}

            {error && <div className="notice">{error}</div>}

            <div className="dialog__actions" style={{ marginTop: "var(--space-4)" }}>
              <button
                type="button"
                className="btn"
                onClick={() => {
                  clearError();
                  setCreating((v) => !v);
                }}
              >
                {creating ? t("既存のアカウントを使う") : t("アカウントを作成")}
              </button>
              <button type="submit" className="btn btn--primary" disabled={busy}>
                {busy ? t("接続中…") : creating ? t("作成してサインイン") : t("サインイン")}
              </button>
            </div>
          </section>
        </form>
      </main>
    </div>
  );
}
