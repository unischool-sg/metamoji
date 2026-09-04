.class Lcom/metamoji/ui/library/item/LibraryPageView$4;
.super Ljava/lang/Object;
.source "LibraryPageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryPageView;->updateContentOffsetByPartView(Lcom/metamoji/ui/library/item/LibraryPartView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

.field final synthetic val$partView:Lcom/metamoji/ui/library/item/LibraryPartView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryPageView;Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 517
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPageView$4;->val$partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 522
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView$4;->val$partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPartView;->getTranslationY()F

    move-result v0

    .line 523
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    iget-object v2, v2, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->width:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    iget-object v3, v3, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v3, v3, Lcom/metamoji/cm/Size;->height:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    const/4 v4, 0x0

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 524
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView$4;->val$partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPartView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-static {v1, v0, v2}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/RectF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryPageView;->getScrollY()I

    move-result v1

    .line 527
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryPageView;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v3}, Lcom/metamoji/ui/library/item/LibraryPageView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 529
    iget v3, v0, Landroid/graphics/RectF;->top:F

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {v1, v3, v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->scrollTo(II)V

    return-void

    .line 533
    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView$4;->this$0:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryPageView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v3, v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->scrollTo(II)V

    :cond_1
    return-void
.end method
