.class public Lcom/metamoji/nt/doceditor/NtDocumentEditor;
.super Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;
.source "NtDocumentEditor.java"


# static fields
.field public static CLOSING:Z = false

.field public static final MMJNT_DOCUMENT_EDITOR_CURRENT:Ljava/lang/String; = "current"

.field public static final MMJNT_DOCUMENT_EDITOR_EDITING_DIR:Ljava/lang/String; = "edit.1"

.field public static final MMJNT_DOCUMENT_EDITOR_TRIAL_DOCID:Ljava/lang/String; = "__otms__"

.field public static final MMJNT_MODELPROP_DOCEDITSTATUS_DRIVEID:Ljava/lang/String; = "driveID"

.field public static final MMJNT_MODELPROP_DOCEDITSTATUS_EDIT_STATUS_ID:Ljava/lang/String; = "esid"

.field public static final MMJNT_MODELPROP_DOCEDITSTATUS_IS_READONLY:Ljava/lang/String; = "isReadOnly"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_COLLABO_MODE:Ljava/lang/String; = "collaboMode"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_DOCID:Ljava/lang/String; = "docID"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_EDIT_MODE:Ljava/lang/String; = "editMode"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_FOCUS:Ljava/lang/String; = "focus"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_IS_SAVE_ON_END:Ljava/lang/String; = "isSaveOnEnd"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_LINKBACK_LIST:Ljava/lang/String; = "linkBackList"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_SRC_INFO:Ljava/lang/String; = "srcInfo"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_SRC_INFO_KEY_CLASS:Ljava/lang/String; = "class"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_SRC_INFO_KEY_DISCARD:Ljava/lang/String; = "discard"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_SRC_INFO_KEY_NAME:Ljava/lang/String; = "name"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_SRC_INFO_KEY_PACKAGE:Ljava/lang/String; = "package"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_SRC_INFO_KEY_SENDBACK_FORMAT:Ljava/lang/String; = "sendbackformat"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_SRC_INFO_VALUE_FORMAT_ATDOC:Ljava/lang/String; = "atdoc"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_SRC_INFO_VALUE_FORMAT_PDF:Ljava/lang/String; = "pdf"

.field public static final MMJNT_MODELPROP_FREENOTEEDITSTATUS_TOOL_MODE:Ljava/lang/String; = "toolMode"

.field public static final MMJNT_MODELTYPE_FREENOTEEDITSTATUS:Ljava/lang/String; = "freenoteeditstatus"


# instance fields
.field protected _editStatusID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editStatusID:Ljava/lang/String;

    return-void
.end method

.method public static cleanCurrentEditing()Z
    .locals 1

    .line 116
    invoke-static {}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getEditingDirNoCreate()Ljava/io/File;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private createEditStatusOnRootModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 178
    const-string v0, "?editstatus"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 180
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    const-string v2, "freenoteeditstatus"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 181
    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 185
    :cond_0
    const-string p1, "esid"

    invoke-interface {v1, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string p1, "docID"

    invoke-interface {v1, p1, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string p1, "driveID"

    invoke-interface {v1, p1, p4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string p1, "isReadOnly"

    invoke-interface {v1, p1, p5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 194
    const-string p1, "isSaveOnEnd"

    const/4 p2, 0x0

    invoke-interface {v1, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public static getEditingDir()Ljava/io/File;
    .locals 4

    .line 103
    invoke-static {}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getEditingDirNoCreate()Ljava/io/File;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    sget-object v1, Lcom/metamoji/nt/NtErrorCode;->ERROR_CREATE_EDITING_FOLDER:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v1

    const-string v2, "DE0001"

    const-string v3, "cannot create editing directory."

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getEditingDirNoCreate()Ljava/io/File;
    .locals 3

    .line 94
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getPrivateDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/io/File;

    const-string v2, "edit.1"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static isExistRestoreData()Z
    .locals 5

    .line 291
    sget-boolean v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->CLOSING:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 295
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->retainData()Lcom/metamoji/nt/NtRetainData;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 296
    const-string v3, "documentEditor"

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtRetainData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    .line 304
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getEditingDir()Ljava/io/File;

    move-result-object v0

    .line 305
    new-instance v3, Ljava/io/File;

    const-string v4, "current"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    .line 311
    :cond_2
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 312
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public static makeStateFileNameFromDocID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 128
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "state"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".state"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static restoreCurrentEditing(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 1

    const/4 v0, 0x0

    .line 326
    invoke-static {v0, p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->restoreCurrentEditing(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object p0

    return-object p0
.end method

.method public static restoreCurrentEditing(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 12

    .line 336
    const-string v0, "DocumentEditorRestoringCount"

    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_7

    .line 340
    invoke-static {}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getEditingDir()Ljava/io/File;

    move-result-object v1

    .line 341
    new-instance v2, Ljava/io/File;

    const-string v3, "current"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 344
    const-string p0, "no current file."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-object v5

    .line 348
    :cond_0
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 349
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 352
    const-string p0, "no currentName file."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-object v5

    .line 356
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v6

    if-nez p0, :cond_2

    .line 359
    new-instance p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-direct {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;-><init>()V

    .line 362
    :cond_2
    :try_start_0
    const-string v7, "FatalErrorOnEditing"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v7

    .line 363
    invoke-virtual {v6, v0, v8}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x1

    if-nez v7, :cond_3

    if-le v9, v10, :cond_4

    .line 369
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v11, Lcom/metamoji/noteanytime/R$string;->Msg_ConfirmRestore:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v11, ""

    invoke-static {p1, v7, v11}, Lcom/metamoji/cm/CmUtils;->modalYesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    if-eqz v8, :cond_5

    :cond_4
    add-int/2addr v9, v10

    .line 378
    :try_start_2
    invoke-virtual {v6, v0, v9}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 381
    invoke-virtual {p0, v4}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->restoreFromStateFile(Ljava/io/File;)V

    .line 384
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    .line 385
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->lockDocument(Ljava/lang/String;)Z

    return-object p0

    .line 375
    :cond_5
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "DE0001"

    const-string v4, "canceled by user."

    sget-object v6, Lcom/metamoji/nt/NtErrorCode;->ERROR_STOP_RISKY_OPERATION:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v6}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v6

    invoke-direct {p1, v0, v4, v6}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "at [MMJNtDocumentEditor restoreCurrentEditing] : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 392
    invoke-static {v1, v3}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 394
    :try_start_3
    sget-object v0, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-static {p0, v0}, Lcom/metamoji/dvm/DvmUtil;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 396
    const-string v0, "[NtDocumentEditor] :: ERROR restoreCurrentEditing:"

    invoke-static {p0, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 398
    :goto_0
    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 400
    instance-of p0, p1, Lcom/metamoji/cm/CmException;

    if-eqz p0, :cond_6

    .line 401
    move-object p0, p1

    check-cast p0, Lcom/metamoji/cm/CmException;

    .line 402
    invoke-virtual {p0}, Lcom/metamoji/cm/CmException;->getCode()I

    move-result p0

    sget-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_DOCUMENT_ID_NOT_FOUND_IN_RESTORE_EDITING:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_6

    .line 405
    const-string p0, "document id not found in restore-editing."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-object v5

    .line 410
    :cond_6
    new-instance p0, Lcom/metamoji/cm/CmException;

    const-string v0, "cannot restore document."

    invoke-direct {p0, v0, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 337
    :cond_7
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "restoreCurrentEditing: must be called from background thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V
    .locals 6

    const-string v0, "failed to save document: "

    const-string v1, "logical error : invalid close mode: "

    const/4 v2, 0x0

    .line 578
    :try_start_0
    sget-object v3, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    if-eq p1, v3, :cond_1

    sget-object v3, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    if-ne p1, v3, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v3, "AP0006"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 583
    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_2

    .line 592
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->finalizeEditingData()V

    .line 594
    iget-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    .line 597
    new-instance v1, Lcom/metamoji/df/model/ModelManagerCleanupContext;

    invoke-direct {v1}, Lcom/metamoji/df/model/ModelManagerCleanupContext;-><init>()V

    .line 598
    new-instance v4, Lcom/metamoji/nt/doceditor/NtDocumentEditor$1;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/metamoji/nt/doceditor/NtDocumentEditor$1;-><init>(Lcom/metamoji/nt/doceditor/NtDocumentEditor;I)V

    invoke-virtual {v1, v4}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->setDropPropertyNames(Ljava/util/List;)V

    .line 610
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-static {}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getSkippableModelTypesForCleanup()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 612
    invoke-virtual {v1, v4}, Lcom/metamoji/df/model/ModelManagerCleanupContext;->setSkippableModelTypes(Ljava/util/List;)V

    .line 614
    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModelManager;->cleanupModels(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V

    .line 616
    iget-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->close()V

    .line 617
    iput-object v3, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    .line 618
    iget-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_driveID:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_docID:Ljava/lang/String;

    invoke-static {p1, v1, v4}, Lcom/metamoji/dvm/DvmUtil;->saveDocumentBinaryFileToStorage(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 621
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

    .line 624
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "failed to save document."

    invoke-direct {v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 629
    :cond_2
    :goto_1
    iput-object v3, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_docID:Ljava/lang/String;

    .line 630
    iput-object v3, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_driveID:Ljava/lang/String;

    .line 631
    iput-boolean v2, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_isReadOnly:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setCurrentEditing(Z)V

    .line 634
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    .line 633
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setCurrentEditing(Z)V

    .line 634
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->dispose()V

    .line 635
    throw p1
.end method

.method public dispose()V
    .locals 2

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->close()V

    .line 64
    iput-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 68
    iput-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    .line 70
    :cond_1
    iput-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editStatusID:Ljava/lang/String;

    .line 71
    invoke-super {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditorBase;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 73
    const-string v1, "NtDocumentEditor.dispose"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public getEditStatusID()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editStatusID:Ljava/lang/String;

    return-object v0
.end method

.method public openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 7

    .line 473
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-static {}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getEditingDir()Ljava/io/File;

    move-result-object v0

    .line 477
    invoke-static {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->makeStateFileNameFromDocID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 480
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    .line 481
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    invoke-static {p3, v0}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 486
    iget-object p3, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    invoke-static {p3}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 491
    invoke-static {p3}, Lcom/metamoji/nt/NtFactoryMaps;->mimeTypeOfDocument(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 496
    invoke-static {v0, p3}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentEditEngineForMimeType(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    .line 497
    iget-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    if-eqz v1, :cond_0

    .line 502
    invoke-interface {p3}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    .line 503
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->createEditStatusOnRootModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 505
    iput-object v3, v1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editStatusID:Ljava/lang/String;

    .line 506
    iput-object v4, v1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_docID:Ljava/lang/String;

    .line 507
    iput-object v5, v1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_driveID:Ljava/lang/String;

    .line 508
    iput-boolean v6, v1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_isReadOnly:Z

    return-void

    :cond_0
    move-object v1, p0

    .line 498
    new-instance p1, Lcom/metamoji/cm/CmException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Edit engine not found for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AP0041"

    invoke-direct {p1, p3, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v1, p0

    .line 493
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "AP0040"

    const-string/jumbo p3, "unknown model format."

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v1, p0

    .line 488
    new-instance p1, Lcom/metamoji/cm/CmException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "failed to edit : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AP0003"

    invoke-direct {p1, p3, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object v1, p0

    .line 482
    new-instance p1, Lcom/metamoji/cm/CmException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "cannot copy state file : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AP0004"

    invoke-direct {p1, p3, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public openStateFileForTrialModeSpecial(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 5

    .line 521
    const-string v0, "mimeType"

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 522
    const-string v1, "application/vnd.metamoji.model.atdoc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 527
    iget-object v1, p1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    .line 528
    invoke-static {}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getEditingDir()Ljava/io/File;

    move-result-object v2

    .line 531
    new-instance v3, Ljava/io/File;

    const-string v4, "__otmssave__.state"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    .line 532
    iget-object v3, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    invoke-static {v1, v3}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 536
    iget-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    invoke-static {v1}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 541
    invoke-static {v0, v1}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentEditEngineForMimeType(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    .line 542
    iget-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    if-eqz v1, :cond_1

    .line 548
    iget-object v0, p1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_docID:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_docID:Ljava/lang/String;

    .line 549
    const-string v0, "__otms__"

    iput-object v0, p1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_docID:Ljava/lang/String;

    .line 550
    iget-object v0, p1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_driveID:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_driveID:Ljava/lang/String;

    .line 551
    iget-boolean v0, p1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_isReadOnly:Z

    iput-boolean v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_isReadOnly:Z

    .line 552
    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 553
    const-string v1, "?editstatus"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    const-string v1, "docID"

    iget-object v3, p1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_docID:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v1, "driveID"

    iget-object v3, p1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_driveID:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v1, "isReadOnly"

    iget-boolean p1, p1, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_isReadOnly:Z

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 563
    :cond_0
    const-string p1, "current"

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;Ljava/lang/String;)Z

    return-void

    .line 543
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Edit engine not found for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AP0042"

    invoke-direct {p1, v1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 538
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0027"

    const-string v1, "failed to edit : __otmssave__.state"

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 533
    :cond_3
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0028"

    const-string v1, "failed to create otms state file : __otmssave__.state"

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 523
    :cond_4
    new-instance p1, Lcom/metamoji/cm/CmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "you can trial only when editing Anytime document... "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AP0037"

    invoke-direct {p1, v1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method restoreFromStateFile(Ljava/io/File;)V
    .locals 5

    .line 424
    iput-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    .line 425
    iget-object p1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    invoke-static {p1}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 431
    invoke-static {p1}, Lcom/metamoji/nt/NtFactoryMaps;->mimeTypeOfDocument(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 436
    invoke-static {v0, p1}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentEditEngineForMimeType(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    .line 437
    iget-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    if-eqz v1, :cond_2

    .line 446
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 448
    const-string v1, "?editstatus"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 450
    const-string v1, "esid"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    const-string v2, "docID"

    invoke-interface {p1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 452
    const-string v3, "driveID"

    invoke-interface {p1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    const-string v4, "isReadOnly"

    invoke-interface {p1, v4, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    if-eqz v2, :cond_1

    .line 459
    iput-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editStatusID:Ljava/lang/String;

    .line 460
    iput-object v2, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_docID:Ljava/lang/String;

    .line 461
    iput-object v3, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_driveID:Ljava/lang/String;

    .line 462
    iput-boolean v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_isReadOnly:Z

    return-void

    .line 457
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    sget-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_DOCUMENT_ID_NOT_FOUND_IN_RESTORE_EDITING:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v0

    const-string v1, "AP0016"

    const-string v2, "failed to get document id from restored document."

    invoke-direct {p1, v1, v2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 438
    :cond_2
    new-instance p1, Lcom/metamoji/cm/CmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Edit engine not found for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AP0039"

    invoke-direct {p1, v1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 433
    :cond_3
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0038"

    const-string/jumbo v1, "unknown model format."

    invoke-direct {p1, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 427
    :cond_4
    new-instance p1, Lcom/metamoji/cm/CmException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to restore from state file : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AP0001"

    invoke-direct {p1, v1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrentEditing(Z)V
    .locals 6

    .line 229
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_stateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getEditingDir()Ljava/io/File;

    move-result-object v1

    .line 231
    new-instance v2, Ljava/io/File;

    const-string v3, "current"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 233
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p1, :cond_5

    .line 238
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void

    .line 243
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_5

    .line 251
    const-string v1, "AP0007 : in setCurrentEditing, another editing file exists and is being deleted."

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    if-eqz p1, :cond_3

    .line 262
    invoke-static {v2, v0, v5}, Lcom/metamoji/cm/CmUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)Z

    return-void

    .line 264
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 269
    sget-object p1, Lcom/metamoji/cm/CmUtils$CreationOption;->IGNORE:Lcom/metamoji/cm/CmUtils$CreationOption;

    invoke-static {v1, v3, p1}, Lcom/metamoji/cm/CmUtils;->safeCreateFile(Ljava/io/File;Ljava/lang/String;Lcom/metamoji/cm/CmUtils$CreationOption;)Ljava/io/File;

    move-result-object p1

    .line 270
    invoke-static {p1, v0, v5}, Lcom/metamoji/cm/CmUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)Z

    :cond_5
    return-void
.end method

.method public setSaveOnEnd(Z)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->_editEngine:Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "?editstatus"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    const-string v1, "isSaveOnEnd"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
