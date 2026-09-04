.class public Lcom/metamoji/df/controller/ModelCompatibilityFormRevisionChecker;
.super Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;
.source "ModelCompatibilityFormRevisionChecker.java"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;-><init>(II)V

    return-void
.end method


# virtual methods
.method public checkDetailCompatibilityOfModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 2

    .line 26
    const-string v0, "formRev"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    .line 27
    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    const/4 v1, 0x1

    if-ge v1, p1, :cond_0

    .line 29
    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    .line 31
    :cond_0
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    invoke-direct {p1, v0}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    return-object p1
.end method
