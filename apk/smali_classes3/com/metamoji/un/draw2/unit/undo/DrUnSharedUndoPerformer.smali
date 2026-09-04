.class public Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;
.super Lcom/metamoji/nt/NtControllerUndoPerformer;
.source "DrUnSharedUndoPerformer.java"


# instance fields
.field private m_modelType:Ljava/lang/String;

.field private m_unitRevision:I

.field private m_unitRevisionProperty:Ljava/lang/String;

.field private m_unitVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/metamoji/nt/NtControllerUndoPerformer;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUndoModelVersion(Lcom/metamoji/df/model/IModel;)Z
    .locals 5

    .line 24
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->modelType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->unitRevisionProperty()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->modelType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->type(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 31
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 36
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->version(Lcom/metamoji/df/model/IModel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->unitVersion()I

    move-result v4

    if-eq v0, v4, :cond_2

    const/4 p1, 0x2

    .line 37
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->unitRevisionProperty()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 43
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->unitRevision()I

    move-result v0

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    const/4 p1, 0x3

    .line 44
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 25
    :cond_5
    :goto_1
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method public modelType()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->m_modelType:Ljava/lang/String;

    return-object v0
.end method

.method public setModelType(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->m_modelType:Ljava/lang/String;

    return-void
.end method

.method public setUnitRevision(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->m_unitRevision:I

    return-void
.end method

.method public setUnitRevisionProperty(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->m_unitRevisionProperty:Ljava/lang/String;

    return-void
.end method

.method public setUnitVersion(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->m_unitVersion:I

    return-void
.end method

.method public unitRevision()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->m_unitRevision:I

    return v0
.end method

.method public unitRevisionProperty()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->m_unitRevisionProperty:Ljava/lang/String;

    return-object v0
.end method

.method public unitVersion()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/metamoji/un/draw2/unit/undo/DrUnSharedUndoPerformer;->m_unitVersion:I

    return v0
.end method
