.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->unlockUser(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

.field final synthetic val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

.field final synthetic val$lockToken:Ljava/lang/String;

.field final synthetic val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

.field final synthetic val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Ljava/lang/String;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 935
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;->this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;->val$lockToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    iput-object p4, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;->val$settings:Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    iput-object p5, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 939
    new-instance v0, Lcom/metamoji/cs/dc/params/CsUnlockUserParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsUnlockUserParam;-><init>()V

    .line 940
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;->val$lockToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsUnlockUserParam;->lockToken:Ljava/lang/String;

    .line 941
    new-instance v1, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;

    const-string v2, "executeUnlockUserWithParams"

    invoke-direct {v1, v2, v0}, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)V

    .line 942
    new-instance v0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    new-instance v3, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12$1;

    invoke-direct {v3, p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12$1;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;-><init>(Lcom/metamoji/cs/dc/ICsExecutor;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 957
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->forceLoad()V

    return-void
.end method
