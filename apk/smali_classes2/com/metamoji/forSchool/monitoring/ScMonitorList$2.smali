.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;
.super Ljava/lang/Object;
.source "ScMonitorList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 946
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 949
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 952
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_heldMonitorView(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 953
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 974
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 975
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 976
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v1, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mdragEnd(Lcom/metamoji/forSchool/monitoring/ScMonitorList;FF)V

    return v0

    .line 955
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 956
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 958
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewForLongPress:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longPressX:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_dragragThreshold(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget v1, v1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_longPressY:F

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_dragragThreshold(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 959
    :cond_2
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->longPressEnd()V

    .line 961
    :cond_3
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v1, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mdragMoved(Lcom/metamoji/forSchool/monitoring/ScMonitorList;FF)V

    return v0

    .line 965
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 966
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 967
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v1, p1, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mdragEnd(Lcom/metamoji/forSchool/monitoring/ScMonitorList;FF)V

    .line 968
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget-object p1, p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->m_heldMonitorViewForLongPress:Lcom/metamoji/forSchool/monitoring/ScMonitorView;

    if-eqz p1, :cond_5

    .line 969
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->longPressEnd()V

    :cond_5
    return v0

    :cond_6
    if-le p1, v0, :cond_7

    .line 982
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->longPressEnd()V

    .line 983
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 984
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 985
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v2, p1, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$mdragEnd(Lcom/metamoji/forSchool/monitoring/ScMonitorList;FF)V

    .line 988
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_scaleGestureDetector(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    .line 989
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_scaleGestureDetector(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/view/ScaleGestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-nez p1, :cond_9

    .line 990
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$2;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-static {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->-$$Nest$fgetm_scaleGestureDetector(Lcom/metamoji/forSchool/monitoring/ScMonitorList;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    return p1

    :cond_9
    :goto_1
    return v0
.end method
