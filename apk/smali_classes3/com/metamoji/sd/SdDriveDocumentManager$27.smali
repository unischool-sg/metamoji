.class Lcom/metamoji/sd/SdDriveDocumentManager$27;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->saveDocumentThumbnailWithData([BLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z
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
.field final synthetic this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$contentsRevision:Ljava/lang/String;

.field final synthetic val$contentsUpdate:Ljava/util/Date;

.field final synthetic val$data:[B

.field final synthetic val$docId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6340
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$docId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$contentsRevision:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$contentsUpdate:Ljava/util/Date;

    iput-object p6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$data:[B

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

    .line 6340
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$27;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6342
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v1, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;

    invoke-direct {v1, p0}, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$27;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
