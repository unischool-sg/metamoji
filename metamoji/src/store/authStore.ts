/**
 * Sign-in state and the sync client.
 *
 * docs/14 §1 catalogues five login drivers in the original — normal, simple,
 * Google, SSO and external — all built on one `LoginDriver` template method
 * that ends by writing user info into a shared holder. The same shape is kept
 * here as `LoginStrategy`: whatever the method, it produces a token and a user,
 * and everything downstream is identical.
 *
 * docs/14 §4 recommends replacing the original's embedded WebView that sniffs
 * redirects to `mmjsso://oidcsuccess` with Tauri's deep-link handling. The SSO
 * strategy below is written for that and reports plainly that it is not wired
 * up, rather than pretending to work.
 */

import { create } from "zustand";

import { SyncClient, type User } from "../sync/client";

const STORAGE_KEY = "metamoji.auth";
const DEFAULT_SERVER = "http://localhost:8787";

interface Stored {
  serverUrl: string;
  token: string | null;
  user: User | null;
}

function load(): Stored {
  try {
    const raw = window.localStorage?.getItem(STORAGE_KEY);
    if (raw) return { serverUrl: DEFAULT_SERVER, token: null, user: null, ...JSON.parse(raw) };
  } catch {
    // Fall through to defaults.
  }
  return { serverUrl: DEFAULT_SERVER, token: null, user: null };
}

function persist(state: Stored): void {
  try {
    window.localStorage?.setItem(STORAGE_KEY, JSON.stringify(state));
  } catch {
    // Sign-in still works for this session; it just is not remembered.
  }
}

const initial = load();
const client = new SyncClient(initial.serverUrl, initial.token);

export interface LoginResult {
  token: string;
  user: User;
}

/**
 * One way of signing in. docs/14 §1's `LoginDriver` in trait form: the flow
 * differs, the outcome does not.
 */
export interface LoginStrategy {
  id: "normal" | "sso" | "qr";
  label: string;
  login(input: Record<string, string>): Promise<LoginResult>;
}

export const normalLogin: LoginStrategy = {
  id: "normal",
  label: "ID とパスワード",
  async login({ loginId, password }) {
    return client.login(loginId ?? "", password ?? "");
  },
};

/**
 * QR bootstrap.
 *
 * docs/14 §1 documents the original's `$key=value,...` payload and notes a real
 * defect in it: the `pwd` key is parsed and then discarded, so a password can
 * never actually arrive by QR. This parses the same shape but treats the code
 * as carrying a server address and login id only — which is all the original
 * could ever deliver anyway — and asks for the password.
 */
export function parseQrPayload(text: string): Record<string, string> {
  const body = text.startsWith("$") ? text.slice(1) : text;
  const out: Record<string, string> = {};
  for (const pair of body.split(",")) {
    const [key, ...rest] = pair.split("=");
    if (key && rest.length > 0) out[key.trim()] = rest.join("=").trim();
  }
  return out;
}

export const qrLogin: LoginStrategy = {
  id: "qr",
  label: "QR コード",
  async login({ payload, password }) {
    const fields = parseQrPayload(payload ?? "");
    if (fields.rootServer) useAuthStore.getState().setServerUrl(fields.rootServer);
    const loginId = fields.cid ?? fields.uid;
    if (!loginId) throw new Error("QR コードにログイン ID が含まれていません");
    return client.login(loginId, password ?? "");
  },
};

export const ssoLogin: LoginStrategy = {
  id: "sso",
  label: "SSO",
  async login() {
    // Wiring this up means registering a custom scheme with Tauri's deep-link
    // plugin and completing the flow on the redirect (docs/14 §4). Saying so is
    // better than a button that silently does nothing.
    throw new Error("SSO ログインはこのビルドでは未対応です");
  },
};

export const LOGIN_STRATEGIES: LoginStrategy[] = [normalLogin, qrLogin, ssoLogin];

interface AuthState {
  serverUrl: string;
  token: string | null;
  user: User | null;
  client: SyncClient;
  busy: boolean;
  error: string | null;

  setServerUrl: (url: string) => void;
  signIn: (strategy: LoginStrategy, input: Record<string, string>) => Promise<boolean>;
  register: (loginId: string, password: string, displayName: string) => Promise<boolean>;
  signOut: () => Promise<void>;
  clearError: () => void;
}

export const useAuthStore = create<AuthState>((set, get) => ({
  serverUrl: initial.serverUrl,
  token: initial.token,
  user: initial.user,
  client,
  busy: false,
  error: null,

  setServerUrl: (serverUrl) => {
    // Repoint the existing client rather than replacing it: the login
    // strategies and the sync button hold a reference to this object, and a
    // replacement would leave them talking to the previous address.
    const existing = get().client;
    existing.setBaseUrl(serverUrl);
    // Changing server invalidates the session: the token belongs to the old one.
    existing.setToken(null);

    const next = { serverUrl, token: null, user: null };
    persist(next);
    set({ ...next });
  },

  signIn: async (strategy, input) => {
    set({ busy: true, error: null });
    try {
      const result = await strategy.login(input);
      get().client.setToken(result.token);
      persist({ serverUrl: get().serverUrl, token: result.token, user: result.user });
      set({ token: result.token, user: result.user, busy: false });
      return true;
    } catch (err) {
      set({ busy: false, error: err instanceof Error ? err.message : String(err) });
      return false;
    }
  },

  register: async (loginId, password, displayName) => {
    set({ busy: true, error: null });
    try {
      await get().client.register(loginId, password, displayName);
      set({ busy: false });
      // Registering does not sign you in; the caller follows with signIn so
      // there is one code path that establishes a session.
      return true;
    } catch (err) {
      set({ busy: false, error: err instanceof Error ? err.message : String(err) });
      return false;
    }
  },

  signOut: async () => {
    try {
      await get().client.logout();
    } catch {
      // A server that cannot be reached does not stop us signing out locally.
    }
    get().client.setToken(null);
    persist({ serverUrl: get().serverUrl, token: null, user: null });
    set({ token: null, user: null });
  },

  clearError: () => set({ error: null }),
}));

export function isSignedIn(): boolean {
  return useAuthStore.getState().token !== null;
}
