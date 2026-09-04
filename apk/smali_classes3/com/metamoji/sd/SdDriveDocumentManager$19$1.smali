.class Lcom/metamoji/sd/SdDriveDocumentManager$19$1;
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


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$19;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3949
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

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

    .line 3949
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->call()Ljava/lang/Void;

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

    .line 3952
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$afterName:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTag;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3954
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOTag;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3955
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 3961
    new-instance v0, Lcom/metamoji/sd/entities/SdMOTag;

    invoke-direct {v0}, Lcom/metamoji/sd/entities/SdMOTag;-><init>()V

    .line 3964
    :cond_1
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$afterName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOTag;->setName(Ljava/lang/String;)V

    .line 3965
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$color:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOTag;->setColor(Ljava/lang/Integer;)V

    .line 3966
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdate(Ljava/util/Date;)V

    .line 3967
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 3968
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOTag;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 3970
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createOrUpdateTag(Lcom/metamoji/sd/entities/SdMOTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3973
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTagOrder;

    move-result-object v0

    .line 3974
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getTagOrder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 3975
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$beforeName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3981
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    const/4 v3, 0x0

    .line 3979
    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$afterName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 3981
    :cond_2
    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$afterName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3984
    :goto_0
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$19;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v3

    .line 3987
    invoke-static {v3, v2}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 3989
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setTagOrder(Ljava/lang/String;)V

    .line 3990
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdate(Ljava/util/Date;)V

    .line 3991
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 3993
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTagOrder(Lcom/metamoji/sd/entities/SdMOTagOrder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v1
.end method
