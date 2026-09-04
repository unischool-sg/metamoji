.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2$1;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 184
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;

    iget-object v2, v2, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;->val$param:Lcom/metamoji/cs/dc/params/CsChangePasswordParam;

    iget-object v2, v2, Lcom/metamoji/cs/dc/params/CsChangePasswordParam;->passwordNew:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    .line 188
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;

    iget-object v2, v2, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;->val$param:Lcom/metamoji/cs/dc/params/CsChangePasswordParam;

    iget-object v2, v2, Lcom/metamoji/cs/dc/params/CsChangePasswordParam;->passwordNew:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 189
    invoke-virtual {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-interface {v0, p1}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_1
    return-void
.end method
