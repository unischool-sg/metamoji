.class Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;
.super Ljava/lang/Object;
.source "SdAllSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

.field final synthetic val$appendIds:Ljava/util/List;

.field final synthetic val$deleteIds:Ljava/util/List;

.field final synthetic val$discardedIds:Ljava/util/List;

.field final synthetic val$updateIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdAllSyncProcess$2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->val$deleteIds:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->val$discardedIds:Ljava/util/List;

    iput-object p4, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->val$updateIds:Ljava/util/List;

    iput-object p5, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->val$appendIds:Ljava/util/List;

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

    .line 250
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->call()Ljava/lang/Void;

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

    .line 254
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->val$deleteIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 255
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 258
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$dmgr:Lcom/metamoji/dvm/DvmDriveManager;

    invoke-virtual {v3, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 261
    invoke-virtual {v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyChangedDocumentsToLocal()V

    .line 264
    :cond_1
    new-instance v1, Lcom/metamoji/sd/entities/SdMODiscardedDrive;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODiscardedDrive;-><init>()V

    .line 266
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODrive;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODiscardedDrive;->setId(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODrive;->getLocalCacheId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODiscardedDrive;->setLocalCacheId(Ljava/lang/String;)V

    .line 269
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveMOManager;->createDiscardedDrive(Lcom/metamoji/sd/entities/SdMODiscardedDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 270
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->val$discardedIds:Ljava/util/List;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODrive;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$discardedNames:Ljava/util/List;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODrive;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveMOManager;->deleteDrive(Lcom/metamoji/sd/entities/SdMODrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->val$updateIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;

    move-result-object v3

    .line 280
    iget-object v4, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$driveInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 282
    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMODrive;->getHidden()Ljava/lang/Integer;

    move-result-object v5

    .line 284
    invoke-static {v3, v4}, Lcom/metamoji/sd/entities/SdMOUtils;->setDriveInfo(Lcom/metamoji/sd/entities/SdMODrive;Ljava/util/Map;)V

    .line 286
    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMODrive;->getHidden()Ljava/lang/Integer;

    move-result-object v4

    if-eq v5, v4, :cond_4

    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMODrive;->getHidden()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_5

    .line 288
    :cond_4
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$hideOrNotChangeIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_5
    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMODrive;->getStatus()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 293
    sget v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_ACCESS_DENIED:I

    and-int/2addr v2, v1

    sub-int/2addr v1, v2

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/entities/SdMODrive;->setStatus(Ljava/lang/Integer;)V

    .line 296
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/sd/SdDriveMOManager;->updateDrive(Lcom/metamoji/sd/entities/SdMODrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_1

    .line 301
    :cond_6
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->val$appendIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;

    move-result-object v3

    .line 304
    iget-object v4, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$driveInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 305
    invoke-static {v4}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isHidden(Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_7

    if-nez v3, :cond_7

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 307
    new-instance v5, Lcom/metamoji/sd/SdDriveContentsMOCManager;

    invoke-direct {v5, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOCManager;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v5}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->isDbFileExists()Z

    move-result v6

    if-nez v6, :cond_9

    .line 310
    invoke-virtual {v5}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->setupMainContext()V

    .line 312
    new-instance v6, Lcom/metamoji/sd/entities/SdMODrive;

    invoke-direct {v6}, Lcom/metamoji/sd/entities/SdMODrive;-><init>()V

    .line 313
    invoke-static {v6, v1, v3, v4}, Lcom/metamoji/sd/entities/SdMOUtils;->initializeMODrive(Lcom/metamoji/sd/entities/SdMODrive;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 315
    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMODrive;->getHidden()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 317
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$hideOrNotChangeIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_8
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v6, v4}, Lcom/metamoji/sd/SdDriveMOManager;->createDrive(Lcom/metamoji/sd/entities/SdMODrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 322
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdAllSyncProcess$2;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$initializedIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_9
    invoke-virtual {v5}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->discard()V

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method
