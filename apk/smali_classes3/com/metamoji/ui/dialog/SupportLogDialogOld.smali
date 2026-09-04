.class public final Lcom/metamoji/ui/dialog/SupportLogDialogOld;
.super Lcom/metamoji/lib/dialog/UtDialog;
.source "SupportLogDialogOld.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/SupportLogDialogOld$Companion;,
        Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00132\u00020\u0001:\u0002\u0012\u0013B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u001a\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/SupportLogDialogOld;",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "<init>",
        "()V",
        "_viewModel",
        "Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;",
        "get_viewModel",
        "()Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;",
        "_viewModel$delegate",
        "Lkotlin/Lazy;",
        "preCreateBodyView",
        "",
        "createBodyView",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "MyViewModel",
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
.field public static final Companion:Lcom/metamoji/ui/dialog/SupportLogDialogOld$Companion;

.field public static final DEFAULT_TASK_NAME:Ljava/lang/String; = "SupportLogDialogOld"


# instance fields
.field private final _viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/dialog/SupportLogDialogOld$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/SupportLogDialogOld$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->Companion:Lcom/metamoji/ui/dialog/SupportLogDialogOld$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;-><init>()V

    .line 69
    new-instance v0, Lcom/metamoji/ui/dialog/SupportLogDialogOld$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/dialog/SupportLogDialogOld;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->_viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final _viewModel_delegate$lambda$0(Lcom/metamoji/ui/dialog/SupportLogDialogOld;)Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;
    .locals 1

    .line 69
    sget-object v0, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;->Companion:Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->getImmortalTaskName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel$Companion;->instanceOf(Ljava/lang/String;)Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_viewModel(Lcom/metamoji/ui/dialog/SupportLogDialogOld;)Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->get_viewModel()Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;

    move-result-object p0

    return-object p0
.end method

.method static final createBodyView$lambda$3$lambda$1(Lcom/metamoji/ui/dialog/SupportLogDialogOld;Landroid/view/View;)V
    .locals 6

    .line 89
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->get_viewModel()Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/metamoji/ui/dialog/SupportLogDialogOld$createBodyView$1$1$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/metamoji/ui/dialog/SupportLogDialogOld$createBodyView$1$1$1;-><init>(Lcom/metamoji/ui/dialog/SupportLogDialogOld;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method static final createBodyView$lambda$3$lambda$2(Lcom/metamoji/ui/dialog/SupportLogDialogOld;Landroid/view/View;)V
    .locals 6

    .line 96
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->get_viewModel()Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/metamoji/ui/dialog/SupportLogDialogOld$createBodyView$1$2$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/metamoji/ui/dialog/SupportLogDialogOld$createBodyView$1$2$1;-><init>(Lcom/metamoji/ui/dialog/SupportLogDialogOld;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final get_viewModel()Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->_viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;

    return-object v0
.end method


# virtual methods
.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 2

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget p1, Lcom/metamoji/noteanytime/R$layout;->dialog_support_log_old:I

    invoke-interface {p2, p1}, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;->inflate(I)Landroid/view/View;

    move-result-object p1

    .line 87
    sget p2, Lcom/metamoji/noteanytime/R$id;->save_file:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 88
    new-instance v1, Lcom/metamoji/ui/dialog/SupportLogDialogOld$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/dialog/SupportLogDialogOld;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget p2, Lcom/metamoji/noteanytime/R$id;->send_mail:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 95
    new-instance v0, Lcom/metamoji/ui/dialog/SupportLogDialogOld$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/dialog/SupportLogDialogOld;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public preCreateBodyView()V
    .locals 1

    .line 72
    sget v0, Lcom/metamoji/noteanytime/R$string;->APP_SUPPORT_LOG_DIALOG_TITLE:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->setTitle(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->DONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->setRightButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->setCancellable(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->setWidthOption(Lcom/metamoji/lib/dialog/UtDialog$WidthOption;)V

    .line 78
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    return-void

    :cond_0
    const/16 v0, 0x12c

    .line 80
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->setLimitWidth(I)V

    .line 81
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    return-void
.end method
