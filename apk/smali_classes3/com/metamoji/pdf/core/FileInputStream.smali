.class final Lcom/metamoji/pdf/core/FileInputStream;
.super Lcom/metamoji/pdf/core/PDFInputStream;
.source "PDFXRef.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/FileInputStream;",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "_file",
        "Lcom/metamoji/pdf/IPDFFile;",
        "<init>",
        "(Lcom/metamoji/pdf/IPDFFile;)V",
        "_read",
        "",
        "buffer",
        "",
        "offset",
        "maxRead",
        "skip",
        "",
        "length",
        "pos",
        "getPos",
        "()J",
        "seek",
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


# instance fields
.field private final _file:Lcom/metamoji/pdf/IPDFFile;


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/IPDFFile;)V
    .locals 1

    const-string v0, "_file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFInputStream;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/core/FileInputStream;->_file:Lcom/metamoji/pdf/IPDFFile;

    return-void
.end method


# virtual methods
.method public _read([BII)I
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/metamoji/pdf/core/FileInputStream;->_file:Lcom/metamoji/pdf/IPDFFile;

    invoke-interface {v0, p1, p2, p3}, Lcom/metamoji/pdf/IPDFFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public getPos()J
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/metamoji/pdf/core/FileInputStream;->_file:Lcom/metamoji/pdf/IPDFFile;

    invoke-interface {v0}, Lcom/metamoji/pdf/IPDFFile;->getPos()J

    move-result-wide v0

    return-wide v0
.end method

.method public seek(J)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/metamoji/pdf/core/FileInputStream;->_file:Lcom/metamoji/pdf/IPDFFile;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/pdf/IPDFFile;->seek(J)V

    return-void
.end method

.method public skip(J)J
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/metamoji/pdf/core/FileInputStream;->_file:Lcom/metamoji/pdf/IPDFFile;

    long-to-int v1, p1

    invoke-interface {v0, v1}, Lcom/metamoji/pdf/IPDFFile;->skip(I)V

    return-wide p1
.end method
