.class public final Lcom/metamoji/ui/dialog/SupportLogDialog;
.super Lcom/metamoji/lib/dialog/UtDialog;
.source "SupportLogDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/SupportLogDialog$Companion;,
        Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00172\u00020\u0001:\u0002\u0016\u0017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u001a\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\rH\u0016J\u0008\u0010\u0015\u001a\u00020\rH\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/SupportLogDialog;",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "<init>",
        "()V",
        "_model",
        "Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;",
        "get_model",
        "()Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;",
        "_model$delegate",
        "Lkotlin/Lazy;",
        "_binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "preCreateBodyView",
        "",
        "createBodyView",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "onDestroyView",
        "onPositive",
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
.field public static final Companion:Lcom/metamoji/ui/dialog/SupportLogDialog$Companion;

.field public static final DEFAULT_TASK_NAME:Ljava/lang/String; = "SupportLogDialog"


# instance fields
.field private final _binder:Lcom/metamoji/lib/utils/binding/Binder;

.field private final _model$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/SupportLogDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/dialog/SupportLogDialog;->Companion:Lcom/metamoji/ui/dialog/SupportLogDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;-><init>()V

    .line 54
    new-instance v0, Lcom/metamoji/ui/dialog/SupportLogDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/SupportLogDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/dialog/SupportLogDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogDialog;->_model$delegate:Lkotlin/Lazy;

    .line 55
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogDialog;->_binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method

.method static final _model_delegate$lambda$0(Lcom/metamoji/ui/dialog/SupportLogDialog;)Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;
    .locals 1

    .line 54
    sget-object v0, Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;->Companion:Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->getImmortalTaskName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel$Companion;->instanceOf(Ljava/lang/String;)Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_model(Lcom/metamoji/ui/dialog/SupportLogDialog;)Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->get_model()Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;

    move-result-object p0

    return-object p0
.end method

.method static final createBodyView$lambda$1(Lcom/metamoji/ui/dialog/SupportLogDialog;Landroid/view/View;)V
    .locals 6

    .line 76
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->get_model()Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/metamoji/ui/dialog/SupportLogDialog$createBodyView$1$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/metamoji/ui/dialog/SupportLogDialog$createBodyView$1$1;-><init>(Lcom/metamoji/ui/dialog/SupportLogDialog;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final get_model()Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogDialog;->_model$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;

    return-object v0
.end method


# virtual methods
.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 8

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget p1, Lcom/metamoji/noteanytime/R$layout;->dialog_support_log:I

    invoke-interface {p2, p1}, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;->inflate(I)Landroid/view/View;

    move-result-object p1

    .line 74
    sget p2, Lcom/metamoji/noteanytime/R$id;->save_file:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 75
    new-instance v1, Lcom/metamoji/ui/dialog/SupportLogDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/SupportLogDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/dialog/SupportLogDialog;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget p2, Lcom/metamoji/noteanytime/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p2

    check-cast v3, Landroid/widget/EditText;

    .line 82
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SupportLogDialog;->_binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/4 v0, 0x1

    .line 83
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->get_model()Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/ui/dialog/SupportLogDialog$MyViewModel;->getMessageData()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 82
    invoke-virtual {p2, v0}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogDialog;->_binder:Lcom/metamoji/lib/utils/binding/Binder;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    .line 91
    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onDestroyView()V

    return-void
.end method

.method protected onPositive()V
    .locals 7

    .line 95
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/metamoji/ui/dialog/SupportLogDialog$onPositive$1;-><init>(Lcom/metamoji/ui/dialog/SupportLogDialog;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public preCreateBodyView()V
    .locals 7

    .line 58
    sget v0, Lcom/metamoji/noteanytime/R$string;->APP_SUPPORT_LOG_DIALOG_TITLE:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->setTitle(Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CANCEL:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->setLeftButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    .line 60
    move-object v1, p0

    check-cast v1, Lcom/metamoji/lib/dialog/UtDialog;

    sget v2, Lcom/metamoji/noteanytime/R$string;->APP_SUPPORT_LOG_REPORT:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/metamoji/lib/dialog/UtDialog;->setRightButton$default(Lcom/metamoji/lib/dialog/UtDialog;IZZILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->setCancellable(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->setWidthOption(Lcom/metamoji/lib/dialog/UtDialog$WidthOption;)V

    .line 65
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    return-void

    :cond_0
    const/16 v0, 0x12c

    .line 67
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->setLimitWidth(I)V

    .line 68
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/SupportLogDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    return-void
.end method
