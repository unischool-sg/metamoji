.class Lcom/metamoji/ui/UiScrollView$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "UiScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/UiScrollView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _scale:F

.field final synthetic this$0:Lcom/metamoji/ui/UiScrollView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/UiScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/metamoji/ui/UiScrollView$1;->this$0:Lcom/metamoji/ui/UiScrollView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 202
    iput p1, p0, Lcom/metamoji/ui/UiScrollView$1;->_scale:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView$1;->this$0:Lcom/metamoji/ui/UiScrollView;

    iget v1, p0, Lcom/metamoji/ui/UiScrollView$1;->_scale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiScrollView;->setScale(F)V

    .line 207
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView$1;->this$0:Lcom/metamoji/ui/UiScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/UiScrollView$1;->_scale:F

    .line 215
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    .line 220
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 221
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView$1;->this$0:Lcom/metamoji/ui/UiScrollView;

    iget v1, p0, Lcom/metamoji/ui/UiScrollView$1;->_scale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiScrollView;->setScale(F)V

    .line 225
    iget-object p1, p0, Lcom/metamoji/ui/UiScrollView$1;->this$0:Lcom/metamoji/ui/UiScrollView;

    invoke-static {p1}, Lcom/metamoji/ui/UiScrollView;->-$$Nest$mgetContentRect(Lcom/metamoji/ui/UiScrollView;)Landroid/graphics/RectF;

    move-result-object p1

    .line 226
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v0, v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "x=%.3f, y=%.3f, w=%.3f, h=%.3f"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ITest.scale"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
