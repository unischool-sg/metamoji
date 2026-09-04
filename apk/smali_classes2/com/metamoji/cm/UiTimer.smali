.class public Lcom/metamoji/cm/UiTimer;
.super Ljava/lang/Object;
.source "UiTimer.java"


# instance fields
.field private _handler:Landroid/os/Handler;

.field private _job:Ljava/lang/Runnable;

.field private _period:J


# direct methods
.method static bridge synthetic -$$Nest$fget_handler(Lcom/metamoji/cm/UiTimer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/cm/UiTimer;->_handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_job(Lcom/metamoji/cm/UiTimer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/cm/UiTimer;->_job:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_period(Lcom/metamoji/cm/UiTimer;)J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/cm/UiTimer;->_period:J

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cm/UiTimer;->_handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/metamoji/cm/UiTimer;->_job:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/metamoji/cm/UiTimer;->_job:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/metamoji/cm/UiTimer;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/metamoji/cm/UiTimer;->_job:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public getPeriod()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/metamoji/cm/UiTimer;->_period:J

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/cm/UiTimer;->_job:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;J)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/metamoji/cm/UiTimer;->_job:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/metamoji/cm/UiTimer;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/metamoji/cm/UiTimer;->_job:Ljava/lang/Runnable;

    .line 29
    iget-object v0, p0, Lcom/metamoji/cm/UiTimer;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JJ)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/metamoji/cm/UiTimer;->_job:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/metamoji/cm/UiTimer;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    :cond_0
    iput-wide p4, p0, Lcom/metamoji/cm/UiTimer;->_period:J

    .line 37
    new-instance p4, Lcom/metamoji/cm/UiTimer$1;

    invoke-direct {p4, p0, p1}, Lcom/metamoji/cm/UiTimer$1;-><init>(Lcom/metamoji/cm/UiTimer;Ljava/lang/Runnable;)V

    iput-object p4, p0, Lcom/metamoji/cm/UiTimer;->_job:Ljava/lang/Runnable;

    .line 44
    iget-object p1, p0, Lcom/metamoji/cm/UiTimer;->_handler:Landroid/os/Handler;

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setPeriod(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/metamoji/cm/UiTimer;->_period:J

    return-void
.end method
