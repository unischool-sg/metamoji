.class public Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;
.super Lcom/metamoji/dvm/fw/DvmDocumentManager;
.source "DvmMetamojiCloudDocumentManager.java"


# instance fields
.field private _driveOption:Lcom/metamoji/dvm/fw/DvmDriveOption;

.field private _sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;-><init>()V

    return-void
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 2

    .line 1784
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->checkUpdate()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 1786
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[DvmDocumentManager] :: ERROR checkUpdate: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public clearMembers()V
    .locals 2

    .line 1817
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearMembers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1819
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[DvmDocumentManager] :: ERROR clearMembers: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public clearNeedSyncFlag()V
    .locals 1

    .line 1774
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    return-void
.end method

.method public closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 4

    .line 600
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$29;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$29;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$30;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$30;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 618
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR closeDocument: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public cloudService()Lcom/metamoji/sd/cs/SdCloudService;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getCloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1015
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1017
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR contentsPathWithDocId: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public copyDocument(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    .line 148
    new-instance v1, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v1}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    move-object v0, p3

    check-cast v0, Ljava/util/List;

    new-instance v6, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$1;

    invoke-direct {v6, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$1;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v7, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$2;

    invoke-direct {v7, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$2;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyDocument(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 166
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR copyDocument: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public copyDocument(Ljava/lang/String;Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;"
        }
    .end annotation

    .line 181
    new-instance v1, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    invoke-direct {v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;-><init>()V

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    check-cast p2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;

    iget-object v4, p2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object p2, p3

    check-cast p2, Ljava/util/List;

    new-instance v8, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$3;

    invoke-direct {v8, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$3;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;)V

    new-instance v9, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$4;

    invoke-direct {v9, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$4;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;)V

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v9}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;ZZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 199
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR copyDocument: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public copyDocumentAsNew(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;"
        }
    .end annotation

    .line 506
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;-><init>()V

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    check-cast p2, Ljava/util/List;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$23;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$23;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$24;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$24;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyDocumentAsNew(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 524
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR copyDocumentAsNew: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public copyDocumentAsNew(Ljava/lang/String;Ljava/util/ArrayList;Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;",
            ")",
            "Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;"
        }
    .end annotation

    .line 569
    new-instance v1, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    invoke-direct {v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;-><init>()V

    .line 571
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v4, p2

    check-cast v4, Ljava/util/List;

    check-cast p3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;

    invoke-virtual {p3}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->sdDocumentManager()Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v5

    new-instance v6, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$27;

    invoke-direct {v6, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$27;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    new-instance v7, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$28;

    invoke-direct {v7, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$28;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyDocumentAsNew(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 587
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR copyDocumentAsNew: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public copyDocumentAsNew(Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 4

    .line 537
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;-><init>()V

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$25;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$25;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$26;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$26;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyDocumentAsNew(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 555
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR copyDocumentAsNew: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public copyDocumentFromSheetTemplate(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;"
        }
    .end annotation

    .line 475
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;-><init>()V

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$21;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$21;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$22;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$22;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyDocumentFromSheetTemplate(Ljava/lang/String;Ljava/util/ArrayList;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 493
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR copyDocumentFromSheetTemplate: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public copyFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    .line 1621
    new-instance v1, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v1}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 1623
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    move-object v0, p3

    check-cast v0, Ljava/util/List;

    new-instance v7, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$59;

    invoke-direct {v7, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$59;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v8, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$60;

    invoke-direct {v8, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$60;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1639
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR copyFolderFrom: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public createFolder(Lcom/metamoji/dvm/fw/bean/DvmFolderBean;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 4

    .line 1527
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 1529
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$53;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$53;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$54;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$54;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->createFolder(Lcom/metamoji/dvm/fw/bean/DvmFolderBean;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1545
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[DvmDocumentManager] :: ERROR createFolder: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public createTag(Lcom/metamoji/dvm/fw/bean/DvmTagBean;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 4

    .line 1286
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 1288
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$43;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$43;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$44;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$44;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->createTag(Lcom/metamoji/dvm/fw/bean/DvmTagBean;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1304
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[DvmDocumentManager] :: ERROR createTag: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 4

    .line 243
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$7;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$7;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$8;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$8;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->deleteDocument(Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[DvmDocumentManager] :: ERROR deleteDocument: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public deleteDocumentInTrash(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 0

    .line 798
    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->deleteDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object p1

    return-object p1
.end method

.method public deleteFolder(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 4

    .line 1557
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 1559
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$55;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$55;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$56;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$56;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->deleteFolder(Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1575
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[DvmDocumentManager] :: ERROR deleteFolder: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public deleteTags(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    .line 1316
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 1318
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$45;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$45;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$46;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$46;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->deleteTags(Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1334
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[DvmDocumentManager] :: ERROR deleteTags: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public editCopiedDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 4

    .line 444
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;-><init>()V

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$19;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$19;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$20;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$20;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->editCopiedDocument(Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 462
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[DvmDocumentManager] :: ERROR editCopiedDocument: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public editDocument(Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 4

    .line 384
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;-><init>()V

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$15;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$15;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$16;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$16;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->editDocument(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 402
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR editDocument: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public exportDocumentBinaryFromStorage(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->exportDocumentBinaryFromStorage(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR exportDocumentBinaryFromStorage: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public exportDocumentBinaryFromStorage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->exportDocumentBinaryFromStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR exportDocumentBinaryFromStorage: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public generateDocumentId()Ljava/lang/String;
    .locals 2

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->generateDocumentId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[DvmDocumentManager] :: ERROR generateDocumentId: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAbsPathMatchTags(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1513
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getAbsPathMatchTags(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1515
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR getAbsPathMatchTags: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getChangedShareNoteInfoListInJsonString()Ljava/lang/String;
    .locals 2

    .line 1180
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getChangedShareNoteInfoListInJsonString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1182
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[DvmDocumentManager] :: ERROR getChangedShareNoteInfoListInJsonString: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;
    .locals 4

    .line 1030
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;-><init>()V

    .line 1032
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$39;

    invoke-direct {v2, p0, p2, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$39;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$40;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$40;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1052
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR getDocumentContents: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public getDocumentCount(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/dvm/DvmDocumentSearchConditions;",
            ")J"
        }
    .end annotation

    const-wide/16 v1, 0x0

    .line 1128
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentIds(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;JJ)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide v1

    .line 1132
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long p1, p1

    return-wide p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1134
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR getDocumentCount: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v1
.end method

.method public getDocumentCountInFolder(Ljava/util/List;Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 1148
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentCountInFolder(Ljava/util/List;Ljava/util/List;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 1150
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR getDocumentCountInFolder: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/dvm/DvmDocumentSearchConditions;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1083
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;JJ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/dvm/DvmDocumentSearchConditions;",
            "JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1097
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentIds(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;JJ)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1099
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR getDocumentIDs: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentIDsFromRoom(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentIDsFromRoom(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 932
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR getDocumentIDsFromRoom: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentIDsInFolder(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1112
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentIdsInFolder(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1114
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR getDocumentIDsInFolder: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 982
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentIconImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 984
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR getDocumentIconImageFile: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentIdFromEntityId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentIdFromEntityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR getDocumentIdFromEntityId: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;
    .locals 1

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 839
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR getDocumentInfo: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentSearchData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentSearchData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 916
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR getDocumentSearchData: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDocumentsInfo(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;",
            ">;"
        }
    .end annotation

    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentsInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 854
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR getDocumentsInfo: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDriveId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoomId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1163
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getRoomId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1165
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR getRoomId: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubFolderList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmFolderBean;",
            ">;"
        }
    .end annotation

    .line 1498
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getSubFolderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1500
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR getSubFolderList: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTag(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;
    .locals 1

    .line 1439
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTag(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1441
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR getTag: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmTagBean;",
            ">;"
        }
    .end annotation

    .line 1453
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTagList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1455
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[DvmDocumentManager] :: ERROR getTagList: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1272
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1274
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR getTagNameListForDocument: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagsForRenameAtFolder(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmTagBean;",
            ">;"
        }
    .end annotation

    .line 1483
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTagsForRenameAtFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1485
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR getTagsForRenameAtFolder: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTagsInFolder(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/fw/bean/DvmTagBean;",
            ">;"
        }
    .end annotation

    .line 1468
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTagsInFolder(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1470
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR getTagsInFolder: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasChangedContents(Z)Z
    .locals 1

    .line 1747
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->hasChangedContents(Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1749
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR hasChangedContents: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public hasCloudService()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasTrash()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;"
        }
    .end annotation

    .line 274
    new-instance v1, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    invoke-direct {v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;-><init>()V

    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v0, p3

    check-cast v0, Ljava/util/List;

    new-instance v7, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$9;

    invoke-direct {v7, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$9;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;)V

    new-instance v8, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$10;

    invoke-direct {v8, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$10;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/sd/SdDriveDocumentManager;->importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 292
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR importDocumentBinaryToStorage: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public importDocumentBinaryToStorage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;"
        }
    .end annotation

    .line 305
    new-instance v1, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    invoke-direct {v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;-><init>()V

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v0, p3

    check-cast v0, Ljava/util/List;

    new-instance v8, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$11;

    invoke-direct {v8, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$11;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;)V

    new-instance v9, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$12;

    invoke-direct {v9, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$12;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/metamoji/sd/SdDriveDocumentManager;->importDocumentBinaryToStorageById(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 323
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR importDocumentBinaryToStorage: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public initWithSdDocumentManager(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/dvm/fw/DvmDriveOption;)Ljava/lang/Object;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    .line 82
    iput-object p2, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_driveOption:Lcom/metamoji/dvm/fw/DvmDriveOption;

    return-object p0
.end method

.method public isCloudServiceSyncNeeded()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->needSyncFlag(Z)Z

    move-result v0

    return v0
.end method

.method public isDisplayedMultiFolders(Ljava/lang/String;)Z
    .locals 1

    .line 1226
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->isDisplayedMultiFolders(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1228
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR isDisplayedMultiFolders: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isInTrash(Ljava/lang/String;)Z
    .locals 1

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->isInTrash(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 744
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR isInTrash: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isLatestRevision(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Z
    .locals 1

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->isLatestRevision(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 678
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR isLatestRevision: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isNewOpenDocument(Ljava/lang/String;)Z
    .locals 1

    .line 1195
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->isNewOpenDocument(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1197
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR isNewOpenDocument: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isThumbnailMissingForDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1211
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->isNothingThumbnailDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1213
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR isThumbnailMissingForDocument: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public lockDocument(Ljava/lang/String;)Z
    .locals 1

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->lockDocument(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 811
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR lockDocument: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public makeDuplicatedTitleFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public memberList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1831
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->memberList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1833
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[DvmDocumentManager] :: ERROR memberList: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public memberMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1846
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->memberMap()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1848
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[DvmDocumentManager] :: ERROR memberMap: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public migration()Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public moveDocument(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    .line 213
    new-instance v1, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v1}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    move-object v0, p3

    check-cast v0, Ljava/util/List;

    new-instance v6, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$5;

    invoke-direct {v6, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$5;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v7, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$6;

    invoke-direct {v7, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$6;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->moveDocument(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 231
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR moveDocument: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public moveDocumentToTrash(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 1

    .line 699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 700
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->moveDocumentsToTrash(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object p1

    return-object p1
.end method

.method public moveDocumentsToTrash(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    .line 711
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 713
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$31;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$31;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$32;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$32;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->updateDocumentsTrashed(Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 729
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[DvmDocumentManager] :: ERROR moveDocumentsToTrash: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public moveFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    .line 1654
    new-instance v1, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v1}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 1656
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    move-object v0, p3

    check-cast v0, Ljava/util/List;

    new-instance v7, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$61;

    invoke-direct {v7, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$61;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v8, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$62;

    invoke-direct {v8, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$62;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/sd/SdDriveDocumentManager;->moveFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1672
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR moveFolderFrom: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public needSyncFlag(Z)Z
    .locals 1

    .line 1761
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->needSyncFlag(Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1763
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR needSyncFlag: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public newNoteTemplateBasedOnNoteWithDocId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;
    .locals 4

    .line 353
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;-><init>()V

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$13;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$13;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$14;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$14;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithDocId;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->newNoteTemplateBasedOnNoteWithDocId(Ljava/lang/String;Lcom/metamoji/nt/NtNoteTemplateSettings;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 371
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR newNoteTemplateBasedOnNoteWithDocId: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public nonMemberNameMapCache()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1888
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->nonMemberNameMapCache()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1890
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[DvmDocumentManager] :: ERROR nonMemberNameMapCache: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public normalizedMemberNameMapCache()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1860
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->normalizedMemberNameMapCache()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1862
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[DvmDocumentManager] :: ERROR normalizedMemberNameMapCache: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public openEditorForQuickEdit(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;
    .locals 4

    .line 414
    new-instance v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;-><init>()V

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$17;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$17;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$18;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$18;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->openEditorForQuickEdit(Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 432
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[DvmDocumentManager] :: ERROR openEditorForQuickEdit: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public renameFolder(Ljava/util/List;Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    .line 1685
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 1687
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$63;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$63;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$64;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$64;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->renameFolder(Ljava/util/List;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1703
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR renameFolder: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public renameFolder(Ljava/util/List;Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    .line 1717
    new-instance v1, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v1}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 1719
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    new-instance v6, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$65;

    invoke-direct {v6, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$65;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v7, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$66;

    invoke-direct {v7, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$66;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->renameFolder(Ljava/util/List;Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1735
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR renameFolder: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public renameTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 8

    .line 1378
    new-instance v1, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v1}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 1380
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v6, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$49;

    invoke-direct {v6, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$49;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v7, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$50;

    invoke-direct {v7, p0, v1}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$50;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->reNameTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1396
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR renameTag: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public reorderFolderIn(Ljava/util/List;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    .line 1588
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 1590
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    move-object v2, p2

    check-cast v2, Ljava/util/List;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$57;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$57;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$58;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$58;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->reOrderFolderIn(Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1606
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR reorderFolderIn: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public reorderTag(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    .line 1408
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 1410
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$51;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$51;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$52;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$52;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->reOrderTag(Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1426
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[DvmDocumentManager] :: ERROR reorderTag: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public restoreDocumentFromTrash(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 1

    .line 756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 757
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->restoreDocumentsFromTrash(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object p1

    return-object p1
.end method

.method public restoreDocumentsFromTrash(Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    .line 768
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$33;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$33;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$34;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$34;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->updateDocumentsTrashed(Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 786
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[DvmDocumentManager] :: ERROR restoreDocumentsFromTrash: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public saveDocumentBinaryFileToStorage(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->saveDocumentBinaryFileToStorage(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 633
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR exportDocumentBinaryFromStorage: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public saveDocumentThumbnailWithData([BLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z
    .locals 1

    .line 1068
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/sd/SdDriveDocumentManager;->saveDocumentThumbnailWithData([BLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1070
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR saveDocumentThumbnailWithData: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public sdDocumentManager()Lcom/metamoji/sd/SdDriveDocumentManager;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    return-object v0
.end method

.method public setDisplayPriorityToDocuments(Ljava/util/List;Z)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    .line 950
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 952
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$37;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$37;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$38;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$38;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->setDisplayPriorityToDocuments(Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 968
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR setDisplayPriorityToDocuments: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public setTagToDocument(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;"
        }
    .end annotation

    .line 1241
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 1243
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object v2, p2

    check-cast v2, Ljava/util/List;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$41;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$41;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$42;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$42;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->setTagToDocument(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1259
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR setTagToDocument: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/sd/SdDriveDocumentManager;->thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1002
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR thumbnailPathWithDocId: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public turnOffEditFlag(Ljava/lang/String;)V
    .locals 1

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->turnOffEditFlag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 665
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR turnOffEditFlag: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public turnOnEditFlag(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->turnOnEditFlag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 651
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR turnOnEditFlag: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public unlockDocument(Ljava/lang/String;)V
    .locals 1

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 825
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR unlockDocument: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateDocumentTitle(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 4

    .line 867
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 869
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$35;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$35;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$36;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$36;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->updateDocumentTitle(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 885
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[DvmDocumentManager] :: ERROR updateDocumentTitle: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public updateNonMemberNameMapCache(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1903
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/SdDriveDocumentManager;->updateNonMemberNameMapCache(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1905
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[DvmDocumentManager] :: ERROR updateNonMemberNameMapCache: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public updateNormalizedMemberNameMapCache()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1874
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->updateNormalizedMemberNameMapCache()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1876
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[DvmDocumentManager] :: ERROR updateNormalizedMemberNameMapCache: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateTag(Lcom/metamoji/dvm/fw/bean/DvmTagBean;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
    .locals 4

    .line 1346
    new-instance v0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    invoke-direct {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;-><init>()V

    .line 1348
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;->_sdDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    new-instance v2, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$47;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$47;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    new-instance v3, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$48;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager$48;-><init>(Lcom/metamoji/dvm/impl/DvmMetamojiCloudDocumentManager;Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->updateTag(Lcom/metamoji/dvm/fw/bean/DvmTagBean;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1364
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "[DvmDocumentManager] :: ERROR updateTag: %s"

    invoke-static {v1, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
