.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$7;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->getUserAndSystemSettings(Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

.field final synthetic val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

.field final synthetic val$param:Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;

.field final synthetic val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
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

    .line 497
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$7;->this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$7;->val$param:Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$7;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    iput-object p4, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$7;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$7;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$7;->this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$7;->val$param:Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$7;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->getUserAndSystemSettingsSync(Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$7;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    if-eqz v1, :cond_0

    .line 502
    invoke-interface {v1, v0}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
