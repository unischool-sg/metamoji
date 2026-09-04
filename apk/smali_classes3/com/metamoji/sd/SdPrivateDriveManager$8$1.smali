.class Lcom/metamoji/sd/SdPrivateDriveManager$8$1;
.super Ljava/lang/Object;
.source "SdPrivateDriveManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdPrivateDriveManager$8;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdPrivateDriveManager$8;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdPrivateDriveManager$8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 836
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$8;

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

    .line 836
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManager$8$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 839
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 840
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$8;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManager$8;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$8;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$8;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 841
    sget-object v3, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 845
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$8;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManager$8;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$8;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$8;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderCountWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)J

    move-result-wide v1

    .line 847
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 848
    const-string/jumbo v3, "tagCheckMap"

    invoke-virtual {v8, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const-string v0, "allcnt"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$8;

    iget-object v3, v0, Lcom/metamoji/sd/SdPrivateDriveManager$8;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$8;

    iget-object v5, v0, Lcom/metamoji/sd/SdPrivateDriveManager$8;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$8;

    iget-object v6, v0, Lcom/metamoji/sd/SdPrivateDriveManager$8;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$8;

    iget-object v7, v0, Lcom/metamoji/sd/SdPrivateDriveManager$8;->val$srcMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$8;

    iget-object v9, v0, Lcom/metamoji/sd/SdPrivateDriveManager$8;->val$nowDate:Ljava/util/Date;

    const/4 v4, 0x0

    invoke-static/range {v3 .. v9}, Lcom/metamoji/sd/SdPrivateDriveManager;->-$$Nest$mdoMergeDriveFolderRecursive(Lcom/metamoji/sd/SdPrivateDriveManager;Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Ljava/util/HashMap;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 853
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mearge folder recursive fail."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
