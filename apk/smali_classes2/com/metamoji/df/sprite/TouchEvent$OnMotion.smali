.class public Lcom/metamoji/df/sprite/TouchEvent$OnMotion;
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
    name = "OnMotion"
.end annotation


# instance fields
.field doubleTapped:Z

.field private motion:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    return-void
.end method


# virtual methods
.method public doubleTapped()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->doubleTapped:Z

    return v0
.end method

.method public getButtonState()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->motion:Landroid/view/MotionEvent;

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

    .line 56
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 58
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v1, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->motion:Landroid/view/MotionEvent;

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

    .line 49
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public getPointerId(I)I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    return p1
.end method

.method public getX()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->y:F

    return v0
.end method

.method public indexOf(I)I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    return p1
.end method

.method init(Landroid/view/MotionEvent;)Lcom/metamoji/df/sprite/TouchEvent$OnMotion;
    .locals 1

    .line 33
    iput-object p1, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->motion:Landroid/view/MotionEvent;

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->x:F

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->y:F

    return-object p0
.end method

.method public isHistorical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{TouchEvent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->motion:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 78
    invoke-virtual {p0, v2}, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->indexOf(I)I

    move-result v3

    .line 79
    invoke-virtual {p0, v3}, Lcom/metamoji/df/sprite/TouchEvent$OnMotion;->getPointer(I)Landroid/graphics/PointF;

    move-result-object v4

    .line 80
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

    .line 82
    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
