.class Lcom/metamoji/cm/CmTaskManager$4;
.super Ljava/lang/Object;
.source "CmTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/CmTaskManager;->runModalUntilFinishedOnBackground(Lcom/metamoji/cm/CmTaskManager$IModal;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cm/CmTaskManager;

.field final synthetic val$mi:Lcom/metamoji/cm/CmTaskManager$FinishModal;

.field final synthetic val$modal:Lcom/metamoji/cm/CmTaskManager$IModal;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/cm/CmTaskManager$FinishModal;Lcom/metamoji/cm/CmTaskManager$IModal;)V
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

    .line 794
    iput-object p1, p0, Lcom/metamoji/cm/CmTaskManager$4;->this$0:Lcom/metamoji/cm/CmTaskManager;

    iput-object p2, p0, Lcom/metamoji/cm/CmTaskManager$4;->val$mi:Lcom/metamoji/cm/CmTaskManager$FinishModal;

    iput-object p3, p0, Lcom/metamoji/cm/CmTaskManager$4;->val$modal:Lcom/metamoji/cm/CmTaskManager$IModal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager$4;->val$mi:Lcom/metamoji/cm/CmTaskManager$FinishModal;

    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$4;->val$modal:Lcom/metamoji/cm/CmTaskManager$IModal;

    invoke-interface {v1, v0}, Lcom/metamoji/cm/CmTaskManager$IModal;->run(Lcom/metamoji/cm/CmTaskManager$IFinish;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/cm/CmTaskManager$FinishModal;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 800
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 801
    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$4;->val$mi:Lcom/metamoji/cm/CmTaskManager$FinishModal;

    iput-object v0, v1, Lcom/metamoji/cm/CmTaskManager$FinishModal;->e:Ljava/lang/Throwable;

    return-void
.end method
