.class final Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;
.super Ljava/lang/Object;
.source "MaterialToggleButtonsBinding.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0002H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;",
        "Landroidx/lifecycle/Observer;",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "button",
        "Landroid/view/View;",
        "data",
        "Landroidx/lifecycle/MutableLiveData;",
        "<init>",
        "(Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/MutableLiveData;)V",
        "getButton",
        "()Landroid/view/View;",
        "getData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "dispose",
        "",
        "onChanged",
        "value",
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
.field private final button:Landroid/view/View;

.field private final data:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/view/View;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "button"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->this$0:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->button:Landroid/view/View;

    iput-object p4, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->data:Landroidx/lifecycle/MutableLiveData;

    .line 34
    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object p3, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWayToSource:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, p3, :cond_0

    .line 35
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/Observer;

    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->data:Landroidx/lifecycle/MutableLiveData;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final getButton()Landroid/view/View;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->button:Landroid/view/View;

    return-object v0
.end method

.method public final getData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->data:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->onChanged(Z)V

    return-void
.end method

.method public onChanged(Z)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->this$0:Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding;->getToggleGroup()Lcom/google/android/material/button/MaterialButtonToggleGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonIds()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->button:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz p1, :cond_1

    if-nez v1, :cond_2

    .line 48
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->button:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    .line 52
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MaterialToggleButtonsBinding$DataObserver;->button:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->uncheck(I)V

    :cond_2
    :goto_0
    return-void
.end method
