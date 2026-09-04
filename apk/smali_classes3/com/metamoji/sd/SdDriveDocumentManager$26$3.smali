.class Lcom/metamoji/sd/SdDriveDocumentManager$26$3;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$26;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

.field final synthetic val$moDocuments:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$26;Ljava/util/List;)V
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

    .line 5924
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$3;->val$moDocuments:Ljava/util/List;

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

    .line 5924
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$26$3;->call()Ljava/lang/Void;

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

    .line 5927
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$3;->val$moDocuments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/entities/SdMODocument;

    .line 5928
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5930
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 5931
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5936
    :cond_1
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$toParentTags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5937
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 5939
    sget-object v4, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5940
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v7, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v7, v1, v5}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v7, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    move v4, v6

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_0

    .line 5945
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    .line 5946
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    .line 5947
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method
