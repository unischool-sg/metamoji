.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->updateUserToServerAndCache(Lcom/metamoji/cs/dc/user/CsDCUserInfo;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

.field final synthetic val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

.field final synthetic val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

.field final synthetic val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/user/CsDCUserInfo;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
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

    .line 265
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    iput-object p4, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 269
    new-instance v0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;-><init>()V

    .line 272
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->email:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->password:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->name:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->locale:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->updateLocale:Ljava/lang/String;

    .line 276
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->timezone:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->updateTimezone:Ljava/lang/String;

    .line 278
    new-instance v1, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    new-instance v3, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4$1;

    invoke-direct {v3, p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4$1;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;)V

    const-string v4, "executeUpdateUserInfoWithParams"

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 309
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->forceLoad()V

    return-void
.end method
