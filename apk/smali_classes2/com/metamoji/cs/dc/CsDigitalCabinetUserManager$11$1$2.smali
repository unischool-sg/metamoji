.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$2;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;

.field final synthetic val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

.field final synthetic val$csResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

.field final synthetic val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
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

    .line 871
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$2;->this$2:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$2;->val$csResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$2;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    iput-object p4, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$2;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 873
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$2;->val$csResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/16 p2, -0xc8

    iput p2, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    .line 875
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$2;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p1

    const/4 p2, 0x0

    .line 876
    iput-object p2, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userLockToken:Ljava/lang/String;

    .line 877
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$2;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-virtual {p2, p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 879
    iget-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$2;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    if-eqz p1, :cond_0

    .line 880
    iget-object p2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11$1$2;->val$csResponse:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-interface {p1, p2}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_0
    return-void
.end method
