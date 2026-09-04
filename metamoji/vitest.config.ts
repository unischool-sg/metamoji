import { defineConfig } from "vitest/config";

export default defineConfig({
  test: {
    // The canvas controller drives real DOM events, so those tests need a DOM.
    // Everything else is pure and runs fine either way.
    environment: "jsdom",
    include: ["src/**/*.test.ts"],
  },
});
