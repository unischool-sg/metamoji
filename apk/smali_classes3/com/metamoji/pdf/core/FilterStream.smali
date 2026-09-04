.class abstract Lcom/metamoji/pdf/core/FilterStream;
.super Lcom/metamoji/pdf/core/PDFInputStream;
.source "Filters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\"\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0014\u0010\u0002\u001a\u00020\u0001X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/FilterStream;",
        "Lcom/metamoji/pdf/core/PDFInputStream;",
        "_upper",
        "<init>",
        "(Lcom/metamoji/pdf/core/PDFInputStream;)V",
        "get_upper",
        "()Lcom/metamoji/pdf/core/PDFInputStream;",
        "close",
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
.field private final _upper:Lcom/metamoji/pdf/core/PDFInputStream;


# direct methods
.method public constructor <init>(Lcom/metamoji/pdf/core/PDFInputStream;)V
    .locals 1

    const-string v0, "_upper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFInputStream;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/core/FilterStream;->_upper:Lcom/metamoji/pdf/core/PDFInputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/pdf/core/FilterStream;->_upper:Lcom/metamoji/pdf/core/PDFInputStream;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFInputStream;->close()V

    .line 54
    invoke-super {p0}, Lcom/metamoji/pdf/core/PDFInputStream;->close()V

    return-void
.end method

.method protected final get_upper()Lcom/metamoji/pdf/core/PDFInputStream;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/pdf/core/FilterStream;->_upper:Lcom/metamoji/pdf/core/PDFInputStream;

    return-object v0
.end method
