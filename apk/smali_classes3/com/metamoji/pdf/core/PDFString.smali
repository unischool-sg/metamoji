.class public Lcom/metamoji/pdf/core/PDFString;
.super Lcom/metamoji/pdf/core/PDFObj;
.source "PDFObj.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFString;",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "_val",
        "",
        "<init>",
        "([B)V",
        "get_val",
        "()[B",
        "type",
        "Lcom/metamoji/pdf/core/PDFObj$Type;",
        "getType",
        "()Lcom/metamoji/pdf/core/PDFObj$Type;",
        "stringVal",
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
.field private final _val:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "_val"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFObj;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/core/PDFString;->_val:[B

    return-void
.end method


# virtual methods
.method public getType()Lcom/metamoji/pdf/core/PDFObj$Type;
    .locals 1

    .line 125
    sget-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->STRING:Lcom/metamoji/pdf/core/PDFObj$Type;

    return-object v0
.end method

.method protected final get_val()[B
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFString;->_val:[B

    return-object v0
.end method

.method public stringVal()[B
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFString;->_val:[B

    return-object v0
.end method
