.class Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;
.super Ljava/io/OutputStream;
.source "PdfSaveWriter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/pdfsave/PdfWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlainStream"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u0012\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0015H\u0016J \u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0014H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0001X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;",
        "Ljava/io/OutputStream;",
        "_writer",
        "Lcom/metamoji/nt/pdfsave/PdfWriter;",
        "_stream",
        "<init>",
        "(Lcom/metamoji/nt/pdfsave/PdfWriter;Ljava/io/OutputStream;)V",
        "get_stream",
        "()Ljava/io/OutputStream;",
        "_closed",
        "",
        "get_closed",
        "()Z",
        "set_closed",
        "(Z)V",
        "close",
        "",
        "flush",
        "write",
        "b",
        "",
        "",
        "off",
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
.field private _closed:Z

.field private final _stream:Ljava/io/OutputStream;

.field private final _writer:Lcom/metamoji/nt/pdfsave/PdfWriter;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/pdfsave/PdfWriter;Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "_writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_stream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

    .line 160
    iput-object p2, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_stream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_closed:Z

    .line 168
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 169
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 170
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_writer:Lcom/metamoji/nt/pdfsave/PdfWriter;

    invoke-static {v0}, Lcom/metamoji/nt/pdfsave/PdfWriter;->access$endStream(Lcom/metamoji/nt/pdfsave/PdfWriter;)V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method protected final get_closed()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_closed:Z

    return v0
.end method

.method protected final get_stream()Ljava/io/OutputStream;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_stream:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected final set_closed(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_closed:Z

    return-void
.end method

.method public write(I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;->_stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
