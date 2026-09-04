.class public Lcom/metamoji/lb/LbPartsUtils;
.super Ljava/lang/Object;
.source "LbPartsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;,
        Lcom/metamoji/lb/LbPartsUtils$ICollectModels;
    }
.end annotation


# static fields
.field private static final DEFAULT_FILENAME:Ljava/lang/String; = "__p_exchange.state"

.field private static final DEFAULT_FILENAME_PREFIX:Ljava/lang/String; = "__p_exchange"

.field private static final DEFAULT_FILENAME_SUFFIX:Ljava/lang/String; = ".state"

.field private static final MMJNT_MODELPROP_EDITSTATUS:Ljava/lang/String; = "?editstatus"

.field private static final MMJNT_MODELPROP_PDUTIL_OWNER_MODELS:Ljava/lang/String; = "models"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exportPartFile(Ljava/util/Map;Lcom/metamoji/df/model/ModelUtils$IModelExportProc;)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/df/model/ModelUtils$IModelExportProc;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/io/File;

    const-string v2, "__p_exchange.state"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    const/4 v2, 0x0

    .line 70
    :try_start_0
    invoke-static {v1, v2}, Lcom/metamoji/df/model/ModelManagerFactory;->newModelManager(Ljava/io/File;Ljava/lang/String;)Lcom/metamoji/df/model/IModelManager;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_4

    .line 73
    :try_start_1
    invoke-interface {p1, v3}, Lcom/metamoji/df/model/ModelUtils$IModelExportProc;->doExport(Lcom/metamoji/df/model/IModelManager;)V

    .line 75
    new-instance p1, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {p1}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    const/4 v4, 0x1

    .line 76
    invoke-virtual {p1, v4}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setCramped(Z)V

    .line 77
    invoke-interface {v3, p1}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    const-string p1, "__p_exchange"

    const-string v4, ".state"

    invoke-static {p1, v4, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 81
    sget-object v5, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Part:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->exportModelManager(Lcom/metamoji/df/model/IModelManager;Ljava/io/File;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Export;

    move-result-object p0

    .line 82
    sget-object p1, Lcom/metamoji/cv/CvResult$Export;->Success:Lcom/metamoji/cv/CvResult$Export;

    if-ne p0, p1, :cond_1

    .line 83
    const-string p0, "successed to export part file at %s"

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 96
    :try_start_3
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    :cond_0
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v4

    .line 86
    :cond_1
    :try_start_4
    const-string p1, "failed to export part file at error : %s"

    invoke-virtual {p0}, Lcom/metamoji/cv/CvResult$Export;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 89
    :try_start_5
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_2

    .line 96
    :try_start_6
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 101
    :cond_2
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    if-eqz v3, :cond_3

    .line 96
    :try_start_7
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 98
    :cond_3
    throw p0

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    .line 96
    invoke-interface {v3}, Lcom/metamoji/df/model/IModelManager;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 101
    :cond_5
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-object v2

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 102
    throw p0
.end method

.method public static exportPartFileFormModelsAsync(Ljava/util/Map;Ljava/util/List;Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/metamoji/lb/LbPartsUtils$1;

    invoke-direct {v0, p2, p1}, Lcom/metamoji/lb/LbPartsUtils$1;-><init>(Lcom/metamoji/nt/NtPasteDataUtil$IRootModelCreator;Ljava/util/List;)V

    invoke-static {p0, v0}, Lcom/metamoji/lb/LbPartsUtils;->exportPartFile(Ljava/util/Map;Lcom/metamoji/df/model/ModelUtils$IModelExportProc;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getDocumentIdFromEntityId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 355
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 358
    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIdFromEntityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 362
    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTrashed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static importModelsFromPartFile(Ljava/io/File;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;Lcom/metamoji/lb/LbPartsUtils$ICollectModels;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/df/model/IModelManager;",
            "Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;",
            "Lcom/metamoji/lb/LbPartsUtils$ICollectModels;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;Lcom/metamoji/lb/LbPartsUtils$ICollectModels;)V

    .line 323
    invoke-static {p0, v0}, Lcom/metamoji/lb/LbPartsUtils;->importPartFile(Ljava/io/File;Lcom/metamoji/df/model/ModelUtils$IModelImportProc;)V

    .line 324
    invoke-virtual {v0}, Lcom/metamoji/lb/LbPartsUtils$ModelImportProcImpl;->getResult()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static importPartFile(Ljava/io/File;Lcom/metamoji/df/model/ModelUtils$IModelImportProc;)V
    .locals 5

    .line 196
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/io/File;

    const-string v2, "__p_exchange.state"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    const/4 v0, 0x0

    .line 201
    :try_start_0
    invoke-static {v1, v0}, Lcom/metamoji/df/model/ModelManagerFactory;->newModelManager(Ljava/io/File;Ljava/lang/String;)Lcom/metamoji/df/model/IModelManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    .line 204
    :try_start_1
    sget-object v3, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Part:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    invoke-static {p0, v2, v3, v0, v0}, Lcom/metamoji/cv/xml/CvZippedXMLConvertUtils;->importArchivedDoc(Ljava/io/File;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/util/Map;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/cv/CvResult$Import;

    move-result-object v3

    .line 205
    sget-object v4, Lcom/metamoji/cv/CvResult$Import;->Success:Lcom/metamoji/cv/CvResult$Import;

    if-ne v3, v4, :cond_0

    .line 206
    const-string v0, "successed to import part file at {0}"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-interface {p1, v2}, Lcom/metamoji/df/model/ModelUtils$IModelImportProc;->doImport(Lcom/metamoji/df/model/IModelManager;)V

    goto :goto_0

    .line 209
    :cond_0
    const-string p0, "failed to import part file at error : {0}"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/ModelUtils$IModelImportProc;->doImport(Lcom/metamoji/df/model/IModelManager;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_1

    .line 217
    :try_start_2
    invoke-interface {v2}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 219
    :cond_1
    throw p0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 217
    invoke-interface {v2}, Lcom/metamoji/df/model/IModelManager;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    :cond_3
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 223
    throw p0
.end method

.method static makePartModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 166
    const-string v0, "partmeta"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 167
    const-string v1, "title"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "createDate"

    invoke-static {}, Lcom/metamoji/cm/TimeUtils;->currentUnixTimestamp()D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 171
    const-string v1, "part"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v1, 0x1

    .line 172
    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 173
    const-string v1, "partMetaData"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-object p0
.end method

.method public static migrationV2Library()Z
    .locals 1

    .line 341
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lb/LbLibraryItemManager;->migration()Ljava/util/List;

    const/4 v0, 0x1

    return v0
.end method

.method public static registPart(Ljava/io/File;Lcom/metamoji/cm/Blob;)V
    .locals 1

    .line 48
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->registerLibraryMyItemFromFile(Ljava/io/File;Lcom/metamoji/cm/Blob;)Z

    return-void
.end method
