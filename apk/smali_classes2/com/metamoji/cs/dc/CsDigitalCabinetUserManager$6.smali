.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->resetPassword(Lcom/metamoji/cs/dc/params/CsResetPasswordParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

.field final synthetic val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

.field final synthetic val$param:Lcom/metamoji/cs/dc/params/CsResetPasswordParam;

.field final synthetic val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/params/CsResetPasswordParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 458
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;->this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;->val$param:Lcom/metamoji/cs/dc/params/CsResetPasswordParam;

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    iput-object p4, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    if-eqz v0, :cond_0

    .line 482
    new-instance v0, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;-><init>()V

    const/16 v1, -0xc8

    .line 483
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;->errorCode:I

    .line 484
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-interface {v1, v0}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 461
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;

    invoke-direct {v1, p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
