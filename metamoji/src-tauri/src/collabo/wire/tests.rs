use super::*;

fn decode_all(chunks: &[&[u8]]) -> Vec<Frame> {
    let mut decoder = Decoder::default();
    let mut out = Vec::new();
    for chunk in chunks {
        decoder.push(chunk);
        while let Some(frame) = decoder.next_frame() {
            out.push(frame);
        }
    }
    out
}

#[test]
fn a_room_level_command_encodes_to_the_documented_line() {
    let frame = Frame::new("LoginRoom")
        .param("rid", "R1")
        .param("did", "D1")
        .param("sid", "S1")
        .param("name", "yamada");

    assert_eq!(
        String::from_utf8(frame.encode("C0")).unwrap(),
        "\n*\tC0\tcmd:LoginRoom did:D1 name:yamada rid:R1 sid:S1\n"
    );
}

#[test]
fn a_booth_command_carries_its_channel() {
    let frame = Frame::new("PostData").booth("booth-7").param("loop", 0);
    let line = String::from_utf8(frame.encode("C3")).unwrap();
    assert!(line.starts_with("\nbooth-7\tC3\tcmd:PostData"), "{line}");
}

#[test]
fn a_binary_frame_appends_the_payload_with_no_separator() {
    let frame = Frame::new("PostData")
        .booth("b1")
        .param("binary", 3)
        .payload(vec![1, 2, 3]);

    let bytes = frame.encode("C1");
    assert_eq!(&bytes[bytes.len() - 3..], &[1, 2, 3]);
    // The header's own terminator, and then the bytes with nothing between.
    let header = String::from_utf8(bytes[..bytes.len() - 3].to_vec()).unwrap();
    assert!(header.ends_with("binary:3\n"), "{header}");
}

#[test]
fn parsing_splits_a_value_only_at_the_first_colon() {
    // Base64 and timestamps contain colons; splitting on all of them would
    // silently truncate every one.
    let (command, params) = parse_params("cmd:PostMessage message:YWJj:ZGVm date:12:34:56");
    assert_eq!(command, "PostMessage");
    assert_eq!(params["message"], "YWJj:ZGVm");
    assert_eq!(params["date"], "12:34:56");
}

#[test]
fn a_token_with_no_colon_is_skipped_rather_than_poisoning_the_map() {
    let (command, params) = parse_params("cmd:RoleChanged presenter key:role");
    assert_eq!(command, "RoleChanged");
    assert_eq!(params.len(), 1);
    assert_eq!(params["key"], "role");
}

#[test]
fn decodes_a_plain_push() {
    let frames = decode_all(&[b"\n*\tS1\tcmd:Ping\n"]);
    assert_eq!(frames.len(), 1);
    assert_eq!(frames[0].command, "Ping");
    assert_eq!(frames[0].packet_no, "S1");
}

#[test]
fn decodes_several_frames_from_one_read() {
    let frames = decode_all(&[b"\n*\tS1\tcmd:Ping\n\n*\tS2\tcmd:BoothUpdated bid:b9\n"]);
    assert_eq!(frames.len(), 2);
    assert_eq!(frames[1].command, "BoothUpdated");
    assert_eq!(frames[1].get("bid"), Some("b9"));
}

#[test]
fn a_payload_may_contain_the_frame_separator() {
    // The whole reason this is a byte reader and not a line reader: a
    // serialised model will contain `\n` bytes, and splitting on them would
    // cut the payload in half and desynchronise every frame after it.
    let payload = vec![b'a', b'\n', b'\n', b'b'];
    let mut bytes = b"\nb1\tS5\tcmd:PostData seq:4 binary:4\n".to_vec();
    bytes.extend_from_slice(&payload);
    bytes.extend_from_slice(b"\n*\tS6\tcmd:Ping\n");

    let frames = decode_all(&[&bytes]);
    assert_eq!(frames.len(), 2);
    assert_eq!(frames[0].payload, payload);
    assert_eq!(frames[0].booth_id, "b1");
    assert_eq!(frames[0].get_i64("seq"), Some(4));
    assert_eq!(frames[1].command, "Ping");
}

#[test]
fn a_frame_split_across_reads_is_reassembled() {
    let frames = decode_all(&[b"\n*\tS1\tcmd:Bo", b"othUpdated bid:b1\n"]);
    assert_eq!(frames.len(), 1);
    assert_eq!(frames[0].command, "BoothUpdated");
}

#[test]
fn a_payload_split_across_reads_is_reassembled() {
    let frames = decode_all(&[
        b"\nb1\tS1\tcmd:PostData binary:6\n",
        &[1, 2, 3],
        &[4, 5],
        &[6],
    ]);
    assert_eq!(frames.len(), 1);
    assert_eq!(frames[0].payload, vec![1, 2, 3, 4, 5, 6]);
}

#[test]
fn a_header_arriving_without_its_payload_yields_nothing_yet() {
    let mut decoder = Decoder::default();
    decoder.push(b"\nb1\tS1\tcmd:PostData binary:4\nab");
    assert!(decoder.next_frame().is_none());

    decoder.push(b"cd");
    let frame = decoder.next_frame().expect("payload completed");
    assert_eq!(frame.payload, b"abcd".to_vec());
}

#[test]
fn packet_numbers_are_the_documented_sequence() {
    let mut counter = PacketCounter::default();
    assert_eq!(counter.next(), "C0");
    assert_eq!(counter.next(), "C1");
    assert_eq!(counter.next(), "C2");
}
