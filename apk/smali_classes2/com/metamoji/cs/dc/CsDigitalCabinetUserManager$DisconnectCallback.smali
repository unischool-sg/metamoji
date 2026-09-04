.class Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 995
    iput-object p1, p0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback;->this$0:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1003
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1;

    invoke-direct {v0, p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback$1;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 1005
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->analiseCabinetUserError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method
