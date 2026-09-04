.class Lcom/metamoji/sd/SdPrivateDriveManager$9;
.super Ljava/lang/Object;
.source "SdPrivateDriveManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdPrivateDriveManager;->doMergeDriveDocuments(Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/sd/SdBlock<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$destMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

.field final synthetic val$docIds:Ljava/util/List;

.field final synthetic val$hasErr:Lcom/metamoji/sd/SdValue;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

.field final synthetic val$nowDate:Ljava/util/Date;

.field final synthetic val$srcChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$srcMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

.field final synthetic val$srcMoMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdPrivateDriveManager;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/List;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
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

    .line 994
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$docIds:Ljava/util/List;

    iput-object p5, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$srcMoMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p6, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$srcChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p7, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$srcMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    iput-object p8, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$hasErr:Lcom/metamoji/sd/SdValue;

    iput-object p9, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$destMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    iput-object p10, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$nowDate:Ljava/util/Date;

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

    .line 994
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManager$9;->call()Ljava/lang/Void;

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

    .line 998
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 999
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

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

    .line 1000
    sget-object v3, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1003
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$docIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1004
    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v5, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;

    invoke-direct {v5, p0, v2, v0}, Lcom/metamoji/sd/SdPrivateDriveManager$9$1;-><init>(Lcom/metamoji/sd/SdPrivateDriveManager$9;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 1094
    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$hasErr:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v4}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 1099
    :cond_1
    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$9;->val$srcMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    invoke-virtual {v4, v2, v3, v3}, Lcom/metamoji/sd/SdPrivateDriveDocumentManager;->deleteDocument(Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-object v3
.end method
