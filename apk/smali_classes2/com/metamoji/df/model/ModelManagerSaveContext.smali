.class public Lcom/metamoji/df/model/ModelManagerSaveContext;
.super Ljava/lang/Object;
.source "ModelManagerSaveContext.java"


# instance fields
.field private isCramped:Z

.field private isStateDataHeaderModified:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/metamoji/df/model/ModelManagerSaveContext;->isCramped:Z

    .line 16
    iput-boolean v0, p0, Lcom/metamoji/df/model/ModelManagerSaveContext;->isStateDataHeaderModified:Z

    return-void
.end method


# virtual methods
.method public isCramped()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/metamoji/df/model/ModelManagerSaveContext;->isCramped:Z

    return v0
.end method

.method isStateDataHeaderModified()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/metamoji/df/model/ModelManagerSaveContext;->isStateDataHeaderModified:Z

    return v0
.end method

.method public setCramped(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/metamoji/df/model/ModelManagerSaveContext;->isCramped:Z

    return-void
.end method

.method setStateDataHeaderModified(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/metamoji/df/model/ModelManagerSaveContext;->isStateDataHeaderModified:Z

    return-void
.end method
