.class Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;
.super Ljava/lang/Object;
.source "CabinetUserSelectDialog.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->getUserList(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

.field final synthetic val$groupDic:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 834
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->val$groupDic:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 837
    iget p1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez p1, :cond_0

    .line 840
    new-instance p1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;)V

    .line 899
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetAllUsersParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetAllUsersParam;-><init>()V

    .line 900
    iget-object v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->val$groupDic:Ljava/util/Map;

    const-string v2, "path"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 903
    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsGetAllUsersParam;->groupId:Ljava/lang/String;

    .line 907
    sget-object v1, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithoutLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    .line 908
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;

    const-string v3, "executeGetAllUsersWithParams"

    invoke-direct {v2, v3, v0, v1, p1}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 909
    invoke-virtual {v2}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->forceLoad()V

    return-void

    .line 914
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$2;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$2;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
