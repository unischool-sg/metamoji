.class Lcom/metamoji/ui/UiDungeonMapView$1;
.super Ljava/util/TimerTask;
.source "UiDungeonMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/UiDungeonMapView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/UiDungeonMapView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/UiDungeonMapView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/metamoji/ui/UiDungeonMapView$1;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView$1;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-static {v0}, Lcom/metamoji/ui/UiDungeonMapView;->-$$Nest$fget_closing(Lcom/metamoji/ui/UiDungeonMapView;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/metamoji/ui/UiDungeonMapView$1;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-static {v2}, Lcom/metamoji/ui/UiDungeonMapView;->-$$Nest$fget_lastActionTime(Lcom/metamoji/ui/UiDungeonMapView;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView$1;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-static {v0}, Lcom/metamoji/ui/UiDungeonMapView;->-$$Nest$fget_timer(Lcom/metamoji/ui/UiDungeonMapView;)Lcom/metamoji/cm/UiTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView$1;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-static {v0}, Lcom/metamoji/ui/UiDungeonMapView;->-$$Nest$fget_timer(Lcom/metamoji/ui/UiDungeonMapView;)Lcom/metamoji/cm/UiTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 350
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView$1;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/ui/UiDungeonMapView;->-$$Nest$fput_timer(Lcom/metamoji/ui/UiDungeonMapView;Lcom/metamoji/cm/UiTimer;)V

    .line 351
    iget-object v0, p0, Lcom/metamoji/ui/UiDungeonMapView$1;->this$0:Lcom/metamoji/ui/UiDungeonMapView;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiDungeonMapView;->hide()V

    :cond_1
    return-void
.end method
