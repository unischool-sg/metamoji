.class public Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;
.super Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;
.source "NtDocumentEditorForQuickEdit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;-><init>()V

    return-void
.end method


# virtual methods
.method public closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V
    .locals 4

    const-string v0, "failed to save document: "

    const-string v1, "invalid close mode: "

    .line 64
    :try_start_0
    sget-object v2, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v2, "AP0006"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    if-eqz v1, :cond_2

    .line 69
    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_2

    .line 71
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    .line 72
    new-instance v1, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v1}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 74
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "failed to save document."

    invoke-direct {v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->_docID:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->_driveID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->_isReadOnly:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->dispose()V

    .line 84
    throw p1
.end method

.method public isReadonlyQuickEdit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 1

    .line 36
    iput-object p3, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->_stateFile:Ljava/io/File;

    .line 37
    iget-object p3, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->_stateFile:Ljava/io/File;

    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->isReadonlyQuickEdit()Z

    move-result v0

    invoke-static {p3, v0}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;Z)Lcom/metamoji/df/model/IModelManager;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 42
    invoke-static {p3}, Lcom/metamoji/nt/NtFactoryMaps;->mimeTypeOfDocument(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {v0, p3}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentEditEngineForMimeType(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    .line 48
    iget-object p3, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    if-eqz p3, :cond_0

    .line 51
    iput-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->_docID:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->_driveID:Ljava/lang/String;

    .line 53
    iput-boolean p4, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->_isReadOnly:Z

    return-void

    .line 49
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Edit engine not found for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AP0044"

    invoke-direct {p1, p3, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "AP0043"

    const-string p3, "Unknown model format."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "failed to quick edit file: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->_stateFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AP0008"

    invoke-direct {p1, p3, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method
