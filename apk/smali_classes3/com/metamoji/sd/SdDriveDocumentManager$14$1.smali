.class Lcom/metamoji/sd/SdDriveDocumentManager$14$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$14;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$14;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$14;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3171
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$14$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$14;

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

    .line 3171
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$14$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3174
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$14$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$14;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$14;->val$idList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3175
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$14$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$14;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$14;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$14$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$14;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$14;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3178
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 3183
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3185
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$14$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$14;

    iget-boolean v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$14;->val$displayPriority:Z

    if-eqz v3, :cond_1

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x2

    if-lez v3, :cond_2

    add-int/lit8 v2, v2, -0x2

    .line 3196
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$14$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$14;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$14;->val$nowDate:Ljava/util/Date;

    invoke-static {v3, v1, v2}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptions(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;I)V

    .line 3198
    invoke-static {v1}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    .line 3199
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$14$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$14;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$14;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$14$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$14;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$14;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    .line 3179
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$14$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$14;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$14;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    :cond_4
    return-object v2
.end method
