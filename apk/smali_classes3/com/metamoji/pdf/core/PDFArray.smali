.class public final Lcom/metamoji/pdf/core/PDFArray;
.super Lcom/metamoji/pdf/core/PDFObj;
.source "PDFObj.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010(\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\rH\u0016J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0013H\u0096\u0002R\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/PDFArray;",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "_array",
        "",
        "<init>",
        "(Ljava/util/List;)V",
        "get_array",
        "()Ljava/util/List;",
        "type",
        "Lcom/metamoji/pdf/core/PDFObj$Type;",
        "getType",
        "()Lcom/metamoji/pdf/core/PDFObj$Type;",
        "count",
        "",
        "getCount",
        "()I",
        "getUnresolved",
        "index",
        "iterator",
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
.field private final _array:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/metamoji/pdf/core/PDFObj;-><init>()V

    iput-object p1, p0, Lcom/metamoji/pdf/core/PDFArray;->_array:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFArray;->_array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/metamoji/pdf/core/PDFObj$Type;
    .locals 1

    .line 135
    sget-object v0, Lcom/metamoji/pdf/core/PDFObj$Type;->ARRAY:Lcom/metamoji/pdf/core/PDFObj$Type;

    return-object v0
.end method

.method public getUnresolved(I)Lcom/metamoji/pdf/core/PDFObj;
    .locals 1

    if-ltz p1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFArray;->_array:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object p1, Lcom/metamoji/pdf/core/PDFObj;->Companion:Lcom/metamoji/pdf/core/PDFObj$Companion;

    invoke-virtual {p1}, Lcom/metamoji/pdf/core/PDFObj$Companion;->getNull()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object p1

    return-object p1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFArray;->_array:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/pdf/core/PDFObj;

    return-object p1

    .line 140
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected final get_array()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFArray;->_array:Ljava/util/List;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/metamoji/pdf/core/PDFObj;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/metamoji/pdf/core/PDFArray$iterator$1;

    invoke-direct {v0, p0}, Lcom/metamoji/pdf/core/PDFArray$iterator$1;-><init>(Lcom/metamoji/pdf/core/PDFArray;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
