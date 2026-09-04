.class public abstract Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
.super Ljava/lang/Object;
.source "RecyclerViewBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecyclerViewBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecyclerViewBinding.kt\ncom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,727:1\n1#2:728\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000eJ \u0010>\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u0012\u0010?\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00150\u0014J \u0010>\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u0012\u0010?\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00150@J\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0015J\u0014\u0010A\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010B\u001a\u00020\u001bJ\u0014\u0010C\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010?\u001a\u00020!J\u0014\u0010D\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010E\u001a\u00020\u001bJ\u001a\u0010D\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0014J\u001a\u0010D\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u001b0@J\u001a\u0010F\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u00028\u00010-J\"\u0010F\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u0014\u0010E\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010-0\u0014J\"\u0010F\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u0014\u0010E\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010-0@J\u0014\u0010H\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010I\u001a\u000206J\u001a\u0010H\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u0002060\u0014J\u001a\u0010H\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u0002060@J\u0016\u0010J\u001a\u00020K2\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00028\u00010MH\u0004J\u0010\u0010N\u001a\u00020K2\u0006\u0010O\u001a\u00020PH&R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\"\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000eX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R(\u0010\u0013\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0015\u0018\u00010\u0014X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u00020\u001bX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u001d\"\u0004\u0008(\u0010\u001fR\"\u0010)\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u0014X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0017\"\u0004\u0008+\u0010\u0019R\"\u0010,\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010-X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R*\u00102\u001a\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010-\u0018\u00010\u0014X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0017\"\u0004\u00084\u0010\u0019R\u001a\u00105\u001a\u000206X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\"\u0010;\u001a\n\u0012\u0004\u0012\u000206\u0018\u00010\u0014X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u0017\"\u0004\u0008=\u0010\u0019\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;",
        "T",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;)V",
        "getOwner",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "getView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "mObservableList",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "getMObservableList",
        "()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "setMObservableList",
        "(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)V",
        "mReadOnlyListLiveData",
        "Landroidx/lifecycle/LiveData;",
        "",
        "getMReadOnlyListLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "setMReadOnlyListLiveData",
        "(Landroidx/lifecycle/LiveData;)V",
        "mFixedSize",
        "",
        "getMFixedSize",
        "()Z",
        "setMFixedSize",
        "(Z)V",
        "mLayoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "getMLayoutManager",
        "()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "setMLayoutManager",
        "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V",
        "mDragAndDrop",
        "getMDragAndDrop",
        "setMDragAndDrop",
        "mDragAndDropLiveData",
        "getMDragAndDropLiveData",
        "setMDragAndDropLiveData",
        "mGestureParams",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;",
        "getMGestureParams",
        "()Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;",
        "setMGestureParams",
        "(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;)V",
        "mGestureParamsLiveData",
        "getMGestureParamsLiveData",
        "setMGestureParamsLiveData",
        "mAutoScroll",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
        "getMAutoScroll",
        "()Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
        "setMAutoScroll",
        "(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;)V",
        "mAutoScrollLiveData",
        "getMAutoScrollLiveData",
        "setMAutoScrollLiveData",
        "list",
        "l",
        "Lkotlinx/coroutines/flow/Flow;",
        "fixedSize",
        "f",
        "layoutManager",
        "dragAndDrop",
        "d",
        "gestureParams",
        "p",
        "autoScroll",
        "mode",
        "applyExtensions",
        "",
        "bindings",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;",
        "build",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
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
.field private mAutoScroll:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

.field private mAutoScrollLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
            ">;"
        }
    .end annotation
.end field

.field private mDragAndDrop:Z

.field private mDragAndDropLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFixedSize:Z

.field private mGestureParams:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mGestureParamsLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mObservableList:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mReadOnlyListLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Collection<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final owner:Landroidx/lifecycle/LifecycleOwner;

.field private final view:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->owner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->view:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    .line 238
    iput-boolean p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mFixedSize:Z

    .line 244
    sget-object p1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->NONE:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mAutoScroll:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    return-void
.end method


# virtual methods
.method protected final applyExtensions(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "bindings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mGestureParams:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;

    .line 265
    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mGestureParamsLiveData:Landroidx/lifecycle/LiveData;

    .line 266
    iget-object v2, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mDragAndDropLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->owner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->enableGesture(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->enableGesture(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 272
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->owner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->enableDragAndDrop(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;)V

    goto :goto_0

    .line 273
    :cond_2
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mDragAndDrop:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->enableDragAndDrop(Z)V

    .line 276
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mAutoScroll:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->enableAutoScroll(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;)V

    return-void
.end method

.method public final autoScroll(Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mAutoScrollLiveData:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final autoScroll(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
            ")",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mAutoScroll:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    return-object p0
.end method

.method public final autoScroll(Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mAutoScrollLiveData:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public abstract build(Lcom/metamoji/lib/utils/binding/Binder;)V
.end method

.method public final dragAndDrop(Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mDragAndDropLiveData:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final dragAndDrop(Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mDragAndDropLiveData:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final dragAndDrop(Z)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    .line 253
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    iput-boolean p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mDragAndDrop:Z

    return-object p0
.end method

.method public final fixedSize(Z)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    .line 251
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    iput-boolean p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mFixedSize:Z

    return-object p0
.end method

.method public final gestureParams(Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;>;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mGestureParamsLiveData:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final gestureParams(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mGestureParams:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;

    return-object p0
.end method

.method public final gestureParams(Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;>;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mGestureParamsLiveData:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method protected final getMAutoScroll()Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mAutoScroll:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    return-object v0
.end method

.method protected final getMAutoScrollLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mAutoScrollLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected final getMDragAndDrop()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mDragAndDrop:Z

    return v0
.end method

.method protected final getMDragAndDropLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mDragAndDropLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected final getMFixedSize()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mFixedSize:Z

    return v0
.end method

.method protected final getMGestureParams()Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mGestureParams:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;

    return-object v0
.end method

.method protected final getMGestureParamsLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;>;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mGestureParamsLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected final getMLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method protected final getMObservableList()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mObservableList:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    return-object v0
.end method

.method protected final getMReadOnlyListLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Collection<",
            "TT;>;>;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mReadOnlyListLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->owner:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public final getView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->view:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final layoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            ")",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public final list(Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Collection<",
            "TT;>;>;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mReadOnlyListLiveData:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final list(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mObservableList:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    return-object p0
.end method

.method public final list(Ljava/util/Collection;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    new-instance v0, Lcom/metamoji/lib/utils/ConstantLiveData;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/utils/ConstantLiveData;-><init>(Ljava/lang/Object;)V

    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mReadOnlyListLiveData:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final list(Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Ljava/util/Collection<",
            "+TT;>;>;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mReadOnlyListLiveData:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method protected final setMAutoScroll(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mAutoScroll:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    return-void
.end method

.method protected final setMAutoScrollLiveData(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
            ">;)V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mAutoScrollLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method protected final setMDragAndDrop(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mDragAndDrop:Z

    return-void
.end method

.method protected final setMDragAndDropLiveData(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 241
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mDragAndDropLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method protected final setMFixedSize(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mFixedSize:Z

    return-void
.end method

.method protected final setMGestureParams(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;)V"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mGestureParams:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;

    return-void
.end method

.method protected final setMGestureParamsLiveData(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mGestureParamsLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method protected final setMLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method protected final setMObservableList(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;)V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mObservableList:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    return-void
.end method

.method protected final setMReadOnlyListLiveData(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Collection<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;->mReadOnlyListLiveData:Landroidx/lifecycle/LiveData;

    return-void
.end method
