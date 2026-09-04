.class public Lcom/metamoji/mazec/stroke/drawable/Dot;
.super Ljava/lang/Object;
.source "Dot.java"

# interfaces
.implements Lcom/metamoji/mazec/stroke/drawable/Drawable;


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 14
    iput v0, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mX:F

    .line 15
    iput v0, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mY:F

    .line 18
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/drawable/Dot;->initPaint()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 14
    iput v0, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mX:F

    .line 15
    iput v0, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mY:F

    .line 21
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/drawable/Dot;->initPaint()V

    .line 22
    iput p1, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mX:F

    .line 23
    iput p2, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mY:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;)V
    .locals 1

    .line 26
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, p1}, Lcom/metamoji/mazec/stroke/drawable/Dot;-><init>(FF)V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 32
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 3

    .line 56
    new-instance v0, Lcom/metamoji/mazec/stroke/drawable/Dot;

    iget v1, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mX:F

    iget v2, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mY:F

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/stroke/drawable/Dot;-><init>(FF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/drawable/Dot;->clone()Lcom/metamoji/mazec/stroke/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/StrokeStyleResolver;Z)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mPaint:Landroid/graphics/Paint;

    invoke-interface {p3, p2, p4}, Lcom/metamoji/mazec/stroke/StrokeStyleResolver;->getLineColor(Lcom/metamoji/mazec/stroke/StrokeStyle;Z)I

    move-result p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object p4, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mPaint:Landroid/graphics/Paint;

    invoke-interface {p3, p2}, Lcom/metamoji/mazec/stroke/StrokeStyleResolver;->getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result p2

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget p2, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mX:F

    iget p3, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mY:F

    iget-object p4, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;)V
    .locals 2

    .line 52
    iget v0, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mX:F

    iget v1, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mY:F

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 4

    .line 45
    iget v0, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mX:F

    iget v1, p0, Lcom/metamoji/mazec/stroke/drawable/Dot;->mY:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 46
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 47
    new-instance p1, Lcom/metamoji/mazec/stroke/drawable/Dot;

    aget v1, v2, v3

    aget v0, v2, v0

    invoke-direct {p1, v1, v0}, Lcom/metamoji/mazec/stroke/drawable/Dot;-><init>(FF)V

    return-object p1
.end method
