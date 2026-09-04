.class Lcom/metamoji/sd/SdDriveDocumentManager$15$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$15;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

.field final synthetic val$tagCheckMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$15;Ljava/util/HashMap;)V
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

    .line 3393
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->val$tagCheckMap:Ljava/util/HashMap;

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

    .line 3393
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3395
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3397
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 3402
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3403
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3405
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$tagNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3407
    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->val$tagCheckMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3408
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->TagNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 3412
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 3415
    :cond_2
    sget-object v6, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3416
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3420
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 3421
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v4, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_1

    .line 3424
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3425
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v5, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v5, v0, v3}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v5, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_2

    .line 3428
    :cond_5
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 3429
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    .line 3431
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v1

    .line 3398
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$15;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1
.end method
