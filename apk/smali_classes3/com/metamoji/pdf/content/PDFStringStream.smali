.class public final Lcom/metamoji/pdf/content/PDFStringStream;
.super Lcom/metamoji/pdf/core/PDFInputStream;
.source "PDFStringStream.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/pdf/content/PDFStringStream;",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "_str",
        "",
        "<init>",
        "([B)V",
        "_pos",
        "",
        "_read",
        "buffer",
        "offset",
        "maxRead",
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
.field private _pos:I

.field private final _str:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "_str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFInputStream;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/content/PDFStringStream;->_str:[B

    return-void
.end method


# virtual methods
.method public _read([BII)I
    .locals 3

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/metamoji/pdf/content/PDFStringStream;->_str:[B

    array-length v0, v0

    iget v1, p0, Lcom/metamoji/pdf/content/PDFStringStream;->_pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 11
    iget-object v0, p0, Lcom/metamoji/pdf/content/PDFStringStream;->_str:[B

    iget v1, p0, Lcom/metamoji/pdf/content/PDFStringStream;->_pos:I

    add-int v2, v1, p3

    invoke-static {v0, p1, p2, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 12
    iget p1, p0, Lcom/metamoji/pdf/content/PDFStringStream;->_pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/metamoji/pdf/content/PDFStringStream;->_pos:I

    return p3
.end method
