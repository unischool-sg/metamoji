.class public final Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;
.super Ljava/lang/Object;
.source "EnableBinding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnableBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnableBinding.kt\ncom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1#2:139\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JI\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t\"\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012JI\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\t\"\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00132\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "views",
        "",
        "Landroid/view/View;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "",
        "boolConvert",
        "Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "alphaOnDisabled",
        "",
        "(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;",
        "Lkotlinx/coroutines/flow/Flow;",
        "(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;",
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

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 80
    sget-object p4, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/high16 p5, 0x3f800000    # 1.0f

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$default(Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 83
    sget-object p4, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/high16 p5, 0x3f800000    # 1.0f

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;
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
            "F)",
            "Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "views"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;

    invoke-direct {v0, p3, p4, p5}, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)V

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;->connectAll(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;)V

    return-object v0
.end method

.method public final create(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "[",
            "Landroid/view/View;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "F)",
            "Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "views"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v6}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p3

    invoke-direct {v0, p3, p4, p5}, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)V

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;->connectAll(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;)V

    return-object v0
.end method
