.class Lcom/metamoji/cm/CmTaskManager$1;
.super Ljava/lang/Object;
.source "CmTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/CmTaskManager;->onIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cm/CmTaskManager;

.field final synthetic val$since:J


# direct methods
.method constructor <init>(Lcom/metamoji/cm/CmTaskManager;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lcom/metamoji/cm/CmTaskManager$1;->this$0:Lcom/metamoji/cm/CmTaskManager;

    iput-wide p2, p0, Lcom/metamoji/cm/CmTaskManager$1;->val$since:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/cm/CmTaskManager$1;->val$since:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 313
    const-string v0, "maybe busy... skip idle process."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    return-void

    .line 317
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager$1;->this$0:Lcom/metamoji/cm/CmTaskManager;

    new-instance v1, Lcom/metamoji/cm/CmTaskManager$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/cm/CmTaskManager$1$1;-><init>(Lcom/metamoji/cm/CmTaskManager$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 334
    const-string v1, "onIdle cannot executed."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
