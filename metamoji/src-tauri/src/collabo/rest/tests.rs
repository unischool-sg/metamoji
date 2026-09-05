use super::*;

fn body(value: Value) -> Map<String, Value> {
    match value {
        Value::Object(map) => map,
        _ => unreachable!(),
    }
}

#[test]
fn a_port_is_read_whether_it_arrives_as_a_number_or_a_string() {
    // `CmUtils.toInt` accepts both, and the two relay fields have been seen
    // typed differently across commands.
    assert_eq!(int_of(&body(json!({ "p": 8443 })), "p"), Some(8443));
    assert_eq!(int_of(&body(json!({ "p": "8443" })), "p"), Some(8443));
    assert_eq!(int_of(&body(json!({ "p": "" })), "p"), None);
    assert_eq!(int_of(&body(json!({})), "p"), None);
}

#[test]
fn an_empty_string_is_absent_rather_than_present_and_blank() {
    // The service fills unset fields with "" rather than omitting them, so treating
    // blank as a value would put empty room titles and hostnames downstream.
    assert_eq!(str_of(&body(json!({ "a": "" })), "a"), None);
    assert_eq!(str_of(&body(json!({ "a": "x" })), "a").as_deref(), Some("x"));
}
