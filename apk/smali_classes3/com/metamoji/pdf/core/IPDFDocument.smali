.class public interface abstract Lcom/metamoji/pdf/core/IPDFDocument;
.super Ljava/lang/Object;
.source "PDFObj.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH&J\"\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0018\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\rH&J\u0008\u0010\u0013\u001a\u00020\u0014H&J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H&\u00a8\u0006\u0018\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/IPDFDocument;",
        "",
        "getObject",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "id",
        "",
        "gen",
        "openStream",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "offset",
        "",
        "length",
        "getCryptoKey",
        "",
        "stream",
        "",
        "decrypt",
        "data",
        "cryptoKey",
        "getStmF",
        "Lcom/metamoji/pdf/core/CryptFilter;",
        "getCryptFilter",
        "cf",
        "",
        "pdf"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract decrypt([B[B)[B
.end method

.method public abstract getCryptFilter(Ljava/lang/String;)Lcom/metamoji/pdf/core/CryptFilter;
.end method

.method public abstract getCryptoKey(IIZ)[B
.end method

.method public abstract getObject(II)Lcom/metamoji/pdf/core/PDFObj;
.end method

.method public abstract getStmF()Lcom/metamoji/pdf/core/CryptFilter;
.end method

.method public abstract openStream(JJ)Lcom/metamoji/pdf/core/PDFInputStream;
.end method
