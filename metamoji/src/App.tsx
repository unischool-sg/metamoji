import { createHashRouter, RouterProvider } from "react-router";

import { EditorScreen } from "./screens/EditorScreen";
import { LibraryScreen } from "./screens/LibraryScreen";
import { SettingsScreen } from "./screens/SettingsScreen";

/**
 * Hash routing, not browser history.
 *
 * In a Tauri production build the frontend is served from a custom protocol,
 * where path-style routes plus reload are a known source of blank windows. The
 * hash sidesteps that entirely, and a desktop app has no URLs to keep pretty.
 */
const router = createHashRouter([
  { path: "/", element: <LibraryScreen /> },
  { path: "/note/:noteId", element: <EditorScreen /> },
  { path: "/settings", element: <SettingsScreen /> },
]);

export default function App() {
  return <RouterProvider router={router} />;
}
