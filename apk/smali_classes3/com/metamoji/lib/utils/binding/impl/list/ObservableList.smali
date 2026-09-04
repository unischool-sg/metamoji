.class public final Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
.super Ljava/lang/Object;
.source "ObservableList.kt"

# interfaces
.implements Ljava/util/List;
.implements Lcom/metamoji/lib/utils/IDisposable;
.implements Lkotlin/jvm/internal/markers/KMutableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$ChangedEventData;,
        Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$Companion;,
        Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;,
        Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MoveEventData;,
        Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;,
        Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationKind;,
        Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;,
        Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;,
        Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RemoveEventData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TT;>;",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "Lkotlin/jvm/internal/markers/KMutableList;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\u0007\n\u0002\u0010)\n\u0002\u0008\u0006\n\u0002\u0010+\n\u0002\u0008\u001a\u0018\u0000 =*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003:\t=>?@ABCDEB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J(\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\"\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00080\u0010J \u0010\u0011\u001a\u00020\u00032\u0018\u0010\u000c\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0012\u0004\u0012\u00020\u000e0\rJ\u001a\u0010\u0011\u001a\u00020\u00032\u0012\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00080\u0010J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010\u001b\u001a\u00020\u00182\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dH\u0016J\u0016\u0010\u001e\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\u0014H\u0096\u0002\u00a2\u0006\u0002\u0010 J\u0015\u0010!\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\"J\u0008\u0010#\u001a\u00020\u0018H\u0016J\u000f\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%H\u0096\u0002J\u0015\u0010&\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\"J\u0015\u0010\'\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u001d\u0010\'\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010(J\u001e\u0010)\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u00142\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dH\u0016J\u0016\u0010)\u001a\u00020\u00182\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dH\u0016J\u0008\u0010*\u001a\u00020\u000eH\u0016J\u000e\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000,H\u0016J\u0016\u0010+\u001a\u0008\u0012\u0004\u0012\u00028\u00000,2\u0006\u0010\u001f\u001a\u00020\u0014H\u0016J\u0015\u0010-\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010.\u001a\u00020\u00182\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dH\u0016J\u0015\u0010/\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\u0014H\u0016\u00a2\u0006\u0002\u0010 J\u0016\u0010/\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u00100\u001a\u00020\u0014J\u0016\u00101\u001a\u00020\u00182\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dH\u0016J\u001e\u00102\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u00103J\u0014\u00104\u001a\u00020\u000e2\u000c\u00105\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001dJ\u0016\u00106\u001a\u00020\u000e2\u0006\u00107\u001a\u00020\u00142\u0006\u00108\u001a\u00020\u0014J\u001e\u00109\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010:\u001a\u00020\u00142\u0006\u0010;\u001a\u00020\u0014H\u0016J\u0008\u0010<\u001a\u00020\u000eH\u0016R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006F"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "T",
        "",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "<init>",
        "()V",
        "mutationEvent",
        "Lcom/metamoji/lib/utils/Listeners;",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData;",
        "addListener",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "fn",
        "Lkotlin/Function1;",
        "",
        "listener",
        "Lcom/metamoji/lib/utils/Listeners$IListener;",
        "addListenerForever",
        "internalList",
        "size",
        "",
        "getSize",
        "()I",
        "contains",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "containsAll",
        "elements",
        "",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
        "indexOf",
        "(Ljava/lang/Object;)I",
        "isEmpty",
        "iterator",
        "",
        "lastIndexOf",
        "add",
        "(ILjava/lang/Object;)V",
        "addAll",
        "clear",
        "listIterator",
        "",
        "remove",
        "removeAll",
        "removeAt",
        "count",
        "retainAll",
        "set",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "replace",
        "list",
        "move",
        "from",
        "to",
        "subList",
        "fromIndex",
        "toIndex",
        "dispose",
        "Companion",
        "MutationKind",
        "MutationEventData",
        "RefreshEventData",
        "RemoveEventData",
        "InsertEventData",
        "ChangedEventData",
        "MoveEventData",
        "OLIterator",
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


# static fields
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$Companion;


# instance fields
.field private internalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mutationEvent:Lcom/metamoji/lib/utils/Listeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Listeners<",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->Companion:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/metamoji/lib/utils/Listeners;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/Listeners;-><init>()V

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getInternalList$p(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)Ljava/util/List;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setInternalList$p(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Ljava/util/List;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 108
    iget-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    add-int/lit8 v2, v1, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    return v6

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;II)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;

    iget-object v2, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-direct {v1, p0, v2, p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$InsertEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;II)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final addListener(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/Listeners$IListener;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/metamoji/lib/utils/Listeners$IListener<",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData<",
            "TT;>;>;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)V

    invoke-interface {p2, v0}, Lcom/metamoji/lib/utils/Listeners$IListener;->onChanged(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lcom/metamoji/lib/utils/Listeners$IListener;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public final addListener(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public final addListenerForever(Lcom/metamoji/lib/utils/Listeners$IListener;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/Listeners$IListener<",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData<",
            "TT;>;>;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)V

    invoke-interface {p1, v0}, Lcom/metamoji/lib/utils/Listeners$IListener;->onChanged(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/Listeners;->addForever(Lcom/metamoji/lib/utils/Listeners$IListener;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public final addListenerForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MutationEventData<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/Listeners;->addForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public dispose()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Listeners;->clear()V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 238
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 242
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$OLIterator;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;I)V

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method public final move(II)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MoveEventData;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$MoveEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;II)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 248
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 257
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    new-instance v2, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RemoveEventData;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RemoveEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final removeAt(II)V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 275
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 277
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RemoveEventData;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RemoveEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;II)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public final replace(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    .line 303
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$RefreshEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 285
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->mutationEvent:Lcom/metamoji/lib/utils/Listeners;

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$ChangedEventData;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList$ChangedEventData;-><init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final bridge size()I
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->getSize()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;->internalList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
