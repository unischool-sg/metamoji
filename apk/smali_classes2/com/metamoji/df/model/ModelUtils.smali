.class public Lcom/metamoji/df/model/ModelUtils;
.super Ljava/lang/Object;
.source "ModelUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/model/ModelUtils$IModelExportProc;,
        Lcom/metamoji/df/model/ModelUtils$IModelImportProc;
    }
.end annotation


# static fields
.field private static final DEFAULT_FILENAME:Ljava/lang/String; = "__exchange.state"

.field private static final INTERNAL_FILENAME:Ljava/lang/String; = "__internal.state"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 3

    .line 31
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/metamoji/df/model/ModelManagerImportContext;

    invoke-direct {v1, v0, v0}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    const/4 v2, 0x1

    invoke-interface {v0, p0, v2, v1}, Lcom/metamoji/df/model/IModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static deserializeModels([BLcom/metamoji/df/model/ModelUtils$IModelImportProc;)V
    .locals 3

    .line 159
    const-string v0, "__internal.state"

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    invoke-static {v1, p0}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    .line 161
    invoke-static {p1, v0}, Lcom/metamoji/df/model/ModelUtils;->importModelsFromFile(Lcom/metamoji/df/model/ModelUtils$IModelImportProc;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 163
    :try_start_1
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :goto_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 166
    throw p0
.end method

.method public static exportModelsToFile(Lcom/metamoji/df/model/ModelUtils$IModelExportProc;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    if-nez p1, :cond_0

    .line 52
    const-string p1, "__exchange.state"

    :cond_0
    const/4 v0, 0x0

    .line 58
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 61
    invoke-static {v1, v0}, Lcom/metamoji/df/model/ModelManagerFactory;->newModelManager(Ljava/io/File;Ljava/lang/String;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 63
    :try_start_1
    invoke-interface {p0, p1}, Lcom/metamoji/df/model/ModelUtils$IModelExportProc;->doExport(Lcom/metamoji/df/model/IModelManager;)V

    .line 64
    new-instance p0, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {p0}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    const/4 v2, 0x1

    .line 65
    invoke-virtual {p0, v2}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setCramped(Z)V

    .line 66
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 67
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v0

    .line 72
    :goto_1
    :try_start_2
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    .line 75
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 77
    :cond_4
    throw p0
.end method

.method public static getExchangeFile()Ljava/io/File;
    .locals 3

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "__exchange.state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static importModelsFromFile(Lcom/metamoji/df/model/ModelUtils$IModelImportProc;Ljava/io/File;)V
    .locals 1

    if-nez p1, :cond_0

    .line 115
    const-string p1, "__exchange.state"

    invoke-static {p0, p1}, Lcom/metamoji/df/model/ModelUtils;->importModelsFromFile(Lcom/metamoji/df/model/ModelUtils$IModelImportProc;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 121
    :try_start_0
    invoke-static {p1, v0}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreModelManager(Ljava/io/File;Z)Lcom/metamoji/df/model/IModelManager;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 123
    :try_start_1
    invoke-interface {p0, p1}, Lcom/metamoji/df/model/ModelUtils$IModelImportProc;->doImport(Lcom/metamoji/df/model/IModelManager;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 127
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 129
    :cond_3
    throw p0
.end method

.method public static importModelsFromFile(Lcom/metamoji/df/model/ModelUtils$IModelImportProc;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 140
    const-string p1, "__exchange.state"

    .line 143
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/metamoji/df/model/ModelUtils;->importModelsFromFile(Lcom/metamoji/df/model/ModelUtils$IModelImportProc;Ljava/io/File;)V

    return-void
.end method

.method public static serializeModels(Lcom/metamoji/df/model/ModelUtils$IModelExportProc;)[B
    .locals 2

    .line 92
    const-string v0, "__internal.state"

    const/4 v1, 0x0

    .line 94
    :try_start_0
    invoke-static {p0, v0}, Lcom/metamoji/df/model/ModelUtils;->exportModelsToFile(Lcom/metamoji/df/model/ModelUtils$IModelExportProc;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 96
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadFileInBuffer(Ljava/io/File;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;Ljava/lang/String;)Z

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 99
    :try_start_1
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :goto_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 103
    throw p0
.end method
