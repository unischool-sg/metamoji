.class public Lcom/metamoji/mazec/stroke/StrokeTouch;
.super Ljava/lang/Object;
.source "StrokeTouch.java"


# instance fields
.field private mPoint:Landroid/graphics/PointF;

.field public time:J

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFJ)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeTouch;->mPoint:Landroid/graphics/PointF;

    .line 15
    iput p1, p0, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    .line 16
    iput p2, p0, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    .line 17
    iput-wide p3, p0, Lcom/metamoji/mazec/stroke/StrokeTouch;->time:J

    return-void
.end method

.method public static convertToPoints(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeTouch;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/StrokeTouch;

    .line 28
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/StrokeTouch;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertToTimes(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeTouch;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/StrokeTouch;

    .line 35
    iget-wide v1, v1, Lcom/metamoji/mazec/stroke/StrokeTouch;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static makeStrokeTouchsWithFakeTime(Ljava/util/List;J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;J)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeTouch;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 43
    new-instance v4, Lcom/metamoji/mazec/stroke/StrokeTouch;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v3, v1, v2}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr v1, p1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getPoint()Landroid/graphics/PointF;
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeTouch;->mPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeTouch;->mPoint:Landroid/graphics/PointF;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeTouch;->mPoint:Landroid/graphics/PointF;

    return-object v0
.end method
