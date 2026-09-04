.class Lcom/metamoji/cm/CmTaskManager$2;
.super Ljava/lang/Object;
.source "CmTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/CmTaskManager;->runModalOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cm/CmTaskManager;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$mi:Lcom/metamoji/cm/CmTaskManager$ModalInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/cm/CmTaskManager$ModalInfo;Ljava/util/concurrent/Callable;)V
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

    .line 700
    iput-object p1, p0, Lcom/metamoji/cm/CmTaskManager$2;->this$0:Lcom/metamoji/cm/CmTaskManager;

    iput-object p2, p0, Lcom/metamoji/cm/CmTaskManager$2;->val$mi:Lcom/metamoji/cm/CmTaskManager$ModalInfo;

    iput-object p3, p0, Lcom/metamoji/cm/CmTaskManager$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager$2;->val$mi:Lcom/metamoji/cm/CmTaskManager$ModalInfo;

    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/cm/CmTaskManager$ModalInfo;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    :goto_0
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager$2;->val$mi:Lcom/metamoji/cm/CmTaskManager$ModalInfo;

    iget-object v0, v0, Lcom/metamoji/cm/CmTaskManager$ModalInfo;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    .line 706
    :try_start_1
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 707
    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$2;->val$mi:Lcom/metamoji/cm/CmTaskManager$ModalInfo;

    iput-object v0, v1, Lcom/metamoji/cm/CmTaskManager$ModalInfo;->e:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 709
    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$2;->val$mi:Lcom/metamoji/cm/CmTaskManager$ModalInfo;

    iget-object v1, v1, Lcom/metamoji/cm/CmTaskManager$ModalInfo;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 710
    throw v0
.end method
