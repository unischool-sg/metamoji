.class Lcom/metamoji/mazec/ui/HandwritingPanel$2;
.super Ljava/lang/Object;
.source "HandwritingPanel.java"

# interfaces
.implements Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/HandwritingPanel;->initView(Lcom/metamoji/mazec/MazecIms;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/HandwritingPanel;

.field final synthetic val$slsButton:Landroid/widget/ImageView;

.field final synthetic val$srsButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/HandwritingPanel;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 187
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel$2;->this$0:Lcom/metamoji/mazec/ui/HandwritingPanel;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/HandwritingPanel$2;->val$srsButton:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/metamoji/mazec/ui/HandwritingPanel$2;->val$slsButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayouting(Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel$2;->val$srsButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->canScrollRight()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel$2;->val$slsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->canScrollLeft()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onScrollChanged(Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;IIII)V
    .locals 0

    .line 189
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandwritingPanel$2;->this$0:Lcom/metamoji/mazec/ui/HandwritingPanel;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/HandwritingPanel;->-$$Nest$fgetmHwView(Lcom/metamoji/mazec/ui/HandwritingPanel;)Lcom/metamoji/mazec/ui/HandWritingView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->getScrollX()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/metamoji/mazec/ui/HandWritingView;->updateScrollX(I)V

    .line 191
    sget-object p2, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->AMAZON:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object p3, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne p2, p3, :cond_0

    .line 192
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandwritingPanel$2;->this$0:Lcom/metamoji/mazec/ui/HandwritingPanel;

    invoke-static {p2}, Lcom/metamoji/mazec/ui/HandwritingPanel;->-$$Nest$fgetmHwView(Lcom/metamoji/mazec/ui/HandwritingPanel;)Lcom/metamoji/mazec/ui/HandWritingView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/mazec/ui/HandWritingView;->invalidate()V

    .line 194
    :cond_0
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandwritingPanel$2;->val$srsButton:Landroid/widget/ImageView;

    const/4 p3, 0x0

    const/4 p4, 0x4

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->canScrollRight()Z

    move-result p5

    if-eqz p5, :cond_1

    move p5, p3

    goto :goto_0

    :cond_1
    move p5, p4

    :goto_0
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    :cond_2
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandwritingPanel$2;->val$slsButton:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->canScrollLeft()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p3, p4

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method
