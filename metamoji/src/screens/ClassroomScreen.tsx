/**
 * The classroom screen.
 *
 * Covers the teacher controls docs/02 §3 catalogues — 注目 (attention),
 * 締切/ロック (deadline and lock), モニタリング (monitoring) and 配信
 * (distribution) — over the reference backend.
 *
 * Monitoring is a grid of page numbers and thumbnails, not a video feed.
 * docs/01 §11 records that the original works the same way and calls the choice
 * out explicitly: a lightweight periodic collection rather than streaming.
 */

import { useCallback, useEffect, useState } from "react";
import { useNavigate } from "react-router";

import { Icon } from "../components/Icon";
import { useTranslation } from "../i18n/useTranslation";
import * as api from "../ipc/api";
import type { Room } from "../sync/client";
import { referenceBackendAvailable, referenceClient } from "../sync/referenceBackend";
import { useAuthStore } from "../store/authStore";
import { useClassroomStore } from "../store/classroomStore";

const PRESENCE_POLL_MS = 5000;

export function ClassroomScreen() {
  const navigate = useNavigate();
  const { t } = useTranslation();

  const session = useAuthStore((s) => s.session);
  const client = referenceClient;

  const room = useClassroomStore((s) => s.room);
  const role = useClassroomStore((s) => s.role);
  const connection = useClassroomStore((s) => s.connection);
  const attention = useClassroomStore((s) => s.attention);
  const notice = useClassroomStore((s) => s.lastNotice);
  const enter = useClassroomStore((s) => s.enter);
  const leave = useClassroomStore((s) => s.leave);
  const setLocked = useClassroomStore((s) => s.setLocked);
  const setAttention = useClassroomStore((s) => s.setAttention);
  const refreshPresence = useClassroomStore((s) => s.refreshPresence);
  const clearNotice = useClassroomStore((s) => s.clearNotice);
  const monitorEntries = useClassroomStore((s) => s.monitorEntries);

  const [rooms, setRooms] = useState<Room[]>([]);
  const [joinCode, setJoinCode] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);

  const loadRooms = useCallback(async () => {
    if (!referenceBackendAvailable()) return;
    try {
      setRooms((await client.rooms()).rooms);
      setError(null);
    } catch (err) {
      setError(err instanceof Error ? err.message : String(err));
    }
  }, [client]);

  useEffect(() => {
    void loadRooms();
  }, [loadRooms]);

  // Monitoring polls rather than streams; see the file comment.
  useEffect(() => {
    if (!room || role !== "teacher") return;
    void refreshPresence();
    const timer = setInterval(() => void refreshPresence(), PRESENCE_POLL_MS);
    return () => clearInterval(timer);
  }, [room, role, refreshPresence]);

  const act = async (fn: () => Promise<unknown>) => {
    setBusy(true);
    setError(null);
    try {
      await fn();
    } catch (err) {
      setError(err instanceof Error ? err.message : String(err));
    } finally {
      setBusy(false);
    }
  };

  const create = () => {
    const name = window.prompt(t("教室名"));
    if (!name?.trim()) return;
    void act(async () => {
      const { room: made } = await client.createRoom(name.trim());
      await loadRooms();
      await enter(made.id);
    });
  };

  const join = () =>
    void act(async () => {
      const { room: joined } = await client.joinRoom(joinCode.trim());
      setJoinCode("");
      await loadRooms();
      await enter(joined.id);
    });

  const distributeCurrent = () =>
    void act(async () => {
      if (!room) return;
      const notes = await api.libraryList({});
      if (notes.length === 0) throw new Error(t("配信できるノートがありません"));

      // Distribute the most recently updated note, which is what the teacher
      // was just working on.
      const note = notes[0];
      const tree = await api.noteLoad(note.id);
      await client.distribute(room.id, note.id, note.title, JSON.stringify(tree));
    });

  if (!referenceBackendAvailable()) {
    return (
      <Shell title={t("教室")} onBack={() => navigate("/")}>
        <div className="library__empty">
          <Icon name="school" size={48} />
          <p>
            {t(
              "教室機能はこのビルドの参照バックエンド向けに作られており、MetaMoJi のサーバーの協働編集 API は実装していません。",
            )}
          </p>
          <p className="setting-note">
            {session
              ? t("サインイン中のアカウントでは教室に参加できません。")
              : t("サインインしても教室は利用できません。")}
          </p>
        </div>
      </Shell>
    );
  }

  if (!room) {
    return (
      <Shell title={t("教室")} onBack={() => navigate("/")}>
        <section className="settings" style={{ maxWidth: 640 }}>
          <h2>{t("参加する")}</h2>
          <div className="setting-row field" style={{ flexDirection: "row", alignItems: "center" }}>
            <input
              type="text"
              inputMode="numeric"
              placeholder={t("参加コード")}
              value={joinCode}
              onChange={(e) => setJoinCode(e.target.value)}
              style={{ flex: 1 }}
            />
            <button
              type="button"
              className="btn btn--primary"
              disabled={busy || joinCode.trim().length === 0}
              onClick={join}
            >
              {t("参加")}
            </button>
          </div>

          <h2>{t("自分の教室")}</h2>
          {rooms.length === 0 && <p className="setting-note">{t("まだありません")}</p>}
          <div className="pen-list">
            {rooms.map((item) => (
              <button
                key={item.id}
                type="button"
                className="pen-row"
                onClick={() => void act(() => enter(item.id))}
              >
                {item.name}
                <span style={{ marginLeft: "auto", color: "var(--md-sys-color-on-surface-variant)" }}>
                  {item.joinCode}
                </span>
              </button>
            ))}
          </div>

          <button type="button" className="btn" style={{ width: "100%" }} onClick={create}>
            <Icon name="add" size={18} />
            {t("教室を作る")}
          </button>

          {error && (
            <div className="notice notice--error">
              <Icon name="error" size={20} />
              <span>{error}</span>
            </div>
          )}
        </section>
      </Shell>
    );
  }

  const entries = monitorEntries();

  return (
    <Shell
      title={room.name}
      onBack={() => {
        leave();
        navigate("/");
      }}
      extra={
        <>
          <span className="save-chip" data-state={connection === "online" ? undefined : "dirty"}>
            <Icon
              name={
                connection === "online"
                  ? "check_circle"
                  : connection === "connecting"
                    ? "pending"
                    : "cloud_off"
              }
              size={16}
            />
            {connection === "online"
              ? t("接続中")
              : connection === "connecting"
                ? t("接続しています…")
                : t("オフライン")}
          </span>
          <span className="save-chip">
            {t("参加コード")}: {room.joinCode}
          </span>
        </>
      }
    >
      <main className="settings" style={{ maxWidth: 900 }}>
        {notice && (
          <div className="notice resume">
            <Icon name="campaign" size={20} />
            <span style={{ flex: 1 }}>{notice}</span>
            <button type="button" className="btn btn--text" onClick={clearNotice}>
              {t("閉じる")}
            </button>
          </div>
        )}
        {error && (
          <div className="notice notice--error">
            <Icon name="error" size={20} />
            <span>{error}</span>
          </div>
        )}

        {role === "teacher" && (
          <section>
            <h2>{t("教師用の操作")}</h2>
            <div className="button-grid">
              <button
                type="button"
                className="btn"
                disabled={busy}
                onClick={() => void act(() => setLocked(!room.locked))}
              >
                <Icon name={room.locked ? "lock_open" : "lock_clock"} size={18} />
                {room.locked ? t("ロックを解除") : t("締切・ロック")}
              </button>
              <button
                type="button"
                className="btn"
                disabled={busy}
                onClick={() => void act(() => setAttention(attention ? null : "*"))}
              >
                <Icon name="front_hand" size={18} />
                {attention ? t("注目を解除") : t("注目させる")}
              </button>
              <button type="button" className="btn" disabled={busy} onClick={distributeCurrent}>
                <Icon name="co_present" size={18} />
                {t("ノートを配信")}
              </button>
              <button
                type="button"
                className="btn"
                disabled={busy}
                onClick={() => void act(() => refreshPresence())}
              >
                <Icon name="refresh" size={18} />
                {t("更新")}
              </button>
            </div>
            <p className="setting-note">
              {room.locked
                ? t("生徒の編集は停止しています。")
                : t("生徒は自由に編集できます。")}
            </p>
          </section>
        )}

        {role === "teacher" && (
          <section>
            <h2>{t("モニタリング")}</h2>
            {entries.length === 0 ? (
              <p className="setting-note">{t("参加している生徒はいません。")}</p>
            ) : (
              <div className="monitor-grid">
                {entries.map((entry) => (
                  <div
                    key={entry.userId}
                    className="monitor-cell"
                    data-online={entry.online ? "true" : undefined}
                  >
                    {entry.thumbnail ? (
                      <img src={entry.thumbnail} alt="" />
                    ) : (
                      <div className="monitor-cell__blank" />
                    )}
                    <div className="monitor-cell__label">
                      <span>{entry.displayName}</span>
                      <span>{t("{n} ページ目", { n: entry.pageIndex + 1 })}</span>
                    </div>
                    <button
                      type="button"
                      className="btn btn--text"
                      onClick={() => void act(() => setAttention(entry.userId))}
                    >
                      <Icon name="front_hand" size={18} />
                      {t("注目")}
                    </button>
                  </div>
                ))}
              </div>
            )}
            <p className="setting-note">
              {t("画面は動画ではなく、ページ番号とサムネイルを定期的に集めて表示しています。")}
            </p>
          </section>
        )}

        {role === "student" && (
          <section>
            <h2>{t("この教室")}</h2>
            <p className="setting-note">
              {room.locked
                ? t("先生が編集を停止しています。")
                : t("ノートを開くと、編集内容が教室に共有されます。")}
            </p>
            <button type="button" className="btn btn--primary" onClick={() => navigate("/")}>
              {t("ノートを開く")}
            </button>
          </section>
        )}
      </main>
    </Shell>
  );
}

function Shell({
  title,
  onBack,
  extra,
  children,
}: {
  title: string;
  onBack: () => void;
  extra?: React.ReactNode;
  children: React.ReactNode;
}) {
  const { t } = useTranslation();
  return (
    <div className="app">
      <header className="topbar">
        <button type="button" className="icon-btn" onClick={onBack} title={t("ノート一覧に戻る")}>
          <Icon name="arrow_back" />
          <span className="sr-only">{t("ノート一覧に戻る")}</span>
        </button>
        <span className="topbar__title">{title}</span>
        {extra}
      </header>
      {children}
    </div>
  );
}
