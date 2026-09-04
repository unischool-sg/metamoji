.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback;


# direct methods
.method public static synthetic $r8$lambda$X1BViNhovhrr6riduRH5_28-egA(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1;->lambda$run$0(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1008
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 1015
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->reloadAllView(Landroidx/fragment/app/FragmentActivity;)V

    .line 1017
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1020
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJID_SIGNOUT_FIN:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1021
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1$1;

    invoke-direct {v2, p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1$1;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 1031
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1032
    new-instance v1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1033
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "Disconnect_showMsgDialog2"

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1012
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 1013
    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
