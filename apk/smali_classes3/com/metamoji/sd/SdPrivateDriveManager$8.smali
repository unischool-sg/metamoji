.class Lcom/metamoji/sd/SdPrivateDriveManager$8;
.super Ljava/lang/Object;
.source "SdPrivateDriveManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdPrivateDriveManager;->doMergeDriveFolders(Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;)Z
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

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

.field final synthetic val$nowDate:Ljava/util/Date;

.field final synthetic val$srcMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdPrivateDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdPrivateDriveDocumentManager;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 834
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8;->val$srcMgr:Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    iput-object p5, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8;->val$nowDate:Ljava/util/Date;

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

    .line 834
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManager$8;->call()Ljava/lang/Void;

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

    .line 836
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$8;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v1, Lcom/metamoji/sd/SdPrivateDriveManager$8$1;

    invoke-direct {v1, p0}, Lcom/metamoji/sd/SdPrivateDriveManager$8$1;-><init>(Lcom/metamoji/sd/SdPrivateDriveManager$8;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
