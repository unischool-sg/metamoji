.class public Lcom/metamoji/lb/LbShareUtils;
.super Ljava/lang/Object;
.source "LbShareUtils.java"


# static fields
.field private static final TEMP_FILENAME:Ljava/lang/String; = "__library.state"

.field private static final TEMP_FILE_EXT:Ljava/lang/String; = "state"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static editLibrary(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;
    .locals 2

    .line 239
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->succeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 243
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->editDocument(Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object p1

    instance-of p1, p1, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getBody(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 176
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->succeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const-string v0, "state"

    invoke-static {p1, v0}, Lcom/metamoji/dm/fw/DmUtils;->createTempFileWithPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 181
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 183
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance p0, Lcom/metamoji/lb/LbShareUtils$2;

    invoke-direct {p0, v0}, Lcom/metamoji/lb/LbShareUtils$2;-><init>(Ljava/io/File;)V

    invoke-static {p0, p1}, Lcom/metamoji/df/model/ModelUtils;->importModelsFromFile(Lcom/metamoji/df/model/ModelUtils$IModelImportProc;Ljava/io/File;)V

    :cond_0
    return-object v0
.end method

.method public static getDictionary(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 261
    invoke-static {p0, p1}, Lcom/metamoji/lb/LbShareUtils;->getShareLibraryDocumentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    invoke-static {p0, p1}, Lcom/metamoji/lb/LbShareUtils;->editLibrary(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->getEditEngine()Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    move-result-object p0

    .line 266
    instance-of p1, p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    if-eqz p1, :cond_0

    .line 267
    check-cast p0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-virtual {p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->dictionary()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShareLibrary(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 143
    invoke-static {p0, p1}, Lcom/metamoji/lb/LbShareUtils;->getShareLibraryDocumentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/lb/LbShareUtils;->getBody(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getShareLibraryDocumentId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 158
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDsInFolder(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 161
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    .line 165
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static importShareLibrary(Ljava/io/File;Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 51
    invoke-static/range {v0 .. v7}, Lcom/metamoji/lb/LbShareUtils;->importShareLibrary(Ljava/io/File;Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static importShareLibrary(Ljava/io/File;Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/cm/Blob;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 57
    :try_start_0
    new-instance v0, Lcom/metamoji/cm/Blob;

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadFileInBuffer(Ljava/io/File;)[B

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v2

    .line 63
    const-string p0, "__library.state"

    new-instance v3, Lcom/metamoji/lb/LbShareUtils$1;

    invoke-direct {v3, p4, p5}, Lcom/metamoji/lb/LbShareUtils$1;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0, p1, v3}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->makeNewLibraryDocument(Ljava/lang/String;Lcom/metamoji/cm/Blob;Lcom/metamoji/cm/Blob;Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;)Ljava/io/File;

    move-result-object p0

    if-nez p7, :cond_0

    .line 74
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v7, p7

    .line 75
    const-string p1, "systemFile"

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {v7, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->succeeded()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 83
    :goto_0
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    if-nez p6, :cond_2

    .line 87
    invoke-static {p2}, Lcom/metamoji/noteanytime/MainActivity;->simpleDriveAutoSync(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 92
    const-string p1, "[LbShareUtils] :: ERROR importShareLibrary"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public static newDocFromDictionary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 329
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    .line 333
    const-string v2, "__library.state"

    new-instance v3, Lcom/metamoji/lb/LbShareUtils$3;

    invoke-direct {v3, p3, p4}, Lcom/metamoji/lb/LbShareUtils$3;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, p0, v0, v3}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->makeNewLibraryDocument(Ljava/lang/String;Ljava/util/Map;Lcom/metamoji/cm/Blob;Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary$RootModelCreator;)Ljava/io/File;

    move-result-object p0

    .line 341
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {v1, p3, p2, v0, p4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    move-result-object p2

    .line 342
    invoke-virtual {p2}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->succeeded()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 343
    invoke-virtual {p2}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;->getDocumentId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 347
    :goto_0
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    if-nez p5, :cond_1

    .line 351
    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->simpleDriveAutoSync(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p2

    :catch_0
    move-exception p0

    .line 356
    const-string p1, "[LbShareUtils] :: ERROR newDocumentDictionary"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static putDictionary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 288
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, v1, p5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDsInFolder(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p5

    .line 292
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 294
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p7, :cond_1

    .line 295
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p7

    if-le p7, v2, :cond_1

    .line 297
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/String;

    .line 298
    invoke-virtual {p7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    invoke-virtual {v0, p7}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    goto :goto_0

    .line 304
    :cond_1
    invoke-static {p1, v1}, Lcom/metamoji/lb/LbShareUtils;->editLibrary(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    move-result-object p5

    if-eqz p5, :cond_4

    .line 306
    invoke-virtual {p5}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->getEditEngine()Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    move-result-object p7

    .line 307
    instance-of v2, p7, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    if-eqz v2, :cond_2

    .line 308
    check-cast p7, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-virtual {p7, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->setDictionary(Ljava/util/Map;)V

    .line 310
    :cond_2
    sget-object p7, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-virtual {v0, p5, p7}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object p5

    .line 311
    invoke-virtual {p5}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result p5

    if-eqz p5, :cond_4

    if-nez p6, :cond_3

    .line 314
    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->simpleDriveAutoSync(Ljava/lang/String;)Z

    :cond_3
    return-object v1

    :cond_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p6

    .line 321
    invoke-static/range {v2 .. v7}, Lcom/metamoji/lb/LbShareUtils;->newDocFromDictionary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putShareLibrary(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 106
    invoke-static/range {v0 .. v7}, Lcom/metamoji/lb/LbShareUtils;->putShareLibrary(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putShareLibrary(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)Ljava/lang/String;
    .locals 9

    .line 111
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v2, p5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDsInFolder(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 115
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p7, :cond_1

    .line 117
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_1

    .line 119
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 120
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 121
    invoke-virtual {v0, v4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p2

    move v6, p6

    move-object v2, v3

    move-object v3, p0

    .line 126
    invoke-static/range {v1 .. v6}, Lcom/metamoji/lb/LbShareUtils;->setBody(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/metamoji/cm/Blob;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p6

    .line 131
    invoke-static/range {v1 .. v8}, Lcom/metamoji/lb/LbShareUtils;->importShareLibrary(Ljava/io/File;Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setBody(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/metamoji/cm/Blob;Ljava/lang/String;Z)Z
    .locals 5

    .line 207
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 208
    invoke-static {p0, p1}, Lcom/metamoji/lb/LbShareUtils;->editLibrary(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->getEditEngine()Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;

    move-result-object v2

    .line 212
    instance-of v3, v2, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    if-eqz v3, :cond_4

    .line 213
    new-instance v3, Lcom/metamoji/cm/Blob;

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->loadFileInBuffer(Ljava/io/File;)[B

    move-result-object p2

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 217
    move-object p2, v2

    check-cast p2, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-virtual {p2, v3}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->setBody(Lcom/metamoji/cm/Blob;)V

    if-eqz p3, :cond_1

    .line 219
    invoke-virtual {p2, p3}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;->setThumbnail(Lcom/metamoji/cm/Blob;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 222
    const-string p2, "title"

    invoke-virtual {v2, p2, p4}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    :cond_2
    sget-object p2, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p5, :cond_3

    .line 228
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->simpleDriveAutoSync(Ljava/lang/String;)Z

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method
