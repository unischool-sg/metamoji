.class public final Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;
.super Ljava/lang/Object;
.source "RecyclerViewBinding.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/binding/IBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;,
        Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;,
        Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;,
        Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;,
        Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;,
        Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IPendingDeletion;,
        Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;,
        Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/metamoji/lib/utils/binding/IBinding;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecyclerViewBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecyclerViewBinding.kt\ncom/metamoji/lib/utils/binding/impl/RecyclerViewBinding\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,727:1\n1#2:728\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 -*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0008)*+,-./0B\u001d\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0016\u0010\u0019\u001a\u00020\u00162\u000e\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001bJ,\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0014\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020!\u0018\u00010 J$\u0010\u0019\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020#2\u0014\u0010\u001a\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001b0$J\u000e\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u001dJ\u001c\u0010%\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020#2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u001d0$J\u000e\u0010\'\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020(J\u001c\u0010\'\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020#2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0$R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;",
        "T",
        "Lcom/metamoji/lib/utils/binding/IBinding;",
        "list",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "<init>",
        "(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Landroidx/recyclerview/widget/RecyclerView;)V",
        "getList",
        "()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "getView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "getMode",
        "()Lcom/metamoji/lib/utils/binding/BindingMode;",
        "gestureDisposable",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "dragAndDropDisposable",
        "autoScrollDisposable",
        "dispose",
        "",
        "itemTouchHelper",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "enableGesture",
        "params",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;",
        "dragToMove",
        "",
        "swipeToDelete",
        "deletionHandler",
        "Lkotlin/Function1;",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "Landroidx/lifecycle/LiveData;",
        "enableDragAndDrop",
        "sw",
        "enableAutoScroll",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
        "IDeletion",
        "IPendingDeletion",
        "GestureParams",
        "AutoScrollMode",
        "Companion",
        "BuilderBase",
        "SimpleBuilder",
        "ViewBindingBuilder",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;


# instance fields
.field private autoScrollDisposable:Lcom/metamoji/lib/utils/IDisposable;

.field private dragAndDropDisposable:Lcom/metamoji/lib/utils/IDisposable;

.field private gestureDisposable:Lcom/metamoji/lib/utils/IDisposable;

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private final list:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mode:Lcom/metamoji/lib/utils/binding/BindingMode;

.field private final view:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->list:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    .line 31
    iput-object p2, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->view:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    sget-object p1, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    return-void
.end method

.method static final enableAutoScroll$lambda$3(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;IIZ)Lkotlin/Unit;
    .locals 1

    .line 180
    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->ALL:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    if-eq p0, v0, :cond_0

    if-eqz p4, :cond_1

    .line 181
    :cond_0
    iget-object p0, p1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->view:Landroidx/recyclerview/widget/RecyclerView;

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 183
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final enableAutoScroll$lambda$4(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->enableAutoScroll(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final enableDragAndDrop$lambda$2(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;Z)Lkotlin/Unit;
    .locals 0

    .line 163
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->enableDragAndDrop(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final enableGesture$lambda$1(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;)Lkotlin/Unit;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->enableGesture(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->gestureDisposable:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->dragAndDropDisposable:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->autoScrollDisposable:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v2, v0, Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v2, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/metamoji/lib/utils/IDisposable;

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    :cond_5
    return-void
.end method

.method public final enableAutoScroll(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->autoScrollDisposable:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    .line 190
    :cond_0
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;)V

    invoke-static {p2, p1, v0}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/IDisposable;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->autoScrollDisposable:Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method

.method public final enableAutoScroll(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;)V
    .locals 3

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lcom/metamoji/lib/utils/binding/impl/list/IRecyclerViewInsertEventSource;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/list/IRecyclerViewInsertEventSource;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 178
    :cond_1
    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->NONE:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    if-eq p1, v1, :cond_2

    .line 179
    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;)V

    invoke-interface {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/list/IRecyclerViewInsertEventSource;->setInsertedEventListener(Lkotlin/jvm/functions/Function3;)V

    return-void

    .line 185
    :cond_2
    invoke-interface {v0, v2}, Lcom/metamoji/lib/utils/binding/impl/list/IRecyclerViewInsertEventSource;->setInsertedEventListener(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final enableDragAndDrop(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->dragAndDropDisposable:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    .line 163
    :cond_0
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;)V

    invoke-static {p2, p1, v0}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/IDisposable;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->dragAndDropDisposable:Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method

.method public final enableDragAndDrop(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->enableGesture(ZZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final enableGesture(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->gestureDisposable:Lcom/metamoji/lib/utils/IDisposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IDisposable;->dispose()V

    .line 133
    :cond_0
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;)V

    invoke-static {p2, p1, v0}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/IDisposable;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->gestureDisposable:Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method

.method public final enableGesture(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 77
    :cond_0
    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;->getDragToMove()Z

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;->getSwipeToDelete()Z

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;->getDeletionHandler()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->enableGesture(ZZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final enableGesture(ZZLkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$IDeletion;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 84
    :cond_0
    iput-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    if-eqz p2, :cond_4

    const/16 v0, 0x8

    :cond_4
    move v4, v0

    .line 88
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;

    move-object v6, p0

    move v5, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$enableGesture$1;-><init>(IIZLcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;ZLkotlin/jvm/functions/Function1;)V

    check-cast v2, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 128
    iget-object p1, v6, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->view:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 88
    iput-object v0, v6, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method public final getList()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->list:Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    return-object v0
.end method

.method public getMode()Lcom/metamoji/lib/utils/binding/BindingMode;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->mode:Lcom/metamoji/lib/utils/binding/BindingMode;

    return-object v0
.end method

.method public final getView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->view:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method
