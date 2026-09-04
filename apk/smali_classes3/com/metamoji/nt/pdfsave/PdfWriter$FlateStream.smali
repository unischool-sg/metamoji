.class final Lcom/metamoji/nt/pdfsave/PdfWriter$FlateStream;
.super Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;
.source "PdfSaveWriter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/pdfsave/PdfWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlateStream"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/metamoji/nt/pdfsave/PdfWriter$FlateStream;",
        "Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;",
        "writer",
        "Lcom/metamoji/nt/pdfsave/PdfWriter;",
        "stream",
        "Ljava/io/OutputStream;",
        "<init>",
        "(Lcom/metamoji/nt/pdfsave/PdfWriter;Ljava/io/OutputStream;)V",
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


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/pdfsave/PdfWriter;Ljava/io/OutputStream;)V
    .locals 2

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, p2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v1, Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v0, Ljava/io/OutputStream;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/nt/pdfsave/PdfWriter$PlainStream;-><init>(Lcom/metamoji/nt/pdfsave/PdfWriter;Ljava/io/OutputStream;)V

    return-void
.end method
