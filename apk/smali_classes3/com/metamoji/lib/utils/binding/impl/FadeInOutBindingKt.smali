.class public final Lcom/metamoji/lib/utils/binding/impl/FadeInOutBindingKt;
.super Ljava/lang/Object;
.source "FadeInOutBinding.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFadeInOutBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FadeInOutBinding.kt\ncom/metamoji/lib/utils/binding/impl/FadeInOutBindingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n1#2:182\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u001a<\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u001a<\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u001a4\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u001a4\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u001aG\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00102\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0011\u001aG\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00102\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0012\u001a?\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00102\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0013\u001a?\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00102\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r2\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "fadeInOutBinding",
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
        "duration",
        "",
        "Lkotlinx/coroutines/flow/Flow;",
        "multiFadeInOutBinding",
        "views",
        "",
        "(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;",
        "(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;",
        "(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;",
        "(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;",
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
.method public static final fadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/view/View;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "J)",
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

    .line 168
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final fadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;
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
            "J)",
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

    .line 170
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v4

    move-object v3, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final fadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 8
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
            "J)",
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

    .line 164
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding$Companion;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final fadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;
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
            "J)",
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

    .line 166
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding$Companion;

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

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/impl/FadeInOutBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fadeInOutBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;JILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 167
    sget-object p3, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const-wide/16 p4, 0x1f4

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBindingKt;->fadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fadeInOutBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;JILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 169
    sget-object p3, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const-wide/16 p4, 0x1f4

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBindingKt;->fadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fadeInOutBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;JILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 163
    sget-object p4, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const-wide/16 p5, 0x1f4

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBindingKt;->fadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fadeInOutBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;JILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 165
    sget-object p4, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const-wide/16 p5, 0x1f4

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBindingKt;->fadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final multiFadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
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
            "J)",
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

    .line 174
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)V

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/view/View;

    invoke-virtual {v1, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->connectAll(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final multiFadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 8
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
            "J)",
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

    .line 176
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p3

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p3

    invoke-direct {v1, p3, p4, p5, p6}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)V

    array-length p3, p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/view/View;

    invoke-virtual {v1, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->connectAll(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final multiFadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
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
            "J)",
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

    .line 178
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)V

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    array-length p3, p1

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-virtual {v1, p2, p1}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->connectAll(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final multiFadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 8
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
            "J)",
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

    .line 180
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)V

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    array-length p3, p1

    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-virtual {v1, p2, p1}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->connectAll(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p1, 0x0

    aput-object v1, v0, p1

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic multiFadeInOutBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;JILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 173
    sget-object p4, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const-wide/16 p5, 0x1f4

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBindingKt;->multiFadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic multiFadeInOutBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;JILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 175
    sget-object p4, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const-wide/16 p5, 0x1f4

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBindingKt;->multiFadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic multiFadeInOutBinding$default(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;JILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 177
    sget-object p3, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const-wide/16 p4, 0x1f4

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBindingKt;->multiFadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic multiFadeInOutBinding$default(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;JILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 179
    sget-object p3, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const-wide/16 p4, 0x1f4

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBindingKt;->multiFadeInOutBinding(Lcom/metamoji/lib/utils/binding/Binder;[Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;J)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method
