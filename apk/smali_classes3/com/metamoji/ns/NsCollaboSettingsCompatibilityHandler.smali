.class public Lcom/metamoji/ns/NsCollaboSettingsCompatibilityHandler;
.super Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;
.source "NsCollaboSettingsCompatibilityHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;-><init>(II)V

    return-void
.end method


# virtual methods
.method public checkCompatibilityOfModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 3

    .line 55
    const-string/jumbo v0, "roomId"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "roomIdForBiz"

    .line 56
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    const-string v0, "companyId"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;->checkCompatibilityOfModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object p1

    return-object p1

    .line 67
    :cond_2
    :goto_0
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, v0}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->isInvalidCompanyId:Z

    return-object p1
.end method

.method public preCheckCompatibilityOfType(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
