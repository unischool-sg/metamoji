.class Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;
.super Ljava/lang/Object;
.source "DmDCSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->checkAndRunAutoSync(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$isStart:Z


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;ZLjava/lang/String;)V
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

    .line 648
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    iput-boolean p2, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;->val$isStart:Z

    iput-object p3, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;->val$driveId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 656
    :cond_0
    new-instance v0, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;

    new-instance v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10$1;

    invoke-direct {v1, p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10$1;-><init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;)V

    invoke-direct {v0, v1}, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;-><init>(Ljava/util/concurrent/Callable;)V

    .line 675
    invoke-virtual {v0}, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;->forceLoad()V

    return-void
.end method
