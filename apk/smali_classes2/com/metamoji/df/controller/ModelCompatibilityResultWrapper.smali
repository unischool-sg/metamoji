.class public Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
.super Ljava/lang/Object;
.source "ModelCompatibilityResultWrapper.java"


# instance fields
.field public isInvalidCompanyId:Z

.field public isSaveOnEnd:Z

.field public result:Lcom/metamoji/df/controller/ModelCompatibility$Result;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    iput-object v0, p0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->isSaveOnEnd:Z

    .line 23
    iput-boolean v0, p0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->isInvalidCompanyId:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->isSaveOnEnd:Z

    .line 29
    iput-boolean p1, p0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->isInvalidCompanyId:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    .line 34
    iput-boolean p2, p0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->isSaveOnEnd:Z

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->isInvalidCompanyId:Z

    return-void
.end method
