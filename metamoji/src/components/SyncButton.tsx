/**
 * The sync control in the library top bar.
 *
 * Shows whether anything is unsynced, runs a pass on demand, and — importantly
 * — reports conflicts. docs/12 §4 notes the original's conflict notification is
 * a silent no-op, which means a user whose work was superseded never learns the
 * duplicate exists. Here it is stated.
 */

import { useCallback, useEffect, useState } from "react";
import { useNavigate } from "react-router";

import { Icon } from "./Icon";
import { useTranslation } from "../i18n/useTranslation";
import type { NoteSummary } from "../ipc/api";
import { hasLocalChanges, runSync, type SyncOutcome } from "../sync/engine";
import { useAuthStore } from "../store/authStore";

interface Props {
  notes: NoteSummary[];
  onSynced: () => void;
}

export function SyncButton({ notes, onSynced }: Props) {
  const { t } = useTranslation();
  const navigate = useNavigate();

  const token = useAuthStore((s) => s.token);
  const user = useAuthStore((s) => s.user);
  const client = useAuthStore((s) => s.client);
  const signOut = useAuthStore((s) => s.signOut);

  const [busy, setBusy] = useState<string | null>(null);
  const [outcome, setOutcome] = useState<SyncOutcome | null>(null);
  const [error, setError] = useState<string | null>(null);

  const pending = notes.filter(hasLocalChanges).length;

  const sync = useCallback(async () => {
    setBusy(t("同期中…"));
    setError(null);
    setOutcome(null);
    try {
      const result = await runSync(client, (stage, done, total) => {
        if (stage === "push") setBusy(t("送信 {done} / {total}", { done: done + 1, total }));
        else if (stage === "pull") setBusy(t("受信 {done} / {total}", { done: done + 1, total }));
      });
      setOutcome(result);
      onSynced();
    } catch (err) {
      setError(err instanceof Error ? err.message : String(err));
    } finally {
      setBusy(null);
    }
  }, [client, onSynced, t]);

  // Clear the result banner after a while; a permanent one becomes wallpaper.
  useEffect(() => {
    if (!outcome || outcome.conflicts.length > 0 || outcome.errors.length > 0) return;
    const timer = setTimeout(() => setOutcome(null), 4000);
    return () => clearTimeout(timer);
  }, [outcome]);

  if (!token) {
    return (
      <button type="button" className="btn btn--text" onClick={() => navigate("/login")}>
        <Icon name="login" size={18} />
        {t("サインイン")}
      </button>
    );
  }

  return (
    <>
      <button
        type="button"
        className="btn btn--text"
        onClick={() => void sync()}
        disabled={busy !== null}
        title={t("同期")}
      >
        <Icon name={busy ? "pending" : "cloud_sync"} size={18} />
        {busy ?? (pending > 0 ? `${t("同期")} (${pending})` : t("同期"))}
      </button>
      <button
        type="button"
        className="icon-btn"
        title={`${t("サインアウト")}${user?.displayName ? ` — ${user.displayName}` : ""}`}
        onClick={() => void signOut()}
      >
        <Icon name="logout" />
        <span className="sr-only">{t("サインアウト")}</span>
      </button>

      {(outcome || error) && (
        <SyncResult outcome={outcome} error={error} onDismiss={() => {
          setOutcome(null);
          setError(null);
        }} />
      )}
    </>
  );
}

function SyncResult({
  outcome,
  error,
  onDismiss,
}: {
  outcome: SyncOutcome | null;
  error: string | null;
  onDismiss: () => void;
}) {
  const { t } = useTranslation();

  return (
    <div className="sync-toast" role="status">
      <div className="sync-toast__body">
        {error && (
          <div>
            {t("同期に失敗しました")}: {error}
          </div>
        )}

        {outcome && !error && (
          <>
            <div>
              {t("同期しました")} — {t("送信 {pushed} 件、受信 {pulled} 件", {
                pushed: outcome.pushed,
                pulled: outcome.pulled,
              })}
              {outcome.deleted > 0 && t("、削除 {deleted} 件", { deleted: outcome.deleted })}
            </div>
            {outcome.conflicts.map((conflict) => (
              <div key={conflict.id} className="sync-toast__conflict">
                {t(
                  "{title} は別の端末でも編集されていたため、この端末の版を複製として残しました。",
                  { title: conflict.title },
                )}
              </div>
            ))}
            {outcome.errors.map((message) => (
              <div key={message} className="sync-toast__conflict">
                {message}
              </div>
            ))}
          </>
        )}
      </div>

      <button type="button" className="icon-btn icon-btn--sm" onClick={onDismiss} title={t("閉じる")}>
        <Icon name="close" size={20} />
        <span className="sr-only">{t("閉じる")}</span>
      </button>
    </div>
  );
}
