.class public Lcom/metamoji/mazec/ui/StrokeView;
.super Landroid/widget/FrameLayout;
.source "StrokeView.java"

# interfaces
.implements Lcom/metamoji/mazec/stroke/StrokeStyleResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_STROKES_MODEL_HEIGHT:F = 144.0f


# instance fields
.field private mDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

.field private mEditable:Z

.field private mHCentering:Z

.field private mLastTouchPointX:F

.field private mLastTouchPointY:F

.field private mMatrixModel2View:Landroid/graphics/Matrix;

.field private mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

.field private mPaintForGuidelines:Landroid/graphics/Paint;

.field private mStrokeDrawers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeDrawer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmDrawingStroke(Lcom/metamoji/mazec/ui/StrokeView;)Lcom/metamoji/mazec/ui/DrawingStrokeModel;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModel(Lcom/metamoji/mazec/ui/StrokeView;)Lcom/metamoji/mazec/ui/HwStrokesModel;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mEditable:Z

    .line 65
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/StrokeView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mEditable:Z

    .line 70
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/StrokeView;->init()V

    return-void
.end method

.method private HCentering()V
    .locals 8

    .line 195
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/StrokeView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/StrokeView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->clone()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v2

    .line 201
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->baseLine()F

    move-result v3

    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->topLine()F

    move-result v4

    sub-float/2addr v3, v4

    .line 202
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    cmpl-float v5, v3, v1

    if-lez v5, :cond_1

    .line 204
    iget-object v5, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v5}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getBaseLine()F

    move-result v5

    iget-object v6, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v6}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getGuideline4()F

    move-result v6

    div-float/2addr v5, v6

    .line 205
    iget-object v6, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v6}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getTopLine()F

    move-result v6

    iget-object v7, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v7}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getGuideline4()F

    move-result v7

    div-float/2addr v6, v7

    mul-float/2addr v5, v0

    mul-float/2addr v0, v6

    sub-float/2addr v5, v0

    div-float/2addr v5, v3

    .line 209
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 210
    invoke-virtual {v2, v4}, Lcom/metamoji/mazec/stroke/HwStrokes;->transform(Landroid/graphics/Matrix;)V

    .line 212
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 213
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 214
    iget v4, v0, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/StrokeView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/StrokeView;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v0

    sub-float/2addr v5, v6

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 215
    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->transform(Landroid/graphics/Matrix;)V

    .line 216
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    .line 217
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->outerBounds()Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v2, v0}, Lcom/metamoji/mazec/ui/StrokeView;->setStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;Z)V

    return-void
.end method

.method private drawStrokes(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/HwStrokes;)V
    .locals 12

    .line 253
    invoke-virtual {p2}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokes()Ljava/util/List;

    move-result-object p2

    .line 254
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 258
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    move-object v4, v3

    :goto_0
    if-ge v5, v2, :cond_2

    .line 263
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 264
    invoke-virtual {v6}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 265
    invoke-virtual {v6}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v8

    .line 266
    invoke-virtual {v8, v3}, Lcom/metamoji/mazec/stroke/StrokeStyle;->equals(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 267
    invoke-virtual {p0, v8}, Lcom/metamoji/mazec/ui/StrokeView;->getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v3

    .line 269
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    iget v9, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float/2addr v9, v3

    iget v10, v1, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    invoke-virtual {v0, v4, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 270
    invoke-direct {p0, v8}, Lcom/metamoji/mazec/ui/StrokeView;->getDrawer(Lcom/metamoji/mazec/stroke/StrokeStyle;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object v3

    move-object v4, v3

    move-object v3, v8

    .line 272
    :cond_0
    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/graphics/RectF;->right:F

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v8, v9, v10, v7}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 273
    invoke-virtual {v4, p1, v6}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/HwStroke;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getDrawer(Lcom/metamoji/mazec/stroke/StrokeStyle;)Lcom/metamoji/mazec/stroke/StrokeDrawer;
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mStrokeDrawers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/StrokeDrawer;

    .line 285
    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->canDraw(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 289
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result p1

    invoke-static {p1, p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerFactory;->getDrawer(ILcom/metamoji/mazec/stroke/StrokeStyleResolver;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object p1

    .line 290
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mStrokeDrawers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private init()V
    .locals 5

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mStrokeDrawers:Ljava/util/List;

    .line 156
    new-instance v0, Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-direct {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    const v1, 0x41f914c2

    const v2, 0x42e1bad0

    const/4 v3, 0x0

    const/high16 v4, 0x43100000    # 144.0f

    .line 158
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/metamoji/mazec/ui/HwStrokesModel;->setGuidelines(FFFF)V

    .line 159
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/StrokeView;->setStrokesModel(Lcom/metamoji/mazec/ui/HwStrokesModel;)V

    .line 163
    new-instance v0, Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-direct {v0}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    .line 164
    new-instance v1, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;-><init>(Lcom/metamoji/mazec/ui/StrokeView;Lcom/metamoji/mazec/ui/StrokeView-IA;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->addListener(Lcom/metamoji/mazec/ui/HwStrokeListener;)V

    const/high16 v0, -0x1000000

    const-wide v3, 0x3fd99999a0000000L    # 0.4000000059604645

    .line 165
    invoke-static {v0, v3, v4, v2}, Lcom/metamoji/mazec/stroke/StrokeStyle;->standartStyle(IDLcom/metamoji/mazec/stroke/StrokeInk;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/StrokeView;->setStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mPaintForGuidelines:Landroid/graphics/Paint;

    .line 168
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 172
    iput v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointY:F

    iput v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointX:F

    .line 174
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mMatrixModel2View:Landroid/graphics/Matrix;

    return-void

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method private onTouchCancel(Landroid/view/MotionEvent;)V
    .locals 0

    .line 343
    iget-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->cancelStroke()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 344
    iput p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointY:F

    iput p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointX:F

    return-void
.end method

.method private onTouchEnd(Landroid/view/MotionEvent;)V
    .locals 6

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 336
    iget v2, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointX:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_0

    iget v2, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointY:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    new-instance v3, Lcom/metamoji/mazec/stroke/StrokeTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->addNextPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    .line 339
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->endStroke()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 340
    iput p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointY:F

    iput p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointX:F

    return-void
.end method

.method private onTouchMove(Landroid/view/MotionEvent;)V
    .locals 6

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 326
    iget v2, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointX:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointY:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    new-instance v3, Lcom/metamoji/mazec/stroke/StrokeTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->addNextPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    .line 330
    iput v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointX:F

    .line 331
    iput v1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointY:F

    return-void
.end method

.method private onTouchStart(Landroid/view/MotionEvent;)V
    .locals 6

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 318
    iget-object v2, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    new-instance v3, Lcom/metamoji/mazec/stroke/StrokeTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/metamoji/mazec/stroke/StrokeTouch;-><init>(FFJ)V

    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->addStartPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)V

    .line 319
    iget-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->startStroking()V

    .line 320
    iput v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointX:F

    .line 321
    iput v1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mLastTouchPointY:F

    return-void
.end method


# virtual methods
.method public clearStrokes()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->clear()V

    return-void
.end method

.method public getAbsoluteLineWidth(Lcom/metamoji/mazec/stroke/StrokeStyle;)F
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineWidthOfStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result p1

    .line 349
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/StrokeView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHeight()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr p1, v0

    return p1
.end method

.method public getEditable()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mEditable:Z

    return v0
.end method

.method public getGradient(Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/Path;)Landroid/graphics/Shader;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLineColor(Lcom/metamoji/mazec/stroke/StrokeStyle;Z)I
    .locals 2

    .line 353
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 355
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineColor()I

    move-result p1

    const/high16 p2, 0xff0000

    and-int/2addr p2, p1

    shr-int/lit8 p2, p2, 0x10

    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    and-int/2addr p1, v1

    .line 357
    invoke-static {v1, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1

    .line 362
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineColor()I

    move-result p1

    return p1
.end method

.method public getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    return-object v0
.end method

.method public getStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    return-object v0
.end method

.method public getStrokesModel()Lcom/metamoji/mazec/ui/HwStrokesModel;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 224
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mPaintForGuidelines:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/StrokeView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 226
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/StrokeView;->getWidth()I

    move-result v1

    int-to-float v5, v1

    .line 227
    iget-object v1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHeight()F

    move-result v1

    .line 228
    iget-object v2, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getBaseLine()F

    move-result v2

    mul-float/2addr v2, v0

    div-float v4, v2, v1

    const/4 v3, 0x0

    .line 229
    iget-object v7, p0, Lcom/metamoji/mazec/ui/StrokeView;->mPaintForGuidelines:Landroid/graphics/Paint;

    move v6, v4

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 231
    iget-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getTopLine()F

    move-result p1

    mul-float/2addr v0, p1

    div-float v4, v0, v1

    .line 232
    iget-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mPaintForGuidelines:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDashPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 233
    iget-object v7, p0, Lcom/metamoji/mazec/ui/StrokeView;->mPaintForGuidelines:Landroid/graphics/Paint;

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 234
    iget-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mPaintForGuidelines:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 236
    iget-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mMatrixModel2View:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHwStrokes(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object p1

    .line 237
    invoke-direct {p0, v2, p1}, Lcom/metamoji/mazec/ui/StrokeView;->drawStrokes(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/HwStrokes;)V

    .line 239
    iget-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->getCurrentStroke()Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->getCurrentDrawable()Lcom/metamoji/mazec/stroke/drawable/Drawable;

    move-result-object v0

    .line 242
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p1

    const/4 v1, 0x1

    .line 243
    invoke-interface {v0, v2, p1, p0, v1}, Lcom/metamoji/mazec/stroke/drawable/Drawable;->draw(Landroid/graphics/Canvas;Lcom/metamoji/mazec/stroke/StrokeStyle;Lcom/metamoji/mazec/stroke/StrokeStyleResolver;Z)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getHeight()F

    move-result p1

    int-to-float p2, p2

    div-float p3, p2, p1

    .line 180
    iget-object p4, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {p4}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getTopLine()F

    move-result p4

    .line 181
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->getTopLine()F

    move-result v0

    mul-float/2addr p2, v0

    div-float/2addr p2, p1

    .line 182
    iget-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mMatrixModel2View:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 183
    iget-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mMatrixModel2View:Landroid/graphics/Matrix;

    neg-float p4, p4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 184
    iget-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mMatrixModel2View:Landroid/graphics/Matrix;

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 185
    iget-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mMatrixModel2View:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 188
    iget-boolean p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mHCentering:Z

    if-eqz p1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/StrokeView;->HCentering()V

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/StrokeView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 295
    iget-boolean v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mEditable:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 310
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/StrokeView;->onTouchCancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 304
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/StrokeView;->onTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 307
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/StrokeView;->onTouchEnd(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 301
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/StrokeView;->onTouchStart(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method

.method public setEditable(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mEditable:Z

    return-void
.end method

.method public setHorizentalCenterring(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mHCentering:Z

    if-eqz p1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/StrokeView;->HCentering()V

    :cond_0
    return-void
.end method

.method public setStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->setStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    .line 78
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mDrawingStroke:Lcom/metamoji/mazec/ui/DrawingStrokeModel;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result p1

    invoke-static {p1, p0}, Lcom/metamoji/mazec/stroke/StrokeDrawerFactory;->getDrawer(ILcom/metamoji/mazec/stroke/StrokeStyleResolver;)Lcom/metamoji/mazec/stroke/StrokeDrawer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/DrawingStrokeModel;->setStrokeDrawer(Lcom/metamoji/mazec/stroke/StrokeDrawer;)V

    return-void
.end method

.method public setStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)V
    .locals 1

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/ui/StrokeView;->setStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;Z)V

    return-void
.end method

.method public setStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;Z)V
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->clear()V

    .line 120
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->topLine()F

    move-result v0

    .line 121
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->baseLine()F

    move-result v1

    .line 122
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 123
    invoke-virtual {p1, v3}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v4

    .line 124
    iget-object v5, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    invoke-virtual {v5, v4, v0, v1}, Lcom/metamoji/mazec/ui/HwStrokesModel;->addStroke(Lcom/metamoji/mazec/stroke/HwStroke;FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-boolean p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mHCentering:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/StrokeView;->HCentering()V

    :cond_1
    return-void
.end method

.method public setStrokesModel(Lcom/metamoji/mazec/ui/HwStrokesModel;)V
    .locals 2

    .line 90
    iput-object p1, p0, Lcom/metamoji/mazec/ui/StrokeView;->mModel:Lcom/metamoji/mazec/ui/HwStrokesModel;

    .line 91
    new-instance v0, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/mazec/ui/StrokeView$HwStrokeListenerImpl;-><init>(Lcom/metamoji/mazec/ui/StrokeView;Lcom/metamoji/mazec/ui/StrokeView-IA;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->addListener(Lcom/metamoji/mazec/ui/HwStrokeListener;)V

    return-void
.end method
