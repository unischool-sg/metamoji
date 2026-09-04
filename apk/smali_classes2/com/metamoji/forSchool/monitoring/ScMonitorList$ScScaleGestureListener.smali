.class Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ScMonitorList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/monitoring/ScMonitorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScScaleGestureListener"
.end annotation


# instance fields
.field m_gridView:Landroid/widget/GridView;

.field m_scaleFactor:F

.field final synthetic this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;


# direct methods
.method public constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Landroid/widget/GridView;)V
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

    .line 304
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 302
    iput p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_scaleFactor:F

    .line 305
    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_gridView:Landroid/widget/GridView;

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 310
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    const v2, 0x3f8020c5    # 1.001f

    if-gez v1, :cond_0

    .line 312
    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_scaleFactor:F

    div-float/2addr p1, v2

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_scaleFactor:F

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 314
    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_scaleFactor:F

    mul-float/2addr p1, v2

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_scaleFactor:F

    .line 317
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_scaleFactor:F

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handlePinchGesture(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 324
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_scaleFactor:F

    .line 325
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    .line 326
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 327
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_gridView:Landroid/widget/GridView;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result p1

    .line 329
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handlePinchGestureBegan(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    .line 336
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    const v2, 0x3f8020c5    # 1.001f

    if-gez v1, :cond_0

    .line 338
    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_scaleFactor:F

    div-float/2addr p1, v2

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_scaleFactor:F

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 340
    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_scaleFactor:F

    mul-float/2addr p1, v2

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_scaleFactor:F

    .line 342
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->this$0:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScScaleGestureListener;->m_scaleFactor:F

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->handlePinchGestureEnd(F)V

    return-void
.end method
