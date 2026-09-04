.class Lcom/metamoji/df/sprite/Viewport$TickRunnable;
.super Ljava/lang/Object;
.source "Viewport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TickRunnable"
.end annotation


# instance fields
.field loop:Z

.field viewport:Lcom/metamoji/df/sprite/Viewport;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;)V
    .locals 1

    .line 1680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1681
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/Viewport$TickRunnable;->loop:Z

    .line 1682
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$TickRunnable;->viewport:Lcom/metamoji/df/sprite/Viewport;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1687
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/Viewport$TickRunnable;->loop:Z

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$TickRunnable;->viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$mtick(Lcom/metamoji/df/sprite/Viewport;)V

    const-wide/16 v0, 0x21

    .line 1690
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1692
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1695
    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport$TickRunnable;->viewport:Lcom/metamoji/df/sprite/Viewport;

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1699
    iput-boolean v0, p0, Lcom/metamoji/df/sprite/Viewport$TickRunnable;->loop:Z

    return-void
.end method
