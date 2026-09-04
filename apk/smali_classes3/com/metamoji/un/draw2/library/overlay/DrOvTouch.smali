.class public Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;
.super Ljava/lang/Object;
.source "DrOvTouch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;,
        Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;
    }
.end annotation


# instance fields
.field private m_device:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

.field private m_isIgnored:Z

.field private m_longPressed:Z

.field private m_maxDistanceFromStartPoint:F

.field private m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

.field private final m_point:Landroid/graphics/PointF;

.field private m_startDateTime:Ljava/util/Calendar;

.field private final m_startPoint:Landroid/graphics/PointF;

.field private m_targetSelectionId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_timeOffset:J

.field private m_type:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

.field private m_uid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_point:Landroid/graphics/PointF;

    .line 73
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_startPoint:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTargetSelectionId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void
.end method

.method public device()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_device:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    return-object v0
.end method

.method public isIgnored()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_isIgnored:Z

    return v0
.end method

.method public longPressed()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_longPressed:Z

    return v0
.end method

.method public maxDistanceFromStartPoint()F
    .locals 1

    .line 96
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_maxDistanceFromStartPoint:F

    return v0
.end method

.method public overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    return-object v0
.end method

.method public point()Landroid/graphics/PointF;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_point:Landroid/graphics/PointF;

    return-object v0
.end method

.method public setDevice(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_device:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    return-void
.end method

.method public setIsIgnored(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_isIgnored:Z

    return-void
.end method

.method public setLongPressed(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_longPressed:Z

    return-void
.end method

.method public setMaxDistanceFromStartPoint(F)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_maxDistanceFromStartPoint:F

    return-void
.end method

.method public setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    return-void
.end method

.method public setPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_point:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setStartDateTime(Ljava/util/Calendar;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_startDateTime:Ljava/util/Calendar;

    return-void
.end method

.method public setStartPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_startPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setTargetSelectionId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_targetSelectionId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method public setTimeOffset(J)V
    .locals 0

    .line 83
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_timeOffset:J

    return-void
.end method

.method public setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_type:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_uid:I

    return-void
.end method

.method public startDateTime()Ljava/util/Calendar;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_startDateTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public startPoint()Landroid/graphics/PointF;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_startPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public targetSelectionId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_targetSelectionId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method public timeOffset()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_timeOffset:J

    return-wide v0
.end method

.method public type()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_type:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    return-object v0
.end method

.method public uid()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->m_uid:I

    return v0
.end method
