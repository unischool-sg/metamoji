.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$10;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->deleteDirectMessage(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

.field final synthetic val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

.field final synthetic val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 792
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$10;->this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$10;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$10;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 796
    new-instance v0, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;

    new-instance v1, Lcom/metamoji/cs/dc/params/CsDeleteDirectMessageParam;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/params/CsDeleteDirectMessageParam;-><init>()V

    const-string v2, "executeDeleteDirectMessageWithParams"

    invoke-direct {v0, v2, v1}, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)V

    .line 797
    new-instance v1, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$10;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    new-instance v3, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$10$1;

    invoke-direct {v3, p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$10$1;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$10;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;-><init>(Lcom/metamoji/cs/dc/ICsExecutor;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 806
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->forceLoad()V

    return-void
.end method
