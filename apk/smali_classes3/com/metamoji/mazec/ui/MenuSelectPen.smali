.class public Lcom/metamoji/mazec/ui/MenuSelectPen;
.super Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;
.source "MenuSelectPen.java"


# instance fields
.field mIsImageLoaded:Z

.field private mPenStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/share/NtPenStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectPen;->mPenStyles:Ljava/util/List;

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/MenuSelectPen;->mIsImageLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectPen;->mPenStyles:Ljava/util/List;

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/metamoji/mazec/ui/MenuSelectPen;->mIsImageLoaded:Z

    return-void
.end method

.method private createPenButton(Landroid/widget/ImageView;Lcom/metamoji/nt/share/NtPenStyle;)Landroid/graphics/Bitmap;
    .locals 8

    .line 105
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 106
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    .line 108
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 109
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 110
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 111
    invoke-virtual {p2}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 114
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable.pen_preview_frame_gray"

    .line 115
    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    .line 114
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable.pen_preview_frame"

    .line 118
    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    .line 117
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 121
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 122
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 127
    invoke-static {p2}, Lcom/metamoji/mazec/util/PenPreviewUtil;->getPenPreviewWeight(Lcom/metamoji/nt/share/NtPenStyle;)F

    move-result v3

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iget v5, p0, Lcom/metamoji/mazec/ui/MenuSelectPen;->mDensity:F

    mul-float/2addr v5, v4

    invoke-static {p2, v3, v0, v5, v7}, Lcom/metamoji/mazec/util/PenPreviewUtil;->createPenPreview(Lcom/metamoji/nt/share/NtPenStyle;FFFZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 129
    invoke-virtual {v1, p2, v0, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method private getCountOfPenButton()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 162
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/MenuSelectPen;->getButtonId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/MenuSelectPen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private setPenButtonImage(ILcom/metamoji/nt/share/NtPenStyle;)V
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectPen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/MenuSelectPen;->createPenButton(Landroid/widget/ImageView;Lcom/metamoji/nt/share/NtPenStyle;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 100
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected getButtonId(I)I
    .locals 2

    .line 139
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "id.pen_palette_%d"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public initView(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/share/NtPenStyle;",
            ">;I)V"
        }
    .end annotation

    .line 60
    invoke-super {p0, p2}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->initView(I)V

    .line 61
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectPen;->mPenStyles:Ljava/util/List;

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    .line 63
    invoke-virtual {p0, p2}, Lcom/metamoji/mazec/ui/MenuSelectPen;->getButtonId(I)I

    move-result v0

    .line 64
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/mazec/ui/MenuSelectPen;->setOnClickListener(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectPen;->mPenStyles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectPen;->setCountOfItemSpace(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 72
    invoke-super/range {p0 .. p5}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->onLayout(ZIIII)V

    move-object p1, p0

    .line 73
    iget-boolean p2, p1, Lcom/metamoji/mazec/ui/MenuSelectPen;->mIsImageLoaded:Z

    if-nez p2, :cond_1

    .line 74
    iget-object p2, p1, Lcom/metamoji/mazec/ui/MenuSelectPen;->mPenStyles:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    const/16 p4, 0x8

    if-ge p3, p4, :cond_0

    .line 75
    invoke-virtual {p0, p3}, Lcom/metamoji/mazec/ui/MenuSelectPen;->getButtonId(I)I

    move-result p4

    .line 76
    iget-object p5, p1, Lcom/metamoji/mazec/ui/MenuSelectPen;->mPenStyles:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/metamoji/nt/share/NtPenStyle;

    .line 77
    invoke-direct {p0, p4, p5}, Lcom/metamoji/mazec/ui/MenuSelectPen;->setPenButtonImage(ILcom/metamoji/nt/share/NtPenStyle;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 79
    iput-boolean p2, p1, Lcom/metamoji/mazec/ui/MenuSelectPen;->mIsImageLoaded:Z

    :cond_1
    return-void
.end method

.method protected setCountOfItemSpace(I)V
    .locals 6

    .line 143
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->setCountOfItemSpace(I)V

    .line 144
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectPen;->mPenStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 145
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/MenuSelectPen;->getCountOfPenButton()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 147
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/MenuSelectPen;->getButtonId(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/metamoji/mazec/ui/MenuSelectPen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-ge v3, v0, :cond_1

    .line 152
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-ge v3, p1, :cond_2

    const/4 v5, 0x4

    .line 154
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x8

    .line 156
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
