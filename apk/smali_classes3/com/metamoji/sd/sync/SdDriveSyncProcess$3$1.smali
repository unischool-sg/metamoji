.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 544
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

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

    .line 544
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 549
    new-instance v1, Lcom/metamoji/sd/entities/SdMODocument;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODocument;-><init>()V

    .line 550
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$nowDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$isNew:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v3}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    if-eqz v3, :cond_0

    iget-object v3, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->makeDuplicatedDocumentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsMimeType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/metamoji/sd/entities/SdMOUtils;->initializeMODocument(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsCreate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreate(Ljava/util/Date;)V

    .line 554
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 556
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toMoMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 559
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v3}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 565
    :try_start_0
    new-instance v3, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    invoke-direct {v3}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 566
    :try_start_1
    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v0, v5}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 569
    const-string/jumbo v0, "title"

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 571
    const-string/jumbo v0, "tags"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v0, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 574
    const-string v0, "collaboRoomId"

    invoke-interface {v3, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    const-string v1, "collaboCompanyId"

    invoke-interface {v3, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 576
    const-string v4, "collaboLastSequence"

    invoke-interface {v3, v4}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-static {v4}, Lcom/metamoji/sd/SdUtils;->numToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    sget-object v5, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v3, v5}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    if-eqz v0, :cond_3

    .line 585
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toMoMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v5, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v3

    if-nez v3, :cond_2

    .line 588
    new-instance v3, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-direct {v3}, Lcom/metamoji/sd/entities/SdMODocumentRoom;-><init>()V

    .line 589
    iget-object v5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$newDocId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setId(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v3, v0}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setRoomId(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    goto :goto_1

    .line 591
    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setCompanyId(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toMoMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 595
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 596
    invoke-virtual {v3, v4}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setLastSequence(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toMoMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$3;->val$toChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_3
    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_4

    .line 580
    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v2, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 582
    :cond_4
    throw v0
.end method
