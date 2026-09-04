.class Lcom/metamoji/sd/SdDriveDocumentManager$30;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->internalCopyDocument(Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;ZLjava/util/List;Lcom/metamoji/nt/NtNoteTemplateSettings;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
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

.field final synthetic val$err:Lcom/metamoji/sd/SdValue;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$giveTag:Z

.field final synthetic val$giveTags:Ljava/util/List;

.field final synthetic val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

.field final synthetic val$moFromDocumentTags:Ljava/util/List;

.field final synthetic val$moFromSearchData:Lcom/metamoji/sd/entities/SdMODocumentSearchData;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

.field final synthetic val$newDocId:Lcom/metamoji/sd/SdValue;

.field final synthetic val$noteTemplateSettings:Lcom/metamoji/nt/NtNoteTemplateSettings;

.field final synthetic val$nowDate:Ljava/util/Date;

.field final synthetic val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdValue;Ljava/io/File;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/nt/NtNoteTemplateSettings;ZLjava/util/List;Ljava/util/List;Lcom/metamoji/sd/entities/SdMODocumentSearchData;)V
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

    .line 7234
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$newDocId:Lcom/metamoji/sd/SdValue;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$err:Lcom/metamoji/sd/SdValue;

    iput-object p6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$file:Ljava/io/File;

    iput-object p7, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$nowDate:Ljava/util/Date;

    iput-object p9, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    iput-object p10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$noteTemplateSettings:Lcom/metamoji/nt/NtNoteTemplateSettings;

    iput-boolean p11, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$giveTag:Z

    iput-object p12, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$giveTags:Ljava/util/List;

    iput-object p13, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moFromDocumentTags:Ljava/util/List;

    iput-object p14, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$moFromSearchData:Lcom/metamoji/sd/entities/SdMODocumentSearchData;

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

    .line 7234
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$30;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7237
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$newDocId:Lcom/metamoji/sd/SdValue;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-static {v1, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->-$$Nest$mgenerateDocumentId(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 7239
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7240
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 7245
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$file:Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v3}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->saveDocumentBinaryFileToStorage(Ljava/io/File;Ljava/lang/String;)V

    .line 7246
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v3}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7247
    new-instance v2, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    invoke-direct {v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;-><init>()V

    .line 7249
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v3}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7252
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v3, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;

    invoke-direct {v3, p0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager$30$1;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$30;Lcom/metamoji/dvm/fw/IDvmDocumentEditor;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7377
    sget-object v0, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v2, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    return-object v1

    :catch_0
    move-exception v0

    .line 7371
    :try_start_2
    const-string v3, "[SdDriveDocumentManager] :: ERROR internalCopyDocument:%s"

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7372
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$30;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v3, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v3, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7377
    sget-object v0, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v2, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    return-object v1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v2, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 7379
    throw v0
.end method
