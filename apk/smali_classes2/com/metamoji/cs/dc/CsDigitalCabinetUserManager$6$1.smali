.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 461
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 464
    new-instance v0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;

    iget-object v1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;

    iget-object v1, v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;->val$param:Lcom/metamoji/cs/dc/params/CsResetPasswordParam;

    iget-object v2, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;->this$1:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;

    iget-object v2, v2, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;->val$userInteractionMode:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    new-instance v3, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1$1;

    invoke-direct {v3, p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1$1;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6$1;)V

    const-string v4, "executeResetPasswordWithParams"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 476
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->forceLoad()V

    return-void
.end method
