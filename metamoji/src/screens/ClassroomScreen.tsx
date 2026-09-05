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
import * as api from "../ipc/api";
import { newNoteId } from "../model/ids";
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
  const [opening, setOpening] = useState<string | null>(null);

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

  // The account's own class boxes, so the common case — a student opening the
  // app on a Tuesday — needs no join code at all.
  useEffect(() => {
    if (session) void useClassroomStore.getState().loadMyBoxes();
  }, [session]);

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
            <h2>{t("自分のクラス")}</h2>
            {store.loadingBoxes ? (
              <p className="setting-note">{t("読み込み中…")}</p>
            ) : store.boxesError ? (
              <div className="notice notice--error">
                <Icon name="error" size={20} />
                <span style={{ flex: 1 }}>{store.boxesError}</span>
                <button
                  type="button"
                  className="btn btn--text"
                  onClick={() => void store.loadMyBoxes()}
                >
                  {t("再読み込み")}
                </button>
              </div>
            ) : store.myBoxes === null ? (
              <button
                type="button"
                className="btn"
                onClick={() => void store.loadMyBoxes()}
              >
                <Icon name="refresh" size={18} />
                {t("読み込む")}
              </button>
            ) : store.myBoxes.length === 0 ? (
              <p className="setting-note">
                {t("所属しているクラスはありません。下から参加してください。")}
              </p>
            ) : (
              <div className="pen-list">
                {store.myBoxes.map((entry) => (
                  <button
                    key={entry.driveId}
                    type="button"
                    className="pen-row"
                    onClick={() => void store.selectBox(entry)}
                  >
                    <Icon name="school" size={20} />
                    <span style={{ flex: 1 }}>{entry.name ?? entry.driveId}</span>
                    <Icon name="keyboard_arrow_right" size={20} />
                  </button>
                ))}
              </div>
            )}
          </section>

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

  // -- step 2: the box's contents, and a room inside it ---------------------

  const online = store.members.filter((m) => m.online);

  /**
   * Copies a note out of the class box into the local library.
   *
   * A copy, not a link: writing back needs a serialiser this build does not
   * have, so pretending the two stay in step would be a lie the user only
   * discovers after a lesson's work.
   */
  const openNote = async (documentId: string, title: string | null) => {
    if (!store.box) return;
    setOpening(documentId);
    try {
      const noteId = newNoteId();
      const result = await api.classboxOpenNote(store.box.driveId, documentId, noteId);
      const summary = await api.libraryCreate(
        result.tree,
        title ?? t("クラスボックスのノート"),
      );
      navigate(`/note/${summary.id}`);
    } catch (err) {
      useClassroomStore.setState({
        error: err instanceof Error ? err.message : String(err),
      });
    } finally {
      setOpening(null);
    }
  };

  return (
    <Shell
      title={store.box.name ?? t("教室")}
      onBack={() => void store.closeBox()}
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
          <h2>{t("クラスボックスのノート")}</h2>
          {store.openingBox ? (
            <p className="setting-note">{t("読み込み中…")}</p>
          ) : !store.listing ? (
            <>
              {store.listingError && (
                <div className="notice notice--error" style={{ marginBottom: "var(--space-3)" }}>
                  <Icon name="error" size={20} />
                  <span>{store.listingError}</span>
                </div>
              )}
              <button type="button" className="btn" onClick={() => void store.openBox()}>
                <Icon name="folder" size={18} />
                {store.listingError ? t("再読み込み") : t("開く")}
              </button>
            </>
          ) : store.listing.documents.length === 0 ? (
            <>
              <p className="setting-note">{t("ノートはまだありません。")}</p>
              {store.listing.unrecognised.length > 0 && (
                // An unreadable box and an empty one mean very different things
                // to a teacher, so they must not look the same.
                <div className="notice notice--warning" style={{ marginTop: "var(--space-3)" }}>
                  <Icon name="warning" size={20} />
                  <span>
                    {t(
                      "中身を解釈できませんでした({count} 件のレコード、未知の項目: {types})。",
                      {
                        count: store.listing.recordCount,
                        types: store.listing.unrecognised.join(", "),
                      },
                    )}
                  </span>
                </div>
              )}
            </>
          ) : (
            <div className="library__grid">
              {store.listing.documents.map((doc) => (
                <div key={doc.documentId} className="note-card">
                  <button
                    type="button"
                    className="note-card__open"
                    disabled={opening !== null}
                    onClick={() => void openNote(doc.documentId, doc.title)}
                  >
                    <div className="note-card__thumb" />
                  </button>
                  <div className="note-card__body">
                    <div className="note-card__title">
                      {doc.title ?? doc.documentId}
                    </div>
                    <div className="note-card__meta">
                      {opening === doc.documentId
                        ? t("読み込み中…")
                        : t("端末に複製して開きます")}
                    </div>
                  </div>
                </div>
              ))}
            </div>
          )}
        </section>

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
          {store.codeError && (
            <p className="setting-note">
              {t("このドライブには参加コードがありません。")}
              <br />
              {store.codeError}
            </p>
          )}
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
