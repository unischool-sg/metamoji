.class public final Lcom/metamoji/pdf/core/PDFArray$iterator$1;
.super Ljava/lang/Object;
.source "PDFObj.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/pdf/core/PDFArray;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/metamoji/pdf/core/PDFObj;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\t\u0010\u0005\u001a\u00020\u0006H\u0096\u0002J\t\u0010\u0007\u001a\u00020\u0002H\u0096\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "com/metamoji/pdf/core/PDFArray$iterator$1",
        "",
        "Lcom/metamoji/pdf/core/PDFObj;",
        "pos",
        "",
        "hasNext",
        "",
        "next",
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
.field private pos:I

.field final synthetic this$0:Lcom/metamoji/pdf/core/PDFArray;


# direct methods
.method constructor <init>(Lcom/metamoji/pdf/core/PDFArray;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/pdf/core/PDFArray$iterator$1;->this$0:Lcom/metamoji/pdf/core/PDFArray;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 149
    iget v0, p0, Lcom/metamoji/pdf/core/PDFArray$iterator$1;->pos:I

    iget-object v1, p0, Lcom/metamoji/pdf/core/PDFArray$iterator$1;->this$0:Lcom/metamoji/pdf/core/PDFArray;

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFArray;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Lcom/metamoji/pdf/core/PDFObj;
    .locals 3

    .line 152
    iget v0, p0, Lcom/metamoji/pdf/core/PDFArray$iterator$1;->pos:I

    iget-object v1, p0, Lcom/metamoji/pdf/core/PDFArray$iterator$1;->this$0:Lcom/metamoji/pdf/core/PDFArray;

    invoke-virtual {v1}, Lcom/metamoji/pdf/core/PDFArray;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/metamoji/pdf/core/PDFArray$iterator$1;->this$0:Lcom/metamoji/pdf/core/PDFArray;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFArray;->get_array()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/pdf/core/PDFArray$iterator$1;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/metamoji/pdf/core/PDFArray$iterator$1;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/pdf/core/PDFObj;

    invoke-virtual {v0}, Lcom/metamoji/pdf/core/PDFObj;->resolve()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/metamoji/pdf/core/PDFArray$iterator$1;->next()Lcom/metamoji/pdf/core/PDFObj;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
