.class public Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;
.super Ljava/lang/Object;
.source "ModelCompatibilityRangeChecker.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelCompatibilityChecker;


# instance fields
.field private _versionNewest:I

.field private _versionOldest:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;->_versionOldest:I

    .line 18
    iput p2, p0, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;->_versionNewest:I

    return-void
.end method


# virtual methods
.method public checkCompatibilityOfModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 2

    .line 56
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 61
    :cond_0
    iget v1, p0, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;->_versionOldest:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;->_versionNewest:I

    if-gt v0, v1, :cond_1

    .line 63
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, v0}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    return-object p1

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkCompatibility ... CANTREAD : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 66
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, v0}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    return-object p1
.end method

.method public checkDetailCompatibilityOfModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 1

    .line 74
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, v0}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    return-object p1
.end method

.method public convertModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;->checkCompatibilityOfModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object p1

    return-object p1
.end method

.method public preCheckCompatibilityOfType(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 36
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 37
    iget v0, p0, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;->_versionOldest:I

    if-lt p2, v0, :cond_1

    iget v0, p0, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;->_versionNewest:I

    if-le p2, v0, :cond_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
