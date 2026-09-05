import { useEffect } from "react";
import { createHashRouter, RouterProvider } from "react-router";

import { useAuthStore } from "./store/authStore";
import { EditorScreen } from "./screens/EditorScreen";
import { LibraryScreen } from "./screens/LibraryScreen";
import { ClassroomScreen } from "./screens/ClassroomScreen";
import { LoginScreen } from "./screens/LoginScreen";
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
  { path: "/login", element: <LoginScreen /> },
  { path: "/classroom", element: <ClassroomScreen /> },
]);

export default function App() {
  // The sign-in session lives in the Rust process, not here, so the frontend
  // has to ask for it — otherwise a webview reload would look like a sign-out
  // to every screen that shows the account.
  const init = useAuthStore((s) => s.init);
  useEffect(() => {
    void init();
  }, [init]);

  return <RouterProvider router={router} />;
}
