.class Lcom/metamoji/df/sprite/Viewport$Target;
.super Ljava/lang/Object;
.source "Viewport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/Viewport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Target"
.end annotation


# instance fields
.field private center:Landroid/graphics/PointF;

.field private stage:Lcom/metamoji/df/sprite/Stage;

.field private viewport:Lcom/metamoji/df/sprite/Viewport;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Stage;Landroid/graphics/PointF;)V
    .locals 0

    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$Target;->viewport:Lcom/metamoji/df/sprite/Viewport;

    .line 1032
    iput-object p2, p0, Lcom/metamoji/df/sprite/Viewport$Target;->stage:Lcom/metamoji/df/sprite/Stage;

    .line 1033
    iput-object p3, p0, Lcom/metamoji/df/sprite/Viewport$Target;->center:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method setZoom(F)V
    .locals 2

    .line 1040
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$Target;->stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v0

    .line 1042
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$Target;->stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v1, p1}, Lcom/metamoji/df/sprite/Stage;->setZoom(F)V

    div-float/2addr p1, v0

    .line 1046
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$Target;->viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getScrollTranslate()Landroid/graphics/PointF;

    move-result-object v0

    .line 1048
    iget-object v1, p0, Lcom/metamoji/df/sprite/Viewport$Target;->center:Landroid/graphics/PointF;

    invoke-static {v1, p1, v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$smtranslatePosition(Landroid/graphics/PointF;FLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1050
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$Target;->viewport:Lcom/metamoji/df/sprite/Viewport;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/df/sprite/Viewport;->setScrollTranslate(FF)V

    :cond_0
    return-void
.end method
