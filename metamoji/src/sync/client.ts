/**
 * HTTP client for the sync/classroom backend.
 *
 * Every call goes through `request`, so the session token, error shape and base
 * URL have one definition site each. The server is the reference implementation
 * in `server/`; nothing here talks to MetaMoJi's own services, which docs/03 §2
 * is explicit cannot and should not be done.
 */

export interface User {
  id: string;
  loginId: string;
  displayName: string;
}

export interface DocumentMeta {
  id: string;
  title: string;
  revision: number;
  driveRevision: number;
  updatedAt: string;
  deleted: boolean;
}

export interface DriveDelta {
  driveRevision: number;
  documents: DocumentMeta[];
}

export interface RemoteDocument extends Omit<DocumentMeta, "deleted"> {
  data: string;
}

export interface Room {
  id: string;
  name: string;
  joinCode: string;
  ownerId: string;
  locked: boolean;
  createdAt: string;
}

export type RoomRole = "teacher" | "student";

export interface Member {
  roomId: string;
  userId: string;
  displayName: string;
  role: RoomRole;
}

export interface RoomDetail {
  room: Room;
  role: RoomRole;
  members: Member[];
  online: string[];
  socketUrl: string;
}

export interface PresenceEntry {
  userId: string;
  pageIndex: number;
  thumbnail: string | null;
  updatedAt: string;
}

export interface Distribution {
  id: string;
  documentId: string;
  title: string;
  data: string;
  at: string;
}

/** A refused write, carrying the server's current state so it can be resolved. */
export class ConflictError extends Error {
  constructor(
    readonly server: DocumentMeta,
    readonly serverData: string | null,
  ) {
    super("サーバー側が更新されています");
    this.name = "ConflictError";
  }
}

export class SyncClient {
  constructor(
    private baseUrl: string,
    private token: string | null = null,
  ) {
    this.baseUrl = baseUrl.replace(/\/+$/, "");
  }

  setToken(token: string | null): void {
    this.token = token;
  }

  /**
   * Repoints the client at a different server.
   *
   * Mutating rather than constructing a replacement is deliberate: login
   * strategies and long-lived components hold a reference to this object, and
   * swapping the instance leaves every one of them talking to the old address.
   */
  setBaseUrl(baseUrl: string): void {
    this.baseUrl = baseUrl.replace(/\/+$/, "");
  }

  get url(): string {
    return this.baseUrl;
  }

  private async request<T>(
    path: string,
    init: RequestInit = {},
    // Conflicts are an expected outcome of a write, not a transport failure,
    // so callers opt into receiving them as a typed error.
    expectConflict = false,
  ): Promise<T> {
    const headers: Record<string, string> = {
      "content-type": "application/json",
      ...(init.headers as Record<string, string> | undefined),
    };
    if (this.token) headers.authorization = `Bearer ${this.token}`;

    let response: Response;
    try {
      response = await fetch(`${this.baseUrl}${path}`, { ...init, headers });
    } catch (cause) {
      throw new Error(`サーバーに接続できません (${this.baseUrl})`, { cause });
    }

    if (expectConflict && response.status === 409) {
      const body = (await response.json()) as {
        server: DocumentMeta;
        serverData: string | null;
      };
      throw new ConflictError(body.server, body.serverData);
    }

    if (!response.ok) {
      const body = (await response.json().catch(() => null)) as { error?: string } | null;
      throw new Error(body?.error ?? `サーバーエラー (${response.status})`);
    }

    return (await response.json()) as T;
  }

  // -- accounts -------------------------------------------------------------

  register(loginId: string, password: string, displayName: string) {
    return this.request<{ user: User }>("/auth/register", {
      method: "POST",
      body: JSON.stringify({ loginId, password, displayName }),
    });
  }

  login(loginId: string, password: string) {
    return this.request<{ token: string; user: User }>("/auth/login", {
      method: "POST",
      body: JSON.stringify({ loginId, password }),
    });
  }

  logout() {
    return this.request<{ ok: boolean }>("/auth/logout", { method: "POST" });
  }

  me() {
    return this.request<{ user: User }>("/auth/me");
  }

  // -- sync -----------------------------------------------------------------

  delta(since: number) {
    return this.request<DriveDelta>(`/sync/delta?since=${since}`);
  }

  getDocument(id: string) {
    return this.request<RemoteDocument>(`/sync/documents/${encodeURIComponent(id)}`);
  }

  putDocument(id: string, title: string, data: string, check: number | null) {
    return this.request<DocumentMeta>(
      `/sync/documents/${encodeURIComponent(id)}`,
      { method: "PUT", body: JSON.stringify({ title, data, check }) },
      true,
    );
  }

  deleteDocument(id: string) {
    return this.request<DocumentMeta>(`/sync/documents/${encodeURIComponent(id)}`, {
      method: "DELETE",
    });
  }

  // -- classroom ------------------------------------------------------------

  rooms() {
    return this.request<{ rooms: Room[] }>("/classroom/rooms");
  }

  createRoom(name: string) {
    return this.request<{ room: Room }>("/classroom/rooms", {
      method: "POST",
      body: JSON.stringify({ name }),
    });
  }

  joinRoom(joinCode: string) {
    return this.request<{ room: Room; role: RoomRole; socketUrl: string }>(
      "/classroom/join",
      { method: "POST", body: JSON.stringify({ joinCode }) },
    );
  }

  room(roomId: string) {
    return this.request<RoomDetail>(`/classroom/rooms/${encodeURIComponent(roomId)}`);
  }

  directionsSince(roomId: string, since: number) {
    return this.request<{ directions: RelayDirection[] }>(
      `/classroom/rooms/${encodeURIComponent(roomId)}/directions?since=${since}`,
    );
  }

  setLocked(roomId: string, locked: boolean) {
    return this.request<{ ok: boolean; locked: boolean }>(
      `/classroom/rooms/${encodeURIComponent(roomId)}/lock`,
      { method: "POST", body: JSON.stringify({ locked }) },
    );
  }

  setAttention(roomId: string, userId: string | null) {
    return this.request<{ ok: boolean }>(
      `/classroom/rooms/${encodeURIComponent(roomId)}/attention`,
      { method: "POST", body: JSON.stringify({ userId }) },
    );
  }

  distribute(roomId: string, documentId: string, title: string, data: string) {
    return this.request<{ ok: boolean; id: string; at: string }>(
      `/classroom/rooms/${encodeURIComponent(roomId)}/distribute`,
      { method: "POST", body: JSON.stringify({ documentId, title, data }) },
    );
  }

  distributions(roomId: string) {
    return this.request<{ distributions: Distribution[] }>(
      `/classroom/rooms/${encodeURIComponent(roomId)}/distributions`,
    );
  }

  postPresence(roomId: string, pageIndex: number, thumbnail?: string) {
    return this.request<{ ok: boolean }>(
      `/classroom/rooms/${encodeURIComponent(roomId)}/presence`,
      { method: "POST", body: JSON.stringify({ pageIndex, thumbnail }) },
    );
  }

  presence(roomId: string) {
    return this.request<{ presence: PresenceEntry[]; online: string[] }>(
      `/classroom/rooms/${encodeURIComponent(roomId)}/presence`,
    );
  }

  /** WebSocket URL with the session token attached. */
  socketUrl(roomId: string): string {
    const http = new URL(this.baseUrl);
    const protocol = http.protocol === "https:" ? "wss:" : "ws:";
    return `${protocol}//${http.host}/ws?room=${encodeURIComponent(roomId)}&token=${this.token ?? ""}`;
  }
}

export interface RelayDirection {
  seq: number;
  roomId: string;
  editId: string;
  actorId: string;
  documentId: string;
  payload: unknown;
  at: string;
}
