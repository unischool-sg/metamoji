/**
 * The account control in the library top bar.
 *
 * Was a sync button. Sign-in now goes to MetaMoJi's cloud, and this build
 * implements its authentication only — the note APIs are a separate family
 * (`src-tauri/src/cloud.rs`), so there is nothing here to sync *to* and a sync
 * button would be a promise the app cannot keep.
 *
 * What is left is what the session genuinely gives you: who you are, which
 * school, and a way out.
 */

import { useNavigate } from "react-router";

import { Icon } from "./Icon";
import { Menu } from "./Menu";
import { useTranslation } from "../i18n/useTranslation";
import { useAuthStore } from "../store/authStore";

export function AccountButton() {
  const { t } = useTranslation();
  const navigate = useNavigate();

  const session = useAuthStore((s) => s.session);
  const signOut = useAuthStore((s) => s.signOut);

  if (!session) {
    return (
      <button type="button" className="btn btn--text" onClick={() => navigate("/login")}>
        <Icon name="login" size={18} />
        {t("サインイン")}
      </button>
    );
  }

  return (
    <Menu
      icon="person"
      title={session.name || session.loginName}
      items={[
        {
          id: "who",
          // The school is part of the identity here, not decoration: the same
          // person can hold accounts at more than one.
          label: session.companyName
            ? `${session.name || session.loginName} — ${session.companyName}`
            : session.name || session.loginName,
          icon: "person",
          disabled: true,
          onSelect: () => {},
        },
        {
          id: "signout",
          label: t("サインアウト"),
          icon: "logout",
          separatorBefore: true,
          onSelect: () => void signOut(),
        },
      ]}
    />
  );
}
