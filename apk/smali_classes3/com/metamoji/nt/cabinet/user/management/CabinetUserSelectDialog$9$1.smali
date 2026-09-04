.class Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;
.super Ljava/lang/Object;
.source "CabinetUserSelectDialog.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 840
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 2

    .line 843
    check-cast p1, Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;

    .line 844
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
