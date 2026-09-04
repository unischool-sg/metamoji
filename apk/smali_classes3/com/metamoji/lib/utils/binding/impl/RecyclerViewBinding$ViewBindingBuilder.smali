.class public final Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;
.super Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;
.source "RecyclerViewBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewBindingBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecyclerViewBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecyclerViewBinding.kt\ncom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,727:1\n1#2:728\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0001\u0010\u0001*\u0008\u0008\u0002\u0010\u0002*\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004:\u0001;B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ8\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002$\u0010\u0019\u001a \u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000f0\u000cJ5\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00028\u00020\u0011Jk\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002M\u0010\u001c\u001aI\u0012\u0013\u0012\u00110\u001e\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u001b\u0012\u0015\u0012\u0013\u0018\u00010\u0012\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0013\u0012\u00110\u001f\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00028\u00020\u001d2\u0008\u0010!\u001a\u0004\u0018\u00010\u001eJ\u0010\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\rH\u0016J\u0082\u0003\u0010$\u001a\u00020\u000f2$\u0010\u0018\u001a \u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000f0\u000c2\u0016\u0008\u0002\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00028\u0002\u0018\u00010\u00112$\u0008\u0002\u0010\u001b\u001a\u001e\u0012\u0004\u0012\u00020\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00028\u0002\u0018\u00010\u001d2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u001e2\u0010\u0008\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010&2\u0016\u0008\u0002\u0010\'\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010)\u0018\u00010(2\u0016\u0008\u0002\u0010*\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010)\u0018\u00010+2\u0010\u0008\u0002\u0010,\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010)2\u0008\u0008\u0002\u0010-\u001a\u00020\u001f2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/2\u0008\u0008\u0002\u00100\u001a\u00020\u001f2\u0010\u0008\u0002\u00101\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010(2\u0010\u0008\u0002\u00102\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010+2\u0010\u0008\u0002\u00103\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u0001042\u0018\u0008\u0002\u00105\u001a\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u000104\u0018\u00010(2\u0018\u0008\u0002\u00106\u001a\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0001\u0018\u000104\u0018\u00010+2\u0008\u0008\u0002\u00107\u001a\u0002082\u0010\u0008\u0002\u00109\u001a\n\u0012\u0004\u0012\u000208\u0018\u00010(2\u0010\u0008\u0002\u0010:\u001a\n\u0012\u0004\u0012\u000208\u0018\u00010+R.\u0010\u000b\u001a\"\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u0010\u001a\u001f\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00028\u0002\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n\u0012\u0004\u0012\u00028\u0002\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;",
        "T",
        "B",
        "Landroidx/viewbinding/ViewBinding;",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;)V",
        "mBindView",
        "Lkotlin/Function4;",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "Landroid/view/View;",
        "",
        "mInflate",
        "Lkotlin/Function1;",
        "Landroid/view/ViewGroup;",
        "Lkotlin/ParameterName;",
        "name",
        "parent",
        "mInflaterInfo",
        "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;",
        "bindView",
        "b",
        "inflate",
        "inflater",
        "viewBindingInflater",
        "Lkotlin/Function3;",
        "Landroid/view/LayoutInflater;",
        "",
        "attachToParent",
        "actualInflater",
        "build",
        "binder",
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
        "InflaterInfo",
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
.field private mBindView:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-TB;-",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "-",
            "Landroid/view/View;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mInflate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/ViewGroup;",
            "+TB;>;"
        }
    .end annotation
.end field

.field private mInflaterInfo:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo<",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static synthetic options$default(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroid/view/LayoutInflater;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Ljava/util/Collection;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;ZLandroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;ILjava/lang/Object;)V
    .locals 20

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_7

    :cond_7
    move/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_b

    move-object v13, v2

    goto :goto_b

    :cond_b
    move-object/from16 v13, p13

    :goto_b
    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_c

    move-object v14, v2

    goto :goto_c

    :cond_c
    move-object/from16 v14, p14

    :goto_c
    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_d

    move-object v15, v2

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_e

    move-object/from16 v16, v2

    goto :goto_e

    :cond_e
    move-object/from16 v16, p16

    :goto_e
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    .line 422
    sget-object v17, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;->NONE:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;

    goto :goto_f

    :cond_f
    move-object/from16 v17, p17

    :goto_f
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    move-object/from16 v18, v2

    goto :goto_10

    :cond_10
    move-object/from16 v18, p18

    :goto_10
    const/high16 v19, 0x40000

    and-int v0, v0, v19

    if-eqz v0, :cond_11

    move-object/from16 p21, v2

    goto :goto_11

    :cond_11
    move-object/from16 p21, p19

    :goto_11
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move/from16 p11, v9

    move-object/from16 p12, v10

    move/from16 p13, v11

    move-object/from16 p14, v12

    move-object/from16 p15, v13

    move-object/from16 p16, v14

    move-object/from16 p17, v15

    move-object/from16 p18, v16

    move-object/from16 p19, v17

    move-object/from16 p20, v18

    .line 405
    invoke-virtual/range {p2 .. p21}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->options(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroid/view/LayoutInflater;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Ljava/util/Collection;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;ZLandroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;)V

    return-void
.end method


# virtual methods
.method public final bindView(Lkotlin/jvm/functions/Function4;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-TB;-",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "-",
            "Landroid/view/View;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder<",
            "TT;TB;>;"
        }
    .end annotation

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->mBindView:Lkotlin/jvm/functions/Function4;

    return-object p0
.end method

.method public build(Lcom/metamoji/lib/utils/binding/Binder;)V
    .locals 11

    const-string v0, "binder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->getMObservableList()Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;

    move-result-object v4

    .line 376
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->getMReadOnlyListLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v8

    .line 378
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->mInflaterInfo:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$build$inflate$1$1;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$build$inflate$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->mInflate:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_5

    :goto_0
    move-object v7, v0

    .line 379
    iget-object v10, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->mBindView:Lkotlin/jvm/functions/Function4;

    if-eqz v10, :cond_4

    if-eqz v4, :cond_2

    .line 382
    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;

    .line 383
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->getOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    .line 384
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    .line 386
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->getMFixedSize()Z

    move-result v5

    .line 387
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->getMLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    :cond_1
    move-object v6, p1

    move-object v8, v10

    .line 382
    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;

    move-result-object p1

    .line 391
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->applyExtensions(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding;)V

    .line 390
    check-cast p1, Lcom/metamoji/lib/utils/binding/IBinding;

    return-void

    :cond_2
    if-eqz v8, :cond_3

    .line 394
    sget-object v5, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding$Companion;

    .line 395
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->getOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v6

    move-object v9, v7

    .line 396
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->getView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v7

    .line 394
    invoke-virtual/range {v5 .. v10}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroidx/recyclerview/widget/RecyclerView;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewReadOnlyBinding;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/binding/IBinding;

    return-void

    .line 402
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "list is not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 379
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bindView is not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 378
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "inflater is not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final inflate(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/ViewGroup;",
            "+TB;>;)",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder<",
            "TT;TB;>;"
        }
    .end annotation

    const-string v0, "inflate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->mInflate:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final inflater(Lkotlin/jvm/functions/Function3;Landroid/view/LayoutInflater;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/LayoutInflater;",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Boolean;",
            "+TB;>;",
            "Landroid/view/LayoutInflater;",
            ")",
            "Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder<",
            "TT;TB;>;"
        }
    .end annotation

    const-string/jumbo v0, "viewBindingInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    move-object v0, p0

    check-cast v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;

    invoke-direct {v0, p2, p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;-><init>(Landroid/view/LayoutInflater;Lkotlin/jvm/functions/Function3;)V

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->mInflaterInfo:Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder$InflaterInfo;

    return-object p0
.end method

.method public final options(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroid/view/LayoutInflater;Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Ljava/util/Collection;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;ZLandroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;Landroidx/lifecycle/LiveData;Lkotlinx/coroutines/flow/Flow;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-TB;-",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "-",
            "Landroid/view/View;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/ViewGroup;",
            "+TB;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/LayoutInflater;",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Boolean;",
            "+TB;>;",
            "Landroid/view/LayoutInflater;",
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

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    move-object/from16 v12, p16

    move-object/from16 v13, p17

    const-string v15, "bindView"

    move-object/from16 v14, p1

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "autoScroll"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->bindView(Lkotlin/jvm/functions/Function4;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;

    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->inflate(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;

    :cond_0
    if-eqz v2, :cond_1

    move-object/from16 v1, p4

    .line 429
    invoke-virtual {v0, v2, v1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->inflater(Lkotlin/jvm/functions/Function3;Landroid/view/LayoutInflater;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;

    :cond_1
    if-eqz v3, :cond_2

    .line 430
    invoke-virtual {v0, v3}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->list(Lcom/metamoji/lib/utils/binding/impl/list/ObservableList;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_2
    if-eqz v4, :cond_3

    .line 431
    invoke-virtual {v0, v4}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->list(Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_3
    if-eqz v5, :cond_4

    .line 432
    invoke-virtual {v0, v5}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->list(Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_4
    if-eqz v6, :cond_5

    .line 433
    invoke-virtual {v0, v6}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->list(Ljava/util/Collection;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_5
    move/from16 v1, p9

    .line 434
    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->fixedSize(Z)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    if-eqz v7, :cond_6

    .line 435
    invoke-virtual {v0, v7}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->layoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_6
    move/from16 v1, p11

    .line 436
    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->dragAndDrop(Z)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    if-eqz v8, :cond_7

    .line 437
    invoke-virtual {v0, v8}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->dragAndDrop(Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_7
    if-eqz v9, :cond_8

    .line 438
    invoke-virtual {v0, v9}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->dragAndDrop(Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_8
    if-eqz v10, :cond_9

    .line 439
    invoke-virtual {v0, v10}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->gestureParams(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$GestureParams;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_9
    if-eqz v11, :cond_a

    .line 440
    invoke-virtual {v0, v11}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->gestureParams(Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_a
    if-eqz v12, :cond_b

    .line 441
    invoke-virtual {v0, v12}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->gestureParams(Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    .line 442
    :cond_b
    invoke-virtual {v0, v13}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->autoScroll(Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$AutoScrollMode;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    if-eqz p18, :cond_c

    move-object/from16 v14, p18

    .line 443
    invoke-virtual {v0, v14}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->autoScroll(Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_c
    if-eqz p19, :cond_d

    move-object/from16 v1, p19

    .line 444
    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$ViewBindingBuilder;->autoScroll(Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/impl/RecyclerViewBinding$BuilderBase;

    :cond_d
    return-void
.end method
