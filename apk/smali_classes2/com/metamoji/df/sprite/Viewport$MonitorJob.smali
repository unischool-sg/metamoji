.class Lcom/metamoji/df/sprite/Viewport$MonitorJob;
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
    name = "MonitorJob"
.end annotation


# instance fields
.field private viewport:Lcom/metamoji/df/sprite/Viewport;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;)V
    .locals 0

    .line 1851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$MonitorJob;->viewport:Lcom/metamoji/df/sprite/Viewport;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1854
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$MonitorJob;->viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-static {v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$mmonitorLoop(Lcom/metamoji/df/sprite/Viewport;)V

    const/4 v0, 0x0

    .line 1855
    iput-object v0, p0, Lcom/metamoji/df/sprite/Viewport$MonitorJob;->viewport:Lcom/metamoji/df/sprite/Viewport;

    return-void
.end method
