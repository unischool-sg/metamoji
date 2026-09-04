.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$3;
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

.field final synthetic val$moDocuments:Ljava/util/List;

.field final synthetic val$tagName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;Ljava/util/List;Ljava/lang/String;)V
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

    .line 2889
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$3;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$3;->val$moDocuments:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$3;->val$tagName:Ljava/lang/String;

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

    .line 2889
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2891
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$3;->val$moDocuments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/entities/SdMODocument;

    .line 2892
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 2893
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$3;->val$tagName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2894
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$3;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$3;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
