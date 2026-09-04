.class Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;
.super Ljava/lang/Object;
.source "ScrollButtonManager.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->init(ILcom/metamoji/noteanytime/EditorActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

.field x1:F

.field y1:F


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

    .line 1214
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1217
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$fput_touchState(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;I)V

    .line 1218
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$fget_timerRepeat(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)Lcom/metamoji/cm/UiTimer;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2$1;-><init>(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1292
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-static {p1, p3, p4}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$mfling(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;FF)V

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1275
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$fget_touchState(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 1279
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$fput_touchState(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;I)V

    .line 1280
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget-object p1, p1, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fput_prevTime(Lcom/metamoji/ui/ScrollButtonManager;J)V

    .line 1281
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$fget_timerRepeat(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)Lcom/metamoji/cm/UiTimer;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2$2;-><init>(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;)V

    const-wide/16 v2, 0x21

    const-wide/16 v4, 0x21

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1243
    iget-object p3, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-static {p3}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$fget_touchState(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)I

    move-result p3

    const/4 p4, 0x4

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    return v0

    .line 1246
    :cond_0
    iget-object p3, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-static {p3}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$fget_touchState(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)I

    move-result p3

    const/4 p4, 0x1

    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    .line 1248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 1249
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 1250
    iget-object p3, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget-object p3, p3, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->x1:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->y1:F

    sub-float v1, p2, v1

    invoke-static {p3, v0, v1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mpan(Lcom/metamoji/ui/ScrollButtonManager;FF)V

    .line 1251
    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->x1:F

    .line 1252
    iput p2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->y1:F

    return p4

    .line 1255
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->x1:F

    .line 1256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->y1:F

    .line 1257
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 1258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    const/high16 p3, 0x41200000    # 10.0f

    .line 1259
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p3

    .line 1260
    iget v2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->x1:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, p3

    if-gez v2, :cond_3

    iget v2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->y1:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float p3, v2, p3

    if-ltz p3, :cond_2

    goto :goto_0

    :cond_2
    return v0

    .line 1262
    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-static {p3}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$fget_timerRepeat(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)Lcom/metamoji/cm/UiTimer;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 1263
    iget-object p3, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    invoke-static {p3, v1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->-$$Nest$fput_touchState(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;I)V

    .line 1264
    iget-object p3, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->this$1:Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;

    iget-object p3, p3, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->x1:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->y1:F

    sub-float v1, p2, v1

    invoke-static {p3, v0, v1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mpan(Lcom/metamoji/ui/ScrollButtonManager;FF)V

    .line 1265
    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->x1:F

    .line 1266
    iput p2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;->y1:F

    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
