.class public Lcom/metamoji/ui/dialog/UiLoginDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "UiLoginDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/UiLoginDialog$IOnResult;,
        Lcom/metamoji/ui/dialog/UiLoginDialog$ILoginResult;
    }
.end annotation


# static fields
.field private static final KEY_LISTENER:Ljava/lang/String; = "Listener"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "MessageString"

.field private static final KEY_TITLE:Ljava/lang/String; = "TitleString"

.field private static sCurrent:Lcom/metamoji/ui/dialog/UiLoginDialog;


# instance fields
.field mPassword:Ljava/lang/String;

.field mTextEditPassword:Lcom/metamoji/ui/common/UiEditText;

.field mTextEditUsername:Lcom/metamoji/ui/common/UiEditText;

.field mUsername:Ljava/lang/String;

.field mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$smasyncCheckPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/dialog/UiLoginDialog$ILoginResult;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/dialog/UiLoginDialog;->asyncCheckPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/dialog/UiLoginDialog$ILoginResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mUsername:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mPassword:Ljava/lang/String;

    return-void
.end method

.method private static asyncCheckPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/dialog/UiLoginDialog$ILoginResult;)V
    .locals 6

    .line 207
    new-instance v0, Lcom/metamoji/ui/dialog/UiLoginDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/UiLoginDialog;-><init>()V

    .line 208
    new-instance v5, Lcom/metamoji/ui/dialog/UiLoginDialog$3;

    invoke-direct {v5}, Lcom/metamoji/ui/dialog/UiLoginDialog$3;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/dialog/UiLoginDialog;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/dialog/UiLoginDialog$IOnResult;)V

    const/4 p0, 0x0

    .line 223
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/UiLoginDialog;->setCancelable(Z)V

    .line 224
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p0

    .line 225
    new-instance p1, Lcom/metamoji/ui/dialog/UiLoginDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/metamoji/ui/dialog/UiLoginDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/dialog/UiLoginDialog;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method

.method public static dismissAllDialogs()V
    .locals 1

    .line 276
    sget-object v0, Lcom/metamoji/ui/dialog/UiLoginDialog;->sCurrent:Lcom/metamoji/ui/dialog/UiLoginDialog;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/UiLoginDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private getOnResultListener()Lcom/metamoji/ui/dialog/UiLoginDialog$IOnResult;
    .locals 3

    .line 162
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiLoginDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 166
    :cond_0
    sget-object v2, Lcom/metamoji/ui/dialog/UiLoginDialog;->sCurrent:Lcom/metamoji/ui/dialog/UiLoginDialog;

    if-ne p0, v2, :cond_1

    .line 167
    sput-object v1, Lcom/metamoji/ui/dialog/UiLoginDialog;->sCurrent:Lcom/metamoji/ui/dialog/UiLoginDialog;

    .line 169
    :cond_1
    const-string v1, "Listener"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->getAndRemoveRetainData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/UiLoginDialog$IOnResult;

    return-object v0
.end method

.method static synthetic lambda$asyncCheckPassword$0(Lcom/metamoji/ui/dialog/UiLoginDialog;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 225
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "UiLoginDialog"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/dialog/UiLoginDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static openLoginDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 237
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBackgroundThread()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 242
    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    const/4 v1, 0x0

    .line 244
    :try_start_0
    new-instance v2, Lcom/metamoji/ui/dialog/UiLoginDialog$4;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/UiLoginDialog$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void

    :catch_0
    move-exception p0

    .line 256
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 257
    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 258
    throw p0

    .line 239
    :cond_0
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "openLoginDialog() / must be called from sub-thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public dismissAllowingStateLoss()V
    .locals 2

    .line 266
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiLoginDialog;->getOnResultListener()Lcom/metamoji/ui/dialog/UiLoginDialog$IOnResult;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 268
    invoke-interface {v0, v1, v1}, Lcom/metamoji/ui/dialog/UiLoginDialog$IOnResult;->onResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 142
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 182
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiLoginDialog;->getOnResultListener()Lcom/metamoji/ui/dialog/UiLoginDialog$IOnResult;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 187
    iget-object p2, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->username:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 188
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mView:Landroid/view/View;

    sget v1, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move-object v0, p2

    .line 190
    :goto_0
    invoke-interface {p1, p2, v0}, Lcom/metamoji/ui/dialog/UiLoginDialog$IOnResult;->onResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/UiLoginDialog;->setRetainInstance(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiLoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiLoginDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    const-string v2, "TitleString"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    const-string v3, "MessageString"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 77
    :goto_0
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 79
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {p1, v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {p1, v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$layout;->dialog_login_basic:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mView:Landroid/view/View;

    .line 85
    sget v2, Lcom/metamoji/noteanytime/R$id;->username:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiEditText;

    iput-object v1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mTextEditUsername:Lcom/metamoji/ui/common/UiEditText;

    .line 86
    new-instance v2, Lcom/metamoji/ui/dialog/UiLoginDialog$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/UiLoginDialog$1;-><init>(Lcom/metamoji/ui/dialog/UiLoginDialog;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 98
    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mView:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiEditText;

    iput-object v1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mTextEditPassword:Lcom/metamoji/ui/common/UiEditText;

    .line 99
    new-instance v2, Lcom/metamoji/ui/dialog/UiLoginDialog$2;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/UiLoginDialog$2;-><init>(Lcom/metamoji/ui/dialog/UiLoginDialog;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mView:Landroid/view/View;

    sget v2, Lcom/metamoji/noteanytime/R$id;->message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 115
    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mTextEditUsername:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 118
    iget-object v1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mTextEditPassword:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 123
    sput-object p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->sCurrent:Lcom/metamoji/ui/dialog/UiLoginDialog;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiLoginDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiLoginDialog;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiLoginDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 137
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->username:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mUsername:Ljava/lang/String;

    .line 149
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/ui/dialog/UiLoginDialog$IOnResult;)V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiLoginDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/UiLoginDialog;->setArguments(Landroid/os/Bundle;)V

    .line 54
    :cond_0
    const-string v1, "TitleString"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string p1, "MessageString"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string p1, "Listener"

    invoke-static {p5}, Lcom/metamoji/cm/CmUtils;->setRetainData(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    iput-object p3, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mUsername:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/metamoji/ui/dialog/UiLoginDialog;->mPassword:Ljava/lang/String;

    return-void
.end method
