.class abstract Lcom/metamoji/mazec/ui/MazecView$Repeater;
.super Ljava/lang/Object;
.source "MazecView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/MazecView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Repeater"
.end annotation


# instance fields
.field private alive_:Z

.field private repeatInterval_:I

.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    const/16 v0, 0x32

    .line 218
    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/ui/MazecView$Repeater;-><init>(Lcom/metamoji/mazec/ui/MazecView;I)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$Repeater;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 215
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/MazecView$Repeater;->alive_:Z

    .line 222
    iput p2, p0, Lcom/metamoji/mazec/ui/MazecView$Repeater;->repeatInterval_:I

    return-void
.end method


# virtual methods
.method abstract exec()V
.end method

.method declared-synchronized isAlive()Z
    .locals 1

    monitor-enter p0

    .line 226
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/MazecView$Repeater;->alive_:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .line 234
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MazecView$Repeater;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MazecView$Repeater;->exec()V

    .line 236
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/mazec/ui/MazecView$Repeater;->repeatInterval_:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method declared-synchronized setAlive(Z)V
    .locals 0

    monitor-enter p0

    .line 230
    :try_start_0
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/MazecView$Repeater;->alive_:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MazecView$Repeater;->setAlive(Z)V

    .line 242
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
