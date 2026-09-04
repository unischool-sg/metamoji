.class Lcom/metamoji/sd/SdDriveDocumentManager$18$3;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$18;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

.field final synthetic val$moDocuments:Ljava/util/List;

.field final synthetic val$tagName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$18;Ljava/util/List;Ljava/lang/String;)V
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

    .line 3809
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$3;->val$moDocuments:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$3;->val$tagName:Ljava/lang/String;

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

    .line 3809
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$18$3;->call()Ljava/lang/Void;

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

    .line 3811
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$3;->val$moDocuments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/entities/SdMODocument;

    .line 3812
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 3813
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$3;->val$tagName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3814
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3818
    :cond_1
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 3819
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
