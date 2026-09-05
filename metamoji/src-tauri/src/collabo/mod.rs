//! Real-time classroom collaboration.
//!
//! Two layers, and they are genuinely separate protocols:
//!
//! * `cosmos/*` over HTTPS multipart — create a room, log into it, list its
//!   members, find the relay. `rest.rs`.
//! * a raw TLS socket to that relay, speaking the line protocol in `wire.rs`.
//!   `socket.rs`.
//!
//! `docs/typespec/classroom/collabo-socket-protocol.md` documents both.

pub mod apply;
pub mod direction;
pub mod pull;
pub mod rest;
pub mod session;
pub mod socket;
pub mod wire;
