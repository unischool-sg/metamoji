.class public final Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;
.super Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
.source "RecyclerViewBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecyclerViewBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecyclerViewBinding.kt\ncom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,727:1\n1#2:728\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u0008\u0008\u0001\u0010\u0011\u001a\u00020\nJ,\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00002\u001e\u0010\u0013\u001a\u001a\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000f0\u000cJ\u00bc\u0002\u0010\u0014\u001a\u00020\u000f2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\n2\u001e\u0010\u0012\u001a\u001a\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000f0\u000c2\u0010\u0008\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00162\u0016\u0008\u0002\u0010\u0017\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0019\u0018\u00010\u00182\u0016\u0008\u0002\u0010\u001a\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0019\u0018\u00010\u001b2\u0010\u0008\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00192\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0008\u0002\u0010!\u001a\u00020\u001e2\u0010\u0008\u0002\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u00182\u0010\u0008\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001b2\u0010\u0008\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010%2\u0018\u0008\u0002\u0010&\u001a\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010%\u0018\u00010\u00182\u0018\u0008\u0002\u0010\'\u001a\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010%\u0018\u00010\u001b2\u0008\u0008\u0002\u0010(\u001a\u00020)2\u0010\u0008\u0002\u0010*\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u00182\u0010\u0008\u0002\u0010+\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u001bJ\u0010\u0010,\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\rH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u000b\u001a\u001c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;",
        "T",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;)V",
        "mItemLayoutId",
        "",
        "mBindView",
        "Lkotlin/Function3;",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "Landroid/view/View;",
        "",
        "itemLayoutId",
        "id",
        "bindView",
        "b",
        "options",
        "list",
        "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;",
        "readOnlyListLiveData",
        "Landroidx/lifecycle/LiveData;",
        "",
        "readOnlyListFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "readOnlyList",
        "fixedSize",
        "",
        "layoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "dragAndDrop",
        "dragAndDropLiveData",
        "dragAndDropFlow",
        "gestureParams",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;",
        "gestureParamsLiveData",
        "gestureParamsFlow",
        "autoScroll",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
        "autoScrollLiveData",
        "autoScrollFlow",
        "build",
        "binder",
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
.field private mBindView:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "-",
            "Landroid/view/View;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mItemLayoutId:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, -0x1

    .line 282
    iput p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->mItemLayoutId:I

    return-void
.end method

.method public static synthetic options$default(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;ILkotlin/jvm/functions/Function3;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Ljava/util/Collection;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;ZLandroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;ILjava/lang/Object;)V
    .locals 21

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v10, v1

    goto :goto_4

    :cond_4
    move/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    move v12, v1

    goto :goto_6

    :cond_6
    move/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object v15, v2

    goto :goto_9

    :cond_9
    move-object/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object/from16 v16, v2

    goto :goto_a

    :cond_a
    move-object/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-object/from16 v17, v2

    goto :goto_b

    :cond_b
    move-object/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    .line 303
    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->NONE:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    move-object/from16 v18, v1

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v19, v2

    goto :goto_d

    :cond_d
    move-object/from16 v19, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    move-object/from16 v20, v2

    goto :goto_e

    :cond_e
    move-object/from16 v20, p17

    :goto_e
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    .line 288
    invoke-virtual/range {v3 .. v20}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->options(ILkotlin/jvm/functions/Function3;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Ljava/util/Collection;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;ZLandroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;)V

    return-void
.end method


# virtual methods
.method public final bindView(Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "-",
            "Landroid/view/View;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->mBindView:Lkotlin/jvm/functions/Function3;

    return-object p0
.end method

.method public build(Lcom/metamoji/lib/utils/binding/Binder;)V
    .locals 11

    const-string v0, "binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->getMObservableList()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    move-result-object v4

    .line 329
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->getMReadOnlyListLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v8

    .line 330
    iget-object v10, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->mBindView:Lkotlin/jvm/functions/Function3;

    if-eqz v10, :cond_4

    if-eqz v4, :cond_2

    if-nez v8, :cond_1

    .line 336
    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;

    .line 337
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->getOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    .line 338
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    .line 340
    iget v5, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->mItemLayoutId:I

    .line 341
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->getMFixedSize()Z

    move-result v6

    .line 342
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->getMLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    :cond_0
    move-object v7, v0

    move-object v8, v10

    .line 336
    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;IZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    move-result-object v0

    .line 345
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->applyExtensions(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;)V

    .line 344
    check-cast v0, Lcom/metamoji/lib/utils/binding/IBinding;

    goto :goto_0

    .line 333
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "list and readonlyList are both set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v8, :cond_3

    .line 348
    sget-object v5, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding$Companion;

    .line 349
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->getOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v6

    .line 350
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v7

    .line 352
    iget v9, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->mItemLayoutId:I

    .line 348
    invoke-virtual/range {v5 .. v10}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;Landroidx/lifecycle/LiveData;ILkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/utils/binding/IBinding;

    .line 356
    :goto_0
    check-cast v0, Lcom/metamoji/lib/utils/IDisposable;

    .line 331
    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/binding/Binder;->plus(Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    return-void

    .line 356
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "list is not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 330
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bindView is not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final itemLayoutId(I)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 285
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;

    iput p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->mItemLayoutId:I

    return-object p0
.end method

.method public final options(ILkotlin/jvm/functions/Function3;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Ljava/util/Collection;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;ZLandroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "-",
            "Landroid/view/View;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/impl/list/ObservableList<",
            "TT;>;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Collection<",
            "TT;>;>;",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Ljava/util/Collection<",
            "+TT;>;>;",
            "Ljava/util/Collection<",
            "+TT;>;Z",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            "Z",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;>;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams<",
            "TT;>;>;",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
            ">;",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    move-object/from16 v14, p17

    const-string v15, "bindView"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "autoScroll"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->bindView(Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;

    move-result-object v1

    move/from16 v15, p1

    .line 308
    invoke-virtual {v1, v15}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->itemLayoutId(I)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;

    if-eqz v2, :cond_0

    .line 310
    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->list(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_0
    if-eqz v3, :cond_1

    .line 311
    invoke-virtual {v0, v3}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->list(Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_1
    if-eqz v4, :cond_2

    .line 312
    invoke-virtual {v0, v4}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->list(Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_2
    if-eqz v5, :cond_3

    .line 313
    invoke-virtual {v0, v5}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->list(Ljava/util/Collection;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_3
    move/from16 v1, p7

    .line 314
    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->fixedSize(Z)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    if-eqz v6, :cond_4

    .line 315
    invoke-virtual {v0, v6}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->layoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_4
    move/from16 v1, p9

    .line 316
    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->dragAndDrop(Z)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    if-eqz v7, :cond_5

    .line 317
    invoke-virtual {v0, v7}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->dragAndDrop(Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_5
    if-eqz v8, :cond_6

    .line 318
    invoke-virtual {v0, v8}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->dragAndDrop(Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_6
    if-eqz v9, :cond_7

    .line 319
    invoke-virtual {v0, v9}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->gestureParams(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_7
    if-eqz v10, :cond_8

    .line 320
    invoke-virtual {v0, v10}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->gestureParams(Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_8
    if-eqz v11, :cond_9

    .line 321
    invoke-virtual {v0, v11}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->gestureParams(Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    .line 322
    :cond_9
    invoke-virtual {v0, v12}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->autoScroll(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    if-eqz v13, :cond_a

    .line 323
    invoke-virtual {v0, v13}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->autoScroll(Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_a
    if-eqz v14, :cond_b

    .line 324
    invoke-virtual {v0, v14}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$SimpleBuilder;->autoScroll(Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_b
    return-void
.end method
