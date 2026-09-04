.class Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;
.super Landroid/view/View;
.source "UiColorSelectionView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiColorGradationView"
.end annotation


# static fields
.field static final GRD_LINE_WIDTH:I = 0x2

.field static final GRD_PADDING:I = 0x1


# instance fields
.field mBorderRect:Landroid/graphics/RectF;

.field mColor:Landroid/graphics/Paint;

.field mColor1:I

.field mColor1Rect:Landroid/graphics/RectF;

.field mColor2:I

.field mColor2Rect:Landroid/graphics/RectF;

.field private mOuterSelectEventListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorGradationSelectionChanged;

.field mPath:Landroid/graphics/Path;

.field mSelectionMarkHead:Z

.field final synthetic this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1955
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 1956
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1938
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    .line 1939
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    .line 1940
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1Rect:Landroid/graphics/RectF;

    .line 1941
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2Rect:Landroid/graphics/RectF;

    const/16 p1, 0xff

    const/16 p2, 0xcc

    const/4 v0, 0x0

    .line 1942
    invoke-static {p1, p1, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    iput p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1:I

    .line 1943
    invoke-static {p1, p1, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2:I

    const/4 p1, 0x1

    .line 1944
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mSelectionMarkHead:Z

    .line 1945
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public getInkColor()I
    .locals 1

    .line 1989
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mSelectionMarkHead:Z

    if-eqz v0, :cond_0

    .line 1990
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->getInkColor1()I

    move-result v0

    return v0

    .line 1992
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->getInkColor2()I

    move-result v0

    return v0
.end method

.method public getInkColor1()I
    .locals 1

    .line 1995
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1:I

    return v0
.end method

.method public getInkColor2()I
    .locals 1

    .line 1998
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 2009
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2010
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2011
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2012
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2015
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    const v2, -0xf26042

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2016
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2017
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$mdip2pxF(Lcom/metamoji/ui/common/UiColorSelectionView2;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2019
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2020
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mSelectionMarkHead:Z

    .line 2027
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 2021
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2022
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2023
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2024
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 2027
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2028
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2029
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2030
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2032
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2033
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2036
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1Rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1Rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2037
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1Rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1Rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2038
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1Rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1Rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2039
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1Rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1Rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2041
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    const v2, -0x3e3e3f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2042
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2043
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v4, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$mdip2pxF(Lcom/metamoji/ui/common/UiColorSelectionView2;F)F

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2044
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2046
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    iget v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2047
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2048
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2049
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2050
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2053
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2Rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2Rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2054
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2Rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2Rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2055
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2Rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2Rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2056
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2Rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2Rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2058
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2059
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2060
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$mdip2pxF(Lcom/metamoji/ui/common/UiColorSelectionView2;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2061
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2063
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    iget v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2064
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2065
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2066
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2067
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 2107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2109
    iget-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {p3, p4}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$mdip2pxF(Lcom/metamoji/ui/common/UiColorSelectionView2;F)F

    move-result p3

    .line 2110
    new-instance p4, Landroid/graphics/RectF;

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p3

    int-to-float p1, p1

    sub-float v1, p1, v0

    int-to-float p2, p2

    sub-float v2, p2, v0

    invoke-direct {p4, v0, v0, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    .line 2111
    new-instance p4, Landroid/graphics/RectF;

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v0, p3

    const/high16 v1, 0x41300000    # 11.0f

    mul-float/2addr v1, p3

    sub-float v2, p1, v1

    sub-float v1, p2, v1

    invoke-direct {p4, v0, v0, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1Rect:Landroid/graphics/RectF;

    .line 2112
    new-instance p4, Landroid/graphics/RectF;

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr p3, v1

    sub-float/2addr p1, v0

    sub-float/2addr p2, v0

    invoke-direct {p4, p3, p3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2Rect:Landroid/graphics/RectF;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2078
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Touch"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2080
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2081
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    neg-float v0, v0

    .line 2083
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mBorderRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v2

    cmpg-float p1, p1, v0

    .line 2090
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mSelectionMarkHead:Z

    if-gez p1, :cond_0

    xor-int/lit8 v0, v0, 0x1

    .line 2087
    iput-boolean v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mSelectionMarkHead:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2093
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mSelectionMarkHead:Z

    :goto_0
    if-eqz v0, :cond_1

    .line 2096
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->invalidate()V

    .line 2098
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mOuterSelectEventListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorGradationSelectionChanged;

    if-eqz p1, :cond_3

    .line 2099
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mSelectionMarkHead:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2:I

    :goto_1
    invoke-interface {p1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$IColorGradationSelectionChanged;->onColorGradationSelected(I)V

    :cond_3
    return v1
.end method

.method public setInkColor(I)V
    .locals 1

    .line 1973
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mSelectionMarkHead:Z

    if-eqz v0, :cond_0

    .line 1974
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->setInkColor1(I)V

    return-void

    .line 1977
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->setInkColor2(I)V

    return-void
.end method

.method public setInkColor1(I)V
    .locals 0

    .line 1981
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor1:I

    .line 1982
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->invalidate()V

    return-void
.end method

.method public setInkColor2(I)V
    .locals 0

    .line 1985
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mColor2:I

    .line 1986
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->invalidate()V

    return-void
.end method

.method public setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorGradationSelectionChanged;)V
    .locals 0

    .line 1965
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->mOuterSelectEventListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorGradationSelectionChanged;

    return-void
.end method
