.class final Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;
.super Ljava/lang/Object;
.source "ObservableList.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMutableListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OLIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMutableListIterator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010+\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\t\u001a\u00020\nH\u0016J\t\u0010\u000b\u001a\u00020\nH\u0096\u0002J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016J\r\u0010\u000e\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0007\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0011H\u0016J\u0015\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;",
        "",
        "initial",
        "",
        "<init>",
        "(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;I)V",
        "current",
        "next",
        "prev",
        "hasPrevious",
        "",
        "hasNext",
        "nextIndex",
        "previousIndex",
        "previous",
        "()Ljava/lang/Object;",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)V",
        "remove",
        "set",
        "utils"
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
.field private current:I

.field private next:I

.field private prev:I

.field final synthetic this$0:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->this$0:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->current:I

    .line 182
    iput p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->next:I

    add-int/lit8 p2, p2, -0x1

    .line 183
    iput p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->prev:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 180
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->this$0:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    iget v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->current:I

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->add(ILjava/lang/Object;)V

    .line 217
    iget p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->prev:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->prev:I

    .line 218
    iget p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->next:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->next:I

    .line 219
    iget p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->current:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->current:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 190
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->next:I

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->this$0:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    invoke-virtual {v1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 186
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->prev:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 209
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->prev:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->prev:I

    .line 210
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->next:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->next:I

    iput v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->current:I

    .line 211
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->this$0:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    invoke-static {v0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->access$getInternalList$p(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->current:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->next:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 203
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->next:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->next:I

    .line 204
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->prev:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->prev:I

    iput v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->current:I

    .line 205
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->this$0:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    invoke-static {v0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->access$getInternalList$p(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->current:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->prev:I

    return v0
.end method

.method public remove()V
    .locals 2

    .line 223
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->current:I

    if-ltz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->this$0:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    invoke-virtual {v1, v0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->remove(I)Ljava/lang/Object;

    .line 225
    iget v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->current:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->current:I

    .line 226
    iput v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->next:I

    .line 227
    iput v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->prev:I

    :cond_0
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->this$0:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    iget v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;->current:I

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
