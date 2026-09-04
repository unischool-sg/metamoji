.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8$1;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 698
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 703
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez v0, :cond_0

    .line 704
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    move-result-object p1

    .line 705
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->setCallbak(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 706
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;

    iget-object p1, p1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;->this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    sget-object v1, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterd:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->updateUserInfoCache(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V

    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-interface {v0, p1}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_1
    return-void
.end method
