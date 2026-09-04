.class public final Lcom/metamoji/ns/ui/NsCollaboWaitView2;
.super Lcom/metamoji/ui/UiWaitScreenBase;
.source "NsCollaboWaitView2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/ui/NsCollaboWaitView2$Companion;,
        Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00172\u00020\u0001:\u0002\u0016\u0017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/ns/ui/NsCollaboWaitView2;",
        "Lcom/metamoji/ui/UiWaitScreenBase;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;",
        "getViewModel",
        "()Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "createContentView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "",
        "Model",
        "Companion",
        "app"
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
.field public static final Companion:Lcom/metamoji/ns/ui/NsCollaboWaitView2$Companion;


# instance fields
.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->Companion:Lcom/metamoji/ns/ui/NsCollaboWaitView2$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/metamoji/ui/UiWaitScreenBase;-><init>()V

    .line 46
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView2$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ns/ui/NsCollaboWaitView2;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->viewModel$delegate:Lkotlin/Lazy;

    .line 47
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method

.method static final createContentView$lambda$2$lambda$1(Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->cancel()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getViewModel()Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;

    return-object v0
.end method

.method static final viewModel_delegate$lambda$0(Lcom/metamoji/ns/ui/NsCollaboWaitView2;)Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;
    .locals 2

    .line 46
    sget-object v0, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->Companion:Lcom/metamoji/ns/ui/NsCollaboWaitView2$Companion;

    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Companion;->modelFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "inflater"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "container"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->getViewModel()Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;

    move-result-object v3

    .line 51
    sget v4, Lcom/metamoji/noteanytime/R$layout;->dialog_collabo_waitview:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 52
    invoke-virtual {v3}, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->getUiGuard()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->setInputGuard(Z)V

    .line 53
    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->getViewModel()Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->getDisplayView()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_0
    sget v2, Lcom/metamoji/noteanytime/R$id;->button_cancel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 57
    iget-object v6, v0, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/4 v7, 0x3

    .line 58
    new-array v7, v7, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v8, Lcom/metamoji/lib/utils/binding/impl/TextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v9

    const-string v10, "getViewLifecycleOwner(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v11, Lcom/metamoji/noteanytime/R$id;->message:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const-string v12, "findViewById(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->getMessage()Landroidx/lifecycle/MutableLiveData;

    move-result-object v12

    check-cast v12, Landroidx/lifecycle/LiveData;

    invoke-virtual {v8, v9, v11, v12}, Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/TextBinding;

    move-result-object v8

    aput-object v8, v7, v5

    .line 59
    sget-object v11, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v12

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v2

    check-cast v13, Landroid/view/View;

    invoke-virtual {v3}, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->getCancelButtonVisible()Landroidx/lifecycle/LiveData;

    move-result-object v14

    const/16 v17, 0x18

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;

    move-result-object v2

    aput-object v2, v7, v4

    .line 60
    invoke-virtual {v3}, Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;->getCancelCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboWaitView2$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3}, Lcom/metamoji/ns/ui/NsCollaboWaitView2$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ns/ui/NsCollaboWaitView2$Model;)V

    invoke-virtual {v2, v4, v13, v5}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v7, v3

    .line 57
    invoke-virtual {v6, v7}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/metamoji/ui/UiWaitScreenBase;->onDestroyView()V

    .line 67
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboWaitView2;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    return-void
.end method
