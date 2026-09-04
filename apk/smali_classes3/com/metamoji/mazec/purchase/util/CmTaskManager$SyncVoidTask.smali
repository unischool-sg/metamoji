.class Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncVoidTask;
.super Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;
.source "CmTaskManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/purchase/util/CmTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncVoidTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field _runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/metamoji/mazec/purchase/util/CmTaskManager;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/purchase/util/CmTaskManager;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncVoidTask;->this$0:Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    const/4 v0, 0x0

    .line 243
    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;-><init>(Lcom/metamoji/mazec/purchase/util/CmTaskManager;Ljava/util/concurrent/Callable;)V

    .line 244
    iput-object p0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncVoidTask;->_target:Ljava/util/concurrent/Callable;

    .line 245
    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncVoidTask;->_runnable:Ljava/lang/Runnable;

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

    .line 236
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncVoidTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncVoidTask;->_runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    return-object v0
.end method
