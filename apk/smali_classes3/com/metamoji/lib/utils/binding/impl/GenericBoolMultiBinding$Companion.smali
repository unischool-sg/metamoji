.class public final Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$Companion;
.super Ljava/lang/Object;
.source "BoolBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J_\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t\"\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u001e\u0010\u0010\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00130\u0011\u00a2\u0006\u0002\u0010\u0014J_\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t\"\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00152\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u001e\u0010\u0010\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00130\u0011\u00a2\u0006\u0002\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "targets",
        "",
        "Landroid/view/View;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "",
        "boolConvert",
        "Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "applyValue",
        "Lkotlin/Function2;",
        "",
        "",
        "(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/StateFlow;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$Companion;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 82
    sget-object p4, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$Companion;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/StateFlow;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 88
    sget-object p4, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/StateFlow;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "[",
            "Landroid/view/View;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applyValue"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;

    invoke-direct {v0, p3, p4, p5}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;)V

    .line 84
    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->connectAll(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;)V

    return-object v0
.end method

.method public final create(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/StateFlow;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "[",
            "Landroid/view/View;",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applyValue"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, [Landroid/view/View;

    move-object v3, p3

    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;

    move-result-object p1

    return-object p1
.end method
