.class public final Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;
.super Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;
.source "MaterialRadioButtonGroupBinding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding$Companion;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \u001a*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u001aB\u001f\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J&\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0016J$\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0017\u0010\u0017\u001a\u00020\n2\u0008\u0010\u0018\u001a\u0004\u0018\u00018\u0000H\u0014\u00a2\u0006\u0002\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;",
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
        "onButtonChecked",
        "group",
        "checkedId",
        "",
        "isChecked",
        "",
        "onDataChanged",
        "v",
        "(Ljava/lang/Object;)V",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding$Companion;

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

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 21
    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

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

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;->connect(Landroidx/lifecycle/LifecycleOwner;Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;)V

    .line 27
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWayToSource:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;->getData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;->getToggleGroup()Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;->getToggleGroup()Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonId()I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;->onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    return-void
.end method

.method public onButtonChecked(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;->getIdResolver()Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;->id2value(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;->getData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;->getData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDataChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;->getToggleGroup()Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialRadioButtonGroupBinding;->getIdResolver()Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;->value2id(Ljava/lang/Object;)I

    move-result p1

    .line 48
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonId()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->clearChecked()V

    .line 50
    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    :cond_1
    :goto_0
    return-void
.end method
