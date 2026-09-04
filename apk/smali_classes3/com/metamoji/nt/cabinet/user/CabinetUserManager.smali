.class public final Lcom/metamoji/nt/cabinet/user/CabinetUserManager;
.super Ljava/lang/Object;
.source "CabinetUserManager.java"


# static fields
.field private static _instance:Lcom/metamoji/nt/cabinet/user/CabinetUserManager;


# instance fields
.field private m_Callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->_instance:Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    invoke-direct {v0}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;-><init>()V

    sput-object v0, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->_instance:Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    .line 30
    :cond_0
    sget-object v0, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->_instance:Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    return-object v0
.end method


# virtual methods
.method public OpenCabinetUserDialog()V
    .locals 3

    .line 35
    new-instance v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;-><init>()V

    .line 36
    sget-object v1, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    new-instance v2, Lcom/metamoji/nt/cabinet/user/CabinetUserManager$1;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager$1;-><init>(Lcom/metamoji/nt/cabinet/user/CabinetUserManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->openCabinetUserDialog(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    return-void
.end method

.method public UpdateUserInfoCacheAsync(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V
    .locals 1

    .line 51
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->m_Callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    .line 52
    new-instance v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;-><init>()V

    .line 53
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->updateUserInfoCache(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V

    return-void
.end method

.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->m_Callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->m_Callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    :cond_0
    return-void
.end method

.method public setCallbak(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->m_Callback:Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    return-void
.end method
