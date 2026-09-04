//! A bounds-checked little-endian cursor.
//!
//! Every read past the end returns an error carrying the offset. An imported
//! file is untrusted input — a malformed `.atdoc` must fail the import, never
//! panic the app.

use crate::error::{AppError, AppResult};

pub struct Reader<'a> {
    buf: &'a [u8],
    pos: usize,
}

impl<'a> Reader<'a> {
    pub fn new(buf: &'a [u8]) -> Self {
        Self { buf, pos: 0 }
    }

    pub fn at(buf: &'a [u8], pos: usize) -> Self {
        Self { buf, pos }
    }

    pub fn position(&self) -> usize {
        self.pos
    }

    pub fn remaining(&self) -> usize {
        self.buf.len().saturating_sub(self.pos)
    }

    fn need(&self, n: usize) -> AppResult<()> {
        if self.remaining() < n {
            return Err(AppError::other(format!(
                "unexpected end of data: wanted {n} bytes at offset {}, {} remain",
                self.pos,
                self.remaining()
            )));
        }
        Ok(())
    }

    pub fn skip(&mut self, n: usize) -> AppResult<()> {
        self.need(n)?;
        self.pos += n;
        Ok(())
    }

    pub fn bytes(&mut self, n: usize) -> AppResult<&'a [u8]> {
        self.need(n)?;
        let out = &self.buf[self.pos..self.pos + n];
        self.pos += n;
        Ok(out)
    }

    pub fn peek_u8(&self) -> AppResult<u8> {
        self.need(1)?;
        Ok(self.buf[self.pos])
    }

    pub fn u8(&mut self) -> AppResult<u8> {
        self.need(1)?;
        let v = self.buf[self.pos];
        self.pos += 1;
        Ok(v)
    }

    pub fn i8(&mut self) -> AppResult<i8> {
        Ok(self.u8()? as i8)
    }

    pub fn u16(&mut self) -> AppResult<u16> {
        let b = self.bytes(2)?;
        Ok(u16::from_le_bytes([b[0], b[1]]))
    }

    pub fn i16(&mut self) -> AppResult<i16> {
        Ok(self.u16()? as i16)
    }

    pub fn u32(&mut self) -> AppResult<u32> {
        let b = self.bytes(4)?;
        Ok(u32::from_le_bytes([b[0], b[1], b[2], b[3]]))
    }

    pub fn i32(&mut self) -> AppResult<i32> {
        Ok(self.u32()? as i32)
    }

    pub fn u64(&mut self) -> AppResult<u64> {
        let b = self.bytes(8)?;
        Ok(u64::from_le_bytes([
            b[0], b[1], b[2], b[3], b[4], b[5], b[6], b[7],
        ]))
    }

    pub fn f64(&mut self) -> AppResult<f64> {
        let b = self.bytes(8)?;
        Ok(f64::from_le_bytes([
            b[0], b[1], b[2], b[3], b[4], b[5], b[6], b[7],
        ]))
    }

    /// Reads a NUL-terminated byte string, consuming the terminator.
    pub fn cstring_bytes(&mut self) -> AppResult<Vec<u8>> {
        let start = self.pos;
        while self.pos < self.buf.len() && self.buf[self.pos] != 0 {
            self.pos += 1;
        }
        if self.pos >= self.buf.len() {
            return Err(AppError::other(format!(
                "unterminated string starting at offset {start}"
            )));
        }
        let out = self.buf[start..self.pos].to_vec();
        self.pos += 1; // terminator
        Ok(out)
    }

    pub fn cstring(&mut self) -> AppResult<String> {
        Ok(String::from_utf8_lossy(&self.cstring_bytes()?).into_owned())
    }

    /// Rejects a container whose declared element count cannot fit in what is
    /// left, so a corrupt length cannot make us try to reserve gigabytes.
    pub fn ensure_plausible_count(&self, count: usize) -> AppResult<()> {
        if count > self.remaining() {
            return Err(AppError::other(format!(
                "declared element count {count} exceeds the {} bytes remaining",
                self.remaining()
            )));
        }
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn reads_little_endian_integers() {
        let mut r = Reader::new(&[0x01, 0x00, 0x02, 0x00, 0x00, 0x00]);
        assert_eq!(r.u16().unwrap(), 1);
        assert_eq!(r.u32().unwrap(), 2);
        assert_eq!(r.remaining(), 0);
    }

    #[test]
    fn reading_past_the_end_is_an_error_not_a_panic() {
        let mut r = Reader::new(&[0x01]);
        assert!(r.u32().is_err());
    }

    #[test]
    fn reads_nul_terminated_strings() {
        let mut r = Reader::new(b"abc\0def\0");
        assert_eq!(r.cstring().unwrap(), "abc");
        assert_eq!(r.cstring().unwrap(), "def");
    }

    #[test]
    fn an_unterminated_string_is_an_error() {
        let mut r = Reader::new(b"abc");
        assert!(r.cstring().is_err());
    }

    #[test]
    fn implausible_counts_are_rejected() {
        let r = Reader::new(&[0u8; 4]);
        assert!(r.ensure_plausible_count(1_000_000).is_err());
    }
}
