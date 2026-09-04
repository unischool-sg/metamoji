.class Lcom/metamoji/ui/common/UiButton$UiInkColorView;
.super Landroid/view/View;
.source "UiButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiInkColorView"
.end annotation


# instance fields
.field mBorderRect:Landroid/graphics/RectF;

.field mColor:Landroid/graphics/Paint;

.field mColor1:I

.field mColor2:I

.field mColorRect:Landroid/graphics/RectF;

.field mValidColor1:Z

.field mValidColor2:Z

.field final synthetic this$0:Lcom/metamoji/ui/common/UiButton;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/common/UiButton;Landroid/content/Context;)V
    .locals 0
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

    .line 880
    iput-object p1, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->this$0:Lcom/metamoji/ui/common/UiButton;

    .line 881
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 867
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor:Landroid/graphics/Paint;

    .line 868
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mBorderRect:Landroid/graphics/RectF;

    .line 869
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColorRect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 870
    iput p1, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor1:I

    .line 871
    iput p1, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor2:I

    .line 872
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mValidColor1:Z

    .line 873
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mValidColor2:Z

    return-void
.end method

.method private setInkColor(IIZ)V
    .locals 0

    .line 895
    iput p1, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor1:I

    .line 896
    iput p2, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor2:I

    const/4 p1, 0x1

    .line 898
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mValidColor1:Z

    .line 899
    iput-boolean p3, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mValidColor2:Z

    .line 901
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 911
    iget-boolean v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mValidColor1:Z

    if-nez v2, :cond_0

    return-void

    .line 916
    :cond_0
    iget-boolean v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mValidColor2:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    .line 917
    new-array v8, v2, [I

    aput v7, v8, v7

    aput v7, v8, v5

    aput v7, v8, v4

    aput v7, v8, v3

    .line 918
    new-array v2, v2, [F

    const/4 v9, 0x0

    aput v9, v2, v7

    const/high16 v9, 0x3f000000    # 0.5f

    aput v9, v2, v5

    aput v9, v2, v4

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v2, v3

    move-object/from16 v16, v2

    move-object v15, v8

    goto :goto_0

    :cond_1
    move-object v15, v6

    move-object/from16 v16, v15

    .line 922
    :goto_0
    iget-object v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor:Landroid/graphics/Paint;

    const v8, -0x3e3e3f

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 927
    iget-object v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mBorderRect:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiButton;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v9}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiButton;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 934
    iget-boolean v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mValidColor2:Z

    if-nez v2, :cond_2

    .line 936
    iget-object v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor:Landroid/graphics/Paint;

    iget v3, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor1:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 937
    iget-object v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColorRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiButton;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v4}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiButton;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 940
    :cond_2
    iget v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor1:I

    aput v2, v15, v5

    aput v2, v15, v7

    .line 941
    iget v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor2:I

    aput v2, v15, v3

    aput v2, v15, v4

    .line 942
    new-instance v10, Landroid/graphics/LinearGradient;

    iget-object v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColorRect:Landroid/graphics/RectF;

    iget v11, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColorRect:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColorRect:Landroid/graphics/RectF;

    iget v13, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColorRect:Landroid/graphics/RectF;

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    sget-object v17, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 943
    iget-object v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 944
    iget-object v2, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColorRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiButton;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->this$0:Lcom/metamoji/ui/common/UiButton;

    invoke-static {v4}, Lcom/metamoji/ui/common/UiButton;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiButton;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 945
    iget-object v1, v0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 951
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 953
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p4, p1

    int-to-float v0, p2

    const/4 v1, 0x0

    invoke-direct {p3, v1, v1, p4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mBorderRect:Landroid/graphics/RectF;

    .line 954
    new-instance p3, Landroid/graphics/RectF;

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->mColorRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setInkColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 892
    invoke-direct {p0, p1, v0, v0}, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->setInkColor(IIZ)V

    return-void
.end method

.method public setInkColor(II)V
    .locals 1

    const/4 v0, 0x1

    .line 889
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/common/UiButton$UiInkColorView;->setInkColor(IIZ)V

    return-void
.end method
