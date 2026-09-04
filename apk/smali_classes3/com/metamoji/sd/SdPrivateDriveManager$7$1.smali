.class Lcom/metamoji/sd/SdPrivateDriveManager$7$1;
.super Ljava/lang/Object;
.source "SdPrivateDriveManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdPrivateDriveManager$7;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdPrivateDriveManager$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 741
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

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

    .line 741
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagCountWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)J

    move-result-wide v0

    .line 749
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v2

    .line 751
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 752
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMOTag;

    .line 753
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 756
    :cond_0
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v4, v4, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTagOrder;

    move-result-object v2

    .line 757
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getTagOrder()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 758
    iget-object v5, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v5, v5, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v6, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v6, v6, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v5

    .line 760
    iget-object v6, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v6, v6, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$tagList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    .line 761
    invoke-virtual {v8}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/sd/entities/SdMOTag;

    if-nez v10, :cond_3

    const-wide/16 v9, 0x1

    add-long/2addr v9, v0

    const-wide/16 v11, 0x2710

    cmp-long v11, v9, v11

    if-lez v11, :cond_2

    goto :goto_1

    .line 770
    :cond_2
    new-instance v0, Lcom/metamoji/sd/entities/SdMOTag;

    invoke-direct {v0}, Lcom/metamoji/sd/entities/SdMOTag;-><init>()V

    .line 772
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v8}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getColor()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v1, v0, v11, v12}, Lcom/metamoji/sd/entities/SdMOUtils;->initializeMOTag(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMOTag;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 773
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v11, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v11, v11, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v11}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createTag(Lcom/metamoji/sd/entities/SdMOTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 774
    invoke-virtual {v8}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 775
    invoke-virtual {v8}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-wide v0, v9

    goto :goto_1

    .line 779
    :cond_3
    invoke-virtual {v10}, Lcom/metamoji/sd/entities/SdMOTag;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_1

    .line 781
    invoke-virtual {v8}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getColor()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/metamoji/sd/entities/SdMOTag;->setColor(Ljava/lang/Integer;)V

    .line 782
    iget-object v8, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v8, v8, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v10, v8}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdate(Ljava/util/Date;)V

    .line 783
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 784
    iget-object v8, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v8, v8, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v9, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v9, v9, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v8, v10, v9}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTag(Lcom/metamoji/sd/entities/SdMOTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_1

    .line 790
    :cond_4
    invoke-static {v5, v4}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 791
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setTagOrder(Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdate(Ljava/util/Date;)V

    .line 794
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 795
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$7$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$7;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManager$7;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTagOrder(Lcom/metamoji/sd/entities/SdMOTagOrder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    const/4 v0, 0x0

    return-object v0
.end method
