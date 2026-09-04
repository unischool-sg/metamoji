.class public Lcom/metamoji/un/text/hotspot/HotSpotLocation;
.super Ljava/lang/Object;
.source "HotSpotLocation.java"


# instance fields
.field public range:Lcom/metamoji/un/text/model/TextRange;

.field public rects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/un/text/model/TextRange;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->range:Lcom/metamoji/un/text/model/TextRange;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->rects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public rectsContainsPoint(Landroid/graphics/PointF;)Z
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/metamoji/un/text/hotspot/HotSpotLocation;->rects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 49
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return v1
.end method
