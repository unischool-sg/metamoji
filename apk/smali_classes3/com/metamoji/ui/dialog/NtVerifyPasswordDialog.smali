.class public final Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;
.super Lcom/metamoji/ui/dialog/UtDialogNt;
.source "NtVerifyPasswordDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;,
        Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001a2\u00020\u0001:\u0002\u0019\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0014J\u001a\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0018\u001a\u00020\u000fH\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;",
        "Lcom/metamoji/ui/dialog/UtDialogNt;",
        "<init>",
        "()V",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "getBinder",
        "()Lcom/metamoji/lib/utils/binding/Binder;",
        "viewModel",
        "Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;",
        "getViewModel",
        "()Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;",
        "setViewModel",
        "(Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;)V",
        "preCreateBodyView",
        "",
        "createBodyView",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "onViewCreated",
        "view",
        "onPositive",
        "PasswordViewModel",
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
.field public static final Companion:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;


# instance fields
.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field public viewModel:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->Companion:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;-><init>()V

    .line 66
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method

.method static final createBodyView$lambda$2$lambda$0(Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->onPositive()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final createBodyView$lambda$2$lambda$1(Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->onNegative()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final getHashedPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->Companion:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;->getHashedPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final inputAndVerifyPassword(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialog;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->Companion:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$Companion;->inputAndVerifyPassword(Lcom/metamoji/lib/dialog/UtDialog;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "inflater"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget v2, Lcom/metamoji/noteanytime/R$layout;->verify_password_dialog:I

    invoke-interface {v1, v2}, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;->inflate(I)Landroid/view/View;

    move-result-object v1

    .line 86
    sget v2, Lcom/metamoji/noteanytime/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 87
    sget v3, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/widget/EditText;

    .line 88
    iget-object v3, v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/4 v4, 0x6

    .line 89
    new-array v11, v4, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v4, Lcom/metamoji/lib/utils/binding/impl/TextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    const-string v12, "getViewLifecycleOwner(...)"

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewModel()Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->getMessage()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    check-cast v7, Landroidx/lifecycle/LiveData;

    invoke-virtual {v4, v5, v2, v7}, Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/TextBinding;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v11, v5

    .line 90
    sget-object v13, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v14

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v2

    check-cast v15, Landroid/view/View;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewModel()Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->getHasMessage()Landroidx/lifecycle/LiveData;

    move-result-object v16

    const/16 v19, 0x18

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v11, v4

    .line 91
    sget-object v4, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewModel()Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->getPassword()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v11, v4

    .line 92
    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewModel()Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->getOkCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v2

    check-cast v6, Landroid/view/View;

    invoke-virtual {v2, v6}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectViewEx(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v11, v4

    .line 93
    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewModel()Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->getOkCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/metamoji/noteanytime/R$id;->pwd_ok_button:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;)V

    invoke-virtual {v2, v4, v5, v7}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v11, v4

    .line 94
    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewModel()Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->getCancelCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v4

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lcom/metamoji/noteanytime/R$id;->pwd_cancel_button:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;)V

    invoke-virtual {v2, v4, v5, v6}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v11, v4

    .line 88
    invoke-virtual {v3, v11}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    return-object v1
.end method

.method public final getBinder()Lcom/metamoji/lib/utils/binding/Binder;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-object v0
.end method

.method public final getViewModel()Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->viewModel:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPositive()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewModel()Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->checkPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;->onPositive()V

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewModel()Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->getMessage()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Password_Error_Wrong:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->hideSoftwareKeyboard()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1, p2}, Lcom/metamoji/ui/dialog/UtDialogNt;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    sget p2, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public preCreateBodyView()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;->preCreateBodyView()V

    .line 71
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;->NONE:Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->setParentVisibilityOption(Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;)V

    .line 72
    sget-object v0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->Companion:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;->instanceFor(Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;)Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->setViewModel(Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;)V

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->setCancellable(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewModel()Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->Password_Confirm:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->getViewModel()Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->setTitle(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->setWidthOption(Lcom/metamoji/lib/dialog/UtDialog$WidthOption;)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x190

    .line 78
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->setLimitWidth(I)V

    .line 80
    :goto_1
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    .line 81
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$GravityOption;->CENTER:Lcom/metamoji/lib/dialog/UtDialog$GravityOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->setGravityOption(Lcom/metamoji/lib/dialog/UtDialog$GravityOption;)V

    return-void
.end method

.method public final setViewModel(Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;->viewModel:Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    return-void
.end method
