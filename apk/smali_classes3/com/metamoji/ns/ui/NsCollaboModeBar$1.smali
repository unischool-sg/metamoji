.class Lcom/metamoji/ns/ui/NsCollaboModeBar$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NsCollaboModeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboModeBar;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 p4, 0x0

    .line 197
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->SEPARATOR_SWIPE_MAX_OFF_PATH:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return p4

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->SEPARATOR_SWIPE_MIN_DISTANCE:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->SEPARATOR_SWIPE_THRESHOLD_VELOCITY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 204
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->handleLeftSwipeGesture()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    sget p1, Lcom/metamoji/ui/cabinet/CabinetDef;->SEPARATOR_SWIPE_MIN_DISTANCE:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/metamoji/ui/cabinet/CabinetDef;->SEPARATOR_SWIPE_THRESHOLD_VELOCITY:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 208
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->handleRightSwipeGesture()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return p4
.end method
