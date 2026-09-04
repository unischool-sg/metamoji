.class public Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;
.super Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;
.source "NtDocumentEditEngineForFreenote.java"


# instance fields
.field private _docSettingsManager:Lcom/metamoji/df/controller/SettingsManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->_docSettingsManager:Lcom/metamoji/df/controller/SettingsManager;

    return-void
.end method


# virtual methods
.method public finalizeEditingData()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 188
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v1

    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/df/controller/AttachmentsManager;->collectTicket(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v1

    .line 189
    new-instance v2, Lcom/metamoji/df/controller/AttachmentsManager;

    invoke-direct {v2, v0}, Lcom/metamoji/df/controller/AttachmentsManager;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 190
    invoke-virtual {v2, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->removeUnusedAttachments(Ljava/util/HashSet;)V

    return-void
.end method

.method public getDocSettingsManager()Lcom/metamoji/df/controller/SettingsManager;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->_docSettingsManager:Lcom/metamoji/df/controller/SettingsManager;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/metamoji/df/controller/SettingsManager;

    invoke-direct {v1}, Lcom/metamoji/df/controller/SettingsManager;-><init>()V

    iput-object v1, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->_docSettingsManager:Lcom/metamoji/df/controller/SettingsManager;

    .line 48
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/SettingsManager;->init(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/SettingsFactory;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->_docSettingsManager:Lcom/metamoji/df/controller/SettingsManager;

    return-object v0
.end method

.method public getDocumentSettings()Lcom/metamoji/nt/NtDocumentSettings;
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->getDocSettingsManager()Lcom/metamoji/df/controller/SettingsManager;

    move-result-object v0

    .line 84
    const-string v1, "MMJNtDocumentSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/SettingsManager;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    const-class v1, Lcom/metamoji/nt/NtDocumentSettings;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    return-object v0
.end method

.method public getMetaHasRecordings()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasRecordings(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMetaHashedPassword()Ljava/lang/String;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    const-string v1, "password"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetaPageThumbnails()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cm/Blob;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 123
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 126
    const-string/jumbo v2, "thumbModel"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 128
    const-string/jumbo v3, "v"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 130
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMetaProtected()Z
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    const-string v1, "password"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMetaThumbnail()Lcom/metamoji/cm/Blob;
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->getDocumentSettings()Lcom/metamoji/nt/NtDocumentSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getThumbnailType()Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->User:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    if-ne v2, v3, :cond_0

    .line 99
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocumentSettings;->getThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    const-string/jumbo v1, "thumbModel"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    const-string/jumbo v1, "v"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeNewDocument()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-static {v0}, Lcom/metamoji/nt/NtDocumentTemplate;->newDocument(Lcom/metamoji/df/model/IModelManager;)V

    return-void
.end method

.method public metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 62
    const-string/jumbo v0, "thumbnail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->getMetaThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    const-string v0, "pageThumbnails"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->getMetaPageThumbnails()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 66
    :cond_1
    const-string v0, "protected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->getMetaProtected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 68
    :cond_2
    const-string v0, "hashedPassword"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->getMetaHashedPassword()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :cond_3
    const-string v0, "hasRecordings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->getMetaHasRecordings()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 73
    :cond_4
    invoke-super {p0, p1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
