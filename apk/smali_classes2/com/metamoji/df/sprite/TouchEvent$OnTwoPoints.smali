.class public Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;
.super Ljava/lang/Object;
.source "TouchEvent.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TouchEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/TouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnTwoPoints"
.end annotation


# instance fields
.field private p1:Landroid/graphics/PointF;

.field private p2:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;->p1:Landroid/graphics/PointF;

    .line 268
    iput-object p2, p0, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;->p2:Landroid/graphics/PointF;

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
    .locals 3

    .line 276
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getPointer(I)Landroid/graphics/PointF;
    .locals 0

    if-nez p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;->p1:Landroid/graphics/PointF;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;->p2:Landroid/graphics/PointF;

    return-object p1
.end method

.method public getPointerCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPointerId(I)I
    .locals 0

    return p1
.end method

.method public getX()F
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;->p1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;->p2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;->p1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;->p2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public indexOf(I)I
    .locals 0

    return p1
.end method

.method public isHistorical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{TouchEvent(wheel) p1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;->p1:Landroid/graphics/PointF;

    invoke-static {v1}, Lcom/metamoji/df/sprite/Geometry;->toString(Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",p2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/df/sprite/TouchEvent$OnTwoPoints;->p2:Landroid/graphics/PointF;

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
