.class Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;
.super Ljava/lang/Object;
.source "DmLibraryContentsSyncDataManagerAbstract.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->setEndToDeleteSyncInfo(Ljava/lang/String;)V
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

.field final synthetic val$entityId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)V
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

    .line 194
    iput-object p1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    iput-object p2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;->val$entityId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

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

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;->val$entityId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->getMetaData(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;->this$0:Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;

    iget-object v1, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;->val$entityId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;->val$ctx:Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract;->deleteMetaDataTrans(Ljava/lang/String;Lcom/metamoji/dm/fw/metadata/DmManagedObjectContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManagerAbstract$3;->val$entityId:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DmLibraryContentsSyncDataManager#setEndToDeleteSyncInfo:entityId:%s is not defined. return nop..."

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method
