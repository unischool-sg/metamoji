.class Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;
.super Ljava/lang/Object;
.source "UiImageEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiImageEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScalingInfo"
.end annotation


# instance fields
.field _orgDistance:F

.field _orgMask:Landroid/graphics/RectF;

.field _pid1:I

.field _pid2:I

.field _prevZoom:F

.field final synthetic this$0:Lcom/metamoji/ui/UiImageEditorView;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/UiImageEditorView;Landroid/view/MotionEvent;)V
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

    .line 1139
    iput-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1140
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_pid1:I

    const/4 v0, 0x1

    .line 1141
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_pid2:I

    .line 1142
    new-instance v0, Landroid/graphics/RectF;

    iget-object p1, p1, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_orgMask:Landroid/graphics/RectF;

    .line 1143
    invoke-direct {p0, p2}, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->getDistance(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_orgDistance:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1144
    iput p1, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_prevZoom:F

    return-void
.end method

.method private checkPid(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1186
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    .line 1187
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1188
    iget v3, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_pid1:I

    if-ne v1, v3, :cond_0

    iget v4, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_pid2:I

    if-eq p1, v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_pid2:I

    if-ne v1, v4, :cond_2

    if-ne p1, v3, :cond_2

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private getDistance(Landroid/view/MotionEvent;)F
    .locals 5

    const/4 v0, 0x0

    .line 1198
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 1199
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v1, v1

    float-to-double v3, v0

    .line 1200
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public update(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1154
    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->checkPid(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1158
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->getDistance(Landroid/view/MotionEvent;)F

    move-result p1

    .line 1159
    iget v0, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_orgDistance:F

    div-float/2addr p1, v0

    .line 1160
    iget v0, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_prevZoom:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 1162
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_orgMask:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, p1

    .line 1163
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_orgMask:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr p1, v1

    .line 1164
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_orgMask:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    iget-object v5, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    iget-object v5, v5, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3, v5}, Lcom/metamoji/ui/UiImageEditorView;->limitMin(FF)F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    iget-object v5, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_orgMask:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr p1, v4

    sub-float/2addr v5, p1

    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    iget-object v4, v4, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v4}, Lcom/metamoji/ui/UiImageEditorView;->limitMin(FF)F

    move-result v3

    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    iget-object v5, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_orgMask:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    iget-object v0, v0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4, v5, v0}, Lcom/metamoji/ui/UiImageEditorView;->limitMax(FF)F

    move-result v0

    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    iget-object v5, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->_orgMask:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, p1

    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    iget-object p1, p1, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v5, p1}, Lcom/metamoji/ui/UiImageEditorView;->limitMax(FF)F

    move-result p1

    invoke-direct {v1, v2, v3, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1165
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    iget-object p1, p1, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1167
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/UiImageEditorView;->invalidateMask(Landroid/graphics/RectF;)V

    .line 1168
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-virtual {p1}, Lcom/metamoji/ui/UiImageEditorView;->invalidateHandles()V

    .line 1169
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    iput-object v1, p1, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    .line 1171
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-virtual {p1}, Lcom/metamoji/ui/UiImageEditorView;->calcHandleRects()V

    .line 1172
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-static {p1}, Lcom/metamoji/ui/UiImageEditorView;->-$$Nest$mupdateMask(Lcom/metamoji/ui/UiImageEditorView;)V

    .line 1173
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->this$0:Lcom/metamoji/ui/UiImageEditorView;

    invoke-virtual {p1}, Lcom/metamoji/ui/UiImageEditorView;->invalidateHandles()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
