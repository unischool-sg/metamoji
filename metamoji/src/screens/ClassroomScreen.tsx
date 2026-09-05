/**
 * The classroom.
 *
 * Two steps, because MetaMoJi's model has two: a **class box** is the shared
 * drive a class works in, joined once with a code the teacher reads out; a
 * **room** is a live session inside it, opened and closed per lesson.
 *
 * What is live here is presence, roles and the teacher's messages. Strokes are
 * not: see `store/classroomStore.ts` for why, and for the counter that keeps
 * that gap visible instead of silent.
 */

import { useEffect, useState } from "react";
import { useNavigate } from "react-router";

import { Icon } from "../components/Icon";
import { useTranslation } from "../i18n/useTranslation";
import { useAuthStore } from "../store/authStore";
import { canEdit, useClassroomStore } from "../store/classroomStore";

export function ClassroomScreen() {
  const navigate = useNavigate();
  const { t } = useTranslation();

  const session = useAuthStore((s) => s.session);
  const store = useClassroomStore();
  const [boxName, setBoxName] = useState("");
  const [joinCode, setJoinCode] = useState("");
  const [roomTitle, setRoomTitle] = useState("");

  const nickname = session?.name || session?.loginName || "";

  useEffect(() => {
    let cancelled = false;
    let off: (() => void) | undefined;
    void useClassroomStore
      .getState()
      .subscribe()
      .then((fn) => {
        if (cancelled) fn();
        else off = fn;
      });
    return () => {
      cancelled = true;
      off?.();
    };
  }, []);

  // The roster call is the only way to learn about people who joined before
  // us; the socket only reports changes from now on.
  useEffect(() => {
    if (store.connection !== "online") return;
    const timer = setInterval(() => void useClassroomStore.getState().refreshMembers(), 15000);
    return () => clearInterval(timer);
  }, [store.connection]);

  if (!session) {
    return (
      <Shell title={t("教室")} onBack={() => navigate("/")}>
        <div className="library__empty">
          <Icon name="school" size={48} />
          <p>{t("教室を使うにはサインインが必要です。")}</p>
          <button type="button" className="btn btn--primary" onClick={() => navigate("/login")}>
            <Icon name="login" size={18} />
            {t("サインイン")}
          </button>
        </div>
      </Shell>
    );
  }

  const banner = (
    <>
      {store.notice && (
        <div className="notice resume">
          <Icon name="campaign" size={20} />
          <span style={{ flex: 1 }}>{store.notice}</span>
          <button type="button" className="btn btn--text" onClick={store.clearNotice}>
            {t("閉じる")}
          </button>
        </div>
      )}
      {store.error && (
        <div className="notice notice--error">
          <Icon name="error" size={20} />
          <span style={{ flex: 1 }}>{store.error}</span>
          <button type="button" className="btn btn--text" onClick={store.clearError}>
            {t("閉じる")}
          </button>
        </div>
      )}
    </>
  );

  // -- step 1: a class box -------------------------------------------------

  if (!store.box) {
    return (
      <Shell title={t("教室")} onBack={() => navigate("/")}>
        <main className="settings" style={{ maxWidth: 640 }}>
          {banner}

          <section>
            <h2>{t("参加する")}</h2>
            <div className="field">
              <label htmlFor="joinCode">{t("参加コード")}</label>
              <input
                id="joinCode"
                type="text"
                inputMode="numeric"
                value={joinCode}
                onChange={(e) => setJoinCode(e.target.value)}
              />
            </div>
            <button
              type="button"
              className="btn btn--primary"
              disabled={store.busy || joinCode.trim().length === 0}
              onClick={() => void store.joinBox(joinCode.trim())}
            >
              <Icon name="login" size={18} />
              {t("参加")}
            </button>
          </section>

          <section>
            <h2>{t("教室を作る")}</h2>
            <div className="field">
              <label htmlFor="boxName">{t("教室名")}</label>
              <input
                id="boxName"
                type="text"
                value={boxName}
                onChange={(e) => setBoxName(e.target.value)}
              />
            </div>
            <button
              type="button"
              className="btn"
              disabled={store.busy || boxName.trim().length === 0}
              onClick={() => void store.createBox(boxName.trim())}
            >
              <Icon name="add" size={18} />
              {t("教室を作る")}
            </button>
            <p className="setting-note">
              {t("先生が作成し、表示される参加コードを生徒に伝えます。")}
            </p>
          </section>
        </main>
      </Shell>
    );
  }

  // -- step 2: a room inside it --------------------------------------------

  const online = store.members.filter((m) => m.online);

  return (
    <Shell
      title={store.box.name ?? t("教室")}
      onBack={() => navigate("/")}
      extra={
        <>
          <span
            className="save-chip"
            data-state={store.connection === "online" ? undefined : "dirty"}
          >
            <Icon
              name={
                store.connection === "online"
                  ? "check_circle"
                  : store.connection === "connecting"
                    ? "pending"
                    : "cloud_off"
              }
              size={16}
            />
            {store.connection === "online"
              ? t("接続中")
              : store.connection === "connecting"
                ? t("接続しています…")
                : t("オフライン")}
          </span>
          {store.box.joinCode && (
            <span className="save-chip">
              {t("参加コード")}: {store.box.joinCode}
            </span>
          )}
        </>
      }
    >
      <main className="settings" style={{ maxWidth: 900 }}>
        {banner}

        {store.connection === "offline" ? (
          <section>
            <h2>{t("授業を始める")}</h2>
            <div className="field">
              <label htmlFor="roomTitle">{t("授業名")}</label>
              <input
                id="roomTitle"
                type="text"
                value={roomTitle}
                onChange={(e) => setRoomTitle(e.target.value)}
              />
            </div>
            <button
              type="button"
              className="btn btn--primary"
              disabled={store.busy || roomTitle.trim().length === 0}
              onClick={() => void store.enterRoom(roomTitle.trim(), nickname)}
            >
              <Icon name="co_present" size={18} />
              {t("授業を開く")}
            </button>
          </section>
        ) : (
          <section>
            <h2>{store.roomTitle ?? t("授業中")}</h2>
            <div className="button-grid">
              <button
                type="button"
                className="btn"
                onClick={() => void store.refreshMembers()}
              >
                <Icon name="refresh" size={18} />
                {t("更新")}
              </button>
              <button
                type="button"
                className="btn btn--danger"
                onClick={() => void store.leaveRoom()}
              >
                <Icon name="logout" size={18} />
                {t("授業を終える")}
              </button>
            </div>
            <p className="setting-note">
              {canEdit(store.roles)
                ? t("あなたは編集できる役割です({roles})。", {
                    roles: store.roles.join(", "),
                  })
                : t("あなたは閲覧のみの役割です。")}
            </p>
          </section>
        )}

        <section>
          <h2>
            {t("参加者")} ({online.length} / {store.members.length})
          </h2>
          {store.members.length === 0 ? (
            <p className="setting-note">{t("参加している人はいません。")}</p>
          ) : (
            <div className="monitor-grid">
              {store.members.map((member) => (
                <div
                  key={member.userId}
                  className="monitor-cell"
                  data-online={member.online ? "true" : undefined}
                >
                  <div className="monitor-cell__blank" style={{ display: "grid", placeItems: "center" }}>
                    <Icon name="person" size={32} />
                  </div>
                  <div className="monitor-cell__label">
                    <span>{member.name ?? member.userId}</span>
                    <span>{member.role ?? ""}</span>
                  </div>
                </div>
              ))}
            </div>
          )}
        </section>

        <section>
          <h2>{t("共同編集")}</h2>
          <p className="setting-note">
            {t(
              "この版では編集内容の送受信に対応していません。ノートの編集は端末内にとどまります。",
            )}
          </p>
          {store.receivedDirections > 0 && (
            <p className="setting-note">
              {t("受信した編集: {count} 件(未適用)", {
                count: store.receivedDirections,
              })}
            </p>
          )}
        </section>

        <section>
          <h2>{t("参加コード")}</h2>
          <div className="setting-row">
            <label>{t("参加コード")}</label>
            <code className="setting-value">{store.box.joinCode ?? "—"}</code>
          </div>
          <div className="button-grid">
            <button
              type="button"
              className="btn"
              onClick={() => void store.refreshCode(true)}
            >
              <Icon name="refresh" size={18} />
              {t("コードを作り直す")}
            </button>
            <button
              type="button"
              className="btn"
              onClick={() => void store.setJoinEnabled(!store.box?.joinEnabled)}
            >
              <Icon name={store.box.joinEnabled ? "lock" : "lock_open"} size={18} />
              {store.box.joinEnabled ? t("参加を締め切る") : t("参加を再開する")}
            </button>
          </div>
          <p className="setting-note">
            {t("コードを作り直すと、以前のコードでは参加できなくなります。")}
          </p>
        </section>
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
        <div className="topbar__spacer" />
        {extra}
      </header>
      {children}
    </div>
  );
}
