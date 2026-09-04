.class final Lcom/metamoji/pdf/OffsetFile;
.super Ljava/lang/Object;
.source "PDFDocument.kt"

# interfaces
.implements Lcom/metamoji/pdf/IPDFFile;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J \u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0016J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/pdf/OffsetFile;",
        "Lcom/metamoji/pdf/IPDFFile;",
        "_org",
        "_offset",
        "",
        "<init>",
        "(Lcom/metamoji/pdf/IPDFFile;I)V",
        "close",
        "",
        "read",
        "buffer",
        "",
        "offset",
        "maxRead",
        "skip",
        "length",
        "seek",
        "",
        "pos",
        "getPos",
        "()J",
        "size",
        "getSize",
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
.field private final _offset:I

.field private _org:Lcom/metamoji/pdf/IPDFFile;


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/IPDFFile;I)V
    .locals 1

    const-string v0, "_org"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    iput-object p1, p0, Lcom/metamoji/pdf/OffsetFile;->_org:Lcom/metamoji/pdf/IPDFFile;

    .line 824
    iput p2, p0, Lcom/metamoji/pdf/OffsetFile;->_offset:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/metamoji/pdf/OffsetFile;->_org:Lcom/metamoji/pdf/IPDFFile;

    invoke-interface {v0}, Lcom/metamoji/pdf/IPDFFile;->close()V

    return-void
.end method

.method public getPos()J
    .locals 4

    .line 842
    iget-object v0, p0, Lcom/metamoji/pdf/OffsetFile;->_org:Lcom/metamoji/pdf/IPDFFile;

    invoke-interface {v0}, Lcom/metamoji/pdf/IPDFFile;->getPos()J

    move-result-wide v0

    iget v2, p0, Lcom/metamoji/pdf/OffsetFile;->_offset:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getSize()J
    .locals 4

    .line 844
    iget-object v0, p0, Lcom/metamoji/pdf/OffsetFile;->_org:Lcom/metamoji/pdf/IPDFFile;

    invoke-interface {v0}, Lcom/metamoji/pdf/IPDFFile;->getSize()J

    move-result-wide v0

    iget v2, p0, Lcom/metamoji/pdf/OffsetFile;->_offset:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public read([BII)I
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/metamoji/pdf/OffsetFile;->_org:Lcom/metamoji/pdf/IPDFFile;

    invoke-interface {v0, p1, p2, p3}, Lcom/metamoji/pdf/IPDFFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public seek(J)V
    .locals 3

    .line 839
    iget-object v0, p0, Lcom/metamoji/pdf/OffsetFile;->_org:Lcom/metamoji/pdf/IPDFFile;

    iget v1, p0, Lcom/metamoji/pdf/OffsetFile;->_offset:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/pdf/IPDFFile;->seek(J)V

    return-void
.end method

.method public skip(I)V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/metamoji/pdf/OffsetFile;->_org:Lcom/metamoji/pdf/IPDFFile;

    invoke-interface {v0, p1}, Lcom/metamoji/pdf/IPDFFile;->skip(I)V

    return-void
.end method
