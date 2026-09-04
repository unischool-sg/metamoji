.class public Lcom/metamoji/cs/dc/params/CsLoginParam;
.super Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;
.source "CsLoginParam.java"


# instance fields
.field public coLoginId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public loginName:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public qwd:Ljava/lang/String;

.field public serverDeviceId:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBeanToMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    const-string v1, "userId"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsLoginParam;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsLoginParam;->password:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36
    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsLoginParam;->qwd:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 39
    const-string v2, "qwd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_1
    const-string v1, "email"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsLoginParam;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "coLoginId"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsLoginParam;->coLoginId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "loginName"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsLoginParam;->loginName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "serverDeviceId"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsLoginParam;->serverDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "osName"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "loginAppName"

    sget-object v2, Lcom/metamoji/Config;->MMJ_LOGIN_PARAM_APP_NAME_CLASSROOM:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget v1, Lcom/metamoji/Config;->MMJ_LOGIN_PARAM_APP_VERSION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "loginAppVersion"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->getLocalIp()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    const-string v2, "localIp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method
