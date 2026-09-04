.class public Lcom/metamoji/mazec/stroke/drawable/PathCurve;
.super Ljava/lang/Object;
.source "PathCurve.java"

# interfaces
.implements Lcom/metamoji/mazec/stroke/drawable/Drawable;


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPath:Landroid/graphics/Path;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPaint:Landroid/graphics/Paint;

    .line 20
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->initPaint()V

    .line 21
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPath:Landroid/graphics/Path;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPaint:Landroid/graphics/Paint;

    .line 24
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->initPaint()V

    .line 25
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 32
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 3

    .line 53
    new-instance v0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;-><init>()V

    .line 54
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->clone()Lcom/metamoji/mazec/stroke/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/StrokeStyleResolver;Z)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPaint:Landroid/graphics/Paint;

    invoke-interface {p3, p2, p4}, Lcom/metamoji/mazec/stroke/StrokeStyleResolver;->getLineColor(Lcom/metamoji/mazec/stroke/StrokeStyle;Z)I

    move-result p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p4, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPaint:Landroid/graphics/Paint;

    invoke-interface {p3, p2}, Lcom/metamoji/mazec/stroke/StrokeStyleResolver;->getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result p2

    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    iget-object p2, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public set(Landroid/graphics/Path;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 2

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 45
    new-instance p1, Lcom/metamoji/mazec/stroke/drawable/PathCurve;

    invoke-direct {p1, v0}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;-><init>(Landroid/graphics/Path;)V

    return-object p1
.end method
