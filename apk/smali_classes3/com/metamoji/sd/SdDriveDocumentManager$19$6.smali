.class Lcom/metamoji/sd/SdDriveDocumentManager$19$6;
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

.field final synthetic val$moDocuments:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$19;Ljava/util/List;)V
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

    .line 4213
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;->val$moDocuments:Ljava/util/List;

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

    .line 4213
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4215
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;->val$moDocuments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/entities/SdMODocument;

    .line 4216
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4218
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 4219
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4223
    :cond_0
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$beforeName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/entities/SdMODocumentTag;

    if-eqz v3, :cond_2

    .line 4225
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$afterName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 4230
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    if-eqz v2, :cond_1

    .line 4227
    iget-object v2, v4, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_2

    .line 4230
    :cond_1
    iget-object v2, v4, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$afterName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/metamoji/sd/entities/SdMODocumentTag;->setName(Ljava/lang/String;)V

    .line 4231
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 4235
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 4236
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    .line 4237
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
