.class Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$6;
.super Ljava/lang/Object;
.source "DmLibraryIndexXMLSyncDataManagerAbstract.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->initSyncStatus()Z
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

    .line 639
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$6;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    iput-object p2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$6;->val$request:Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    iput-object p3, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$6;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

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

    .line 639
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$6;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 643
    const-string v0, "syncType"

    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$6;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    invoke-static {v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->access$000(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;)Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 644
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 647
    :try_start_0
    sget-object v2, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v1, v0, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 648
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->or()Lcom/j256/ormlite/stmt/Where;

    .line 649
    sget-object v2, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v1, v0, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 650
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->or()Lcom/j256/ormlite/stmt/Where;

    .line 651
    sget-object v2, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v1, v0, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$6;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    invoke-static {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->access$100(Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;)Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$6;->val$request:Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    iget-object v4, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$6;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 663
    check-cast v1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;

    .line 665
    const-string v2, "target"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryIndexXMLSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 666
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$6;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;

    iget-object v3, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract$6;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManagerAbstract;->putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 655
    :catch_0
    const-string v0, "Unable to create where Clause"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 656
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
