.class Lcom/metamoji/sd/SdDriveDocumentManager$20$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$20;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$20;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$20;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4343
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$20$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$20;

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

    .line 4343
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$20$1;->call()Ljava/lang/Void;

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

    .line 4345
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$20$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$20;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$20$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$20;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTagOrder;

    move-result-object v0

    .line 4348
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$20$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$20;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$20$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$20;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 4349
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$20$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$20;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$20;->val$tagNames:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 4351
    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setTagOrder(Ljava/lang/String;)V

    .line 4352
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$20$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$20;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$20;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdate(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 4353
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 4354
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$20$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$20;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$20$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$20;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTagOrder(Lcom/metamoji/sd/entities/SdMOTagOrder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    const/4 v0, 0x0

    return-object v0
.end method
