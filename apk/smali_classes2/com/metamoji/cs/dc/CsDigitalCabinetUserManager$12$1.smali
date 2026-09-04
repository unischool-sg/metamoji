.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12$1;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 942
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 947
    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userLockToken:Ljava/lang/String;

    .line 948
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;

    iget-object v1, v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-virtual {v1, v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 950
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-interface {v0, p1}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_0
    return-void
.end method
