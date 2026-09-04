.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess;->undoChangedNoteWithDocId(Ljava/lang/String;)Z
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
.field final synthetic this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$metaHolder:Lcom/metamoji/sd/SdValue;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/lang/String;Lcom/metamoji/sd/SdValue;)V
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

    .line 666
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$docId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$metaHolder:Lcom/metamoji/sd/SdValue;

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

    .line 666
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->call()Ljava/lang/Void;

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

    .line 669
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;

    invoke-direct {v1, p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
