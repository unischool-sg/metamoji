.class Lcom/metamoji/ui/DetailWindow$23;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailWindow;->openSelector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailWindow;

.field final synthetic val$containerWidth:I

.field final synthetic val$pt:Landroid/graphics/PointF;

.field final synthetic val$vto:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailWindow;ILandroid/graphics/PointF;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1423
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$23;->this$0:Lcom/metamoji/ui/DetailWindow;

    iput p2, p0, Lcom/metamoji/ui/DetailWindow$23;->val$containerWidth:I

    iput-object p3, p0, Lcom/metamoji/ui/DetailWindow$23;->val$pt:Landroid/graphics/PointF;

    iput-object p4, p0, Lcom/metamoji/ui/DetailWindow$23;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1426
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$23;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_popup(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailSelector;->getWidth()I

    move-result v0

    .line 1427
    iget v1, p0, Lcom/metamoji/ui/DetailWindow$23;->val$containerWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/metamoji/ui/DetailWindow$23;->val$pt:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v0, v0

    add-float/2addr v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1428
    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow$23;->val$pt:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/metamoji/ui/DetailWindow$23;->val$pt:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/metamoji/ui/DetailWindow$23;->val$containerWidth:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$23;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_popup(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow$23;->val$pt:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/DetailSelector;->setTranslationX(F)V

    .line 1432
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$23;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_popup(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow$23;->val$pt:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/DetailSelector;->setTranslationY(F)V

    .line 1435
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$23;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
