.class Lcom/metamoji/sd/SdDriveDocumentManager$13;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->importDocumentBinaryToStorageById(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/sd/SdBlock<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$copiedShareFlg:Z

.field final synthetic val$err:Lcom/metamoji/sd/SdValue;

.field final synthetic val$importFile:Ljava/io/File;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

.field final synthetic val$newDocId:Lcom/metamoji/sd/SdValue;

.field final synthetic val$nowDate:Ljava/util/Date;

.field final synthetic val$opt:Ljava/util/Map;

.field final synthetic val$tags:Ljava/util/List;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/Map;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdValue;Ljava/io/File;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/Date;Ljava/lang/String;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2923
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$opt:Ljava/util/Map;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$newDocId:Lcom/metamoji/sd/SdValue;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$err:Lcom/metamoji/sd/SdValue;

    iput-object p6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$importFile:Ljava/io/File;

    iput-object p7, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$nowDate:Ljava/util/Date;

    iput-object p9, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$title:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$copiedShareFlg:Z

    iput-object p11, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$tags:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2923
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$13;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2926
    new-instance v0, Lcom/metamoji/sd/SdValue;

    invoke-direct {v0}, Lcom/metamoji/sd/SdValue;-><init>()V

    .line 2927
    new-instance v1, Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 2928
    new-instance v2, Lcom/metamoji/sd/SdValue;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdValue;-><init>(Ljava/lang/Object;)V

    .line 2930
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$opt:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 2932
    const-string v4, "entityId"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 2934
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$newDocId:Lcom/metamoji/sd/SdValue;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$opt:Ljava/util/Map;

    const-string v5, "documentId"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 2936
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$opt:Ljava/util/Map;

    const-string v4, "orgDate"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2937
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$opt:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 2939
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$opt:Ljava/util/Map;

    const-string/jumbo v3, "systemFile"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2940
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$opt:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 2943
    :cond_1
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2944
    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 2948
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$newDocId:Lcom/metamoji/sd/SdValue;

    if-eqz v1, :cond_2

    .line 2946
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v4, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->generateDocumentIdFromLibraryId(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 2948
    :cond_2
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-static {v1, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->-$$Nest$mgenerateDocumentId(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 2952
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    .line 2953
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->UnkownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v3

    .line 2957
    :cond_4
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Import as new note :%s"

    invoke-static {v4, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2960
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$importFile:Ljava/io/File;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/metamoji/sd/SdDriveDocumentManager;->saveDocumentBinaryFileToStorage(Ljava/io/File;Ljava/lang/String;)V

    .line 2962
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2963
    new-instance v4, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    invoke-direct {v4}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;-><init>()V

    .line 2965
    :try_start_0
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v1, v7}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2968
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v5, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;

    invoke-direct {v5, p0, v4, v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager$13$1;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$13;Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdValue;)V

    invoke-virtual {v1, v5}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3108
    sget-object v0, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v4, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    return-object v3

    :catch_0
    move-exception v0

    .line 3101
    :try_start_2
    const-string v1, "[SdDriveDocumentManager] :: ERROR importDocumentBinaryToStorage:%s"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3102
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$13;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3108
    sget-object v0, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v4, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    return-object v3

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v4, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 3110
    throw v0
.end method
