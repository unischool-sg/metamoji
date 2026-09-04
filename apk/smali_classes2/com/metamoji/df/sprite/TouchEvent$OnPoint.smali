.class public Lcom/metamoji/df/sprite/TouchEvent$OnPoint;
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
    name = "OnPoint"
.end annotation


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .line 223
    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    .line 224
    iput p1, p0, Lcom/metamoji/df/sprite/TouchEvent$OnPoint;->x:F

    .line 225
    iput p2, p0, Lcom/metamoji/df/sprite/TouchEvent$OnPoint;->y:F

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

    const/4 v0, 0x0

    return v0
.end method

.method public getEventTime()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPoint()Landroid/graphics/PointF;
    .locals 0

    return-object p0
.end method

.method public getPointer(I)Landroid/graphics/PointF;
    .locals 0

    .line 244
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/TouchEvent$OnPoint;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public getPointerCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPointerId(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getX()F
    .locals 1

    .line 229
    iget v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnPoint;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 231
    iget v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnPoint;->y:F

    return v0
.end method

.method public indexOf(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isHistorical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{TouchEvent(timeout) point="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/TouchEvent$OnPoint;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/df/sprite/Geometry;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
