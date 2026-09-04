.class public final Lcom/metamoji/lib/utils/binding/impl/NumberBindingKt;
.super Ljava/lang/Object;
.source "NumberBinding.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a(\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u001a(\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\t\u001a \u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u001a \u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\t\u001a(\u0010\n\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0007\u001a(\u0010\n\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\t\u001a \u0010\n\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0007\u001a \u0010\n\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\t\u001a(\u0010\u000c\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007\u001a(\u0010\u000c\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\r0\t\u001a \u0010\u000c\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007\u001a \u0010\u000c\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\r0\t\u001a2\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000f2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u001a2\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000f2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u001a*\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u000f2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u001a*\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u000f2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u001a2\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000f2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u001a2\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000f2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u001a*\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u000f2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u001a*\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u000f2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u001a2\u0010\u0015\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000f2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u001a2\u0010\u0015\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u000f2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u001a*\u0010\u0015\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u000f2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u001a*\u0010\u0015\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u000f2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "intBinding",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroid/widget/TextView;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lkotlinx/coroutines/flow/Flow;",
        "longBinding",
        "",
        "floatBinding",
        "",
        "editIntBinding",
        "Landroid/widget/EditText;",
        "Landroidx/lifecycle/MutableLiveData;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "editLongBinding",
        "editFloatBinding",
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
.method public static final editFloatBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/EditText;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
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

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 174
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditFloatBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final editFloatBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/EditText;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
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

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 177
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    .line 178
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    .line 180
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/metamoji/lib/utils/UtMutableStateFlowLiveDataKt;->asMutableLiveData(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    .line 177
    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditFloatBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    .line 176
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final editFloatBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/EditText;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
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

    const-string v0, "mode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 170
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditFloatBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final editFloatBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/EditText;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
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

    const-string v0, "mode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 172
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    invoke-static {p3, p1}, Lcom/metamoji/lib/utils/UtMutableStateFlowLiveDataKt;->asMutableLiveData(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditFloatBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic editFloatBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 173
    sget-object p3, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/NumberBindingKt;->editFloatBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic editFloatBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 175
    sget-object p3, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/NumberBindingKt;->editFloatBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic editFloatBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 169
    sget-object p4, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/NumberBindingKt;->editFloatBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic editFloatBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 171
    sget-object p4, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/NumberBindingKt;->editFloatBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final editIntBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/EditText;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
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

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 142
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditIntBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final editIntBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/EditText;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
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

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 145
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    .line 146
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    .line 148
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/metamoji/lib/utils/UtMutableStateFlowLiveDataKt;->asMutableLiveData(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    .line 145
    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditIntBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    .line 144
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final editIntBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/EditText;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
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

    const-string v0, "mode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 138
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditIntBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final editIntBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/EditText;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
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

    const-string v0, "mode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 140
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    invoke-static {p3, p1}, Lcom/metamoji/lib/utils/UtMutableStateFlowLiveDataKt;->asMutableLiveData(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditIntBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic editIntBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 141
    sget-object p3, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/NumberBindingKt;->editIntBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic editIntBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 143
    sget-object p3, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/NumberBindingKt;->editIntBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic editIntBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 137
    sget-object p4, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/NumberBindingKt;->editIntBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic editIntBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 139
    sget-object p4, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/NumberBindingKt;->editIntBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final editLongBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/EditText;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
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

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 158
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditLongBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final editLongBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/EditText;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
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

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 161
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    .line 162
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/metamoji/lib/utils/UtMutableStateFlowLiveDataKt;->asMutableLiveData(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    .line 161
    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditLongBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    .line 160
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final editLongBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/EditText;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
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

    const-string v0, "mode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 154
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditLongBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final editLongBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/EditText;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
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

    const-string v0, "mode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 156
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;

    invoke-static {p3, p1}, Lcom/metamoji/lib/utils/UtMutableStateFlowLiveDataKt;->asMutableLiveData(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/EditNumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditLongBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic editLongBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 157
    sget-object p3, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/NumberBindingKt;->editLongBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic editLongBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 159
    sget-object p3, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/NumberBindingKt;->editLongBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic editLongBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 153
    sget-object p4, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/NumberBindingKt;->editLongBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic editLongBinding$default(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 155
    sget-object p4, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/NumberBindingKt;->editLongBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final floatBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/TextView;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 133
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/NumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/FloatBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final floatBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/TextView;Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/TextView;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 135
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/NumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/FloatBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final floatBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/TextView;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;)",
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

    const/4 v0, 0x1

    .line 129
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/NumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;

    invoke-virtual {v1, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/FloatBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final floatBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/TextView;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Float;",
            ">;)",
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

    const/4 v0, 0x1

    .line 131
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/NumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p3

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/FloatBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final intBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/TextView;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 115
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/NumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/IntBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final intBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/TextView;Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/TextView;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 117
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/NumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/IntBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final intBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/TextView;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;)",
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

    const/4 v0, 0x1

    .line 111
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/NumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;

    invoke-virtual {v1, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/IntBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final intBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/TextView;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Integer;",
            ">;)",
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

    const/4 v0, 0x1

    .line 113
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/NumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p3

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/IntBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final longBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/TextView;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 124
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/NumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/LongBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final longBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroid/widget/TextView;Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroid/widget/TextView;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/metamoji/lib/utils/binding/Binder;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 126
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/NumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/Binder;->getRequireOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/LongBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final longBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/TextView;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;)",
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

    const/4 v0, 0x1

    .line 120
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/NumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;

    invoke-virtual {v1, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/LongBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static final longBinding(Lcom/metamoji/lib/utils/binding/Binder;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/Binder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/Binder;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/widget/TextView;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Long;",
            ">;)",
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

    const/4 v0, 0x1

    .line 122
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/NumberBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p3

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/NumberBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/LongBinding;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/binding/Binder;->add([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/binding/Binder;

    move-result-object p0

    return-object p0
.end method
