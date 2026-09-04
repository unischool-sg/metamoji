.class public Lcom/metamoji/nt/NtDocument;
.super Lcom/metamoji/df/controller/DfDocument;
.source "NtDocument.java"

# interfaces
.implements Lcom/metamoji/nt/ICommandProcessor;
.implements Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtDocument$EditMode;,
        Lcom/metamoji/nt/NtDocument$ToolMode;
    }
.end annotation


# static fields
.field public static final MMJNT_CABINT_DOCUMENTTITLE_MAXLENGTH:I = 0x40

.field public static final OPTKEY_TEMPORARY:Ljava/lang/String; = "NtDocument:temporary"

.field private static _temporaryDocumentEditors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/nt/doceditor/NtDocumentEditor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _currentEditContext:Lcom/metamoji/df/controller/EditContext;

.field private _documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

.field private _documentScope:Lkotlinx/coroutines/CoroutineScope;

.field private _editContextExtraInfoStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _encryptor:Lcom/metamoji/cm/PBE;

.field private _ownerView:Lcom/metamoji/nt/INtOwnerView;

.field private _recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

.field private _suppressAutoSave:I

.field private _viewModelStoreOwner:Lcom/metamoji/lib/dialog/task/UtGeneralViewModelStoreOwner;

.field private _windowController:Lcom/metamoji/nt/NtEditorWindowController;

.field private docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

.field private m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

.field private m_isCollabo:Z


# direct methods
.method public static synthetic $r8$lambda$9oMKXoNR9hOZcmpQV6Me_icJnck(Lcom/metamoji/nt/NtDocument;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtDocument;->lambda$destroy$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fget_windowController(Lcom/metamoji/nt/NtDocument;)Lcom/metamoji/nt/NtEditorWindowController;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtDocument;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$m_autoSave(Lcom/metamoji/nt/NtDocument;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtDocument;->_autoSave(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 5782
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtDocument;->_temporaryDocumentEditors:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 672
    invoke-direct {p0}, Lcom/metamoji/df/controller/DfDocument;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/metamoji/nt/NtDocument;->_suppressAutoSave:I

    const/4 v1, 0x0

    .line 129
    iput-object v1, p0, Lcom/metamoji/nt/NtDocument;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 130
    iput-boolean v0, p0, Lcom/metamoji/nt/NtDocument;->m_isCollabo:Z

    .line 132
    iput-object v1, p0, Lcom/metamoji/nt/NtDocument;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    .line 133
    iput-object v1, p0, Lcom/metamoji/nt/NtDocument;->_ownerView:Lcom/metamoji/nt/INtOwnerView;

    .line 673
    iput-object v1, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 674
    iput-object v1, p0, Lcom/metamoji/nt/NtDocument;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 675
    iput-object v1, p0, Lcom/metamoji/nt/NtDocument;->_currentEditContext:Lcom/metamoji/df/controller/EditContext;

    .line 676
    iput-object v1, p0, Lcom/metamoji/nt/NtDocument;->_editContextExtraInfoStack:Ljava/util/Stack;

    return-void
.end method

.method private _autoSave(Z)V
    .locals 1

    .line 1318
    monitor-enter p0

    .line 1319
    :try_start_0
    iget v0, p0, Lcom/metamoji/nt/NtDocument;->_suppressAutoSave:I

    if-lez v0, :cond_0

    .line 1320
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1323
    iput v0, p0, Lcom/metamoji/nt/NtDocument;->_suppressAutoSave:I

    .line 1324
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p1, :cond_1

    .line 1329
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1331
    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtPageController;->updateThumbnail(Z)V

    .line 1336
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->saveModels()V

    .line 1337
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1339
    new-instance v0, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v0}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtSystemSettings;->ensureSaved(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1342
    :cond_2
    monitor-enter p0

    .line 1343
    :try_start_2
    iget p1, p0, Lcom/metamoji/nt/NtDocument;->_suppressAutoSave:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/metamoji/nt/NtDocument;->_suppressAutoSave:I

    .line 1344
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 1342
    monitor-enter p0

    .line 1343
    :try_start_3
    iget v0, p0, Lcom/metamoji/nt/NtDocument;->_suppressAutoSave:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/metamoji/nt/NtDocument;->_suppressAutoSave:I

    .line 1344
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1345
    throw p1

    :catchall_2
    move-exception p1

    .line 1344
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 1324
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method static synthetic access$001(Lcom/metamoji/nt/NtDocument;)V
    .locals 0

    .line 118
    invoke-super {p0}, Lcom/metamoji/df/controller/DfDocument;->saveModels()V

    return-void
.end method

.method static synthetic access$101(Lcom/metamoji/nt/NtDocument;)V
    .locals 0

    .line 118
    invoke-super {p0}, Lcom/metamoji/df/controller/DfDocument;->saveModels()V

    return-void
.end method

.method public static attachmentTicketsForExportingAsHayabusadoc(Lcom/metamoji/df/model/IModel;ZLjava/lang/String;ZLjava/util/Map;)Ljava/util/HashSet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1767
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 1780
    const-string/jumbo v3, "visibleCommonLayer"

    invoke-interface {p4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1782
    invoke-static {p4, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1784
    :cond_0
    const-string/jumbo v3, "visiblePersonalLayerIdSuffixDic"

    invoke-static {p4, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1786
    const-string/jumbo v4, "visibleTeacherPersonalLayerIdSuffixDic"

    invoke-static {p4, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    move-object v10, p4

    move-object v9, v3

    goto :goto_0

    :cond_1
    move-object v9, v2

    move-object v10, v9

    :goto_0
    move v8, v1

    .line 1793
    new-instance v4, Lcom/metamoji/nt/NtDocument$7;

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/metamoji/nt/NtDocument$7;-><init>(ZLjava/lang/String;ZZLjava/util/Map;Ljava/util/Map;)V

    .line 1868
    new-instance p1, Lcom/metamoji/nt/NtLayerFilterTraverseRouter;

    invoke-direct {p1, v4}, Lcom/metamoji/nt/NtLayerFilterTraverseRouter;-><init>(Lcom/metamoji/nt/NtLayerFilterTraverseRouter$FilterProc;)V

    const-string p2, "$page"

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/df/controller/ModelTraverser;->installTraverseRouter(Lcom/metamoji/df/controller/IModelTraverseRouter;Ljava/lang/String;)V

    .line 1869
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object p1

    invoke-static {p0, v0, p1, v2}, Lcom/metamoji/df/controller/AttachmentsManager;->collectTicket(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method private static checkAndConvertModelVersion(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 5

    .line 704
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createModelCompatibility()Lcom/metamoji/df/controller/ModelCompatibility;

    move-result-object v0

    .line 705
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createModelCompatibilityTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v1

    .line 706
    invoke-virtual {v0, p0, v1}, Lcom/metamoji/df/controller/ModelCompatibility;->checkCompatibility(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/controller/ModelTraverser;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object v2

    .line 707
    iget-object v3, v2, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v4, Lcom/metamoji/df/controller/ModelCompatibility$Result;->NeedConvert:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-ne v3, v4, :cond_1

    .line 710
    invoke-virtual {v0, p0, v1}, Lcom/metamoji/df/controller/ModelCompatibility;->convert(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/controller/ModelTraverser;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    move-result-object p0

    .line 711
    iget-object v0, p0, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v1, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-ne v0, v1, :cond_0

    return-object p0

    .line 712
    :cond_0
    new-instance p0, Lcom/metamoji/cm/CmException;

    sget-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_MODEL_COMPATIBILITY:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v0

    const-string v1, "AP0023"

    const-string v2, "converting version was failed."

    invoke-direct {p0, v1, v2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    .line 714
    :cond_1
    iget-object p0, v2, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->result:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    if-ne p0, v0, :cond_3

    .line 716
    iget-boolean p0, v2, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;->isInvalidCompanyId:Z

    const-string v0, "MMJDfModelCompatibility checkCompatibility:traverser: returns CANTREAD."

    if-eqz p0, :cond_2

    .line 717
    new-instance p0, Lcom/metamoji/cm/CmException;

    sget-object v1, Lcom/metamoji/nt/NtErrorCode;->ERROR_MODEL_COMPATIBILITY_INVALID_COMPANYID:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v1

    const-string v2, "AP0091"

    invoke-direct {p0, v2, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    .line 719
    :cond_2
    new-instance p0, Lcom/metamoji/cm/CmException;

    sget-object v1, Lcom/metamoji/nt/NtErrorCode;->ERROR_MODEL_COMPATIBILITY:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v1

    const-string v2, "AP0015"

    invoke-direct {p0, v2, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0

    :cond_3
    return-object v2
.end method

.method public static exportAsHayabusadoc(Ljava/util/Map;Lcom/metamoji/df/model/IModelManager;ZLandroid/net/Uri;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;ZZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/df/model/IModelManager;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            "Lcom/metamoji/cm/PBE;",
            "Lcom/metamoji/nt/INtProgressUI;",
            "ZZ)Z"
        }
    .end annotation

    if-nez p0, :cond_1

    .line 2035
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2037
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isUseSync()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->INCLUDED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    .line 2038
    :goto_0
    const-string v1, "included-recordings"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v5, p0

    .line 2042
    const-string p0, "dropPrivateLayer"

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v5, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getProductVersion()Ljava/lang/String;

    move-result-object p0

    .line 2045
    sget v0, Lcom/metamoji/noteanytime/R$string;->app_name:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 2046
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2047
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    const-string v0, "product"

    const-string v2, "Android-Share-G-ClassRoom"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    const-string/jumbo v0, "version"

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    const-string p0, "generator"

    invoke-interface {v5, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_2

    .line 2054
    const-string p0, "PoisonousMushroom"

    invoke-interface {v5, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p0, 0x0

    if-eqz p5, :cond_3

    .line 2058
    invoke-virtual {p5}, Ljava/lang/StringBuffer;->length()I

    move-result p4

    invoke-virtual {p5, p0, p4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_3
    if-eqz p2, :cond_4

    .line 2064
    :try_start_0
    invoke-static {p1}, Lcom/metamoji/nt/NtDocument;->checkAndConvertModelVersion(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 2066
    const-string p2, "exportAsHayabusadoc/checkAndConvertModelVersion"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2067
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$string;->Msg_Error_Export_Note2:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return p0

    :cond_4
    :goto_1
    if-eqz p8, :cond_5

    .line 2073
    sget-object p2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->AtCollabo:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    goto :goto_2

    :cond_5
    sget-object p2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    :goto_2
    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    move-object v6, p6

    move-object v7, p7

    .line 2074
    invoke-static/range {v2 .. v7}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->exportModelManager(Lcom/metamoji/df/model/IModelManager;Landroid/net/Uri;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Export;

    move-result-object p1

    .line 2075
    sget-object p2, Lcom/metamoji/cv/CvResult$Export;->Success:Lcom/metamoji/cv/CvResult$Export;

    if-ne p1, p2, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    if-eqz p5, :cond_7

    .line 2081
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/metamoji/noteanytime/R$string;->Msg_Error_Export_Note2:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2083
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "failed to export document: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/metamoji/cv/CvResult$Export;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return p0
.end method

.method public static exportAsHayabusadoc(Ljava/util/Map;Lcom/metamoji/df/model/IModelManager;ZLjava/io/File;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;ZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/df/model/IModelManager;",
            "Z",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            "Lcom/metamoji/cm/PBE;",
            "Lcom/metamoji/nt/INtProgressUI;",
            "ZZ)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2100
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-static/range {p0 .. p9}, Lcom/metamoji/nt/NtDocument;->exportAsHayabusadoc(Ljava/util/Map;Lcom/metamoji/df/model/IModelManager;ZLandroid/net/Uri;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;ZZ)Z

    move-result p0

    return p0
.end method

.method public static getDocumentTitleForFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2617
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2619
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2620
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2622
    :cond_0
    const-string/jumbo v4, "\u00a5\\/*?:<>\"|"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_1

    .line 2623
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2627
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 2629
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    return-object p0

    .line 2630
    :cond_4
    :goto_2
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDateStringNow()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPasswordHash(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;
    .locals 1

    .line 1090
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const-string v0, "password"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValidDocumentTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2564
    invoke-static {p0, v0, v1}, Lcom/metamoji/nt/NtDocument;->getValidDocumentTitle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValidDocumentTitle(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2579
    invoke-static {p0, v0, p1}, Lcom/metamoji/nt/NtDocument;->getValidDocumentTitle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValidDocumentTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2576
    invoke-static {p0, p1, v0}, Lcom/metamoji/nt/NtDocument;->getValidDocumentTitle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValidDocumentTitle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 2584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2585
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 2587
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2588
    const-string v5, "/\u00a5"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    .line 2589
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 2591
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2596
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    rsub-int/lit8 p1, p2, 0x40

    .line 2598
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_4

    rsub-int/lit8 p2, p2, 0x3f

    .line 2600
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2601
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2602
    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2604
    :cond_3
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static importDocumentBinary(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2371
    const-string v0, "NtDocument:temporary"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    .line 2372
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2375
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->generateDocumentId()Ljava/lang/String;

    move-result-object p1

    .line 2376
    new-instance p2, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-direct {p2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;-><init>()V

    .line 2377
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtDocument;->pushTemporaryDocument(Ljava/lang/String;Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    .line 2378
    invoke-virtual {p2, p1, v2, p0, v3}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 2381
    invoke-static {}, Lcom/metamoji/dm/fw/DmUtils;->nowDateAsNumber()D

    move-result-wide v0

    .line 2382
    const-string p0, "lastaccess"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    if-nez p1, :cond_3

    .line 2388
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/dvm/DvmDriveManager;->getCurrentDrive()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 2389
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/dvm/DvmDriveManager;->getCurrentFolder()Ljava/util/List;

    move-result-object p1

    .line 2390
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2391
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2392
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1

    .line 2395
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2398
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v2, p1, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    move-result-object p0

    .line 2399
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->succeeded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2400
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    .line 2405
    const-string/jumbo p1, "uploadRequiredMedias"

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2406
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    :cond_4
    if-eqz v2, :cond_5

    .line 2410
    invoke-virtual {v1, p0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p1

    .line 2411
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p0, p1}, Lcom/metamoji/media/MediaUtil;->registUploadRequiredMedias(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object p0

    :cond_6
    return-object v2
.end method

.method public static importHayabusaDoc(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/ArrayList;Ljava/util/Map;ZZ)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/INtProgressUI;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2208
    sget-object v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    .line 2209
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ui/task/GetFileTask;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2210
    const-string v2, ".btshare"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2211
    sget-object v0, Lcom/metamoji/cv/xml/CvZippedXMLKind;->AtCollabo:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    .line 2214
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2215
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 2216
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 2219
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 2223
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2224
    const-string/jumbo v2, "uploadRequiredMedias"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    new-instance v1, Lcom/metamoji/nt/NtDocument$8;

    invoke-direct {v1, p5, p3}, Lcom/metamoji/nt/NtDocument$8;-><init>(ZLjava/util/Map;)V

    const-string p5, "ProcessCollaboSettingsDelegate"

    invoke-interface {p3, p5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2264
    :try_start_0
    const-string p5, "$freenote"

    invoke-static {v3, p5}, Lcom/metamoji/df/model/ModelManagerFactory;->newModelManager(Ljava/io/File;Ljava/lang/String;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez p5, :cond_2

    .line 2315
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-object v1

    .line 2269
    :cond_2
    :try_start_1
    invoke-static {p0, p5, v0, p3, p1}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->importArchivedDoc(Ljava/io/File;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object p0

    .line 2270
    sget-object p1, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    if-ne p0, p1, :cond_4

    .line 2272
    invoke-static {p5}, Lcom/metamoji/nt/NtDocument;->renewIdentifiersForEditLayer(Lcom/metamoji/df/model/IModelManager;)V

    if-eqz p4, :cond_3

    .line 2276
    const-string p0, "PoisonousMushroom"

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2278
    instance-of p1, p0, Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 2280
    check-cast p0, Ljava/util/Map;

    .line 2282
    invoke-static {p0}, Lcom/metamoji/nt/pm/PmCentre;->eat(Ljava/util/Map;)Lcom/metamoji/nt/pm/PmPoisonousMushroom;

    .line 2287
    :cond_3
    new-instance p0, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-interface {p5, p0}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 2297
    invoke-static {v3, p2, p3}, Lcom/metamoji/nt/NtDocument;->importDocumentBinary(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2312
    :try_start_2
    invoke-interface {p5}, Lcom/metamoji/df/model/IModelManager;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2315
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-object p0

    .line 2299
    :cond_4
    :try_start_3
    const-string p0, "converterErrorCode"

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 2301
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 2302
    sget-object p1, Lcom/metamoji/nt/NtErrorCode;->ERROR_IMPORT_COLLABO_NOTE_DUPLICATED:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_5

    .line 2304
    const-string p0, "duplicatedCollaboNoteID"

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2305
    invoke-static {v1, p0}, Lcom/metamoji/dvm/DvmUtil;->getDocumentContents(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2312
    :try_start_4
    invoke-interface {p5}, Lcom/metamoji/df/model/IModelManager;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2315
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-object p0

    .line 2312
    :cond_5
    :try_start_5
    invoke-interface {p5}, Lcom/metamoji/df/model/IModelManager;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2315
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-object v1

    :catchall_0
    move-exception p0

    .line 2312
    :try_start_6
    invoke-interface {p5}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 2313
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p0

    .line 2315
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2316
    throw p0
.end method

.method public static importStateFile(Ljava/io/File;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2173
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    if-nez p1, :cond_3

    .line 2175
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/dvm/DvmDriveManager;->getCurrentDrive()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 2176
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/dvm/DvmDriveManager;->getCurrentFolder()Ljava/util/List;

    move-result-object p1

    .line 2177
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2179
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v2

    goto :goto_1

    .line 2182
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2185
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    move-result-object p0

    .line 2186
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->succeeded()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2187
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static isAzami()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSaveOnEnd(Lcom/metamoji/df/model/IModelManager;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1511
    :try_start_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const-string v1, "?editstatus"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1513
    const-string v1, "isSaveOnEnd"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 1516
    const-string v1, "NtDocument.isSaveOnEnd"

    invoke-static {p0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method private synthetic lambda$destroy$0()V
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_viewModelStoreOwner:Lcom/metamoji/lib/dialog/task/UtGeneralViewModelStoreOwner;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtGeneralViewModelStoreOwner;->release()V

    const/4 v0, 0x0

    .line 1239
    iput-object v0, p0, Lcom/metamoji/nt/NtDocument;->_viewModelStoreOwner:Lcom/metamoji/lib/dialog/task/UtGeneralViewModelStoreOwner;

    return-void
.end method

.method public static popTemporaryDocument(Ljava/lang/String;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 1

    .line 5789
    sget-object v0, Lcom/metamoji/nt/NtDocument;->_temporaryDocumentEditors:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    return-object p0
.end method

.method public static processInhibitCommandForShareMenuScore(Ljava/lang/String;)Z
    .locals 3

    .line 5743
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 5744
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 5747
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 5748
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5749
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    .line 5755
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object p0

    :cond_2
    if-eqz p0, :cond_4

    .line 5758
    invoke-static {p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBelongClassStudentWithUserId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 5762
    :cond_3
    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreStatusInfoDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 5763
    const-string/jumbo v0, "status"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    .line 5764
    sget-object v0, Lcom/metamoji/nt/NtDocument$9;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$ScoreStatus:[I

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v2, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method private static pushTemporaryDocument(Ljava/lang/String;Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 1

    .line 5785
    sget-object v0, Lcom/metamoji/nt/NtDocument;->_temporaryDocumentEditors:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static renewIdentifiersForEditLayer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 5

    .line 2324
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 2325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 2327
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 2329
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    .line 2331
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 2332
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$layer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2334
    const-string v3, "layerType"

    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2336
    const-string/jumbo v4, "system:edit"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2337
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 2338
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v1, v2

    goto :goto_1

    .line 2345
    :cond_1
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    .line 2350
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object p0

    .line 2351
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v1

    .line 2352
    invoke-static {v0, p0, v1}, Lcom/metamoji/nt/NtDocument;->renewInvalidIdentifiers(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;)V

    return-void
.end method

.method public static renewInvalidIdentifiers(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Lcom/metamoji/df/controller/ModelTraverser;",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            ")V"
        }
    .end annotation

    .line 2363
    new-instance v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;

    const/4 v1, 0x0

    sget-object v2, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewIDForInvalidUnitId:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-direct {v0, p2, v1, v2}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;)V

    .line 2365
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/df/model/IModel;

    .line 2366
    invoke-virtual {p1, p2, v0}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setAsAzami()V
    .locals 0

    return-void
.end method

.method public static setPasswordHash(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;)V
    .locals 1

    .line 1102
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-string v0, "password"

    invoke-interface {p1, v0, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setSaveOnEnd(Lcom/metamoji/df/model/IModelManager;Z)V
    .locals 1

    .line 1495
    :try_start_0
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const-string v0, "?editstatus"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const-string v0, "isSaveOnEnd"

    invoke-interface {p0, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1498
    const-string p1, "NtDocument.setSaveOnEnd"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private showDocumentTitle(Ljava/lang/String;)V
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtEditorWindowController;->notifyTitleUpdated(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;
    .locals 2

    .line 1698
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_currentEditContext:Lcom/metamoji/df/controller/EditContext;

    if-nez v0, :cond_0

    .line 1700
    new-instance v0, Lcom/metamoji/df/controller/EditContext;

    invoke-direct {v0}, Lcom/metamoji/df/controller/EditContext;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtDocument;->_currentEditContext:Lcom/metamoji/df/controller/EditContext;

    goto :goto_0

    .line 1703
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_editContextExtraInfoStack:Ljava/util/Stack;

    if-nez v0, :cond_1

    .line 1704
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtDocument;->_editContextExtraInfoStack:Ljava/util/Stack;

    .line 1705
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_editContextExtraInfoStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/metamoji/nt/NtDocument;->_currentEditContext:Lcom/metamoji/df/controller/EditContext;

    invoke-virtual {v1}, Lcom/metamoji/df/controller/EditContext;->getExtraInfo()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    :goto_0
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_currentEditContext:Lcom/metamoji/df/controller/EditContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/EditContext;->setExtraInfo(Ljava/lang/Object;)V

    .line 1708
    iget-object p1, p0, Lcom/metamoji/nt/NtDocument;->_currentEditContext:Lcom/metamoji/df/controller/EditContext;

    return-object p1
.end method

.method public canCreatePdf()Z
    .locals 3

    .line 1742
    const-string v0, "MMJNtDocumentSettings"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 1743
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v1

    .line 1744
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getNoFrontCoverOnPrinting()Z

    move-result v0

    .line 1745
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-lt v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public clearPassword()V
    .locals 2

    .line 1109
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 1111
    const-string v1, "password"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1112
    iput-object v0, p0, Lcom/metamoji/nt/NtDocument;->_encryptor:Lcom/metamoji/cm/PBE;

    return-void
.end method

.method public clearUndo()V
    .locals 2

    .line 1545
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 1546
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1548
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 1551
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->clearAllUndo()V

    .line 1552
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->updateUndoRedoCommandState()V

    return-void
.end method

.method public destroy(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;)V
    .locals 1

    const/4 v0, 0x0

    .line 1263
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtDocument;->destroy(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Z)V

    return-void
.end method

.method public destroy(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;Z)V
    .locals 6

    .line 1128
    const-string v0, "failed to destroy controller trees."

    const-string v1, "MMJNtDocument#destroy: doSave = "

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1132
    :try_start_0
    iget-object v4, p0, Lcom/metamoji/nt/NtDocument;->_documentScope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v4, :cond_0

    .line 1133
    invoke-static {v4, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 1134
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->_documentScope:Lkotlinx/coroutines/CoroutineScope;

    .line 1138
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/metamoji/cm/CmTaskManager;->removeOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    .line 1141
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v4

    new-instance v5, Lcom/metamoji/df/model/ModelManagerCleanupContext;

    invoke-direct {v5}, Lcom/metamoji/df/model/ModelManagerCleanupContext;-><init>()V

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtSystemSettings;->cleanup(Lcom/metamoji/df/model/ModelManagerCleanupContext;)V

    .line 1143
    iget-object v4, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v4, :cond_1

    .line 1145
    invoke-static {p0, v3}, Lcom/metamoji/nt/NtFactoryMaps;->registerUndoPerformers(Lcom/metamoji/nt/NtDocument;Z)V

    .line 1149
    :cond_1
    iget-object v4, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v4, :cond_6

    .line 1150
    iget-object v4, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v4}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1153
    :cond_2
    sget-object v4, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->No:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    if-ne v4, p1, :cond_4

    :cond_3
    :goto_0
    move v3, v5

    goto :goto_1

    .line 1155
    :cond_4
    sget-object v4, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    if-ne v4, p1, :cond_5

    .line 1156
    iget-object p1, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->canUndo()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isSaveOnEnd()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 1161
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->updateCurrentPageThumbnail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1165
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->saveModels()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1171
    :try_start_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/metamoji/nt/NtDocument;->docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    if-eqz p1, :cond_7

    .line 1172
    invoke-interface {p1}, Lcom/metamoji/ctold/CtDocTagManager;->unmakeDirectable()V

    .line 1175
    :cond_7
    iget-object p1, p0, Lcom/metamoji/nt/NtDocument;->docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    if-eqz p1, :cond_9

    .line 1176
    :goto_2
    invoke-interface {p1}, Lcom/metamoji/ctold/CtDocTagManager;->close()V

    .line 1177
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->docTagManager:Lcom/metamoji/ctold/CtDocTagManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 1167
    :try_start_3
    const-string v4, "NtDocument.destroy saveModels error"

    invoke-static {p1, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1171
    :try_start_4
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/metamoji/nt/NtDocument;->docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    if-eqz p1, :cond_8

    .line 1172
    invoke-interface {p1}, Lcom/metamoji/ctold/CtDocTagManager;->unmakeDirectable()V

    .line 1175
    :cond_8
    iget-object p1, p0, Lcom/metamoji/nt/NtDocument;->docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    if-eqz p1, :cond_9

    goto :goto_2

    .line 1184
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1185
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->onCollaboDocumentClosed()V

    .line 1189
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->onCollaboDocumentClosed()V

    .line 1194
    :cond_a
    iget-object p1, p0, Lcom/metamoji/nt/NtDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    if-eqz p1, :cond_b

    .line 1196
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtDocument;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object p1

    .line 1197
    invoke-virtual {p1, v5}, Lcom/metamoji/df/controller/ControllerContext;->setClosed(Z)V

    .line 1198
    iget-object v4, p0, Lcom/metamoji/nt/NtDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v4, p1}, Lcom/metamoji/df/controller/DfNoteController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    goto :goto_4

    :cond_b
    move-object p1, v2

    .line 1202
    :goto_4
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1204
    iget-object v4, p0, Lcom/metamoji/nt/NtDocument;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    if-eqz v4, :cond_c

    .line 1205
    invoke-virtual {v4}, Lcom/metamoji/ns/direction/NsDirectionManager;->dispose()V

    .line 1206
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 1210
    :cond_c
    iget-object v4, p0, Lcom/metamoji/nt/NtDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    if-eqz v4, :cond_d

    .line 1212
    iget-object v4, p0, Lcom/metamoji/nt/NtDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v4, p1}, Lcom/metamoji/df/controller/DfNoteController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 1213
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    .line 1217
    :cond_d
    invoke-static {}, Lcom/metamoji/media/video/VfVideoFileManager;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/media/video/VfVideoFileManager;->detachDocument(Lcom/metamoji/nt/NtDocument;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1222
    iget-object p1, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 1224
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 1227
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 1228
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->_currentEditContext:Lcom/metamoji/df/controller/EditContext;

    .line 1229
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->_editContextExtraInfoStack:Ljava/util/Stack;

    .line 1232
    :try_start_5
    invoke-super {p0}, Lcom/metamoji/df/controller/DfDocument;->destroy()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    .line 1234
    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1236
    :goto_5
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_viewModelStoreOwner:Lcom/metamoji/lib/dialog/task/UtGeneralViewModelStoreOwner;

    if-eqz v0, :cond_e

    .line 1237
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtDocument$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtDocument$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/nt/NtDocument;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1243
    :cond_e
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    if-eqz v0, :cond_f

    .line 1244
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->destroy()V

    .line 1245
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    :cond_f
    if-nez p2, :cond_10

    .line 1250
    invoke-static {p1, v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->closeDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Z)Z

    move-result p1

    if-nez p1, :cond_10

    .line 1251
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/nt/NtDocument$2;

    invoke-direct {p2, p0}, Lcom/metamoji/nt/NtDocument$2;-><init>(Lcom/metamoji/nt/NtDocument;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_10
    return-void

    :catchall_2
    move-exception p1

    .line 1171
    :try_start_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/metamoji/nt/NtDocument;->docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    if-eqz v4, :cond_11

    .line 1172
    invoke-interface {v4}, Lcom/metamoji/ctold/CtDocTagManager;->unmakeDirectable()V

    .line 1175
    :cond_11
    iget-object v4, p0, Lcom/metamoji/nt/NtDocument;->docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    if-eqz v4, :cond_12

    .line 1176
    invoke-interface {v4}, Lcom/metamoji/ctold/CtDocTagManager;->close()V

    .line 1177
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    .line 1179
    :cond_12
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 1220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1222
    iget-object v1, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 1224
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 1227
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 1228
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->_currentEditContext:Lcom/metamoji/df/controller/EditContext;

    .line 1229
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->_editContextExtraInfoStack:Ljava/util/Stack;

    .line 1232
    :try_start_7
    invoke-super {p0}, Lcom/metamoji/df/controller/DfDocument;->destroy()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v4

    .line 1234
    invoke-static {v4, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1236
    :goto_6
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_viewModelStoreOwner:Lcom/metamoji/lib/dialog/task/UtGeneralViewModelStoreOwner;

    if-eqz v0, :cond_13

    .line 1237
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v4, Lcom/metamoji/nt/NtDocument$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/metamoji/nt/NtDocument$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/nt/NtDocument;)V

    invoke-virtual {v0, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1243
    :cond_13
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    if-eqz v0, :cond_14

    .line 1244
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->destroy()V

    .line 1245
    iput-object v2, p0, Lcom/metamoji/nt/NtDocument;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    :cond_14
    if-nez p2, :cond_15

    .line 1250
    invoke-static {v1, v3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->closeDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Z)Z

    move-result p2

    if-nez p2, :cond_15

    .line 1251
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/nt/NtDocument$2;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtDocument$2;-><init>(Lcom/metamoji/nt/NtDocument;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1259
    :cond_15
    throw p1
.end method

.method public endEdit(Lcom/metamoji/df/controller/EditContext;)V
    .locals 2

    .line 1717
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_editContextExtraInfoStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_editContextExtraInfoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/controller/EditContext;->setExtraInfo(Ljava/lang/Object;)V

    return-void

    .line 1723
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/df/controller/EditContext;->detachUndo()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1725
    iget-object v1, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModelManager;->addUndo(Lcom/metamoji/df/model/IModel;)V

    .line 1726
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->updateUndoRedoCommandState()V

    .line 1729
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/df/controller/EditContext;->destroy()V

    const/4 p1, 0x0

    .line 1730
    iput-object p1, p0, Lcom/metamoji/nt/NtDocument;->_editContextExtraInfoStack:Ljava/util/Stack;

    .line 1731
    iput-object p1, p0, Lcom/metamoji/nt/NtDocument;->_currentEditContext:Lcom/metamoji/df/controller/EditContext;

    return-void
.end method

.method public exportAsHayabusadoc(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/nt/INtProgressUI;ZZLcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/Map;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            "Lcom/metamoji/nt/INtProgressUI;",
            "ZZ",
            "Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 2115
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->updateCurrentPageThumbnail()V

    .line 2118
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->saveModels()V

    .line 2121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2124
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->canUndo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isSaveOnEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2125
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/TimeUtils;->currentUnixTimestamp()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "overwriteUpdateDate"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez p6, :cond_2

    .line 2129
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    .line 2130
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    xor-int/lit8 v2, v9, 0x1

    const/4 v3, 0x0

    move/from16 v10, p5

    move-object/from16 v12, p8

    invoke-static {v0, v10, v3, v2, v12}, Lcom/metamoji/nt/NtDocument;->attachmentTicketsForExportingAsHayabusadoc(Lcom/metamoji/df/model/IModel;ZLjava/lang/String;ZLjava/util/Map;)Ljava/util/HashSet;

    move-result-object v0

    .line 2131
    const-string v2, "attachmentTickets"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    iget-object v2, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/metamoji/nt/NtDocument;->_encryptor:Lcom/metamoji/cm/PBE;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v11, p7

    invoke-virtual/range {v0 .. v12}, Lcom/metamoji/nt/NtDocument;->exportAsHayabusadoc(Ljava/util/Map;Lcom/metamoji/df/model/IModelManager;ZLandroid/net/Uri;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;ZZLcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public exportAsHayabusadoc(Ljava/io/File;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/nt/INtProgressUI;ZZLcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            "Lcom/metamoji/nt/INtProgressUI;",
            "ZZ",
            "Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2158
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/nt/NtDocument;->exportAsHayabusadoc(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/nt/INtProgressUI;ZZLcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public exportAsHayabusadoc(Ljava/util/Map;Lcom/metamoji/df/model/IModelManager;ZLandroid/net/Uri;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;ZZLcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/df/model/IModelManager;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            "Lcom/metamoji/cm/PBE;",
            "Lcom/metamoji/nt/INtProgressUI;",
            "ZZ",
            "Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1968
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-eqz p12, :cond_1

    .line 1972
    const-string/jumbo v0, "schoolLayerInfo"

    invoke-interface {p1, v0, p12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p12, 0x1

    if-ne p9, p12, :cond_2

    .line 1977
    sget-object p11, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    .line 1979
    :cond_2
    const-string v0, "included-recordings"

    invoke-interface {p1, v0, p11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    sget-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    const/4 v1, 0x0

    if-ne p11, v0, :cond_3

    .line 1984
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object p11

    .line 1985
    invoke-virtual {p11, p12}, Lcom/metamoji/media/MediaUploadManager2;->uploadFiles(Z)Z

    move-result p11

    if-nez p11, :cond_5

    .line 1986
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$string;->Msg_Error_Export_Note2:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v1

    .line 1996
    :cond_3
    sget-object p12, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->INCLUDED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    if-ne p11, p12, :cond_5

    .line 1997
    new-instance p11, Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;

    sget p12, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->VC_DOWNLOAD_SUCCESS:I

    invoke-direct {p11, p12}, Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;-><init>(I)V

    .line 1998
    iget-object p12, p0, Lcom/metamoji/nt/NtDocument;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    invoke-virtual {p12, p11}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->downloadAllRecordingsIfNeeded(Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;)Z

    .line 1999
    iget p11, p11, Lcom/metamoji/media/voice/controller/VcRecordingsManager$VC_DOWNLOAD_STATUS;->_status:I

    sget p12, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->VC_DOWNLOAD_SUCCESS:I

    if-eq p11, p12, :cond_5

    if-eqz p6, :cond_4

    .line 2003
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$string;->Msg_Error_Export_Note2:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    return v1

    :cond_5
    move p11, p10

    move p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    .line 2008
    invoke-static/range {p2 .. p11}, Lcom/metamoji/nt/NtDocument;->exportAsHayabusadoc(Ljava/util/Map;Lcom/metamoji/df/model/IModelManager;ZLandroid/net/Uri;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;ZZ)Z

    move-result p1

    return p1
.end method

.method public exportCurrentPageAsBitmap(F)Landroid/graphics/Bitmap;
    .locals 2

    .line 2520
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2524
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 2528
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtDocument;->exportPageAsBitmap(Lcom/metamoji/nt/NtPageController;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public exportCurrentPageAsImage(Ljava/io/File;F)Z
    .locals 2

    .line 2490
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2494
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 2498
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/metamoji/nt/NtDocument;->exportPageAsImage(Lcom/metamoji/nt/NtPageController;Ljava/io/File;F)Z

    move-result p1

    return p1
.end method

.method public exportCurrentSelectionAsBitmap(F)Landroid/graphics/Bitmap;
    .locals 3

    .line 2538
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2542
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v0, :cond_2

    .line 2543
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->canRasterizeSelection()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2548
    :cond_1
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->rasterizeSelection(F)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 2549
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public exportCurrentSelectionAsImage(Ljava/io/File;F)Z
    .locals 3

    .line 2429
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2433
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v0, :cond_3

    .line 2434
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->canRasterizeSelection()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2437
    :cond_1
    invoke-virtual {v0, p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->rasterizeSelection(F)[B

    move-result-object p2

    if-nez p2, :cond_2

    return v1

    .line 2441
    :cond_2
    invoke-static {p1, p2}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public exportPageAsBitmap(Lcom/metamoji/nt/NtPageController;F)Landroid/graphics/Bitmap;
    .locals 1

    .line 2510
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isPrivate()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtPageController;->takeMySnapshotForSchool(FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public exportPageAsImage(Lcom/metamoji/nt/NtPageController;Ljava/io/File;F)Z
    .locals 1

    .line 2468
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2469
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isPrivate()Z

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/metamoji/nt/NtPageController;->takeMySnapshotForSchool(FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 2471
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isPrivate()Z

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/metamoji/nt/NtPageController;->takeSnapshotForSchool(FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2477
    :goto_0
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cm/ImageUtils;->saveBitmapToImageFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    move-result p2

    .line 2478
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return p2
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 687
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getAppFrame()Lcom/metamoji/nt/INtAppFrame;
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    return-object v0
.end method

.method public getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;
    .locals 1

    .line 2651
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    return-object v0
.end method

.method public getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    return-object v0
.end method

.method public getDocumentCreate()Ljava/lang/String;
    .locals 1

    .line 1633
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentCreateTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/TimeUtils;->getDateTimeText(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentCreateTime()Ljava/util/Date;
    .locals 2

    .line 1623
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    const-string v1, "create"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1624
    invoke-static {v0, v1}, Lcom/metamoji/cm/TimeUtils;->unixtime2datetime(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    return-object v0
.end method

.method public getDocumentID()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 5816
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;
    .locals 1

    .line 1268
    const-string v0, "MMJNsShareSettings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    const-string v0, "Access to collabo settings on normal note."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 1277
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    return-object p1
.end method

.method public getDocumentTags()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1660
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1663
    :cond_0
    const-string/jumbo v1, "tags"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getDocumentTemplate()Z
    .locals 2

    .line 1611
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    const-string/jumbo v1, "template"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDocumentTitle()Ljava/lang/String;
    .locals 2

    .line 1583
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentTitleForFileName()Ljava/lang/String;
    .locals 1

    .line 2642
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentTitleForUi()Ljava/lang/String;
    .locals 2

    .line 1592
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    sget v0, Lcom/metamoji/noteanytime/R$string;->Trial_Document_Title:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1596
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1597
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 1599
    :cond_2
    :goto_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_NoTitle:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentUpdate()Ljava/lang/String;
    .locals 1

    .line 1650
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentUpdateTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/TimeUtils;->getDateTimeText(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentUpdateTime()Ljava/util/Date;
    .locals 2

    .line 1640
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    const-string/jumbo v1, "update"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1641
    invoke-static {v0, v1}, Lcom/metamoji/cm/TimeUtils;->unixtime2datetime(D)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDriveID()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditStatusID()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getEditStatusID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditorDelegate()Lcom/metamoji/nt/INtEditor;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_ownerView:Lcom/metamoji/nt/INtOwnerView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/nt/INtOwnerView;->getEditor()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncryptor()Lcom/metamoji/cm/PBE;
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_encryptor:Lcom/metamoji/cm/PBE;

    return-object v0
.end method

.method public getMainSheet()Lcom/metamoji/nt/NtNoteController;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    check-cast v0, Lcom/metamoji/nt/NtNoteController;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1086
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtDocument;->getPasswordHash(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    return-object v0
.end method

.method public getViewModelStoreOwner()Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 5812
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_viewModelStoreOwner:Lcom/metamoji/lib/dialog/task/UtGeneralViewModelStoreOwner;

    return-object v0
.end method

.method public getWindowController()Lcom/metamoji/nt/NtEditorWindowController;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    return-object v0
.end method

.method public init(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/df/controller/IOwnerView;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/SizeF;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;ILcom/metamoji/df/controller/ControllerContext;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p5

    move/from16 v2, p6

    .line 743
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->suppressAutoSave()V

    .line 744
    new-instance v3, Lcom/metamoji/lib/dialog/task/UtGeneralViewModelStoreOwner;

    invoke-direct {v3}, Lcom/metamoji/lib/dialog/task/UtGeneralViewModelStoreOwner;-><init>()V

    iput-object v3, v1, Lcom/metamoji/nt/NtDocument;->_viewModelStoreOwner:Lcom/metamoji/lib/dialog/task/UtGeneralViewModelStoreOwner;

    .line 745
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v5

    invoke-virtual {v3, v5}, Lkotlinx/coroutines/MainCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    iput-object v3, v1, Lcom/metamoji/nt/NtDocument;->_documentScope:Lkotlinx/coroutines/CoroutineScope;

    .line 747
    move-object/from16 v3, p2

    check-cast v3, Lcom/metamoji/nt/INtOwnerView;

    iput-object v3, v1, Lcom/metamoji/nt/NtDocument;->_ownerView:Lcom/metamoji/nt/INtOwnerView;

    .line 749
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/cm/CmTaskManager;->isBackgroundThread()Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v3, p3

    .line 756
    iput-object v3, v1, Lcom/metamoji/nt/NtDocument;->_windowController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 758
    iput-object v0, v1, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 759
    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->New:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const/4 v9, 0x1

    if-eq v8, v5, :cond_0

    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Template:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-eq v8, v5, :cond_0

    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->TemplateForBlankPaper:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-eq v8, v5, :cond_0

    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->ImportAudioNew:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-ne v8, v5, :cond_1

    .line 764
    :cond_0
    iput-boolean v9, v1, Lcom/metamoji/nt/NtDocument;->_fromTemplate:Z

    .line 768
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v3

    .line 771
    iget-object v5, v1, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    const-string v6, "mimeType"

    invoke-virtual {v5, v6}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 772
    const-string v6, "application/vnd.metamoji.model.atshare"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 773
    iput-boolean v9, v1, Lcom/metamoji/nt/NtDocument;->m_isCollabo:Z

    .line 779
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ScSchoolManager;->updateSchoolUserLicense()V

    .line 782
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v5

    new-instance v6, Lcom/metamoji/nt/NtDocument$1;

    invoke-direct {v6, v1}, Lcom/metamoji/nt/NtDocument$1;-><init>(Lcom/metamoji/nt/NtDocument;)V

    invoke-virtual {v5, v6}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 792
    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 794
    invoke-interface {v5}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/metamoji/noteanytime/EditorActivity;

    goto :goto_0

    :cond_3
    move-object v5, v4

    .line 798
    :goto_0
    iget-boolean v6, v1, Lcom/metamoji/nt/NtDocument;->m_isCollabo:Z

    const/4 v10, 0x0

    if-eqz v6, :cond_5

    if-eqz v5, :cond_4

    .line 804
    invoke-virtual {v5, v10}, Lcom/metamoji/noteanytime/EditorActivity;->setEditAreaVisibility(Z)V

    .line 808
    :cond_4
    new-instance v5, Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-direct {v5, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;-><init>(Lcom/metamoji/nt/NtDocument;)V

    iput-object v5, v1, Lcom/metamoji/nt/NtDocument;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 809
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->onCollaboDocumentOpening(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    .line 812
    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolCommand;->onCollaboDocumentOpening(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    .line 820
    invoke-virtual {v5, v9}, Lcom/metamoji/noteanytime/EditorActivity;->setEditAreaVisibility(Z)V

    .line 824
    :cond_6
    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboCommand;->onNormalDocumentOpening(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    .line 827
    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolCommand;->onNormalDocumentOpening(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    .line 839
    :goto_1
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    const-string v6, "password"

    invoke-interface {v5, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 840
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 841
    check-cast v5, Ljava/lang/String;

    .line 842
    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getEncryptor()Lcom/metamoji/cm/PBE;

    move-result-object v6

    iput-object v6, v1, Lcom/metamoji/nt/NtDocument;->_encryptor:Lcom/metamoji/cm/PBE;

    if-eqz v6, :cond_7

    .line 846
    invoke-virtual {v0, v4}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setEncryptor(Lcom/metamoji/cm/PBE;)V

    goto :goto_2

    .line 848
    :cond_7
    sget-object v4, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Restore:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-eq v8, v4, :cond_9

    .line 855
    :try_start_0
    invoke-static {v5}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->checkPassword(Ljava/lang/String;)Lcom/metamoji/cm/PBE;

    move-result-object v4

    iput-object v4, v1, Lcom/metamoji/nt/NtDocument;->_encryptor:Lcom/metamoji/cm/PBE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_8

    goto :goto_2

    .line 861
    :cond_8
    new-instance v0, Lcom/metamoji/cm/CmException;

    sget-object v2, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANCEL_PASSWORD_AUTHENTICATION:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v2

    const-string v3, "AP0029"

    const-string v4, "password authentication is canceled."

    invoke-direct {v0, v3, v4, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :catch_0
    move-exception v0

    .line 857
    const-string v2, "NtDocument.init"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 858
    new-instance v2, Lcom/metamoji/cm/CmException;

    const-string v3, "fatal error during password checking."

    invoke-direct {v2, v3, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 851
    :cond_9
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_ProtectedNoteHasBeenSaved:I

    invoke-static {v0, v10}, Lcom/metamoji/cm/CmUtils;->modalConfirmDialog(II)V

    .line 852
    new-instance v0, Lcom/metamoji/cm/CmException;

    sget-object v2, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANCEL_PASSWORD_AUTHENTICATION:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v2

    const-string v3, "AP0065"

    const-string v4, "password authentication is omitted."

    invoke-direct {v0, v3, v4, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 884
    :cond_a
    :goto_2
    invoke-static {v3}, Lcom/metamoji/nt/NtDocument;->checkAndConvertModelVersion(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    if-ltz v2, :cond_c

    .line 894
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 896
    invoke-interface {v4}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    move v6, v10

    :goto_3
    if-eqz v5, :cond_b

    add-int/lit8 v6, v6, 0x1

    .line 899
    invoke-interface {v5}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    goto :goto_3

    :cond_b
    if-ge v2, v6, :cond_c

    .line 902
    const-string v5, "currentPage"

    invoke-interface {v4, v5, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 910
    :cond_c
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->create(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/nt/NtDocument;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    .line 913
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createControllerFactory()Lcom/metamoji/df/controller/ControllerFactory;

    move-result-object v4

    .line 916
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;

    move-result-object v5

    .line 919
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v11

    .line 920
    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    .line 921
    invoke-static {}, Lcom/metamoji/ctold/CtFactory;->instance()Lcom/metamoji/ctold/CtFactory;

    move-result-object v2

    invoke-virtual {v2, v11, v0}, Lcom/metamoji/ctold/CtFactory;->createDocTagManager(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/nt/NtDocument;->docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    .line 922
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 923
    iget-object v0, v1, Lcom/metamoji/nt/NtDocument;->docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v2

    const-string v6, "TagManagerHandler"

    invoke-interface {v0, v2, v6}, Lcom/metamoji/ctold/CtDocTagManager;->makeDirectable(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V

    :cond_d
    move-object/from16 v2, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p7

    .line 928
    invoke-super/range {v1 .. v7}, Lcom/metamoji/df/controller/DfDocument;->init(Lcom/metamoji/df/controller/IOwnerView;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/controller/ControllerFactory;Lcom/metamoji/df/controller/SettingsFactory;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/controller/ControllerContext;)V

    .line 931
    invoke-static {}, Lcom/metamoji/media/video/VfVideoFileManager;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v0

    invoke-virtual {v0, v1, v11}, Lcom/metamoji/media/video/VfVideoFileManager;->attachDocument(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/df/model/IModel;)V

    .line 935
    iget v0, v6, Lcom/metamoji/cm/SizeF;->width:F

    iget v4, v6, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_e

    .line 936
    iget v0, v6, Lcom/metamoji/cm/SizeF;->height:F

    float-to-int v0, v0

    .line 937
    iget v4, v6, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_4

    .line 939
    :cond_e
    iget v0, v6, Lcom/metamoji/cm/SizeF;->width:F

    float-to-int v0, v0

    .line 940
    iget v4, v6, Lcom/metamoji/cm/SizeF;->height:F

    :goto_4
    float-to-int v4, v4

    .line 945
    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const-string/jumbo v6, "screenLong"

    const-string/jumbo v7, "screenShort"

    const-string v11, "android"

    const-string v12, "platform"

    const-string v13, "localInfo"

    if-eq v8, v5, :cond_10

    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->FromHistory:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-ne v8, v5, :cond_f

    goto :goto_5

    .line 973
    :cond_f
    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Copy:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-eq v8, v5, :cond_13

    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Collaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-eq v8, v5, :cond_13

    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->UncollaborizeForCollaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-eq v8, v5, :cond_13

    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->DeliverCollaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-eq v8, v5, :cond_13

    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->DeliverCollaborizeByDrop:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-eq v8, v5, :cond_13

    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->TemplateForBlankPaper:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-eq v8, v5, :cond_13

    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->CopyForBlankPaper:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-eq v8, v5, :cond_13

    sget-object v5, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->SubmitByStudent:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-ne v8, v5, :cond_14

    goto :goto_6

    .line 946
    :cond_10
    :goto_5
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getDocumentUpdateTime()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 949
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 950
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/32 v16, 0xf731400

    cmp-long v5, v14, v16

    if-gtz v5, :cond_13

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-gez v5, :cond_11

    goto :goto_6

    .line 956
    :cond_11
    iget-object v5, v1, Lcom/metamoji/nt/NtDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v5}, Lcom/metamoji/df/controller/DfNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-interface {v5, v13}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 958
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 959
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_6

    .line 962
    :cond_12
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 963
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_13

    if-eq v0, v14, :cond_14

    .line 986
    :cond_13
    :goto_6
    iget-object v5, v1, Lcom/metamoji/nt/NtDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v5}, Lcom/metamoji/df/controller/DfNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    const-string/jumbo v14, "zoom"

    invoke-interface {v5, v14}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 990
    :cond_14
    new-instance v5, Ljava/util/HashMap;

    const/4 v14, 0x3

    invoke-direct {v5, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 991
    invoke-virtual {v5, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    iget-object v0, v1, Lcom/metamoji/nt/NtDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, v13, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 998
    iget-object v0, v1, Lcom/metamoji/nt/NtDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    invoke-interface {v2, v0}, Lcom/metamoji/df/controller/IOwnerView;->addMainView(Lcom/metamoji/df/controller/DfNoteController;)V

    .line 999
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->bindToWindow()V

    .line 1002
    const-string v0, "MMJNtDocumentSettings"

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 1003
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->isExistUseSystemTextSettings()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1004
    iget-boolean v2, v1, Lcom/metamoji/nt/NtDocument;->_fromTemplate:Z

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setUseSystemTextSettings(Z)V

    .line 1008
    :cond_15
    iput-boolean v10, v1, Lcom/metamoji/nt/NtDocument;->_fromTemplate:Z

    .line 1011
    invoke-static {v1, v9}, Lcom/metamoji/nt/NtFactoryMaps;->registerUndoPerformers(Lcom/metamoji/nt/NtDocument;Z)V

    .line 1014
    iget-object v2, v1, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v2}, Lcom/metamoji/df/model/IModelManager;->checkUndoVersion()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1015
    const-string v2, "checkUndoVersion returns false. clearing undos..."

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1016
    iget-object v2, v1, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v2}, Lcom/metamoji/df/model/IModelManager;->canUndo()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1017
    iget-object v2, v1, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-static {v2, v9}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Lcom/metamoji/df/model/IModelManager;Z)V

    .line 1019
    :cond_16
    iget-object v2, v1, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v2}, Lcom/metamoji/df/model/IModelManager;->clearAllUndo()V

    .line 1028
    :cond_17
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitFontFamily()Ljava/lang/String;

    .line 1031
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/metamoji/nt/NtNoteController;->initSheet(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V

    .line 1034
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->updateUndoRedoCommandState()V

    .line 1037
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->updateVoiceNavigationButton()V

    .line 1041
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/metamoji/nt/NtDocument;->showDocumentTitle(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getWindowController()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtEditorWindowController;->notifyEditModeChanged(Lcom/metamoji/nt/NtDocument$EditMode;)V

    .line 1046
    new-instance v0, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v0}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-interface {v3, v0}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 1049
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 1050
    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->addOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    .line 1053
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->permitAutoSave()V

    .line 1066
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    .line 1073
    iget-object v2, v1, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    if-eqz v0, :cond_18

    .line 1067
    invoke-static {v2}, Lcom/metamoji/ns/NsCollaboCommand;->onCollaboDocumentOpened(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    .line 1070
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->onCollaboDocumentOpened()V

    return-void

    .line 1073
    :cond_18
    invoke-static {v2}, Lcom/metamoji/ns/NsCollaboCommand;->onNormalDocumentOpened(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    return-void

    .line 751
    :cond_19
    const-string/jumbo v0, "\u5fc5\u305a\u30b5\u30d6\u30b9\u30ec\u30c3\u30c9\u304b\u3089\u30b3\u30fc\u30eb\u3057\u3066\u304f\u3060\u3055\u3044\u3002\u305d\u3046\u3057\u306a\u3044\u3068\u30c7\u30c3\u30c9\u30ed\u30c3\u30af\u3057\u307e\u3059\u3002"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 752
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v2, "NtDocument#init(): please call from sub-thread."

    invoke-direct {v0, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCollabo()Z
    .locals 1

    .line 694
    iget-boolean v0, p0, Lcom/metamoji/nt/NtDocument;->m_isCollabo:Z

    return v0
.end method

.method public isPrivate()Z
    .locals 3

    .line 2445
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2448
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 2452
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v0

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public isReadOnly()Z
    .locals 1

    .line 1675
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isSaveOnEnd()Z
    .locals 1

    .line 1525
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-static {v0}, Lcom/metamoji/nt/NtDocument;->isSaveOnEnd(Lcom/metamoji/df/model/IModelManager;)Z

    move-result v0

    return v0
.end method

.method public onIdle()V
    .locals 1

    .line 1389
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getRecordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    .line 1390
    invoke-virtual {v0, p0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->onIdle(Lcom/metamoji/nt/NtDocument;)V

    .line 1393
    invoke-static {}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->getInstance()Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->doSyncOnIdle()V

    const/4 v0, 0x1

    .line 1396
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtDocument;->_autoSave(Z)V

    return-void
.end method

.method public onSuspend()V
    .locals 3

    .line 1408
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 1409
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1411
    new-instance v1, Lcom/metamoji/nt/NtDocument$5;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/nt/NtDocument$5;-><init>(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/cm/CmTaskManager;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1434
    invoke-direct {p0, v1}, Lcom/metamoji/nt/NtDocument;->_autoSave(Z)V

    .line 1435
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    return-void
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 2

    .line 243
    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "NtDocument : %s "

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public permitAutoSave()V
    .locals 1

    .line 1361
    monitor-enter p0

    .line 1362
    :try_start_0
    iget v0, p0, Lcom/metamoji/nt/NtDocument;->_suppressAutoSave:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/metamoji/nt/NtDocument;->_suppressAutoSave:I

    .line 1363
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public permitAutoSave(I)V
    .locals 4

    if-lez p1, :cond_0

    .line 1373
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtDocument$4;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtDocument$4;-><init>(Lcom/metamoji/nt/NtDocument;)V

    int-to-long v2, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 1380
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->permitAutoSave()V

    return-void
.end method

.method public processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 1

    .line 276
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 5

    .line 316
    sget-object v0, Lcom/metamoji/nt/NtDocument$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1b

    .line 325
    sget-object v0, Lcom/metamoji/nt/NtDocument$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1b

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1b

    .line 366
    sget-object v0, Lcom/metamoji/nt/NtDocument$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 521
    :pswitch_0
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppUnavailableVoice:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 527
    iget-object v3, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v3}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_f

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 530
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->JUMP_SETTING:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v3, :cond_2

    move v2, v1

    .line 534
    :cond_2
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_DOCUMENT_SETTING:Lcom/metamoji/nt/NtCommand;

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_DOCUMENT_SETTING2:Lcom/metamoji/nt/NtCommand;

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_NOTETEMPLATE_SETTING:Lcom/metamoji/nt/NtCommand;

    if-ne v0, p1, :cond_10

    .line 535
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v3

    .line 537
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v3

    .line 538
    invoke-virtual {v3, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v0

    .line 539
    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_NOTETEMPLATE_SETTING:Lcom/metamoji/nt/NtCommand;

    if-ne v3, p1, :cond_4

    if-eqz v0, :cond_f

    .line 540
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_4
    if-eqz v0, :cond_10

    .line 542
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTrashed()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    .line 502
    :pswitch_1
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    .line 508
    :cond_5
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    .line 496
    :pswitch_2
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_0

    .line 483
    :pswitch_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 484
    iget-object v3, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v3}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_f

    if-nez v0, :cond_10

    goto/16 :goto_0

    .line 453
    :pswitch_4
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppUseQRCodeReader:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    .line 456
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 457
    iget-object v3, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v3}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_f

    if-nez v0, :cond_7

    goto/16 :goto_0

    .line 460
    :cond_7
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->JUMP_SETTING:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v3, :cond_8

    move v2, v1

    .line 464
    :cond_8
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_DOCUMENT_SETTING:Lcom/metamoji/nt/NtCommand;

    if-eq v0, p1, :cond_9

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_DOCUMENT_SETTING2:Lcom/metamoji/nt/NtCommand;

    if-eq v0, p1, :cond_9

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_NOTETEMPLATE_SETTING:Lcom/metamoji/nt/NtCommand;

    if-ne v0, p1, :cond_10

    .line 465
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v3

    .line 467
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v3

    .line 468
    invoke-virtual {v3, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v0

    .line 469
    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_NOTETEMPLATE_SETTING:Lcom/metamoji/nt/NtCommand;

    if-ne v3, p1, :cond_a

    if-eqz v0, :cond_f

    .line 470
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_a
    if-eqz v0, :cond_10

    .line 472
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTrashed()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    .line 427
    :pswitch_5
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 428
    iget-object v3, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v3}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_f

    if-nez v0, :cond_b

    goto :goto_0

    .line 431
    :cond_b
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->JUMP_SETTING:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v0, v3, :cond_c

    move v2, v1

    .line 435
    :cond_c
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_DOCUMENT_SETTING:Lcom/metamoji/nt/NtCommand;

    if-eq v0, p1, :cond_d

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_DOCUMENT_SETTING2:Lcom/metamoji/nt/NtCommand;

    if-eq v0, p1, :cond_d

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_NOTETEMPLATE_SETTING:Lcom/metamoji/nt/NtCommand;

    if-ne v0, p1, :cond_10

    .line 436
    :cond_d
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v3

    .line 439
    invoke-virtual {v3, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v0

    .line 440
    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_NOTETEMPLATE_SETTING:Lcom/metamoji/nt/NtCommand;

    if-ne v3, p1, :cond_e

    if-eqz v0, :cond_f

    .line 441
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_e
    if-eqz v0, :cond_10

    .line 443
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTemplate()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTrashed()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_0
    move v2, v1

    :cond_10
    :goto_1
    if-nez v2, :cond_17

    .line 555
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 556
    sget-object v3, Lcom/metamoji/nt/NtDocument$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v4, 0x44

    if-eq v3, v4, :cond_14

    const/16 v4, 0x45

    if-eq v3, v4, :cond_11

    goto :goto_2

    :cond_11
    if-nez v0, :cond_12

    goto :goto_3

    .line 571
    :cond_12
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v3, :cond_13

    goto :goto_3

    .line 572
    :cond_13
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->canRedo()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_3

    :cond_14
    if-nez v0, :cond_15

    goto :goto_3

    .line 561
    :cond_15
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v3, :cond_16

    goto :goto_3

    .line 562
    :cond_16
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->canUndo()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_3

    :cond_17
    :goto_2
    move v1, v2

    :cond_18
    :goto_3
    if-nez v1, :cond_1a

    .line 583
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 584
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    goto :goto_4

    .line 586
    :cond_19
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForAntiCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    :cond_1a
    :goto_4
    if-nez v1, :cond_1b

    .line 591
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 593
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtNoteController;->processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    return p1

    :cond_1b
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method processInhibitCommandForAntiCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z
    .locals 4

    .line 5353
    sget-object v0, Lcom/metamoji/nt/NtDocument$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x33

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x34

    if-eq p1, v0, :cond_19

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x3

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    packed-switch p1, :pswitch_data_7

    goto/16 :goto_2

    .line 5357
    :pswitch_0
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForAntiCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_1d

    return v1

    .line 5681
    :pswitch_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 5685
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 5689
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5691
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    return p1

    .line 5663
    :pswitch_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 5667
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 5671
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5673
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v0

    if-ne v0, v2, :cond_3

    return v1

    :cond_3
    return p1

    .line 5645
    :pswitch_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    .line 5649
    :cond_4
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 5653
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5655
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v0

    if-ne v0, v1, :cond_5

    return v1

    :cond_5
    return p1

    .line 5626
    :pswitch_4
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    .line 5631
    :cond_6
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 5635
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5637
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    return p1

    .line 5617
    :pswitch_5
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_1d

    :pswitch_6
    return v1

    .line 5583
    :pswitch_7
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    .line 5588
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 5589
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 5590
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    return v1

    .line 5596
    :cond_9
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v3

    if-eq v3, v1, :cond_a

    .line 5597
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v3

    if-eq v3, v2, :cond_a

    .line 5598
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v2

    if-eq v2, v0, :cond_a

    return v1

    .line 5603
    :cond_a
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object p1

    .line 5604
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "system:personal_template"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    return v1

    .line 5565
    :pswitch_8
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    .line 5570
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 5571
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 5572
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 5576
    :cond_c
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object p1

    .line 5577
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "system:edit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    return v1

    .line 5712
    :pswitch_9
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Lcom/metamoji/ui/flexible/FxManager;->isSimpleUiMode()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_0

    .line 5719
    :cond_d
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    .line 5720
    sget-object v0, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    .line 5725
    :cond_e
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 5726
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocumentTemplate()Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_2

    :cond_f
    :goto_0
    return v1

    .line 5382
    :pswitch_a
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_12

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result p1

    if-nez p1, :cond_12

    invoke-static {}, Lcom/metamoji/ui/flexible/FxManager;->isSimpleUiMode()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_1

    .line 5389
    :cond_10
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    .line 5390
    sget-object v0, Lcom/metamoji/nt/NtFeature;->AppStudentCreateSchoolNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    .line 5391
    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_1

    .line 5396
    :cond_11
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 5397
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocumentTemplate()Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_2

    :cond_12
    :goto_1
    return v1

    .line 5366
    :pswitch_b
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_13

    return v1

    .line 5372
    :cond_13
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 5373
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocumentTemplate()Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_2

    :cond_14
    :pswitch_c
    return v1

    .line 5703
    :pswitch_d
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_1d

    return v1

    .line 5502
    :pswitch_e
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_15

    return v1

    .line 5507
    :cond_15
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 5508
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 5509
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p1

    if-ne p1, v0, :cond_1d

    return v1

    .line 5488
    :pswitch_f
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    .line 5493
    :cond_16
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 5494
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 5495
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p1

    if-ne p1, v2, :cond_1d

    return v1

    .line 5474
    :pswitch_10
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_17

    return v1

    .line 5479
    :cond_17
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 5480
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 5481
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p1

    if-ne p1, v1, :cond_1d

    return v1

    .line 5459
    :pswitch_11
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_18

    return v1

    .line 5464
    :cond_18
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 5465
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 5466
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p1

    if-nez p1, :cond_1d

    :pswitch_12
    return v1

    .line 5551
    :cond_19
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_1a

    return v1

    .line 5556
    :cond_1a
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 5557
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result p1

    if-nez p1, :cond_1d

    return v1

    .line 5538
    :cond_1b
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_1c

    return v1

    .line 5543
    :cond_1c
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 5544
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result p1

    if-eqz p1, :cond_1d

    return v1

    :cond_1d
    :goto_2
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x47
        :pswitch_12
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4f
        :pswitch_c
        :pswitch_12
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_12
        :pswitch_c
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x82
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x87
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_c
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_5
        :pswitch_c
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x9b
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method public processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2661
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    .line 2662
    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    move v3, v4

    .line 2663
    :goto_0
    sget-object v6, Lcom/metamoji/nt/NtCommandManager;->SEND_COMMAND_IDS:[Lcom/metamoji/nt/NtCommand;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 2664
    sget-object v6, Lcom/metamoji/nt/NtCommandManager;->SEND_COMMAND_IDS:[Lcom/metamoji/nt/NtCommand;

    aget-object v6, v6, v3

    if-ne v1, v6, :cond_0

    .line 2665
    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineMode()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-result-object v6

    .line 2666
    sget-object v7, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->DONTSEE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-ne v6, v7, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2675
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_3

    .line 2676
    sget-object v2, Lcom/metamoji/nt/NtDocument$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aget v2, v2, v6

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :cond_2
    :pswitch_0
    return v5

    .line 2696
    :cond_3
    :goto_1
    sget-object v2, Lcom/metamoji/nt/NtDocument$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {v1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v6

    aget v2, v2, v6

    const-string v6, ""

    const-string/jumbo v7, "system:personal"

    const-string v8, "free"

    const/4 v9, 0x0

    const-string/jumbo v10, "status"

    const-string v11, "isGroup"

    const-string v12, "personalId"

    const/4 v13, 0x4

    const-string v14, "group-id"

    const/4 v15, 0x2

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_1c

    .line 5268
    :pswitch_2
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5269
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v1

    if-nez v1, :cond_109

    :cond_4
    return v5

    .line 5258
    :pswitch_3
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 5259
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5260
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5261
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_109

    :cond_5
    return v5

    .line 5248
    :pswitch_4
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v1

    if-nez v1, :cond_6

    return v5

    .line 5252
    :cond_6
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_ATTENTION_START_INNER_EXEC:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    return v1

    .line 5238
    :pswitch_5
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v1

    if-eqz v1, :cond_7

    return v5

    .line 5242
    :cond_7
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_ATTENTION_START_INNER_EXEC:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    return v1

    .line 5221
    :pswitch_6
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 5222
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5223
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_9

    :cond_8
    move v4, v5

    .line 5227
    :cond_9
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 5229
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v1

    if-nez v1, :cond_a

    return v5

    :cond_a
    return v4

    .line 5205
    :pswitch_7
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 5206
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5207
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_c

    :cond_b
    move v4, v5

    .line 5211
    :cond_c
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 5213
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v1

    if-ne v1, v15, :cond_d

    return v5

    :cond_d
    return v4

    .line 5189
    :pswitch_8
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 5190
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5191
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_f

    :cond_e
    move v4, v5

    .line 5195
    :cond_f
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 5197
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v1

    if-ne v1, v5, :cond_10

    return v5

    :cond_10
    return v4

    .line 5173
    :pswitch_9
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 5174
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5175
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_12

    :cond_11
    move v4, v5

    .line 5179
    :cond_12
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 5181
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v1

    if-nez v1, :cond_13

    return v5

    :cond_13
    return v4

    .line 5136
    :pswitch_a
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 5137
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5138
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_109

    :cond_14
    return v5

    .line 5099
    :pswitch_b
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_15

    return v5

    .line 5104
    :cond_15
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 5105
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v2

    if-eqz v2, :cond_16

    return v5

    .line 5111
    :cond_16
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 5112
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedGroupDic()Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 5114
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 5115
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    if-eq v1, v15, :cond_17

    move v4, v5

    .line 5121
    :cond_17
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 5123
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 5124
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 5125
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v5

    :cond_18
    return v4

    .line 5019
    :pswitch_c
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 5020
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_19

    return v5

    .line 5027
    :cond_19
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_1a

    return v5

    .line 5034
    :cond_1a
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 5035
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->allowToChangeGroupByStudent()Z

    move-result v3

    if-nez v3, :cond_1b

    return v5

    .line 5041
    :cond_1b
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v2

    if-eqz v2, :cond_1c

    return v5

    .line 5047
    :cond_1c
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_2

    .line 5053
    :cond_1d
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 5054
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 5055
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 5057
    invoke-static {v2, v14}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5058
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e

    return v5

    .line 5069
    :cond_1e
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 5070
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v2

    if-nez v2, :cond_1f

    return v5

    .line 5076
    :cond_1f
    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 5077
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 5079
    invoke-static {v2, v14}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5081
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_20

    return v5

    .line 5092
    :cond_20
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v1

    if-eqz v1, :cond_109

    :cond_21
    :goto_2
    return v5

    .line 4935
    :pswitch_d
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 4936
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_22

    return v5

    .line 4943
    :cond_22
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_23

    return v5

    .line 4950
    :cond_23
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 4951
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->allowToChangeGroupByStudent()Z

    move-result v3

    if-nez v3, :cond_24

    return v5

    .line 4957
    :cond_24
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v2

    if-eqz v2, :cond_25

    return v5

    .line 4963
    :cond_25
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_3

    .line 4969
    :cond_26
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 4970
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedGroupDic()Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    move-result-object v2

    if-eqz v2, :cond_27

    move v4, v5

    .line 4976
    :cond_27
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 4977
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 4978
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_28

    return v5

    .line 4983
    :cond_28
    invoke-static {v3, v14}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4984
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_29

    return v5

    .line 4990
    :cond_29
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v1

    if-nez v1, :cond_2a

    return v5

    .line 4996
    :cond_2a
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 4998
    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 5000
    invoke-static {v1, v14}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5001
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2b

    return v5

    .line 5012
    :cond_2b
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v1

    if-eqz v1, :cond_2c

    return v5

    :cond_2c
    return v4

    :cond_2d
    :goto_3
    return v5

    .line 4853
    :pswitch_e
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 4854
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_2e

    return v5

    .line 4861
    :cond_2e
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_2f

    return v5

    .line 4868
    :cond_2f
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 4869
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->allowToChangeGroupByStudent()Z

    move-result v3

    if-nez v3, :cond_30

    return v5

    .line 4875
    :cond_30
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 4876
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v6

    .line 4877
    invoke-virtual {v6, v3}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_31

    return v5

    .line 4884
    :cond_31
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v2

    if-eqz v2, :cond_32

    return v5

    .line 4890
    :cond_32
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_4

    :cond_33
    if-eqz v7, :cond_34

    .line 4897
    invoke-static {v7, v14}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 4898
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_34

    return v5

    .line 4904
    :cond_34
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 4905
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 4907
    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 4909
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    return v5

    .line 4916
    :cond_35
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedGroupDic()Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 4918
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    if-eqz v9, :cond_36

    .line 4920
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v5

    .line 4928
    :cond_36
    invoke-virtual {v6}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v1

    if-eqz v1, :cond_109

    :cond_37
    :goto_4
    return v5

    .line 4755
    :pswitch_f
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 4756
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_38

    return v5

    .line 4763
    :cond_38
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_39

    return v5

    .line 4770
    :cond_39
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 4771
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->allowToChangeGroupByStudent()Z

    move-result v3

    if-nez v3, :cond_3a

    return v5

    .line 4777
    :cond_3a
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v2

    if-eqz v2, :cond_3b

    return v5

    .line 4783
    :cond_3b
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_5

    .line 4789
    :cond_3c
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 4790
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v2

    .line 4791
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedGroupDic()Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    move-result-object v1

    if-nez v2, :cond_3d

    if-nez v1, :cond_3d

    return v5

    .line 4797
    :cond_3d
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 4798
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 4799
    invoke-virtual {v3, v6}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_43

    .line 4802
    invoke-static {v7, v14}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v2, :cond_41

    .line 4810
    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 4812
    invoke-virtual {v3, v2}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    if-nez v8, :cond_3e

    return v5

    .line 4817
    :cond_3e
    invoke-static {v8, v14}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4818
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3f

    return v5

    .line 4824
    :cond_3f
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    return v5

    :cond_40
    if-eqz v7, :cond_41

    .line 4830
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    return v5

    :cond_41
    if-eqz v1, :cond_42

    .line 4837
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    if-eqz v7, :cond_42

    .line 4839
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    return v5

    .line 4846
    :cond_42
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v1

    if-eqz v1, :cond_109

    :cond_43
    :goto_5
    return v5

    .line 4706
    :pswitch_10
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 4707
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 4708
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v2, v3, :cond_44

    goto :goto_6

    .line 4712
    :cond_44
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 4713
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v2

    if-nez v2, :cond_45

    return v5

    .line 4718
    :cond_45
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 4719
    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    if-eqz v2, :cond_4a

    if-eqz v3, :cond_4a

    .line 4720
    invoke-virtual {v3, v2}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_46

    goto :goto_6

    .line 4725
    :cond_46
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 4726
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_47

    return v5

    .line 4734
    :cond_47
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    .line 4736
    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v3

    if-eqz v3, :cond_48

    return v5

    .line 4741
    :cond_48
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v1

    if-eqz v1, :cond_49

    return v5

    .line 4746
    :cond_49
    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_109

    :cond_4a
    :goto_6
    :pswitch_11
    return v5

    .line 4398
    :pswitch_12
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v8 .. v16}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_4b

    return v5

    .line 4410
    :cond_4b
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_4c

    return v5

    .line 4415
    :cond_4c
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 4416
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 4417
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4d

    return v5

    .line 4421
    :cond_4d
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    .line 4422
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v5

    return v1

    .line 4376
    :pswitch_13
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_4e

    return v5

    .line 4380
    :cond_4e
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 4381
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v2

    if-nez v2, :cond_4f

    move v4, v5

    .line 4386
    :cond_4f
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->allowEveryoneAnswer()Z

    move-result v1

    if-nez v1, :cond_50

    move v4, v5

    .line 4390
    :cond_50
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v1

    if-eqz v1, :cond_51

    return v5

    :cond_51
    return v4

    .line 4368
    :pswitch_14
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_109

    return v5

    .line 4297
    :pswitch_15
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_52

    return v5

    .line 4303
    :cond_52
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 4304
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v2

    if-nez v2, :cond_53

    return v5

    .line 4309
    :cond_53
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserRole()I

    move-result v1

    and-int/2addr v1, v5

    if-nez v1, :cond_109

    return v5

    .line 4260
    :pswitch_16
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 4261
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_54

    return v5

    .line 4266
    :cond_54
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 4267
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 4268
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_55

    return v5

    .line 4272
    :cond_55
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    .line 4273
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "system:teacher_personal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 4281
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 4282
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->isCurrentPageForClass()Z

    move-result v3

    if-eqz v3, :cond_57

    :cond_56
    move v2, v5

    .line 4289
    :cond_57
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_58

    return v5

    :cond_58
    return v2

    .line 4241
    :pswitch_17
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_59

    return v5

    .line 4246
    :cond_59
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 4247
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 4248
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5a

    return v5

    .line 4252
    :cond_5a
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    .line 4253
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "system:personal_template"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4204
    :pswitch_18
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_5b

    return v5

    .line 4209
    :cond_5b
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 4210
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 4211
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5c

    return v5

    .line 4215
    :cond_5c
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v2

    if-eq v2, v3, :cond_5d

    .line 4217
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    .line 4218
    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->presenterPersonalLayerInfo()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_5d

    .line 4220
    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_5d

    .line 4221
    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->personalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_5d

    return v5

    .line 4228
    :cond_5d
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    .line 4229
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 4179
    :pswitch_19
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_5e

    return v5

    .line 4184
    :cond_5e
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 4185
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v2

    if-nez v2, :cond_61

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_5f

    goto :goto_7

    .line 4190
    :cond_5f
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 4191
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 4192
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_60

    return v5

    .line 4196
    :cond_60
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    .line 4197
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "system:edit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_61
    :goto_7
    return v5

    .line 4160
    :pswitch_1a
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_62

    return v5

    .line 4165
    :cond_62
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 4166
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 4167
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_63

    return v5

    .line 4171
    :cond_63
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    .line 4172
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "system:common"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3954
    :pswitch_1b
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-nez v1, :cond_64

    return v5

    .line 3959
    :cond_64
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    if-nez v1, :cond_65

    return v5

    .line 3964
    :cond_65
    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v1

    if-nez v1, :cond_66

    return v5

    .line 3969
    :cond_66
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    if-eqz v1, :cond_68

    .line 3970
    iget v2, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/2addr v2, v13

    if-nez v2, :cond_67

    goto :goto_8

    .line 3983
    :cond_67
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_109

    iget-boolean v1, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v1, :cond_109

    :cond_68
    :goto_8
    return v5

    .line 3833
    :pswitch_1c
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_CONTEXTMENU_USERLIST_BECOME_PRESENTER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_109

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_CONTEXTMENU_USERLIST_RESIGN_PRESENTER:Lcom/metamoji/nt/NtCommand;

    .line 3834
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 3837
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_PERSONAL_MODE_BY_USER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_109

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_PERSONAL_MODE_BY_GROUP:Lcom/metamoji/nt/NtCommand;

    .line 3838
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_69

    goto/16 :goto_1c

    .line 3845
    :cond_69
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_FEATURED_PERSONAL_MODE_BY_USER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_109

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_CONTEXTMENU_USERLIST_START_FEATURED_PERSONAL_MODE_BY_GROUP:Lcom/metamoji/nt/NtCommand;

    .line 3846
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_6a

    goto/16 :goto_1c

    .line 3853
    :cond_6a
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_GROUPING_STUDENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_6b

    goto/16 :goto_1c

    .line 3858
    :cond_6b
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_JOIN_TO_THIS_GROUP:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_109

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_LEAVE_FROM_THIS_GROUP:Lcom/metamoji/nt/NtCommand;

    .line 3859
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_109

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_JOIN_IN_MY_GROUP:Lcom/metamoji/nt/NtCommand;

    .line 3860
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_109

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_MAKE_MY_GROUP:Lcom/metamoji/nt/NtCommand;

    .line 3861
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_109

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_FORBID_BROWSING_AMONG_STUDENTS:Lcom/metamoji/nt/NtCommand;

    .line 3862
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForCollaboSpecial(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_6c

    goto/16 :goto_1c

    :cond_6c
    return v5

    .line 3815
    :pswitch_1d
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 3816
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 3817
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v3

    sget-object v6, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v3, v6, :cond_6d

    move v3, v5

    goto :goto_9

    :cond_6d
    move v3, v4

    .line 3818
    :goto_9
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    .line 3819
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->roomMode()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_6e

    .line 3822
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_6e

    const-string v1, "readonly"

    .line 3823
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_109

    :cond_6e
    return v5

    .line 3799
    :pswitch_1e
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 3800
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 3801
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v3

    sget-object v6, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v3, v6, :cond_6f

    move v3, v5

    goto :goto_a

    :cond_6f
    move v3, v4

    .line 3803
    :goto_a
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->roomMode()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_70

    .line 3806
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 3807
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_109

    :cond_70
    return v5

    .line 3730
    :pswitch_1f
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 3731
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->roomMode()Ljava/lang/String;

    move-result-object v2

    .line 3733
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v3

    sget-object v6, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v3, v6, :cond_71

    if-eqz v2, :cond_71

    .line 3734
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    move v2, v4

    goto :goto_b

    :cond_71
    move v2, v5

    .line 3740
    :goto_b
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v3

    .line 3741
    invoke-virtual {v3}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditMode()Z

    move-result v3

    if-nez v3, :cond_72

    move v2, v5

    .line 3745
    :cond_72
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 3746
    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->alreadyJoinedClassNote(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_73

    move v2, v5

    .line 3751
    :cond_73
    invoke-virtual {v1, v4}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserModeWithDependCurrentPageOrLayer(Z)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_74

    return v5

    :cond_74
    return v2

    .line 3702
    :pswitch_20
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v1

    .line 3703
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 3704
    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledNote(Lcom/metamoji/nt/NtNoteController;)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 3707
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isEnabledStatusView()Z

    move-result v2

    if-nez v2, :cond_75

    move v1, v5

    .line 3710
    :cond_75
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 3711
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v3, v4, :cond_76

    move v1, v5

    .line 3715
    :cond_76
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->isRoomClosed()Z

    move-result v2

    if-eqz v2, :cond_77

    move v1, v5

    .line 3719
    :cond_77
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 3720
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->alreadyJoinedClassNote(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_78

    move v1, v5

    .line 3724
    :cond_78
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_79

    return v5

    :cond_79
    return v1

    .line 3626
    :pswitch_21
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 3627
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_7a

    return v5

    :cond_7a
    return v4

    .line 3596
    :pswitch_22
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_7b

    return v5

    .line 3602
    :cond_7b
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_109

    return v5

    .line 3573
    :pswitch_23
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 3574
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v1

    .line 3581
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 3582
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->allowToSaveNoteAndCopyPage()Z

    move-result v2

    if-nez v2, :cond_7c

    return v5

    :cond_7c
    return v1

    .line 3540
    :pswitch_24
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v14

    .line 3541
    invoke-virtual {v14}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_7d

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    .line 3542
    invoke-virtual/range {v14 .. v22}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_7d

    move v1, v5

    goto :goto_c

    :cond_7d
    move v1, v4

    :goto_c
    if-eqz v1, :cond_7e

    .line 3554
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 3557
    invoke-virtual {v14, v5}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserModeWithDependCurrentPageOrLayer(Z)I

    move-result v2

    and-int/2addr v2, v13

    if-eqz v2, :cond_7e

    return v4

    :cond_7e
    return v1

    .line 3460
    :pswitch_25
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 3468
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-eq v1, v2, :cond_7f

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3469
    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_80

    :cond_7f
    move v4, v5

    .line 3481
    :cond_80
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 3483
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v2, v3, :cond_81

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v1

    if-eqz v1, :cond_81

    return v5

    :cond_81
    return v4

    .line 3449
    :pswitch_26
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 3450
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v1

    if-eqz v1, :cond_109

    :pswitch_27
    return v5

    .line 3050
    :pswitch_28
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 3051
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_82

    return v5

    .line 3054
    :cond_82
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 3055
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreEnabled()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 3056
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_109

    :cond_83
    return v5

    .line 3045
    :pswitch_29
    invoke-static {v9}, Lcom/metamoji/nt/NtDocument;->processInhibitCommandForShareMenuScore(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 3012
    :pswitch_2a
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 3013
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_84

    return v5

    .line 3016
    :cond_84
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 3017
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreEnabled()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 3018
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 3019
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->mode2()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_85

    goto :goto_d

    .line 3023
    :cond_85
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_87

    .line 3025
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBelongClassStudentWithUserId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_86

    goto :goto_d

    .line 3029
    :cond_86
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreStatusInfoDic()Ljava/util/Map;

    move-result-object v1

    .line 3030
    invoke-static {v1, v10}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    .line 3031
    sget-object v2, Lcom/metamoji/nt/NtDocument$9;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$ScoreStatus:[I

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v5, :cond_87

    if-eq v1, v3, :cond_87

    if-eq v1, v13, :cond_87

    goto/16 :goto_1c

    :cond_87
    :goto_d
    return v5

    .line 2979
    :pswitch_2b
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 2980
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_88

    return v5

    .line 2983
    :cond_88
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 2984
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreEnabled()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 2985
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 2986
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->mode2()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_89

    goto :goto_e

    .line 2990
    :cond_89
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8b

    .line 2992
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBelongClassStudentWithUserId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    goto :goto_e

    .line 2996
    :cond_8a
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreStatusInfoDic()Ljava/util/Map;

    move-result-object v1

    .line 2997
    invoke-static {v1, v10}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    .line 2998
    sget-object v2, Lcom/metamoji/nt/NtDocument$9;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$ScoreStatus:[I

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v5, :cond_8b

    if-eq v1, v15, :cond_8b

    if-eq v1, v3, :cond_8b

    goto/16 :goto_1c

    :cond_8b
    :goto_e
    return v5

    .line 2952
    :pswitch_2c
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 2953
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_8c

    return v5

    .line 2956
    :cond_8c
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 2957
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreEnabled()Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 2958
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_8e

    .line 2959
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->mode2()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8e

    .line 2960
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBelongClassStudent()Z

    move-result v2

    if-nez v2, :cond_8d

    goto :goto_f

    .line 2964
    :cond_8d
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreStatusInfoDic()Ljava/util/Map;

    move-result-object v1

    .line 2965
    invoke-static {v1, v10}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    .line 2966
    sget-object v2, Lcom/metamoji/nt/NtDocument$9;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$ScoreStatus:[I

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v5, :cond_8e

    if-eq v1, v3, :cond_8e

    if-eq v1, v13, :cond_8e

    goto/16 :goto_1c

    :cond_8e
    :goto_f
    return v5

    .line 2925
    :pswitch_2d
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 2926
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_8f

    return v5

    .line 2929
    :cond_8f
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 2930
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreEnabled()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 2931
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_91

    .line 2932
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->mode2()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_91

    .line 2933
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBelongClassStudent()Z

    move-result v2

    if-nez v2, :cond_90

    goto :goto_10

    .line 2937
    :cond_90
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreStatusInfoDic()Ljava/util/Map;

    move-result-object v1

    .line 2938
    invoke-static {v1, v10}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    .line 2939
    sget-object v2, Lcom/metamoji/nt/NtDocument$9;->$SwitchMap$com$metamoji$forSchool$ScSchoolManager$ScoreStatus:[I

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v5, :cond_91

    if-eq v1, v15, :cond_91

    if-eq v1, v3, :cond_91

    goto/16 :goto_1c

    :cond_91
    :goto_10
    return v5

    .line 2911
    :pswitch_2e
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 2912
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_92

    return v5

    .line 2915
    :cond_92
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 2916
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_109

    return v5

    .line 2890
    :pswitch_2f
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 2891
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_93

    return v5

    .line 2894
    :cond_93
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 2895
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_95

    .line 2896
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->enableBeforeMode()Z

    move-result v2

    if-nez v2, :cond_94

    goto :goto_11

    .line 2899
    :cond_94
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineStatus()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    move-result-object v1

    .line 2900
    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->RUNNING:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    if-eq v1, v2, :cond_109

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->END:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    if-eq v1, v2, :cond_109

    :cond_95
    :goto_11
    return v5

    .line 2872
    :pswitch_30
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 2873
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_96

    return v5

    .line 2876
    :cond_96
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 2877
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_97

    return v5

    .line 2880
    :cond_97
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineStatus()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    move-result-object v1

    .line 2881
    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->END:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    if-eq v1, v2, :cond_109

    return v5

    .line 2852
    :pswitch_31
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 2853
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_98

    return v5

    .line 2856
    :cond_98
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 2857
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 2858
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->enableAfterMode()Z

    move-result v2

    if-nez v2, :cond_99

    goto :goto_12

    .line 2861
    :cond_99
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineStatus()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    move-result-object v1

    .line 2862
    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->PREVSTART:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    if-eq v1, v2, :cond_109

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->RUNNING:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    if-eq v1, v2, :cond_109

    :cond_9a
    :goto_12
    return v5

    .line 2834
    :pswitch_32
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 2835
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_9b

    return v5

    .line 2838
    :cond_9b
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 2839
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_9c

    return v5

    .line 2842
    :cond_9c
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineStatus()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    move-result-object v1

    .line 2843
    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->PREVSTART:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    if-eq v1, v2, :cond_109

    return v5

    .line 2813
    :pswitch_33
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 2814
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_9d

    move v4, v5

    .line 2820
    :cond_9d
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtFeature;->EditClassBoxMember:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-nez v1, :cond_9e

    move v4, v5

    .line 2825
    :cond_9e
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_9f

    return v5

    :cond_9f
    return v4

    .line 2787
    :pswitch_34
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 2788
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserRole()I

    move-result v2

    .line 2789
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v1, v3, :cond_a0

    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_109

    :cond_a0
    return v5

    .line 2729
    :pswitch_35
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_RESIGN_PRESENTER:Lcom/metamoji/nt/NtCommand;

    if-ne v1, v2, :cond_a1

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_a1

    return v5

    .line 2734
    :cond_a1
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v14

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v22}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    if-nez v1, :cond_a2

    .line 2746
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_a2

    .line 2749
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserModeWithDependCurrentPageOrLayer(Z)I

    move-result v1

    and-int/2addr v1, v13

    if-eqz v1, :cond_a2

    return v4

    :cond_a2
    return v2

    :pswitch_36
    return v5

    .line 5276
    :pswitch_37
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_a3

    return v5

    .line 5280
    :cond_a3
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result v1

    if-nez v1, :cond_a4

    .line 5281
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v1

    if-eqz v1, :cond_a4

    return v5

    .line 5288
    :cond_a4
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-eqz v1, :cond_a5

    .line 5290
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_a5

    .line 5292
    const-string v2, "MMJNsShareSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz v1, :cond_a5

    .line 5294
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboSettings;->getSubmitterDcUserId()Ljava/lang/String;

    move-result-object v9

    :cond_a5
    if-nez v9, :cond_a6

    return v5

    .line 5304
    :cond_a6
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-eqz v1, :cond_aa

    .line 5305
    invoke-virtual {v1, v9}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_a7

    goto :goto_13

    .line 5310
    :cond_a7
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->personalModeInfoDic()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a8

    .line 5312
    invoke-static {v2, v11}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_a8

    .line 5314
    invoke-static {v2, v12}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a8

    .line 5315
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    return v5

    .line 5324
    :cond_a8
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    return v5

    .line 5330
    :cond_a9
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 5331
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    if-eq v1, v5, :cond_109

    :cond_aa
    :goto_13
    return v5

    .line 4642
    :pswitch_38
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 4643
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 4644
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v2, v3, :cond_b2

    .line 4645
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-nez v1, :cond_ab

    goto/16 :goto_14

    .line 4650
    :cond_ab
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 4651
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedGroupDic()Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    move-result-object v2

    if-nez v2, :cond_ad

    .line 4653
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v1

    if-eqz v1, :cond_ac

    .line 4655
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 4657
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ad

    :cond_ac
    return v5

    .line 4667
    :cond_ad
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModeInfoDic()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_ae

    .line 4669
    invoke-static {v1, v11}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 4671
    invoke-static {v1, v12}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v2, :cond_ae

    if-eqz v1, :cond_ae

    .line 4672
    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    move v4, v5

    .line 4680
    :cond_ae
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 4681
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->screenLocked()Z

    move-result v2

    if-eqz v2, :cond_af

    return v5

    .line 4687
    :cond_af
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 4688
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 4689
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v2

    if-eq v2, v15, :cond_b0

    return v5

    .line 4695
    :cond_b0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 4696
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v1

    if-nez v1, :cond_b1

    return v5

    :cond_b1
    return v4

    :cond_b2
    :goto_14
    return v5

    .line 4563
    :pswitch_39
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 4564
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 4565
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v2

    sget-object v7, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v2, v7, :cond_bf

    .line 4566
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-nez v1, :cond_b3

    goto/16 :goto_16

    .line 4570
    :cond_b3
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 4571
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v1

    if-nez v1, :cond_b4

    return v5

    .line 4576
    :cond_b4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 4577
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    if-eqz v1, :cond_bf

    if-nez v2, :cond_b5

    goto/16 :goto_16

    .line 4585
    :cond_b5
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b6

    goto :goto_15

    .line 4586
    :cond_b6
    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_b7

    return v5

    .line 4591
    :cond_b7
    :goto_15
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModeInfoDic()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_b8

    .line 4593
    invoke-static {v7, v11}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_b8

    .line 4595
    invoke-static {v7, v12}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_b8

    .line 4596
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b8

    move v4, v5

    .line 4603
    :cond_b8
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v7

    .line 4604
    invoke-virtual {v7}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v8

    if-ne v8, v3, :cond_b9

    return v5

    .line 4607
    :cond_b9
    invoke-virtual {v7}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v3

    if-nez v3, :cond_ba

    .line 4609
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ba

    return v5

    .line 4616
    :cond_ba
    invoke-virtual {v7}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v3

    if-ne v3, v15, :cond_bc

    .line 4617
    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 4618
    invoke-static {v1, v14}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_bb

    .line 4619
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bc

    :cond_bb
    return v5

    .line 4626
    :cond_bc
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 4627
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->screenLocked()Z

    move-result v2

    if-eqz v2, :cond_bd

    return v5

    .line 4633
    :cond_bd
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 4634
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v1

    if-eqz v1, :cond_be

    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v1

    if-nez v1, :cond_be

    return v5

    :cond_be
    return v4

    :cond_bf
    :goto_16
    return v5

    .line 4510
    :pswitch_3a
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 4511
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 4512
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v2

    if-eq v2, v15, :cond_c0

    return v5

    .line 4517
    :cond_c0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 4522
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v3

    sget-object v6, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v3, v6, :cond_c4

    .line 4524
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result v3

    if-nez v3, :cond_c1

    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v2

    if-eqz v2, :cond_c1

    goto :goto_17

    .line 4532
    :cond_c1
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v1

    if-nez v1, :cond_c2

    .line 4534
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_c2

    return v5

    .line 4540
    :cond_c2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 4541
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedGroupDic()Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    move-result-object v1

    if-nez v1, :cond_c3

    return v5

    .line 4546
    :cond_c3
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->personalModeInfoDic()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_109

    .line 4548
    invoke-static {v2, v11}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_109

    .line 4550
    invoke-static {v2, v12}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_109

    .line 4551
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_109

    :cond_c4
    :goto_17
    return v5

    .line 4432
    :pswitch_3b
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 4437
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v2

    sget-object v7, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v2, v7, :cond_ce

    .line 4439
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result v2

    if-nez v2, :cond_c5

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v1

    if-eqz v1, :cond_c5

    goto/16 :goto_18

    .line 4446
    :cond_c5
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 4448
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v2

    if-nez v2, :cond_c6

    .line 4450
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_c6

    return v5

    .line 4456
    :cond_c6
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 4457
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v2

    if-nez v2, :cond_c7

    return v5

    .line 4462
    :cond_c7
    iget-object v7, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    if-eqz v7, :cond_ce

    if-eqz v1, :cond_ce

    .line 4463
    invoke-virtual {v1, v7}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    if-nez v8, :cond_c8

    goto :goto_18

    .line 4468
    :cond_c8
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/forSchool/ScSchoolManager;->personalModeInfoDic()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_c9

    .line 4470
    invoke-static {v8, v11}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_c9

    .line 4472
    invoke-static {v8, v12}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_c9

    .line 4473
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c9

    move v4, v5

    .line 4481
    :cond_c9
    iget-object v2, v2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 4482
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v8

    if-nez v8, :cond_ca

    if-eqz v2, :cond_ca

    iget-boolean v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-eqz v2, :cond_ca

    return v5

    .line 4490
    :cond_ca
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 4491
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v8

    if-eqz v8, :cond_ce

    .line 4492
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v8

    if-ne v8, v3, :cond_cb

    goto :goto_18

    .line 4498
    :cond_cb
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v2

    if-ne v2, v15, :cond_cd

    .line 4499
    invoke-virtual {v1, v7}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 4500
    invoke-static {v1, v14}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_cc

    .line 4501
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    :cond_cc
    return v5

    :cond_cd
    return v4

    :cond_ce
    :goto_18
    return v5

    .line 4342
    :pswitch_3c
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_cf

    return v5

    .line 4347
    :cond_cf
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 4348
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 4350
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->screenLocked()Z

    move-result v1

    if-eqz v1, :cond_109

    return v5

    .line 4356
    :cond_d0
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserRole()I

    move-result v2

    .line 4357
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v1, v3, :cond_d1

    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_109

    :cond_d1
    return v5

    .line 4316
    :pswitch_3d
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_d2

    return v5

    .line 4321
    :cond_d2
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 4322
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 4324
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->screenLocked()Z

    move-result v1

    if-nez v1, :cond_109

    return v5

    .line 4330
    :cond_d3
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserRole()I

    move-result v2

    .line 4331
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v1, v3, :cond_d4

    and-int/lit8 v1, v2, 0x1

    if-nez v1, :cond_109

    :cond_d4
    return v5

    .line 3884
    :pswitch_3e
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_d5

    return v5

    .line 3891
    :cond_d5
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-nez v1, :cond_d6

    return v5

    .line 3896
    :cond_d6
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    if-nez v1, :cond_d7

    return v5

    .line 3901
    :cond_d7
    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v1

    if-nez v1, :cond_d8

    return v5

    .line 3906
    :cond_d8
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    if-eqz v1, :cond_dc

    .line 3907
    iget v2, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/2addr v2, v13

    if-eqz v2, :cond_d9

    goto :goto_19

    .line 3914
    :cond_d9
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 3915
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v3

    if-eqz v3, :cond_da

    iget-object v3, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    if-eqz v3, :cond_da

    if-eqz v2, :cond_da

    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    .line 3918
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 3919
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->isCurrentPageForClass()Z

    move-result v1

    if-nez v1, :cond_da

    return v5

    .line 3925
    :cond_da
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 3926
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v2

    if-eqz v2, :cond_db

    return v5

    .line 3933
    :cond_db
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result v1

    if-eqz v1, :cond_109

    :cond_dc
    :goto_19
    return v5

    .line 3285
    :pswitch_3f
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 3286
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_dd

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3287
    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_dd

    return v5

    .line 3300
    :cond_dd
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtFeature;->AppUnavailableVoice:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-eqz v1, :cond_de

    return v5

    .line 3305
    :cond_de
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v1

    .line 3306
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 3307
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    .line 3309
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v6

    sget-object v7, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v6, v7, :cond_109

    .line 3310
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v2

    if-eqz v2, :cond_109

    .line 3311
    invoke-virtual {v1, v3}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z

    move-result v1

    if-nez v1, :cond_109

    return v5

    .line 3321
    :pswitch_40
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 3322
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_df

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3323
    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_df

    return v5

    .line 3336
    :cond_df
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v1

    .line 3337
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 3338
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    .line 3340
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v6

    sget-object v7, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v6, v7, :cond_109

    .line 3341
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v2

    if-eqz v2, :cond_109

    .line 3342
    invoke-virtual {v1, v3}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z

    move-result v1

    if-nez v1, :cond_109

    return v5

    .line 3386
    :pswitch_41
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 3387
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_e0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3388
    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_e0

    return v5

    .line 3401
    :cond_e0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_109

    return v5

    .line 3351
    :pswitch_42
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v13

    .line 3352
    invoke-virtual {v13}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_e1

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 3353
    invoke-virtual/range {v13 .. v21}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_e1

    return v5

    .line 3365
    :cond_e1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 3366
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModeInfoDic()Ljava/util/Map;

    move-result-object v2

    .line 3367
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 3368
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v6

    if-nez v6, :cond_e3

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_e2

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e2

    goto :goto_1a

    .line 3373
    :cond_e2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 3375
    invoke-virtual {v13}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v2, v3, :cond_109

    .line 3376
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v1

    if-eqz v1, :cond_109

    :cond_e3
    :goto_1a
    return v5

    .line 3412
    :pswitch_43
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 3413
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_e4

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3414
    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_e4

    return v5

    .line 3427
    :cond_e4
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v1

    .line 3428
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 3429
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    .line 3431
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v6

    sget-object v7, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v6, v7, :cond_109

    .line 3432
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v2

    if-eqz v2, :cond_109

    .line 3433
    invoke-virtual {v1, v3}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z

    move-result v1

    if-nez v1, :cond_109

    return v5

    .line 3248
    :pswitch_44
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtFeature;->AppUseQRCodeReader:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    if-nez v1, :cond_e5

    return v5

    .line 3251
    :cond_e5
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 3252
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_e6

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3253
    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_e6

    move v4, v5

    .line 3265
    :cond_e6
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v1

    .line 3266
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 3267
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    .line 3269
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v6

    sget-object v7, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v6, v7, :cond_e7

    .line 3270
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 3271
    invoke-virtual {v1, v3}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z

    move-result v1

    if-nez v1, :cond_e7

    return v5

    :cond_e7
    return v4

    .line 5158
    :pswitch_45
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 5159
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 5160
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_e9

    :cond_e8
    move v4, v5

    .line 5164
    :cond_e9
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 5165
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v1

    if-nez v1, :cond_ea

    return v5

    :cond_ea
    return v4

    .line 5145
    :pswitch_46
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 5146
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 5147
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_ec

    :cond_eb
    move v4, v5

    .line 5151
    :cond_ec
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 5152
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v1

    if-eqz v1, :cond_ed

    return v5

    :cond_ed
    return v4

    .line 4119
    :pswitch_47
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_ee

    return v5

    .line 4124
    :cond_ee
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 4125
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 4126
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    if-ne v1, v3, :cond_ef

    return v5

    .line 4130
    :cond_ef
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 4132
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-eq v1, v2, :cond_f0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 4133
    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_109

    :cond_f0
    return v5

    .line 4078
    :pswitch_48
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_f1

    return v5

    .line 4083
    :cond_f1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 4084
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 4085
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    if-ne v1, v15, :cond_f2

    return v5

    .line 4089
    :cond_f2
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 4091
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-eq v1, v2, :cond_f3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 4092
    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_109

    :cond_f3
    return v5

    .line 4037
    :pswitch_49
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_f4

    return v5

    .line 4042
    :cond_f4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 4043
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 4044
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    if-ne v1, v5, :cond_f5

    return v5

    .line 4048
    :cond_f5
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 4050
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-eq v1, v2, :cond_f6

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 4051
    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_109

    :cond_f6
    return v5

    .line 3994
    :pswitch_4a
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_f7

    return v5

    .line 3999
    :cond_f7
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 4000
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 4001
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    if-nez v1, :cond_f8

    return v5

    .line 4005
    :cond_f8
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 4007
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-eq v1, v2, :cond_f9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 4008
    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_109

    :cond_f9
    return v5

    .line 3635
    :pswitch_4b
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 3636
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v1, v2, :cond_fa

    .line 3637
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->isShareNoteOwner()Z

    move-result v1

    if-nez v1, :cond_109

    return v5

    .line 3645
    :cond_fa
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_fb

    .line 3646
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->roomMode()Ljava/lang/String;

    move-result-object v1

    if-ne v1, v8, :cond_fb

    move v11, v5

    goto :goto_1b

    :cond_fb
    move v11, v4

    :goto_1b
    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move v14, v11

    .line 3651
    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    xor-int/2addr v1, v5

    return v1

    :pswitch_4c
    return v5

    .line 3218
    :pswitch_4d
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 3219
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_fc

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3220
    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_fc

    move v4, v5

    .line 3232
    :cond_fc
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v1

    .line 3233
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 3234
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    .line 3236
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v6

    sget-object v7, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v6, v7, :cond_fd

    .line 3237
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 3238
    invoke-virtual {v1, v3}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z

    move-result v1

    if-nez v1, :cond_fd

    return v5

    :cond_fd
    return v4

    .line 3155
    :pswitch_4e
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v6 .. v15}, Lcom/metamoji/ns/NsCollaboManager;->enableCommandDependCurrentPageOrLayer(ZZZZZZZZZ)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 3169
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_fe

    .line 3171
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->allowToOperationPage()Z

    move-result v2

    if-nez v2, :cond_fe

    return v5

    :cond_fe
    return v1

    :pswitch_4f
    return v5

    .line 3130
    :pswitch_50
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v6 .. v15}, Lcom/metamoji/ns/NsCollaboManager;->enableCommandDependCurrentPageOrLayer(ZZZZZZZZZ)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 3144
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_ff

    .line 3146
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->allowToOperationPage()Z

    move-result v2

    if-nez v2, :cond_ff

    return v5

    :cond_ff
    return v1

    .line 3099
    :pswitch_51
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 3112
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_100

    .line 3114
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->allowToOperationPage()Z

    move-result v2

    if-nez v2, :cond_100

    return v5

    :cond_100
    return v1

    .line 3769
    :pswitch_52
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 3772
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v2

    .line 3773
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 3774
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 3775
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v7

    sget-object v8, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v7, v8, :cond_101

    .line 3776
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v3

    if-eqz v3, :cond_101

    .line 3777
    invoke-virtual {v2, v6}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z

    move-result v2

    if-eqz v2, :cond_101

    goto/16 :goto_1c

    .line 3783
    :cond_101
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v2, v3, :cond_102

    goto/16 :goto_1c

    .line 3787
    :cond_102
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_103

    goto/16 :goto_1c

    :cond_103
    return v5

    .line 3493
    :pswitch_53
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 3494
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-eq v1, v2, :cond_104

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3495
    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_105

    :cond_104
    move v4, v5

    .line 3507
    :cond_105
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v1

    .line 3508
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 3509
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    .line 3511
    invoke-virtual {v6}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v6

    sget-object v7, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v6, v7, :cond_106

    .line 3512
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v2

    if-eqz v2, :cond_106

    .line 3513
    invoke-virtual {v1, v3}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z

    move-result v1

    if-nez v1, :cond_106

    return v5

    :cond_106
    return v4

    :pswitch_54
    return v5

    .line 2773
    :pswitch_55
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v14}, Lcom/metamoji/ns/NsCollaboManager;->enableCommand(ZZZZZZZZ)Z

    move-result v1

    if-nez v1, :cond_109

    return v5

    .line 2759
    :pswitch_56
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 2760
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v2

    .line 2761
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserRole()I

    move-result v3

    .line 2762
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v6, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v1, v6, :cond_107

    and-int/lit8 v1, v2, 0x4

    if-nez v1, :cond_107

    and-int/lit8 v1, v2, 0x10

    if-nez v1, :cond_107

    and-int/lit8 v1, v3, 0x1

    if-nez v1, :cond_109

    :cond_107
    return v5

    .line 2712
    :pswitch_57
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 2713
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v2

    .line 2714
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserRole()I

    move-result v3

    .line 2715
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v6, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v1, v6, :cond_108

    and-int/lit8 v1, v2, 0x4

    if-nez v1, :cond_108

    and-int/lit8 v1, v2, 0x10

    if-nez v1, :cond_108

    and-int/lit8 v1, v3, 0x1

    if-nez v1, :cond_109

    :cond_108
    return v5

    .line 3077
    :pswitch_58
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtFeature;->AppUnavailableSendByApp:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    return v1

    :cond_109
    :goto_1c
    return v4

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_51
        :pswitch_51
        :pswitch_50
        :pswitch_50
        :pswitch_51
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_50
        :pswitch_4e
        :pswitch_4e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4c
        :pswitch_1
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_4c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4b
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_4d
        :pswitch_1
        :pswitch_46
        :pswitch_45
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3e
        :pswitch_57
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_1
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_58
        :pswitch_27
        :pswitch_4d
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result p1

    return p1
.end method

.method public resetCollaboSettings()V
    .locals 2

    .line 1281
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/SettingsManager;->resetSettings(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public saveModels()V
    .locals 2

    .line 1290
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtDocument$3;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtDocument$3;-><init>(Lcom/metamoji/nt/NtDocument;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDocumentTags(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1667
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    const-string/jumbo v1, "tags"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 1668
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void
.end method

.method public setDocumentTemplate(Z)V
    .locals 2

    .line 1615
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    const-string/jumbo v1, "template"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 1616
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void
.end method

.method public setDocumentTitle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1561
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtDocument;->setDocumentTitle(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDocumentTitle(Ljava/lang/String;Z)V
    .locals 2

    .line 1564
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 1565
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 1566
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtDocument;->showDocumentTitle(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1571
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object p2

    .line 1572
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/media/MediaUploadManager2;->notifyDocumentTitleChanged(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1097
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/metamoji/nt/NtDocument;->setPasswordHash(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;)V

    .line 1098
    new-instance p2, Lcom/metamoji/cm/PBE;

    invoke-direct {p2, p1}, Lcom/metamoji/cm/PBE;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/metamoji/nt/NtDocument;->_encryptor:Lcom/metamoji/cm/PBE;

    return-void
.end method

.method public setSaveOnEnd(Z)V
    .locals 1

    .line 1529
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-static {v0, p1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Lcom/metamoji/df/model/IModelManager;Z)V

    return-void
.end method

.method public suppressAutoSave()V
    .locals 1

    .line 1352
    monitor-enter p0

    .line 1353
    :try_start_0
    iget v0, p0, Lcom/metamoji/nt/NtDocument;->_suppressAutoSave:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/nt/NtDocument;->_suppressAutoSave:I

    .line 1354
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateCurrentPageThumbnail()V
    .locals 2

    .line 1445
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 1446
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    const/4 v1, 0x0

    .line 1447
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->updateThumbnail(Z)V

    return-void
.end method

.method public updateUndoRedoCommandState()V
    .locals 5

    .line 1456
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1459
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1463
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 1468
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v2, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    if-nez v0, :cond_4

    .line 1469
    iget-object v2, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v2}, Lcom/metamoji/df/model/IModelManager;->canUndo()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    if-nez v0, :cond_5

    .line 1470
    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/nt/NtDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->canRedo()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    .line 1471
    :goto_3
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_UNDO:Lcom/metamoji/nt/NtCommand;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    :goto_4
    invoke-virtual {v1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 1472
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    if-eqz v3, :cond_7

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    goto :goto_5

    :cond_7
    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    :goto_5
    invoke-virtual {v1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    return-void
.end method

.method public updateVoiceNavigationButton()V
    .locals 2

    .line 1479
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtDocument$6;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtDocument$6;-><init>(Lcom/metamoji/nt/NtDocument;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
