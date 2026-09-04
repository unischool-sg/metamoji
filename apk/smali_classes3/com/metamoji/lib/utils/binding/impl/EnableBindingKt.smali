.class public final Lcom/metamoji/lib/utils/binding/impl/EnableBindingKt;
.super Ljava/lang/Object;
.source "EnableBinding.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u001a<\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u001a<\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u001a4\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u001a4\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u001aG\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00102\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0011\u001aG\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00102\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0012\u001a?\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00102\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0013\u001a?\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00102\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "enableBinding",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroid/view/View;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "",
        "boolConvert",
        "Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "alphaOnDisabled",
        "",
        "Lkotlinx/coroutines/flow/Flow;",
        "multiEnableBinding",
        "views",
        "",
        "(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;",
        "(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;",
        "(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;",
        "(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;",
        "utils"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final enableBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/view/View;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "F)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 94
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final enableBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/view/View;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "F)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 97
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    .line 98
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p2

    .line 100
    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    .line 97
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    .line 96
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final enableBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/view/View;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "F)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 90
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final enableBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/view/View;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "F)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 92
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p3

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic enableBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 93
    sget-object p3, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/high16 p4, 0x3f800000    # 1.0f

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EnableBindingKt;->enableBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic enableBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 95
    sget-object p3, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/high16 p4, 0x3f800000    # 1.0f

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EnableBindingKt;->enableBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic enableBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 89
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

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/EnableBindingKt;->enableBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic enableBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 91
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

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/EnableBindingKt;->enableBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final multiEnableBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "[",
            "Landroid/view/View;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "F)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "views"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 107
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, [Landroid/view/View;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final multiEnableBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "[",
            "Landroid/view/View;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "F)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "views"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 110
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;

    .line 112
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, [Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v4, p3

    .line 113
    invoke-static/range {v4 .. v9}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    move-object v2, p1

    move-object v5, p4

    move v6, p5

    .line 110
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    .line 109
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final multiEnableBinding(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "[",
            "Landroid/view/View;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "F)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "views"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 120
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;

    .line 121
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    .line 122
    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Landroid/view/View;

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 120
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    .line 119
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final multiEnableBinding(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "[",
            "Landroid/view/View;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "F)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "views"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 130
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;

    .line 131
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    .line 132
    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Landroid/view/View;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v4, p2

    .line 133
    invoke-static/range {v4 .. v9}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    move-object v5, p3

    move v6, p4

    .line 130
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/impl/MultiEnableBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    .line 129
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic multiEnableBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 106
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

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/EnableBindingKt;->multiEnableBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic multiEnableBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    .line 108
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

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/EnableBindingKt;->multiEnableBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic multiEnableBinding$default(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 118
    sget-object p3, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/high16 p4, 0x3f800000    # 1.0f

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EnableBindingKt;->multiEnableBinding(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic multiEnableBinding$default(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 128
    sget-object p3, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/high16 p4, 0x3f800000    # 1.0f

    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EnableBindingKt;->multiEnableBinding(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;F)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method
