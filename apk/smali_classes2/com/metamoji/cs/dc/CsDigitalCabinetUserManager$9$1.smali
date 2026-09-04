.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 738
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 742
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez v0, :cond_0

    .line 743
    move-object v0, p1

    check-cast v0, Lcom/metamoji/cs/dc/response/CsGetDirectMessageResponse;

    .line 744
    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsGetDirectMessageResponse;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 746
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1$1;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-interface {v0, p1}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_1
    return-void
.end method
