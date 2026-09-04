.class public abstract Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;
.super Lcom/metamoji/lib/utils/binding/impl/BaseBinding;
.source "MaterialButtonGroupBindingBase.kt"

# interfaces
.implements Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/binding/impl/BaseBinding<",
        "TDataType;>;",
        "Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u00020\u0004B\u001f\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ&\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00152\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fH\u0016J\u0008\u0010\u001d\u001a\u00020\u0019H\u0016R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;",
        "T",
        "DataType",
        "Lcom/metamoji/lib/utils/binding/impl/BaseBinding;",
        "Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;",
        "data",
        "Landroidx/lifecycle/MutableLiveData;",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "<init>",
        "(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V",
        "getData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "btnListener",
        "idResolver",
        "Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;",
        "getIdResolver",
        "()Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;",
        "setIdResolver",
        "(Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;)V",
        "toggleGroup",
        "Lcom/google/android/material/button/MaterialButtonToggleGroup;",
        "getToggleGroup",
        "()Lcom/google/android/material/button/MaterialButtonToggleGroup;",
        "connect",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "dispose",
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
.field private btnListener:Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

.field private final data:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public idResolver:Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "TDataType;>;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p2}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;-><init>(Lcom/metamoji/lib/utils/binding/BindingMode;)V

    .line 9
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;->data:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 10
    sget-object p2, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;-><init>(Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)V

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

    .line 20
    invoke-virtual {p0, p3}, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;->setIdResolver(Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;)V

    .line 21
    move-object p3, p2

    check-cast p3, Landroid/view/View;

    invoke-super {p0, p1, p3}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->connect(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V

    .line 22
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object p3, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, p3, :cond_0

    .line 23
    move-object p1, p0

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

    invoke-virtual {p2, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 28
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq v0, v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;->getToggleGroup()Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->removeOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    .line 31
    :cond_0
    invoke-super {p0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->dispose()V

    return-void
.end method

.method public bridge synthetic getData()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;->getData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "TDataType;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;->data:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getIdResolver()Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver<",
            "TT;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;->idResolver:Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "idResolver"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getToggleGroup()Lcom/google/android/material/button/MaterialButtonToggleGroup;
    .locals 2

    .line 17
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setIdResolver(Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialButtonGroupBindingBase;->idResolver:Lcom/metamoji/lib/utils/binding/impl/IIDValueResolver;

    return-void
.end method
