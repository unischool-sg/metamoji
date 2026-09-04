.class Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->fling(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1525
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1528
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1529
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget-object v2, v2, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v2}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_prevTime(Lcom/metamoji/ui/ScrollButtonManager;)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 1530
    iget-object v4, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget-object v4, v4, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v4, v0, v1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fput_prevTime(Lcom/metamoji/ui/ScrollButtonManager;J)V

    long-to-float v0, v2

    const v1, 0x3ba3d70a    # 0.005f

    mul-float/2addr v1, v0

    .line 1533
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget v2, v2, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_v:F

    cmpg-float v2, v2, v1

    .line 1541
    iget-object v3, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    if-gez v2, :cond_0

    .line 1534
    iget v0, v3, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_v:F

    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget v1, v1, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_v:F

    mul-float/2addr v0, v1

    const v1, 0x3c23d70a    # 0.01f

    div-float/2addr v0, v1

    .line 1535
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget-object v1, v1, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget v2, v2, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_vx:F

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget v3, v3, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_vy:F

    mul-float/2addr v3, v0

    invoke-static {v1, v2, v3}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mpan(Lcom/metamoji/ui/ScrollButtonManager;FF)V

    .line 1536
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    const/4 v1, 0x0

    iput v1, v0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_v:F

    .line 1537
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-static {v0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$fget_timerRepeat(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)Lcom/metamoji/cm/UiTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 1539
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget-object v0, v0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_viewport(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->startReboundScroll()Z

    return-void

    .line 1541
    :cond_0
    iget v2, v3, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_v:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    .line 1542
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget-object v0, v0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    iget-object v3, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget v3, v3, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_vx:F

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget v4, v4, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_vy:F

    mul-float/2addr v4, v2

    invoke-static {v0, v3, v4}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mpan(Lcom/metamoji/ui/ScrollButtonManager;FF)V

    .line 1543
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget v2, v0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_v:F

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_v:F

    return-void
.end method
