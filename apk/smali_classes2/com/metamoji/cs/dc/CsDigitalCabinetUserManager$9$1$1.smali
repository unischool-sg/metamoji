.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;

.field final synthetic val$directMessage:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$s670lyUSn-XWSoWYQX6RHtxFMyI(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;Ljava/lang/String;Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;->lambda$run$0(Ljava/lang/String;Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 746
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;->this$2:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;->val$directMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/String;Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 752
    invoke-static {p5}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 753
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 754
    invoke-virtual {p5}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p5, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p5, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1$1;

    invoke-direct {p5, p0, p2, p3, p4}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1$1;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-virtual {v0, p1, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 762
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 750
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 751
    iget-object v3, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;->val$directMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;->this$2:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;

    iget-object v1, v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;

    iget-object v4, v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;->val$_this:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;->this$2:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;

    iget-object v1, v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;

    iget-object v5, v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;->this$2:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;

    iget-object v1, v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;

    iget-object v6, v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1$$ExternalSyntheticLambda0;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;Ljava/lang/String;Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method
