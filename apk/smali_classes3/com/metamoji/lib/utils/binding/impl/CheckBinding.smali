.class public Lcom/metamoji/lib/utils/binding/impl/CheckBinding;
.super Lcom/metamoji/lib/utils/binding/impl/BoolBinding;
.source "CheckBinding.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/CheckBinding$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u0000 \u001e2\u00020\u00012\u00020\u0002:\u0001\u001eB)\u0008\u0004\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bB!\u0008\u0016\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\rJ\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000fJ\u0008\u0010\u0017\u001a\u00020\u0013H\u0016J\u0018\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u0005H\u0016J\u0017\u0010\u001b\u001a\u00020\u00132\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0002\u0010\u001dR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/CheckBinding;",
        "Lcom/metamoji/lib/utils/binding/impl/BoolBinding;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "rawData",
        "Landroidx/lifecycle/LiveData;",
        "",
        "mode",
        "Lcom/metamoji/lib/utils/binding/BindingMode;",
        "boolConvert",
        "Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lcom/metamoji/lib/utils/binding/BoolConvert;)V",
        "data",
        "(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)V",
        "compoundButton",
        "Landroid/widget/CompoundButton;",
        "getCompoundButton",
        "()Landroid/widget/CompoundButton;",
        "connect",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "dispose",
        "onCheckedChanged",
        "buttonView",
        "isChecked",
        "onDataChanged",
        "v",
        "(Ljava/lang/Boolean;)V",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/CheckBinding$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/CheckBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/CheckBinding$Companion;

    return-void
.end method

.method protected constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lcom/metamoji/lib/utils/binding/BoolConvert;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BindingMode;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            ")V"
        }
    .end annotation

    const-string v0, "rawData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/BoolBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lcom/metamoji/lib/utils/binding/BoolConvert;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lcom/metamoji/lib/utils/binding/BoolConvert;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 20
    sget-object p3, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lcom/metamoji/lib/utils/binding/BoolConvert;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lcom/metamoji/lib/utils/binding/BoolConvert;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 22
    sget-object p2, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;)V

    return-void
.end method

.method private final getCompoundButton()Landroid/widget/CompoundButton;
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/CompoundButton;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final connect(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/CompoundButton;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-super {p0, p1, v0}, Lcom/metamoji/lib/utils/binding/impl/BoolBinding;->connect(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V

    .line 28
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, v0, :cond_1

    .line 29
    move-object p1, p0

    check-cast p1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 30
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object p1

    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWayToSource:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 32
    :cond_0
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-eq v0, v1, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;->getCompoundButton()Landroid/widget/CompoundButton;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 41
    :cond_0
    invoke-super {p0}, Lcom/metamoji/lib/utils/binding/impl/BoolBinding;->dispose()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string v0, "buttonView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;->getMutableData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDataChanged(Ljava/lang/Boolean;)V
    .locals 2

    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 56
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;->getCompoundButton()Landroid/widget/CompoundButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onDataChanged(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/CheckBinding;->onDataChanged(Ljava/lang/Boolean;)V

    return-void
.end method
