import React from "react";
import ReactDOM from "react-dom/client";

// Roboto is Material's typeface. Bundled (latin subset only) rather than loaded
// from a CDN: a desktop app should not need the network to render its own text.
// Japanese falls through to the platform face — see `--md-ref-typeface-plain`.
import "@fontsource/roboto/latin-400.css";
import "@fontsource/roboto/latin-500.css";

import App from "./App";
import { installRipple } from "./components/ripple";
import "./styles/global.css";

installRipple();

ReactDOM.createRoot(document.getElementById("root") as HTMLElement).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
);
