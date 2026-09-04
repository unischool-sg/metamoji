.class public final Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;
.super Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;
.source "MaterialRadioButtonUnSelectableGroupBinding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase<",
        "TT;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u001a*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u001aB\u001f\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J&\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0016J\u0017\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00018\u0000H\u0014\u00a2\u0006\u0002\u0010\u0013J$\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;",
        "T",
        "Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;",
        "data",
        "Landroidx/lifecycle/MutableLiveData;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "<init>",
        "(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V",
        "connect",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
        "idResolver",
        "Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;",
        "onDataChanged",
        "v",
        "(Ljava/lang/Object;)V",
        "onButtonChecked",
        "group",
        "checkedId",
        "",
        "isChecked",
        "",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "TT;>;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 27
    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    .line 25
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

    return-void
.end method


# virtual methods
.method public connect(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
            "Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idResolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    .line 33
    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSelectionRequired(Z)V

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;->connect(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;)V

    .line 35
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWayToSource:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->getData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->getToggleGroup()Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->getToggleGroup()Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonId()I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    :goto_1
    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    return-void
.end method

.method public onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->getIdResolver()Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;->id2value(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->getData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->getIdResolver()Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;->id2value(I)Ljava/lang/Object;

    move-result-object p2

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->getData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->getData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onDataChanged(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->getToggleGroup()Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding;->getIdResolver()Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;->value2id(Ljava/lang/Object;)I

    move-result p1

    .line 45
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;

    const/4 v3, 0x0

    invoke-direct {v1, v0, p1, v3}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonUnSelectableGroupBinding$onDataChanged$1;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;ILkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->clearChecked()V

    return-void
.end method
