.class Lcom/metamoji/sd/SdDriveDocumentManager$7$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$7;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1762
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

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

    .line 1762
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1766
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1767
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1768
    sget-object v3, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1772
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$newDocId:Lcom/metamoji/sd/SdValue;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-static {v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->-$$Nest$mgenerateDocumentId(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 1774
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1780
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 1775
    iget-object v0, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v3

    .line 1780
    :cond_1
    iget-object v1, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$file:Ljava/io/File;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->saveDocumentBinaryFileToStorage(Ljava/io/File;Ljava/lang/String;)V

    .line 1783
    new-instance v6, Lcom/metamoji/sd/entities/SdMODocument;

    invoke-direct {v6}, Lcom/metamoji/sd/entities/SdMODocument;-><init>()V

    .line 1784
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v5, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$nowDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v1}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsMimeType()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Lcom/metamoji/sd/entities/SdMOUtils;->initializeMODocument(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1785
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-boolean v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$keepDate:Z

    if-eqz v1, :cond_2

    .line 1786
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsCreate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreate(Ljava/util/Date;)V

    .line 1787
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 1791
    :cond_2
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-boolean v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$copiedShareFlg:Z

    if-eqz v1, :cond_3

    .line 1792
    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/metamoji/sd/SdUtils;->putOnBitFlag(Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1794
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$nowDate:Ljava/util/Date;

    invoke-static {v2, v6, v1}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptions(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;I)V

    .line 1796
    invoke-static {v6}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    .line 1799
    :cond_3
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v6, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 1801
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1802
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1804
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$tags:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 1805
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$tags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1806
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    .line 1810
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 1813
    :cond_5
    sget-object v7, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    iget-object v7, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v7, v7, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v8, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v8, v6, v5}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v9, v9, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v7, v8, v9}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 1815
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1821
    :cond_6
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$sd:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1828
    :try_start_0
    new-instance v2, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    invoke-direct {v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1829
    :try_start_1
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$7;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v5}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v0, v6}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 1831
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-boolean v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$keepDate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v4, "update"

    const-string v5, "create"

    if-eqz v0, :cond_7

    .line 1833
    :try_start_2
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsCreate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1835
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1837
    :cond_7
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$nowDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v6

    .line 1839
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1841
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1845
    :goto_2
    const-string v0, "collaboRoomId"

    invoke-interface {v2, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1846
    const-string v4, "collaboCompanyId"

    invoke-interface {v2, v4}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1847
    const-string v5, "collaboLastSequence"

    invoke-interface {v2, v5}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5}, Lcom/metamoji/sd/SdUtils;->numToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v5

    .line 1852
    const-string/jumbo v6, "tags"

    invoke-interface {v2, v6, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1856
    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v2, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 1860
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 1870
    :cond_8
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$nowDate:Ljava/util/Date;

    const/4 v6, 0x1

    invoke-static {v2, v1, v6, v3}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 1871
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :goto_3
    if-eqz v0, :cond_b

    .line 1875
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v1

    if-nez v1, :cond_a

    .line 1878
    new-instance v1, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;-><init>()V

    .line 1879
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setId(Ljava/lang/String;)V

    .line 1880
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setRoomId(Ljava/lang/String;)V

    if-eqz v4, :cond_9

    goto :goto_4

    .line 1881
    :cond_9
    const-string v4, ""

    :goto_4
    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setCompanyId(Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_a
    if-eqz v5, :cond_b

    .line 1885
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 1886
    invoke-virtual {v1, v5}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setLastSequence(Ljava/lang/String;)V

    .line 1887
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$7$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$7;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_b
    return-object v3

    :catchall_0
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v3, :cond_c

    .line 1856
    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v3, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 1858
    :cond_c
    throw v0
.end method
