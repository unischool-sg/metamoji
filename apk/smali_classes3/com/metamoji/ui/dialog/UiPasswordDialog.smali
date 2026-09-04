.class public Lcom/metamoji/ui/dialog/UiPasswordDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "UiPasswordDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;,
        Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;,
        Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;
    }
.end annotation


# static fields
.field private static final KEY_LISTENER:Ljava/lang/String; = "Listener"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "Messageid"

.field private static final KEY_TITLE:Ljava/lang/String; = "TitleId"

.field private static sCurrent:Lcom/metamoji/ui/dialog/UiPasswordDialog;


# instance fields
.field mPwd:Ljava/lang/String;

.field mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$smasyncCheckPassword(Ljava/lang/String;Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->asyncCheckPassword(Ljava/lang/String;Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smasyncGetDecrypter([BLcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;Lcom/metamoji/cm/PBE;I)Lcom/metamoji/ui/dialog/UiPasswordDialog;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->asyncGetDecrypter([BLcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;Lcom/metamoji/cm/PBE;I)Lcom/metamoji/ui/dialog/UiPasswordDialog;

    move-result-object p0

    return-object p0
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

    .line 39
    iput-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog;->mPwd:Ljava/lang/String;

    return-void
.end method

.method private static asyncCheckPassword(Ljava/lang/String;Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;I)V
    .locals 3

    .line 225
    new-instance v0, Lcom/metamoji/ui/dialog/UiPasswordDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;-><init>()V

    .line 226
    sget v1, Lcom/metamoji/noteanytime/R$string;->Password_Input:I

    new-instance v2, Lcom/metamoji/ui/dialog/UiPasswordDialog$2;

    invoke-direct {v2, p2, p0, p1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$2;-><init>(Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;Ljava/lang/String;Lcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;)V

    invoke-virtual {v0, v1, p3, v2}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->setParams(IILcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;)V

    const/4 p0, 0x0

    .line 253
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->setCancelable(Z)V

    .line 254
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p0

    .line 255
    new-instance p1, Lcom/metamoji/ui/dialog/UiPasswordDialog$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/dialog/UiPasswordDialog;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method

.method private static asyncGetDecrypter([BLcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;Lcom/metamoji/cm/PBE;I)Lcom/metamoji/ui/dialog/UiPasswordDialog;
    .locals 3

    .line 295
    new-instance v0, Lcom/metamoji/ui/dialog/UiPasswordDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;-><init>()V

    .line 296
    sget v1, Lcom/metamoji/noteanytime/R$string;->Password_Input:I

    new-instance v2, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;

    invoke-direct {v2, p2, p3, p0, p1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$4;-><init>(Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;Lcom/metamoji/cm/PBE;[BLcom/metamoji/ui/dialog/UiPasswordDialog$IPbeResult;)V

    invoke-virtual {v0, v1, p4, v2}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->setParams(IILcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;)V

    const/4 p0, 0x0

    .line 320
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->setCancelable(Z)V

    .line 321
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p0

    .line 322
    new-instance p1, Lcom/metamoji/ui/dialog/UiPasswordDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/dialog/UiPasswordDialog;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-object v0
.end method

.method public static checkPassword(Ljava/lang/String;)Lcom/metamoji/cm/PBE;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 264
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBackgroundThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    new-instance v1, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    invoke-direct {v1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;-><init>()V

    const/4 v2, 0x1

    .line 270
    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    const/4 v2, 0x0

    .line 272
    :try_start_0
    new-instance v3, Lcom/metamoji/ui/dialog/UiPasswordDialog$3;

    invoke-direct {v3, p0, v1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$3;-><init>(Ljava/lang/String;Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 283
    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->waitFor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 291
    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->result()Lcom/metamoji/cm/PBE;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 285
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 286
    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->cancel()V

    .line 287
    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 288
    throw p0

    .line 266
    :cond_0
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v0, "syncCheckPasseord() / must be called from sub-thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dismissAllDialogs()V
    .locals 1

    .line 371
    sget-object v0, Lcom/metamoji/ui/dialog/UiPasswordDialog;->sCurrent:Lcom/metamoji/ui/dialog/UiPasswordDialog;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public static getDecrypter([B)Lcom/metamoji/cm/PBE;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBackgroundThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    new-instance v1, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;

    invoke-direct {v1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;-><init>()V

    const/4 v2, 0x1

    .line 333
    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    const/4 v2, 0x0

    .line 335
    :try_start_0
    new-instance v3, Lcom/metamoji/ui/dialog/UiPasswordDialog$5;

    invoke-direct {v3, p0, v1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$5;-><init>([BLcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 347
    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->waitFor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 355
    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->result()Lcom/metamoji/cm/PBE;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 349
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 350
    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$SyncPbe;->cancel()V

    .line 351
    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 352
    throw p0

    .line 329
    :cond_0
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string v0, "getDecrypter() / must be called from sub-thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getOnResultListener()Lcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 149
    :cond_0
    sget-object v2, Lcom/metamoji/ui/dialog/UiPasswordDialog;->sCurrent:Lcom/metamoji/ui/dialog/UiPasswordDialog;

    if-ne p0, v2, :cond_1

    .line 150
    sput-object v1, Lcom/metamoji/ui/dialog/UiPasswordDialog;->sCurrent:Lcom/metamoji/ui/dialog/UiPasswordDialog;

    .line 152
    :cond_1
    const-string v1, "Listener"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->getAndRemoveRetainData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;

    return-object v0
.end method

.method static synthetic lambda$asyncCheckPassword$0(Lcom/metamoji/ui/dialog/UiPasswordDialog;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 255
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "acheckPassword"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$asyncGetDecrypter$1(Lcom/metamoji/ui/dialog/UiPasswordDialog;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 322
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "getDecrypter"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dismissAllowingStateLoss()V
    .locals 2

    .line 361
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->getOnResultListener()Lcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 363
    invoke-interface {v0, v1}, Lcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;->onResult(Ljava/lang/String;)V

    return-void

    .line 367
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->getOnResultListener()Lcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 169
    iget-object p2, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog;->mView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 171
    :goto_0
    invoke-interface {p1, p2}, Lcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;->onResult(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->setRetainInstance(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    const-string v1, "TitleId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 72
    const-string v2, "Messageid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .line 75
    :goto_0
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 77
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->ic_launcher:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 78
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {p1, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 79
    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {p1, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$layout;->dialog_password:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog;->mView:Landroid/view/View;

    .line 84
    sget v2, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiEditText;

    .line 85
    new-instance v2, Lcom/metamoji/ui/dialog/UiPasswordDialog$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog$1;-><init>(Lcom/metamoji/ui/dialog/UiPasswordDialog;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    if-eqz v0, :cond_1

    .line 98
    iget-object v2, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog;->mView:Landroid/view/View;

    sget v3, Lcom/metamoji/noteanytime/R$id;->message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog;->mPwd:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 107
    sput-object p0, Lcom/metamoji/ui/dialog/UiPasswordDialog;->sCurrent:Lcom/metamoji/ui/dialog/UiPasswordDialog;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 121
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog;->mView:Landroid/view/View;

    sget v0, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiPasswordDialog;->mPwd:Ljava/lang/String;

    return-void
.end method

.method public setParams(IILcom/metamoji/ui/dialog/UiPasswordDialog$IOnResult;)V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->setArguments(Landroid/os/Bundle;)V

    .line 54
    :cond_0
    const-string v1, "TitleId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    const-string p1, "Messageid"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string p1, "Listener"

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->setRetainData(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
