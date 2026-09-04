.class public final Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBindingKt;
.super Ljava/lang/Object;
.source "ReadOnlyBinding.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a2\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u001a2\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000b2\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000b2\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a8\u0006\u000c"
    }
    d2 = {
        "readOnlyBinding",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroid/widget/EditText;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "",
        "boolConvert",
        "Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "Lkotlinx/coroutines/flow/Flow;",
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
.method public static final readOnlyBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/EditText;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            ")",
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

    .line 49
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final readOnlyBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/EditText;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            ")",
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

    .line 51
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final readOnlyBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/EditText;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            ")",
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

    .line 45
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding$Companion;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final readOnlyBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/EditText;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            ")",
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

    .line 47
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding$Companion;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p3

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readOnlyBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 48
    sget-object p3, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBindingKt;->readOnlyBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readOnlyBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 50
    sget-object p3, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBindingKt;->readOnlyBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readOnlyBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 44
    sget-object p4, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBindingKt;->readOnlyBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readOnlyBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 46
    sget-object p4, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/ReadOnlyBindingKt;->readOnlyBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/Flow;Lcom/metamoji/lib/utils/binding/BoolConvert;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method
