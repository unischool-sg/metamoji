.class Lcom/metamoji/sd/SdDriveDocumentManager$19$7;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$19;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

.field final synthetic val$moBeforeTag:Lcom/metamoji/sd/entities/SdMOTag;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$19;Lcom/metamoji/sd/entities/SdMOTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4255
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->val$moBeforeTag:Lcom/metamoji/sd/entities/SdMOTag;

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

    .line 4255
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4258
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->val$moBeforeTag:Lcom/metamoji/sd/entities/SdMOTag;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOTag;->getRevision()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 4261
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_0

    .line 4259
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->val$moBeforeTag:Lcom/metamoji/sd/entities/SdMOTag;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteTag(Lcom/metamoji/sd/entities/SdMOTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    .line 4261
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->val$moBeforeTag:Lcom/metamoji/sd/entities/SdMOTag;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 4262
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->val$moBeforeTag:Lcom/metamoji/sd/entities/SdMOTag;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOTag;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 4263
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->val$moBeforeTag:Lcom/metamoji/sd/entities/SdMOTag;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTag(Lcom/metamoji/sd/entities/SdMOTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 4267
    :goto_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTagOrder;

    move-result-object v0

    .line 4270
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v2

    .line 4271
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getTagOrder()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 4273
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setTagOrder(Ljava/lang/String;)V

    .line 4274
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdate(Ljava/util/Date;)V

    .line 4275
    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 4276
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTagOrder(Lcom/metamoji/sd/entities/SdMOTagOrder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    const/4 v0, 0x0

    return-object v0
.end method
