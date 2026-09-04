.class public Lcom/metamoji/mazec/ui/SimpleTopBarView;
.super Landroid/view/View;
.source "SimpleTopBarView.java"


# static fields
.field private static mBkColorReedit:I

.field private static mBkColorStroke:I

.field private static mShadowColor:I


# instance fields
.field private mBkColor:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x80

    const/16 v1, 0xaa

    .line 18
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mShadowColor:I

    .line 23
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 24
    const-string v1, "color.top_bar_bkcolor_stroke"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mBkColorStroke:I

    .line 25
    const-string v1, "color.top_bar_bkcolor_reedit"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mBkColorReedit:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/SimpleTopBarView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/SimpleTopBarView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iput-object v0, p0, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mPaint:Landroid/graphics/Paint;

    .line 64
    sget v1, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mBkColorStroke:I

    iput v1, p0, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mBkColor:I

    .line 65
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    sget v2, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mShadowColor:I

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SimpleTopBarView;->getWidth()I

    move-result v0

    .line 75
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SimpleTopBarView;->getHeight()I

    move-result v1

    .line 77
    iget v2, p0, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mBkColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float v6, v0

    add-int/lit8 v1, v1, -0x2

    int-to-float v7, v1

    .line 78
    iget-object v8, p0, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method onUIModeChanged(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->isInReedit()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mBkColorReedit:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mBkColorStroke:I

    :goto_0
    iput p1, p0, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mBkColor:I

    .line 83
    iget-object v0, p0, Lcom/metamoji/mazec/ui/SimpleTopBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SimpleTopBarView;->invalidate()V

    return-void
.end method
