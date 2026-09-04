.class public final Lcom/metamoji/ui/dialog/UiPasswordDialog2;
.super Lcom/metamoji/lib/dialog/UtMessageBox;
.source "UiPasswordDialog2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;,
        Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \r2\u00020\u0001:\u0002\u000c\rB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/UiPasswordDialog2;",
        "Lcom/metamoji/lib/dialog/UtMessageBox;",
        "<init>",
        "()V",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "viewModel",
        "Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "PwdViewModel",
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
.field public static final Companion:Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;


# instance fields
.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field private viewModel:Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->Companion:Lcom/metamoji/ui/dialog/UiPasswordDialog2$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtMessageBox;-><init>()V

    .line 48
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .line 52
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->getArguments()Landroid/os/Bundle;

    .line 53
    sget-object p1, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->getImmortalTaskName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "noname"

    :cond_0
    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->Companion:Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion;->instanceFor(Lcom/metamoji/ui/dialog/UiPasswordDialog2;)Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->viewModel:Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;

    .line 56
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    .line 57
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 60
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->ic_launcher:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    move-object v2, p0

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 62
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 66
    sget v2, Lcom/metamoji/noteanytime/R$layout;->dialog_password:I

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 67
    sget v2, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiEditText;

    .line 68
    iget-object v4, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/4 v5, 0x3

    .line 69
    new-array v5, v5, [Lcom/metamoji/lib/utils/IDisposable;

    new-instance v6, Lcom/metamoji/lib/utils/binding/impl/LiteUnitCommand;

    invoke-direct {v6}, Lcom/metamoji/lib/utils/binding/impl/LiteUnitCommand;-><init>()V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v2

    check-cast v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/metamoji/lib/utils/binding/impl/LiteUnitCommand;->attachView(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v6

    aput-object v6, v5, v1

    .line 70
    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;

    move-object v6, p0

    check-cast v6, Landroidx/lifecycle/LifecycleOwner;

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

    iget-object v8, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->viewModel:Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;

    const-string/jumbo v9, "viewModel"

    if-nez v8, :cond_1

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v3

    :cond_1
    invoke-virtual {v8}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->getPassword()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    sget-object v10, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    invoke-virtual {v1, v6, v7, v8, v10}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;

    move-result-object v1

    const/4 v7, 0x1

    aput-object v1, v5, v7

    .line 71
    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/TextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;

    sget v7, Lcom/metamoji/noteanytime/R$id;->message:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "findViewById(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog2;->viewModel:Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;

    if-nez v8, :cond_2

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v8

    :goto_0
    invoke-virtual {v3}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->getMessage()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v1, v6, v7, v3}, Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Lkotlinx/coroutines/flow/Flow;)Lcom/metamoji/lib/utils/binding/impl/TextBinding;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v5, v3

    .line 68
    invoke-virtual {v4, v5}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    .line 73
    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiEditText;->requestFocus()Z

    .line 74
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 65
    const-string p1, "also(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method
