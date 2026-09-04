.class Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$6;
.super Ljava/lang/Object;
.source "DmLibraryContentsSyncDataManagerAbstract.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->initSyncStatus()Z
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
.field final synthetic this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

.field final synthetic val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

.field final synthetic val$request:Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V
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

    .line 687
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$6;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    iput-object p2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$6;->val$request:Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    iput-object p3, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$6;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

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

    .line 687
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$6;->call()Ljava/lang/Void;

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

    .line 691
    const-string v0, "syncType"

    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$6;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    invoke-static {v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->access$000(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;)Lcom/metamoji/dm/fw/metadata/DmPredicate;

    move-result-object v5

    .line 692
    invoke-virtual {v5}, Lcom/metamoji/dm/fw/metadata/DmPredicate;->getPredicate()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 695
    :try_start_0
    sget-object v2, Lcom/metamoji/dm/DmEntitySyncType;->New:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v1, v0, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 696
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->or()Lcom/j256/ormlite/stmt/Where;

    .line 697
    sget-object v2, Lcom/metamoji/dm/DmEntitySyncType;->Update:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v1, v0, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 698
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->or()Lcom/j256/ormlite/stmt/Where;

    .line 699
    sget-object v2, Lcom/metamoji/dm/DmEntitySyncType;->Delete:Lcom/metamoji/dm/DmEntitySyncType;

    invoke-virtual {v1, v0, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$6;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    invoke-static {v0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->access$100(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;)Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$6;->val$request:Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;

    iget-object v4, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$6;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/dm/fw/metadata/DmCoreDataManager;->executeFetchRequest(Lcom/metamoji/dm/fw/metadata/DmManagedObjectRequest;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;Lcom/metamoji/dm/fw/metadata/DmPredicate;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;

    .line 711
    check-cast v1, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    .line 713
    const-string v2, "target"

    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;->setSyncStatus(Ljava/lang/String;)V

    .line 714
    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$6;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    iget-object v3, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$6;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->putMetaDataTrans(Lcom/metamoji/dm/fw/metadata/DmManagedObjectBase;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 703
    :catch_0
    const-string v0, "Unable to create where Clause"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 704
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
