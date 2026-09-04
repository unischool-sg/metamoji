.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4$1;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 282
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez v0, :cond_0

    .line 284
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 288
    move-object v2, p1

    check-cast v2, Lcom/metamoji/cs/dc/response/CsUpdateUserInfoResponse;

    .line 289
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsUpdateUserInfoResponse;->email:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 290
    iget-object v2, v2, Lcom/metamoji/cs/dc/response/CsUpdateUserInfoResponse;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 291
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;

    iget-object v2, v2, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-boolean v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    .line 294
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;

    iget-object v2, v2, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->locale:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->locale:Ljava/lang/String;

    .line 295
    iget-object v2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;

    iget-object v2, v2, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->timezone:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->timezone:Ljava/lang/String;

    .line 296
    invoke-virtual {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;

    iget-object v0, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-interface {v0, p1}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_1
    return-void
.end method
