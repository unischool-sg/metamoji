.class public Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;
.super Landroid/graphics/PointF;
.source "TouchEvent.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TouchEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/TouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchEventWithHistory"
.end annotation


# instance fields
.field private history:I

.field private id:I

.field private motion:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-void
.end method


# virtual methods
.method public doubleTapped()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getButtonState()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->motion:Landroid/view/MotionEvent;

    iget v1, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->history:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPoint()Landroid/graphics/PointF;
    .locals 0

    return-object p0
.end method

.method public getPointer(I)Landroid/graphics/PointF;
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 191
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v1, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPointerCount()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public getPointerId(I)I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    return p1
.end method

.method public getX()F
    .locals 1

    .line 173
    iget v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 175
    iget v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->y:F

    return v0
.end method

.method public indexOf(I)I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    return p1
.end method

.method public isHistorical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{TouchEvent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v1, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 211
    invoke-virtual {p0, v2}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->indexOf(I)I

    move-result v3

    .line 212
    invoke-virtual {p0, v3}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->getPointer(I)Landroid/graphics/PointF;

    move-result-object v4

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " p"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Lcom/metamoji/df/sprite/Geometry;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Landroid/view/MotionEvent;I)Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;
    .locals 2

    .line 164
    iput-object p1, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->motion:Landroid/view/MotionEvent;

    .line 165
    iput p2, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->history:I

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->id:I

    .line 167
    invoke-virtual {p1, v0, p2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v1

    iput v1, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->x:F

    .line 168
    invoke-virtual {p1, v0, p2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result p1

    iput p1, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithHistory;->y:F

    return-object p0
.end method
