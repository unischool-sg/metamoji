.class final Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;
.super Ljava/io/OutputStream;
.source "PdfSaveWriter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/pdfsave/PdfWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PosStream"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J \u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;",
        "Ljava/io/OutputStream;",
        "_downstream",
        "<init>",
        "(Ljava/io/OutputStream;)V",
        "_pos",
        "",
        "position",
        "getPosition",
        "()J",
        "close",
        "",
        "flush",
        "write",
        "b",
        "",
        "off",
        "",
        "len",
        "app"
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
.field private final _downstream:Ljava/io/OutputStream;

.field private _pos:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "_downstream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->_downstream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->_downstream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->_downstream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final getPosition()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->_pos:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4

    .line 60
    iget-wide v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->_pos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->_pos:J

    .line 61
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->_downstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 4

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-wide v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->_pos:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->_pos:J

    .line 51
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->_downstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-wide v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->_pos:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->_pos:J

    .line 56
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PosStream;->_downstream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
