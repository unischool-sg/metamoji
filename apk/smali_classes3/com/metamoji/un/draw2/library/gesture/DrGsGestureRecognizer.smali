.class public Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;
.super Ljava/lang/Object;
.source "DrGsGestureRecognizer.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TouchListener;
.implements Lcom/metamoji/df/sprite/LongPressListener;


# static fields
.field private static final TOUCH_INDEX:I = 0x1


# instance fields
.field private m_angleInRadians:F

.field private m_baseView:Lcom/metamoji/df/sprite/Stage;

.field private final m_displayBounds:Lcom/metamoji/cm/RectEx;

.field private m_listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_longPressDuration:D

.field private m_longPressMovement:F

.field private final m_matrixFromViewportToCanvas:Landroid/graphics/Matrix;

.field private m_penIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_permittedFingerCount:I

.field private m_recognizeMouse:Z

.field private m_restrictPenToRegisteredId:Z

.field private m_startTime:J

.field private m_touching:Z

.field private final m_translate:Landroid/graphics/PointF;

.field private m_uid:I

.field private m_uncancelThreshold:F

.field private m_zoom:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_listeners:Ljava/util/HashSet;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_penIds:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_touching:Z

    .line 37
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_matrixFromViewportToCanvas:Landroid/graphics/Matrix;

    .line 44
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-direct {v1}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    .line 62
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_translate:Landroid/graphics/PointF;

    const/4 v1, 0x1

    .line 77
    iput v1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_permittedFingerCount:I

    .line 96
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_recognizeMouse:Z

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 105
    iput-wide v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_longPressDuration:D

    const/high16 v0, 0x41200000    # 10.0f

    .line 112
    iput v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_longPressMovement:F

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public angleInRadians()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_angleInRadians:F

    return v0
.end method

.method public baseView()Lcom/metamoji/df/sprite/Stage;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_baseView:Lcom/metamoji/df/sprite/Stage;

    return-object v0
.end method

.method public cancelAll()V
    .locals 6

    .line 202
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_touching:Z

    if-eqz v0, :cond_1

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_startTime:J

    sub-long/2addr v0, v2

    .line 204
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_listeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;

    const/4 v4, 0x1

    .line 205
    iget v5, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_uid:I

    invoke-interface {v3, v4, v0, v1, v5}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;->fingerTouchCanceled(IJI)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_touching:Z

    :cond_1
    return-void
.end method

.method public displayBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method locationOfTouch(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;
    .locals 3

    .line 300
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getX()F

    move-result v0

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getY()F

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    .line 301
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_matrixFromViewportToCanvas:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 302
    new-instance p1, Landroid/graphics/PointF;

    aget v2, v1, v2

    aget v0, v1, v0

    invoke-direct {p1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public longPressCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->touchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public longPressDucration()D
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_longPressDuration:D

    return-wide v0
.end method

.method public longPressEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->touchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public longPressMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->touchMove(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public longPressMovement()F
    .locals 1

    .line 113
    iget v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_longPressMovement:F

    return v0
.end method

.method public longPressStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 10

    .line 270
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_touching:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_touching:Z

    .line 274
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_startTime:J

    .line 276
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->locationOfTouch(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object v5

    .line 277
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_listeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;

    .line 279
    iget v2, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_uid:I

    invoke-interface {v4, v5, v0, v1, v2}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;->fingerTouchBeganAtPoint(Landroid/graphics/PointF;ILjava/util/Calendar;I)V

    const-wide/16 v7, 0x0

    .line 280
    iget v9, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_uid:I

    const/4 v6, 0x1

    invoke-interface/range {v4 .. v9}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;->fingerTouchLongPressedAtPoint(Landroid/graphics/PointF;IJI)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public permittedFingerCount()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_permittedFingerCount:I

    return v0
.end method

.method public recognizeMouse()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_recognizeMouse:Z

    return v0
.end method

.method public registerPenId(Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_penIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAllEventListeners()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public removeEventListener(Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public restrictPenToRegisteredId()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_restrictPenToRegisteredId:Z

    return v0
.end method

.method public setBaseView(Lcom/metamoji/df/sprite/Stage;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_baseView:Lcom/metamoji/df/sprite/Stage;

    return-void
.end method

.method public setLongPressDuration(D)V
    .locals 0

    .line 107
    iput-wide p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_longPressDuration:D

    return-void
.end method

.method public setLongPressMovement(F)V
    .locals 2

    float-to-double v0, p1

    .line 114
    iput-wide v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_longPressDuration:D

    return-void
.end method

.method public setPermittedFingerCount(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 81
    const-string v0, "not suppoted"

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRecognizeMouse(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_recognizeMouse:Z

    return-void
.end method

.method public setRestrictPenToRegisteredId(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_restrictPenToRegisteredId:Z

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_uid:I

    return-void
.end method

.method public setUncancelThreshold(F)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_uncancelThreshold:F

    return-void
.end method

.method public touchCancel(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 5

    .line 257
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_touching:Z

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_startTime:J

    sub-long/2addr v0, v2

    .line 262
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_listeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;

    const/4 v3, 0x1

    .line 263
    iget v4, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_uid:I

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;->fingerTouchCanceled(IJI)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 265
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_touching:Z

    return-void
.end method

.method public touchCount()I
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_touching:Z

    return v0
.end method

.method public touchEnd(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 10

    .line 243
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_touching:Z

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_startTime:J

    sub-long v7, v0, v2

    .line 248
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->locationOfTouch(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object v5

    .line 249
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_listeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;

    const/4 v6, 0x1

    .line 250
    iget v9, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_uid:I

    invoke-interface/range {v4 .. v9}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;->fingerTouchEndedAtPoint(Landroid/graphics/PointF;IJI)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 252
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_touching:Z

    return-void
.end method

.method public touchMove(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 10

    .line 231
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_touching:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_startTime:J

    sub-long v7, v0, v2

    .line 235
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->locationOfTouch(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object v5

    .line 236
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_listeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;

    const/4 v6, 0x1

    .line 237
    iget v9, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_uid:I

    invoke-interface/range {v4 .. v9}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;->fingerTouchMovedAtPoint(Landroid/graphics/PointF;IJI)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public touchStart(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 5

    .line 216
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_touching:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_touching:Z

    .line 221
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_startTime:J

    .line 222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 223
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->locationOfTouch(Lcom/metamoji/df/sprite/TouchEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 224
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_listeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;

    .line 225
    iget v4, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_uid:I

    invoke-interface {v3, p1, v0, v1, v4}, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureEventListener;->fingerTouchBeganAtPoint(Landroid/graphics/PointF;ILjava/util/Calendar;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public translate()Landroid/graphics/PointF;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_translate:Landroid/graphics/PointF;

    return-object v0
.end method

.method public uid()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_uid:I

    return v0
.end method

.method public uncancelThreshold()F
    .locals 1

    .line 120
    iget v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_uncancelThreshold:F

    return v0
.end method

.method public unregisterPenId(Ljava/lang/String;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_penIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateCoordinates(Lcom/metamoji/cm/RectEx;FF)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 157
    iput p2, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_angleInRadians:F

    .line 158
    iput p3, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_zoom:F

    .line 159
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_translate:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_displayBounds:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 161
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_baseView:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainView()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 170
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 175
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 176
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    .line 177
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_matrixFromViewportToCanvas:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 179
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_matrixFromViewportToCanvas:Landroid/graphics/Matrix;

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float p2, v1

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 180
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_matrixFromViewportToCanvas:Landroid/graphics/Matrix;

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 183
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 184
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p2

    .line 185
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_matrixFromViewportToCanvas:Landroid/graphics/Matrix;

    neg-float p1, p1

    neg-float p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-void
.end method

.method public updateCoordinatesWithZoom(FLandroid/graphics/PointF;)V
    .locals 2

    .line 149
    iput p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_zoom:F

    .line 150
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_translate:Landroid/graphics/PointF;

    invoke-virtual {v0, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 151
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_matrixFromViewportToCanvas:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 152
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_matrixFromViewportToCanvas:Landroid/graphics/Matrix;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-void
.end method

.method public updateLongPressSettings()V
    .locals 5

    .line 316
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_baseView:Lcom/metamoji/df/sprite/Stage;

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 319
    iget-wide v1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_longPressDuration:D

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_longPressMovement:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    double-to-long v1, v1

    .line 321
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/sprite/Viewport;->setHoldThreshold(J)V

    .line 323
    iget v1, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_longPressMovement:F

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setDragThreshold(F)V

    return-void

    :cond_0
    const-wide/32 v1, 0x7fffffff

    .line 328
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/sprite/Viewport;->setHoldThreshold(J)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 331
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setDragThreshold(F)V

    :cond_1
    return-void
.end method

.method public zoom()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/metamoji/un/draw2/library/gesture/DrGsGestureRecognizer;->m_zoom:F

    return v0
.end method
