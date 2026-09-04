.class public abstract Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;
.super Ljava/lang/Object;
.source "NtDocumentEditorBase.java"

# interfaces
.implements Lcom/metamoji/dvm/fw/IDvmDocumentEditor;


# instance fields
.field protected _docID:Ljava/lang/String;

.field protected _driveID:Ljava/lang/String;

.field protected _editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

.field protected _encryptor:Lcom/metamoji/cm/PBE;

.field protected _isReadOnly:Z

.field protected _stateFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_stateFile:Ljava/io/File;

    .line 26
    iput-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_docID:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_driveID:Ljava/lang/String;

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_isReadOnly:Z

    .line 29
    iput-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_encryptor:Lcom/metamoji/cm/PBE;

    .line 30
    iput-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    return-void
.end method


# virtual methods
.method public abstract closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V
.end method

.method public dispose()V
    .locals 2

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->close()V

    .line 51
    iput-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    .line 53
    :cond_0
    iput-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_stateFile:Ljava/io/File;

    .line 54
    iput-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_docID:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_encryptor:Lcom/metamoji/cm/PBE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 58
    const-string v1, "NtDocumentEditorBase.dispose"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public getDocumentID()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_docID:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentSettings()Lcom/metamoji/nt/NtDocumentSettings;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;

    if-eqz v1, :cond_0

    .line 121
    check-cast v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;->getDocumentSettings()Lcom/metamoji/nt/NtDocumentSettings;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDriveID()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_driveID:Ljava/lang/String;

    return-object v0
.end method

.method public getEditEngine()Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    return-object v0
.end method

.method public getEncryptor()Lcom/metamoji/cm/PBE;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_encryptor:Lcom/metamoji/cm/PBE;

    return-object v0
.end method

.method public getHashedPassword()Ljava/lang/String;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModelManager()Lcom/metamoji/df/model/IModelManager;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCollabo()Z
    .locals 2

    .line 241
    const-string v0, "mimeType"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "application/vnd.metamoji.model.atshare"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_isReadOnly:Z

    return v0
.end method

.method public metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
.end method

.method public setEncryptor(Lcom/metamoji/cm/PBE;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_encryptor:Lcom/metamoji/cm/PBE;

    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
