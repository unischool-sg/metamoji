.class public abstract Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;
.super Ljava/lang/Object;
.source "NtDocumentEditEngine.java"


# instance fields
.field protected documentID:Ljava/lang/String;

.field protected mimeType:Ljava/lang/String;

.field protected modelManager:Lcom/metamoji/df/model/IModelManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->documentID:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->modelManager:Lcom/metamoji/df/model/IModelManager;

    .line 39
    iput-object p2, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->close()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->modelManager:Lcom/metamoji/df/model/IModelManager;

    :cond_0
    return-void
.end method

.method public abstract finalizeEditingData()V
.end method

.method public getDocumentID()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->documentID:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getModelManager()Lcom/metamoji/df/model/IModelManager;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->modelManager:Lcom/metamoji/df/model/IModelManager;

    return-object v0
.end method

.method public abstract makeNewDocument()V
.end method

.method public metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 66
    const-string v0, "mimeType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object p1, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->mimeType:Ljava/lang/String;

    return-object p1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    const-string v1, "docMetaData"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setMetaData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_1

    .line 90
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    const-string v1, "docMetaData"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->modelManager:Lcom/metamoji/df/model/IModelManager;

    const-string v3, "docmeta"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 95
    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 97
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
