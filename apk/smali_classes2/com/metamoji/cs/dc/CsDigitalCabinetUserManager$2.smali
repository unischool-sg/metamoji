.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->changePasswordAsync(Lcom/metamoji/cs/dc/params/CsChangePasswordParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

.field final synthetic val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

.field final synthetic val$param:Lcom/metamoji/cs/dc/params/CsChangePasswordParam;

.field final synthetic val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/params/CsChangePasswordParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
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

    .line 176
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;->this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    iput-object p2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;->val$param:Lcom/metamoji/cs/dc/params/CsChangePasswordParam;

    iput-object p3, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    iput-object p4, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;->val$callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 180
    new-instance v0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;->val$param:Lcom/metamoji/cs/dc/params/CsChangePasswordParam;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    new-instance v3, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2$1;

    invoke-direct {v3, p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2$1;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;)V

    const-string v4, "executeChangePasswordWithParams"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 201
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->forceLoad()V

    return-void
.end method
