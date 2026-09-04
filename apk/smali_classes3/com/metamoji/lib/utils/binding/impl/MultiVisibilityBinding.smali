.class public final Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;
.super Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;
.source "VisibilityBinding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB)\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0002\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\rH\u0016J\'\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00142\u0012\u0010\u0017\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\r0\u0018\"\u00020\r\u00a2\u0006\u0002\u0010\u0019J\u0008\u0010\u001a\u001a\u00020\u000fH\u0016R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;",
        "Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "",
        "boolConvert",
        "Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "hiddenMode",
        "Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V",
        "views",
        "",
        "Landroid/view/View;",
        "onDataChanged",
        "",
        "v",
        "(Ljava/lang/Boolean;)V",
        "connect",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "connectAll",
        "targets",
        "",
        "(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;",
        "dispose",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding$Companion;


# instance fields
.field private final views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiddenMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->views:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 48
    sget-object p2, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 49
    sget-object p3, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByGone:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    .line 46
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V

    return-void
.end method


# virtual methods
.method public connect(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object p1, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const/4 p2, 0x0

    const-string/jumbo v0, "use connectAll() method."

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/lib/utils/UtLog;->assert(ZLjava/lang/String;)V

    return-void
.end method

.method public final varargs connectAll(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MultiVisibilityBinding ... support OneWay mode only."

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->assert(ZLjava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->getObserved()Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding$connectAll$1;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding$connectAll$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, v1}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/IDisposable;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->setObserved(Lcom/metamoji/lib/utils/IDisposable;)V

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->views:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->onDataChanged(Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public dispose()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    invoke-super {p0}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->dispose()V

    return-void
.end method

.method protected onDataChanged(Ljava/lang/Boolean;)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    .line 56
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->getHiddenMode()Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    move-result-object v2

    sget-object v3, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByGone:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    if-ne v2, v3, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    .line 55
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic onDataChanged(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/MultiVisibilityBinding;->onDataChanged(Ljava/lang/Boolean;)V

    return-void
.end method
