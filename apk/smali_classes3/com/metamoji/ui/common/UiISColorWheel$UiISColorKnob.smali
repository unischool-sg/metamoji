.class public Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;
.super Landroid/view/View;
.source "UiISColorWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiISColorWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UiISColorKnob"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiISColorWheel;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/common/UiISColorWheel;Landroid/content/Context;)V
    .locals 0
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

    .line 138
    iput-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    .line 139
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/common/UiISColorWheel;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;-><init>(Lcom/metamoji/ui/common/UiISColorWheel;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/common/UiISColorWheel;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    .line 147
    invoke-direct {p0, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->getWidth()I

    move-result v0

    .line 156
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->getHeight()I

    move-result v1

    .line 158
    iget-object v2, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v2, v2, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/metamoji/ui/common/UiISColorWheel;->-$$Nest$mdip2px(Lcom/metamoji/ui/common/UiISColorWheel;F)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Lcom/metamoji/ui/common/UiISColorWheel;->-$$Nest$mdip2px(Lcom/metamoji/ui/common/UiISColorWheel;F)I

    move-result v3

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/metamoji/ui/common/UiISColorWheel;->-$$Nest$mdip2px(Lcom/metamoji/ui/common/UiISColorWheel;F)I

    move-result v1

    iget-object v6, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    invoke-static {v6, v2}, Lcom/metamoji/ui/common/UiISColorWheel;->-$$Nest$mdip2px(Lcom/metamoji/ui/common/UiISColorWheel;F)I

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 162
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobPen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobPen:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    invoke-virtual {v1, v5}, Lcom/metamoji/ui/common/UiISColorWheel;->getCurrentColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v1, v1, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v6, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v6, v6, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v7, v7, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobPen:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 167
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobPen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobPen:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobPen:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobPen:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    const/16 v6, 0xff

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v5, v1, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 171
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v1, v1, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v3, v3, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v4, v4, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobPen:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 174
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobPen:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobPen:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobPen:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 177
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v1, v1, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v2, v2, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->this$0:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object v3, v3, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobPen:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
