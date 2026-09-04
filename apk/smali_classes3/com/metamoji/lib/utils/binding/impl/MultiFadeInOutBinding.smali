.class public final Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;
.super Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;
.source "FadeInOutBinding.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFadeInOutBinding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FadeInOutBinding.kt\ncom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1915#2,2:182\n1915#2,2:184\n*S KotlinDebug\n*F\n+ 1 FadeInOutBinding.kt\ncom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding\n*L\n135#1:182,2\n139#1:184,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B)\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\rH\u0016J\'\u0010 \u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001e2\u0012\u0010!\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\r0\"\"\u00020\r\u00a2\u0006\u0002\u0010#J\u0008\u0010$\u001a\u00020\u001cH\u0016R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8T@TX\u0094\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u00158T@TX\u0094\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006%"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;",
        "Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "",
        "boolConvert",
        "Lcom/metamoji/lib/utils/binding/BoolConvert;",
        "animDuration",
        "",
        "<init>",
        "(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)V",
        "views",
        "",
        "Landroid/view/View;",
        "value",
        "",
        "alpha",
        "getAlpha",
        "()F",
        "setAlpha",
        "(F)V",
        "",
        "visibility",
        "getVisibility",
        "()I",
        "setVisibility",
        "(I)V",
        "connect",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "connectAll",
        "targets",
        "",
        "(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;",
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
.method public constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/lib/utils/binding/BoolConvert;",
            "J)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boolConvert"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)V

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->views:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 128
    sget-object p2, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const-wide/16 p3, 0x1f4

    .line 126
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;J)V

    return-void
.end method


# virtual methods
.method public connect(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object p1, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const/4 p2, 0x0

    const-string/jumbo v0, "use connectAll() method."

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/lib/utils/UtLog;->assert(ZLjava/lang/String;)V

    return-void
.end method

.method public final varargs connectAll(Landroidx/lifecycle/LifecycleOwner;[Landroid/view/View;)Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "targets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/BaseBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/impl/BaseBinding$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->getMode()Lcom/metamoji/lib/utils/binding/BindingMode;

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

    .line 147
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->getObserved()Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding$connectAll$1;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding$connectAll$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1, v1}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/IDisposable;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->setObserved(Lcom/metamoji/lib/utils/IDisposable;)V

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->views:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->getData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->onDataChanged(Ljava/lang/Boolean;)V

    :cond_2
    return-object p0
.end method

.method public dispose()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    invoke-super {p0}, Lcom/metamoji/lib/utils/binding/impl/FadeInOutBase;->dispose()V

    return-void
.end method

.method protected getAlpha()F
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->views:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getVisibility()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->views:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method protected setAlpha(F)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->views:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 182
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 135
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setVisibility(I)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/MultiFadeInOutBinding;->views:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 184
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 139
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
