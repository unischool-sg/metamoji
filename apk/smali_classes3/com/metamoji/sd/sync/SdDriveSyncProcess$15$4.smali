.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

.field final synthetic val$moDelTag:Lcom/metamoji/sd/entities/SdMOTag;

.field final synthetic val$moTagOrder:Lcom/metamoji/sd/entities/SdMOTagOrder;

.field final synthetic val$tagName:Ljava/lang/String;

.field final synthetic val$tagsOfOrder:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;Lcom/metamoji/sd/entities/SdMOTag;Ljava/util/List;Ljava/lang/String;Lcom/metamoji/sd/entities/SdMOTagOrder;)V
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

    .line 2911
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->val$moDelTag:Lcom/metamoji/sd/entities/SdMOTag;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->val$tagsOfOrder:Ljava/util/List;

    iput-object p4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->val$tagName:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->val$moTagOrder:Lcom/metamoji/sd/entities/SdMOTagOrder;

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

    .line 2911
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->call()Ljava/lang/Void;

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

    .line 2913
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->val$moDelTag:Lcom/metamoji/sd/entities/SdMOTag;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteTag(Lcom/metamoji/sd/entities/SdMOTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 2916
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->val$tagsOfOrder:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->val$tagName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2917
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->val$moTagOrder:Lcom/metamoji/sd/entities/SdMOTagOrder;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->val$tagsOfOrder:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setTagOrder(Ljava/lang/String;)V

    .line 2918
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->val$moTagOrder:Lcom/metamoji/sd/entities/SdMOTagOrder;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTagOrder(Lcom/metamoji/sd/entities/SdMOTagOrder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    const/4 v0, 0x0

    return-object v0
.end method
