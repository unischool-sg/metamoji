/**
 * The QR bootstrap.
 *
 * The parsing is the only part of sign-in that can be tested without a server,
 * and it is also the part with a documented trap: docs/14 §1 records that the
 * original's `pwd` key is parsed and thrown away, so a QR code can carry a
 * school and a user but never a password.
 */

import { describe, expect, it } from "vitest";

import { parseCid, parseQrPayload } from "./authStore";

describe("parseQrPayload", () => {
  it("reads the $key=value,... form", () => {
    expect(parseQrPayload("$cid=school01,uid=student01,qwd=abc")).toEqual({
      cid: "school01",
      uid: "student01",
      qwd: "abc",
    });
  });

  it("accepts the payload without the leading $", () => {
    expect(parseQrPayload("cid=school01")).toEqual({ cid: "school01" });
  });

  it("keeps '=' inside a value", () => {
    // A base64 `qwd` ends in padding; splitting on every '=' would truncate it.
    expect(parseQrPayload("qwd=YWJj==").qwd).toBe("YWJj==");
  });

  it("skips a key with no value rather than storing undefined", () => {
    expect(parseQrPayload("$cid=school01,uid,qwd=x")).toEqual({
      cid: "school01",
      qwd: "x",
    });
  });

  it("is empty for junk", () => {
    expect(parseQrPayload("")).toEqual({});
    expect(parseQrPayload("just some text")).toEqual({});
  });
});

describe("parseCid", () => {
  it("takes a bare school id as-is", () => {
    expect(parseCid("school01")).toEqual({ coLoginId: "school01" });
  });

  it("splits a URL into its root server and the trailing school id", () => {
    // `LoginUtils.getRootServerUrlAndCoLoginIdFromUrl` accepts either form,
    // because an administrator may paste either into the code generator.
    expect(parseCid("https://mps.metamoji.com/school01")).toEqual({
      rootServer: "https://mps.metamoji.com/",
      coLoginId: "school01",
    });
  });

  it("keeps a path prefix on the root server", () => {
    expect(parseCid("https://school.example/mmj/school01")).toEqual({
      rootServer: "https://school.example/mmj/",
      coLoginId: "school01",
    });
  });

  it("falls back to treating an unparseable value as an id", () => {
    expect(parseCid("http://")).toEqual({ coLoginId: "http://" });
  });

  it("trims surrounding whitespace", () => {
    expect(parseCid("  school01 ")).toEqual({ coLoginId: "school01" });
  });
});
