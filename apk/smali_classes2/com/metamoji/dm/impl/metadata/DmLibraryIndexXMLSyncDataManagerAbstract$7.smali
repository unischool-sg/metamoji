.class Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;
.super Ljava/lang/Object;
.source "DmLibraryIndexXMLSyncDataManagerAbstract.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->disconnectAndResetAllSyncInfo()Z
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
.field final synthetic this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

.field final synthetic val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

.field final synthetic val$request:Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 721
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    iput-object p2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->val$request:Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    iput-object p3, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

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

    .line 721
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->call()Ljava/lang/Void;

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

    .line 724
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->val$request:Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;->predicate()Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v4

    .line 725
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    invoke-static {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->access$200(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;)Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->val$request:Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    iget-object v3, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 726
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 729
    invoke-virtual {v1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;->getEntityId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    check-cast v1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    .line 736
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getSyncType()Lcom/metamoji/dm/DmEntitySyncType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    if-ne v3, v4, :cond_1

    .line 738
    iget-object v3, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    invoke-virtual {v1}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->getEntityId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    .line 741
    :cond_1
    const-string v3, "nop"

    invoke-virtual {v1, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 742
    sget-object v3, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v1, v3}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncType(Lcom/metamoji/dm/DmEntitySyncType;)V

    .line 743
    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setServerId(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setLastSyncedRevision(Ljava/lang/String;)V

    .line 745
    invoke-static {}, Lcom/metamoji/dm/fw/DmUtils;->nowDateAsNumber()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setServerUpdate(Ljava/util/Date;)V

    .line 746
    invoke-static {}, Lcom/metamoji/dm/fw/DmUtils;->nowDateAsNumber()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncUpdate(Ljava/util/Date;)V

    .line 748
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    iget-object v3, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    goto :goto_0

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$7;->val$request:Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;->reset(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;)V

    return-object v2
.end method
