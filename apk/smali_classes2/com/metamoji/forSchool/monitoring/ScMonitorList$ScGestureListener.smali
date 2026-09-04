.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScMonitorList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScGestureListener"
.end annotation


# instance fields
.field m_monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;


# direct methods
.method public constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V
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

    .line 348
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 349
    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->m_monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->m_monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 426
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->m_monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v1, v2, v0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorLongLongPress(Lcom/metamoji/forSchool/monitoring/ScMonitorView;FF)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 359
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->m_monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorDoubleTap(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    .line 396
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->m_monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 399
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewForLongPress:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    if-nez v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->m_monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iput-object v2, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewForLongPress:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    .line 402
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitors(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorGridView;->getNumColumns()I

    move-result v1

    .line 403
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_itemWidth(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_zoom(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 404
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_itemHeight(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)D

    move-result-wide v3

    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_zoom(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 405
    iget-object v4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v4}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_monitorViewArrayAdapter(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->m_monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v4, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    .line 406
    rem-int v5, v4, v1

    mul-int/2addr v5, v2

    .line 407
    div-int/2addr v4, v1

    mul-int/2addr v4, v3

    .line 409
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    int-to-float v2, v5

    add-float/2addr v2, v0

    iput v2, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longPressX:F

    .line 410
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    int-to-float v1, v4

    add-float/2addr v1, p1

    iput v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longPressY:F

    .line 413
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object v0, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewForLongPress:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longPressX:F

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget v2, v2, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longPressY:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorLongPress(Lcom/metamoji/forSchool/monitoring/ScMonitorView;FF)V

    .line 416
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object p1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longLongPressHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object v0, v0, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longLongPressReceiver:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-wide v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->LONG_LONG_PRESS_TIME:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->m_monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 369
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 373
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->m_monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {v1, v3, v0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorLongLongPress(Lcom/metamoji/forSchool/monitoring/ScMonitorView;FF)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 375
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->m_monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorSingleTap(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScGestureListener;->m_monitorView:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->monitorSingleTap(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V

    :cond_2
    :goto_0
    return v2

    :cond_3
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
