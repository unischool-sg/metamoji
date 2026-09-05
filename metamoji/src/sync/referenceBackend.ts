/**
 * The reference backend's client.
 *
 * Scope B (note sync) and C (classroom collaboration) were built against
 * `server/`, this repo's own backend, and they still work against it — the
 * client, `sync/engine.ts`, `store/classroomStore.ts` and the server itself are
 * intact and tested.
 *
 * What changed is sign-in. It now goes to MetaMoJi's cloud, whose note and
 * collaboration APIs are twelve further families this build does not implement
 * (`src-tauri/src/cloud.rs`). So nothing signs *this* client in, and both
 * features report that plainly instead of firing requests that cannot succeed.
 *
 * Reaching them again is a matter of giving this module a session — not of
 * rewriting anything.
 */

import { SyncClient } from "./client";

/** Where `server/` listens by default. */
export const DEFAULT_REFERENCE_SERVER = "http://localhost:8787";

export const referenceClient = new SyncClient(DEFAULT_REFERENCE_SERVER);

/** Whether sync and classroom have a session to work with. */
export function referenceBackendAvailable(): boolean {
  return referenceClient.hasToken();
}
