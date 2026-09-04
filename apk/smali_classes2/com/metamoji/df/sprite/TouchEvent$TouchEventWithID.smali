.class public Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;
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
    name = "TouchEventWithID"
.end annotation


# instance fields
.field private id:I

.field private motion:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
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

    .line 136
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPoint()Landroid/graphics/PointF;
    .locals 0

    return-object p0
.end method

.method public getPointer(I)Landroid/graphics/PointF;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 127
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v1, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->motion:Landroid/view/MotionEvent;

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

    .line 118
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public getPointerId(I)I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    return p1
.end method

.method public getX()F
    .locals 1

    .line 109
    iget v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->y:F

    return v0
.end method

.method public indexOf(I)I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    return p1
.end method

.method init(I)Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;
    .locals 0

    .line 94
    iput p1, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->id:I

    return-object p0
.end method

.method public isHistorical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{TouchEvent("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 147
    invoke-virtual {p0, v2}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->indexOf(I)I

    move-result v3

    .line 148
    invoke-virtual {p0, v3}, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->getPointer(I)Landroid/graphics/PointF;

    move-result-object v4

    .line 149
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

    .line 151
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;
    .locals 2

    .line 99
    iput-object p1, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->motion:Landroid/view/MotionEvent;

    .line 100
    iget v0, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->id:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->x:F

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/metamoji/df/sprite/TouchEvent$TouchEventWithID;->y:F

    :cond_0
    return-object p0
.end method
