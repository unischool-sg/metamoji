.class public Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;
.super Lcom/metamoji/lib/utils/binding/impl/BoolBinding;
.source "BoolBinding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB?\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u001e\u0010\u0007\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0012\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0002\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\nH\u0016J\'\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00172\u0012\u0010\u001a\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\n0\u001b\"\u00020\n\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010\u001d\u001a\u00020\u000bH\u0016R)\u0010\u0007\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;",
        "Lcom/metamoji/lib/utils/binding/impl/BoolBinding;",
        "rawData",
        "Landroidx/lifecycle/LiveData;",
        "",
        "boolConvert",
        "Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "applyValue",
        "Lkotlin/Function2;",
        "",
        "Landroid/view/View;",
        "",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;)V",
        "getApplyValue",
        "()Lkotlin/jvm/functions/Function2;",
        "views",
        "",
        "onDataChanged",
        "v",
        "(Ljava/lang/Boolean;)V",
        "connect",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "connectAll",
        "targets",
        "",
        "(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;)V",
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
.field public static final Companion:Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$Companion;


# instance fields
.field private final applyValue:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

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

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rawData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applyValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    invoke-direct {p0, p1, v0, p2}, Lcom/metamoji/lib/utils/binding/impl/BoolBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BindingMode;Lcom/metamoji/lib/utils/binding/BoolConvert;)V

    .line 53
    iput-object p3, p0, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->applyValue:Lkotlin/jvm/functions/Function2;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->views:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 52
    sget-object p2, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    .line 50
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lkotlin/jvm/functions/Function2;)V

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

.method public final varargs connectAll(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;)V
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/lib/utils/binding/BindingMode;->OneWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "GenericBoolMultiBinding ... support OneWay mode only."

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->assert(ZLjava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->views:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->getObserved()Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p2

    if-nez p2, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$connectAll$1;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding$connectAll$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, p1, v0}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/IDisposable;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->setObserved(Lcom/metamoji/lib/utils/IDisposable;)V

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->onDataChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    invoke-super {p0}, Lcom/metamoji/lib/utils/binding/impl/BoolBinding;->dispose()V

    return-void
.end method

.method public final getApplyValue()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->applyValue:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method protected onDataChanged(Ljava/lang/Boolean;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->applyValue:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->views:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic onDataChanged(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/GenericBoolMultiBinding;->onDataChanged(Ljava/lang/Boolean;)V

    return-void
.end method
