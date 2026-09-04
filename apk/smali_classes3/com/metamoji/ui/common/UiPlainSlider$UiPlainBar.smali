.class Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;
.super Ljava/lang/Object;
.source "UiPlainSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiPlainSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UiPlainBar"
.end annotation


# instance fields
.field mBalloonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mChecker:Landroid/graphics/drawable/BitmapDrawable;

.field final mCheckerSize:I

.field private mGradient:Landroid/graphics/drawable/BitmapDrawable;

.field mSliderView:Landroid/view/View;

.field mTotalWidth:I

.field mTrackerDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field mWorkRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/metamoji/ui/common/UiPlainSlider;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/common/UiPlainSlider;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 854
    iput-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 817
    iput v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mTotalWidth:I

    .line 818
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 819
    iput-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mChecker:Landroid/graphics/drawable/BitmapDrawable;

    .line 820
    iput-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mGradient:Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x8

    .line 821
    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mCheckerSize:I

    .line 823
    iput-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mTrackerDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 824
    iput-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mBalloonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 855
    iput-object p2, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mSliderView:Landroid/view/View;

    .line 856
    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiPlainSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/metamoji/noteanytime/R$drawable;->design1_handle_slider_horizontal:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p2, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mTrackerDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 857
    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiPlainSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/metamoji/noteanytime/R$drawable;->design1_indicator_slider:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mBalloonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    return-void
.end method


# virtual methods
.method drawHorzTick(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;FFFLjava/lang/String;Landroid/graphics/Paint$FontMetrics;II)V
    .locals 7

    .line 1024
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTickHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v0

    int-to-float v0, v0

    sub-float v5, p6, v0

    move v4, p4

    move-object v1, p1

    move-object v6, p2

    move v2, p4

    move v3, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1025
    iget-object p2, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {p2}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmLabelHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result p2

    if-lez p2, :cond_0

    .line 1026
    invoke-virtual {p3, p7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p2, p5

    sub-float/2addr p4, p2

    .line 1036
    iget p2, p8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr p6, p2

    iget-object p2, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {p2}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTickHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p6, p2

    invoke-virtual {p1, p7, p4, p6, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method drawVertTick(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;FFFLjava/lang/String;Landroid/graphics/Paint$FontMetrics;II)V
    .locals 9

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    .line 1003
    iget-object v2, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTickHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v2

    int-to-float v2, v2

    sub-float v6, p6, v2

    move v7, p4

    move-object v3, p1

    move-object v8, p2

    move v5, p4

    move v4, p5

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1004
    iget-object p2, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {p2}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmLabelHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result p2

    if-lez p2, :cond_2

    .line 1005
    iget p2, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    const/high16 p5, 0x40400000    # 3.0f

    div-float/2addr p2, p5

    sub-float/2addr p4, p2

    .line 1006
    iget p2, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr p2, p4

    const/4 p5, 0x0

    cmpg-float p2, p2, p5

    if-gez p2, :cond_0

    .line 1007
    iget p2, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float p4, p2

    goto :goto_0

    .line 1008
    :cond_0
    iget p2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr p2, p4

    move/from16 p5, p9

    int-to-float p5, p5

    cmpl-float p2, p2, p5

    if-lez p2, :cond_1

    .line 1009
    iget p2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float p4, p5, p2

    .line 1011
    :cond_1
    :goto_0
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    sub-float/2addr p6, p2

    .line 1012
    iget p2, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr p6, p2

    iget-object p2, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {p2}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTickHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p6, p2

    invoke-virtual {p1, v0, p6, p4, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method getBarRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/common/UiPlainSlider;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 886
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 887
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mTotalWidth:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 888
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 889
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmBarHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    return-void

    .line 892
    :cond_0
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 893
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mTotalWidth:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 894
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 895
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmBarHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method getBottom()I
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mSliderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmInnerMarginBottom(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getCheckerBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 7

    .line 954
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mChecker:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 957
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x10

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 958
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 960
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, -0x1

    .line 961
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 962
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, -0x1000000

    .line 963
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v2, 0x0

    .line 964
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x41000000    # 8.0f

    .line 965
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 967
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiPlainSlider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mChecker:Landroid/graphics/drawable/BitmapDrawable;

    .line 968
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mChecker:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method getHeight()I
    .locals 2

    .line 847
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mSliderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmInnerMarginTop(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmInnerMarginBottom(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getLabelRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 904
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/common/UiPlainSlider;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 905
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 906
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mTotalWidth:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 907
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 908
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmLabelHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void

    .line 911
    :cond_0
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 912
    iget v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mTotalWidth:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 913
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 914
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmLabelHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method getLeft()I
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmInnerMarginLeft(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v0

    return v0
.end method

.method getRight()I
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mSliderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmInnerMarginRight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getTop()I
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmInnerMarginTop(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v0

    return v0
.end method

.method getWidth()I
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mSliderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmInnerMarginLeft(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmInnerMarginRight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method initDimmension()V
    .locals 3

    .line 865
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/common/UiPlainSlider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getWidth()I

    move-result v0

    .line 867
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mTotalWidth:I

    goto :goto_0

    .line 869
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getHeight()I

    move-result v0

    .line 870
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mTotalWidth:I

    .line 874
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmLabelHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmBarHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v2

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_1

    .line 876
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmBarHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fputmLabelHeight(Lcom/metamoji/ui/common/UiPlainSlider;I)V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    .line 1046
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getWidth()I

    move-result v10

    .line 1047
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getHeight()I

    move-result v9

    .line 1050
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x0

    .line 1051
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1052
    iget-object v1, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmLabelBgColor(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v10

    move v4, v5

    int-to-float v5, v9

    move-object v6, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    .line 1053
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v11, v5

    move-object v2, v6

    .line 1056
    iget-object v3, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmBarHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v3

    if-lez v3, :cond_4

    .line 1057
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1058
    iget-object v3, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getBarRect(Landroid/graphics/Rect;)V

    .line 1059
    iget-object v3, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmColor0(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v3

    iget-object v5, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmColor1(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v5

    .line 1064
    iget-object v6, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    if-ne v3, v5, :cond_0

    .line 1061
    invoke-static {v6}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmColor0(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 1064
    :cond_0
    invoke-static {v6}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmColor0(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v5, 0xff

    if-ne v3, v5, :cond_1

    iget-object v3, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmColor1(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 1066
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getCheckerBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 1067
    iget-object v5, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1068
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    const/4 v3, -0x1

    .line 1071
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1072
    iget-object v3, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/common/UiPlainSlider;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1073
    new-instance v12, Landroid/graphics/LinearGradient;

    iget v3, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mTotalWidth:I

    int-to-float v14, v3

    iget-object v3, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmColor0(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v17

    iget-object v3, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmColor1(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v18

    sget-object v19, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 1075
    :cond_3
    new-instance v13, Landroid/graphics/LinearGradient;

    iget v3, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mTotalWidth:I

    int-to-float v3, v3

    iget-object v5, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmColor0(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v18

    iget-object v5, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmColor1(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v19

    sget-object v20, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object v12, v13

    .line 1077
    :goto_0
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1079
    :goto_1
    iget-object v3, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 1080
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1084
    :cond_4
    iget-object v3, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getLabelRect(Landroid/graphics/Rect;)V

    .line 1085
    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 1086
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1087
    iget-object v3, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTickColor(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1088
    iget-object v3, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTickWidth(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1090
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    .line 1091
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1092
    iget-object v5, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmLabelTextSize(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1093
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1094
    iget-object v5, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmLabelColor(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1095
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    .line 1097
    iget v5, v8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v6, v8, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v12, v5, v6

    .line 1099
    iget-object v5, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTickList(Lcom/metamoji/ui/common/UiPlainSlider;)[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    move-result-object v5

    if-nez v5, :cond_6

    .line 1102
    iget-object v5, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmDivision(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v5

    const/16 v6, 0x3e8

    div-int v13, v6, v5

    .line 1103
    iget-object v5, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmValueMax(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v5

    iget-object v6, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmValueMin(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmDivision(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v6

    div-int v14, v5, v6

    move v15, v7

    .line 1104
    :goto_2
    iget-object v5, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmDivision(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v5

    if-gt v15, v5, :cond_8

    mul-int v5, v13, v15

    .line 1105
    invoke-virtual {v0, v5}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->pos2raw(I)I

    move-result v5

    int-to-float v5, v5

    .line 1106
    iget-object v6, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    mul-int v7, v14, v15

    invoke-static {v6}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmValueMin(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v16

    add-int v7, v7, v16

    invoke-static {v6, v7}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$mcomposeLabelString(Lcom/metamoji/ui/common/UiPlainSlider;I)Ljava/lang/String;

    move-result-object v7

    .line 1107
    iget-object v6, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/common/UiPlainSlider;)Z

    move-result v6

    .line 1110
    iget-object v1, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_5

    .line 1108
    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    move v1, v5

    move v5, v4

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->drawVertTick(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;FFFLjava/lang/String;Landroid/graphics/Paint$FontMetrics;II)V

    move/from16 v16, v5

    move-object/from16 v0, p0

    goto :goto_3

    :cond_5
    move/from16 v16, v4

    move v4, v5

    .line 1110
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v11

    invoke-virtual/range {v0 .. v10}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->drawHorzTick(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;FFFLjava/lang/String;Landroid/graphics/Paint$FontMetrics;II)V

    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v4, v16

    goto :goto_2

    :cond_6
    move/from16 v16, v4

    move v13, v7

    .line 1114
    :goto_4
    iget-object v1, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTickList(Lcom/metamoji/ui/common/UiPlainSlider;)[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    move-result-object v1

    array-length v1, v1

    if-ge v13, v1, :cond_8

    .line 1115
    iget-object v1, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTickList(Lcom/metamoji/ui/common/UiPlainSlider;)[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    move-result-object v1

    aget-object v1, v1, v13

    iget v1, v1, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->pos:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->pos2raw(I)I

    move-result v1

    int-to-float v4, v1

    .line 1116
    iget-object v1, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTickList(Lcom/metamoji/ui/common/UiPlainSlider;)[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    move-result-object v5

    aget-object v5, v5, v13

    iget v5, v5, Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;->value:I

    invoke-static {v1, v5}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$mcomposeLabelString(Lcom/metamoji/ui/common/UiPlainSlider;I)Ljava/lang/String;

    move-result-object v7

    .line 1117
    iget-object v1, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/common/UiPlainSlider;)Z

    move-result v1

    .line 1120
    iget-object v5, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_7

    .line 1118
    iget v1, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v1

    move-object/from16 v1, p1

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v10}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->drawVertTick(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;FFFLjava/lang/String;Landroid/graphics/Paint$FontMetrics;II)V

    move-object/from16 v0, p0

    move v5, v11

    goto :goto_5

    .line 1120
    :cond_7
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v11

    invoke-virtual/range {v0 .. v10}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->drawHorzTick(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;FFFLjava/lang/String;Landroid/graphics/Paint$FontMetrics;II)V

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move v11, v5

    goto :goto_4

    :cond_8
    move-object/from16 v1, p1

    .line 1126
    iget-object v2, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmCurrentPos(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->pos2raw(I)I

    move-result v2

    int-to-float v2, v2

    .line 1127
    iget-object v4, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v4}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmBarHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v4

    .line 1128
    iget-object v5, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTrackerWidth(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1129
    iget-object v7, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTrackerWidth(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v7

    add-int/2addr v7, v5

    .line 1131
    iget-object v8, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/common/UiPlainSlider;)Z

    move-result v8

    .line 1134
    iget-object v11, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mTrackerDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v8, :cond_9

    sub-int v4, v10, v4

    .line 1132
    iget-object v8, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTrackerHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v8

    sub-int/2addr v4, v8

    iget-object v8, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTrackerHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v8

    add-int/2addr v10, v8

    invoke-virtual {v11, v4, v5, v10, v7}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    goto :goto_6

    :cond_9
    sub-int v4, v9, v4

    .line 1134
    iget-object v8, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTrackerHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v8

    sub-int/2addr v4, v8

    iget-object v8, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmTrackerHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v8

    add-int/2addr v8, v9

    invoke-virtual {v11, v5, v4, v7, v8}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 1136
    :goto_6
    iget-object v4, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mTrackerDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1142
    iget-object v4, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {v4}, Lcom/metamoji/ui/common/UiPlainSlider;->getCurrentValue()I

    move-result v4

    .line 1143
    iget-object v5, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v5, v4}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$mcomposeLabelString(Lcom/metamoji/ui/common/UiPlainSlider;I)Ljava/lang/String;

    move-result-object v5

    .line 1144
    iget-object v7, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmBalloonTextSize(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1145
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1146
    iget-object v7, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmDefaultValue(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v7

    iget-object v8, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    if-ne v7, v4, :cond_a

    invoke-static {v8}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmBalloonTextColorOnDefault(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v4

    goto :goto_7

    :cond_a
    invoke-static {v8}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmBalloonTextColor(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v4

    :goto_7
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1147
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 1149
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1150
    iget v8, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v10, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v8, v10

    .line 1152
    iget-object v10, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v10}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmBalloonWidth(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v10

    int-to-float v10, v10

    .line 1153
    iget-object v11, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v11}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmBalloonHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v11

    int-to-float v11, v11

    .line 1155
    iget-object v13, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v13}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/common/UiPlainSlider;)Z

    move-result v13

    if-eqz v13, :cond_b

    goto/16 :goto_8

    .line 1158
    :cond_b
    iget-object v13, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    div-float v14, v10, v6

    sub-float/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 1159
    iget-object v2, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v13}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmBarHeight(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v13

    sub-int/2addr v9, v13

    int-to-float v9, v9

    sub-float/2addr v9, v12

    iget-object v12, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v12}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmBalloonSpacing(Lcom/metamoji/ui/common/UiPlainSlider;)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v9, v12

    sub-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v2, Landroid/graphics/Rect;->top:I

    .line 1161
    iget-object v2, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->right:I

    .line 1162
    iget-object v2, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    .line 1183
    iget-object v2, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mBalloonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v9, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1184
    iget-object v2, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mBalloonDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1187
    iget-object v2, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v2, v9

    const/high16 v9, 0x42840000    # 66.0f

    div-float/2addr v2, v9

    .line 1188
    iget-object v9, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v9}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmNoValue(Lcom/metamoji/ui/common/UiPlainSlider;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 1189
    iget-object v9, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v7

    div-float/2addr v10, v6

    add-float/2addr v9, v10

    iget-object v7, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v10, v0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->mWorkRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v2

    sub-float/2addr v10, v8

    div-float/2addr v10, v6

    add-float/2addr v7, v10

    iget v2, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v7, v2

    invoke-virtual {v1, v5, v9, v7, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_c
    :goto_8
    return-void
.end method

.method public pos2raw(I)I
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/common/UiPlainSlider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getHeight()I

    move-result v0

    mul-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x1f4

    .line 941
    div-int/lit16 p1, p1, 0x3e8

    sub-int/2addr v0, p1

    return v0

    .line 943
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x1f4

    .line 944
    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public raw2pos(I)I
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->this$0:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiPlainSlider;->-$$Nest$fgetmVertical(Lcom/metamoji/ui/common/UiPlainSlider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getHeight()I

    move-result v0

    sub-int p1, v0, p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 926
    div-int/lit8 v1, v0, 0x2

    add-int/2addr p1, v1

    div-int/2addr p1, v0

    return p1

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiPlainSlider$UiPlainBar;->getWidth()I

    move-result v0

    mul-int/lit16 p1, p1, 0x3e8

    .line 929
    div-int/lit8 v1, v0, 0x2

    add-int/2addr p1, v1

    div-int/2addr p1, v0

    return p1
.end method
