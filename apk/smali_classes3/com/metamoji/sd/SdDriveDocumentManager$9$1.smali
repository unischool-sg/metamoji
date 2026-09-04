.class Lcom/metamoji/sd/SdDriveDocumentManager$9$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$9;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

.field final synthetic val$fromSubTags:Ljava/util/List;

.field final synthetic val$tagCheckMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$9;Ljava/util/List;Ljava/util/HashMap;)V
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

    .line 2362
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->val$fromSubTags:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->val$tagCheckMap:Ljava/util/HashMap;

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

    .line 2362
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->call()Ljava/lang/Void;

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

    .line 2365
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$docIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2366
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v1

    .line 2368
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2369
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

    .line 2370
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2373
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$toTags:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2374
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2377
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$fromTags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2378
    sget-object v7, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2382
    :cond_1
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->val$fromSubTags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2383
    sget-object v7, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2387
    :cond_2
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$toTags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2388
    sget-object v7, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2391
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2392
    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->val$tagCheckMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_5

    .line 2395
    :cond_4
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_5

    .line 2398
    :cond_5
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2402
    :cond_6
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 2403
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v4, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_6

    .line 2406
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2407
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v5, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v5, v1, v3}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v5, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_7

    .line 2410
    :cond_8
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 2411
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    .line 2413
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/metamoji/sd/SdUtils;->isOnBitFlag(Ljava/lang/Integer;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2415
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/metamoji/sd/SdUtils;->putOffBitFlag(Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptions(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;I)V

    .line 2416
    invoke-static {v1}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    .line 2419
    :cond_9
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$9;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method
