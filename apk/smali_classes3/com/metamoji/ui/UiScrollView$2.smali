.class Lcom/metamoji/ui/UiScrollView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
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

    .line 230
    iput-object p1, p0, Lcom/metamoji/ui/UiScrollView$2;->this$0:Lcom/metamoji/ui/UiScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 240
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .line 246
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView$2;->this$0:Lcom/metamoji/ui/UiScrollView;

    invoke-virtual {v0}, Lcom/metamoji/ui/UiScrollView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 247
    iget-object v1, p0, Lcom/metamoji/ui/UiScrollView$2;->this$0:Lcom/metamoji/ui/UiScrollView;

    invoke-virtual {v1}, Lcom/metamoji/ui/UiScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, p3

    add-float/2addr v1, p4

    .line 252
    iget-object v2, p0, Lcom/metamoji/ui/UiScrollView$2;->this$0:Lcom/metamoji/ui/UiScrollView;

    invoke-static {v2}, Lcom/metamoji/ui/UiScrollView;->-$$Nest$mgetContentRect(Lcom/metamoji/ui/UiScrollView;)Landroid/graphics/RectF;

    move-result-object v2

    .line 253
    iget-object v3, p0, Lcom/metamoji/ui/UiScrollView$2;->this$0:Lcom/metamoji/ui/UiScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/metamoji/ui/UiScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 254
    iget-object v4, p0, Lcom/metamoji/ui/UiScrollView$2;->this$0:Lcom/metamoji/ui/UiScrollView;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-static {v4, v0, v5, v6}, Lcom/metamoji/ui/UiScrollView;->-$$Nest$mlimitScrollX(Lcom/metamoji/ui/UiScrollView;FFF)F

    move-result v0

    .line 255
    iget-object v4, p0, Lcom/metamoji/ui/UiScrollView$2;->this$0:Lcom/metamoji/ui/UiScrollView;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v4, v1, v2, v3}, Lcom/metamoji/ui/UiScrollView;->-$$Nest$mlimitScrollY(Lcom/metamoji/ui/UiScrollView;FFF)F

    move-result v1

    .line 257
    iget-object v2, p0, Lcom/metamoji/ui/UiScrollView$2;->this$0:Lcom/metamoji/ui/UiScrollView;

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/metamoji/ui/UiScrollView;->setScrollX(I)V

    .line 258
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView$2;->this$0:Lcom/metamoji/ui/UiScrollView;

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiScrollView;->setScrollY(I)V

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
