.class public Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;
.super Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;
.source "NtDocumentEditEngineForLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtDocThumbDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtDocLibDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtSendCommandListDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtGembaCtPropertyValueHistorySettingsDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtGembaCtSearchSettingsDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtGembaDocSearchSettingsDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtTagSchemaDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtToolBoxEYachoDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtToolBoxGembaNoteDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtSheetIndexGembaDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtSheetGembaDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtItemIndexGembaDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtItemGembaDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtItemIndexCRDef;,
        Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$NtItemCRDef;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-void
.end method

.method public static bodyFromLibraryDocument(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/cm/Blob;
    .locals 1

    if-eqz p0, :cond_0

    .line 226
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 228
    const-string v0, "docLibrary"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 230
    const-string v0, "body"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dictionaryFromLibraryDocument(Lcom/metamoji/df/model/IModelManager;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModelManager;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 267
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 269
    const-string v0, "docLibrary"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 271
    const-string v0, "dic"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static makeNewLibraryDocument(Ljava/lang/String;Lcom/metamoji/cm/Blob;Lcom/metamoji/cm/Blob;Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;)Ljava/io/File;
    .locals 1

    .line 327
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$1;

    invoke-direct {v0, p3, p1, p2}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$1;-><init>(Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;Lcom/metamoji/cm/Blob;Lcom/metamoji/cm/Blob;)V

    invoke-static {v0, p0}, Lcom/metamoji/df/model/ModelUtils;->exportModelsToFile(Lcom/metamoji/df/model/ModelUtils$IModelExportProc;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static makeNewLibraryDocument(Ljava/lang/String;Ljava/util/Map;Lcom/metamoji/cm/Blob;Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/cm/Blob;",
            "Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .line 360
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$2;

    invoke-direct {v0, p3, p1, p2}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$2;-><init>(Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;Ljava/util/Map;Lcom/metamoji/cm/Blob;)V

    invoke-static {v0, p0}, Lcom/metamoji/df/model/ModelUtils;->exportModelsToFile(Lcom/metamoji/df/model/ModelUtils$IModelExportProc;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private metaThumbnail()Lcom/metamoji/cm/Blob;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    const-string v1, "docThumbnail"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    const-string/jumbo v1, "v"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setBodyToLibraryDocument(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cm/Blob;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 247
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    const-string v1, "docLibrary"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 251
    const-string v2, "doclib"

    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 252
    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 254
    :cond_0
    const-string p0, "body"

    invoke-interface {v2, p0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    :cond_1
    return-void
.end method

.method public static setDictionaryToLibraryDocument(Lcom/metamoji/df/model/IModelManager;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModelManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 288
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 290
    const-string v1, "docLibrary"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 292
    const-string v2, "doclib"

    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 293
    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 295
    :cond_0
    const-string p0, "dic"

    invoke-interface {v2, p0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static setThumbnailToLibraryDocument(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cm/Blob;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 302
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    const-string v1, "docThumbnail"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-nez v2, :cond_0

    .line 306
    const-string v2, "docthumb"

    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 307
    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 309
    :cond_0
    const-string p0, "dic"

    invoke-interface {v2, p0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public body()Lcom/metamoji/cm/Blob;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-static {v0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->bodyFromLibraryDocument(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    return-object v0
.end method

.method public dictionary()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-static {v0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->dictionaryFromLibraryDocument(Lcom/metamoji/df/model/IModelManager;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public finalizeEditingData()V
    .locals 0

    return-void
.end method

.method public makeNewDocument()V
    .locals 3

    .line 164
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0081"

    const-string v2, "cannot create new unknown document."

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 169
    const-string/jumbo v0, "thumbnail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->metaThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object p1

    return-object p1

    .line 173
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lcom/metamoji/cm/Blob;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-static {v0, p1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->setBodyToLibraryDocument(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cm/Blob;)V

    return-void
.end method

.method public setDictionary(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-static {v0, p1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->setDictionaryToLibraryDocument(Lcom/metamoji/df/model/IModelManager;Ljava/util/Map;)V

    return-void
.end method

.method public setThumbnail(Lcom/metamoji/cm/Blob;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-static {v0, p1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->setThumbnailToLibraryDocument(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cm/Blob;)V

    return-void
.end method
