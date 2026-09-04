.class Lcom/metamoji/ui/common/UiColorSelectionView2$1;
.super Ljava/lang/Object;
.source "UiColorSelectionView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiColorSelectionView2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$1;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$1;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisableRewinder:Z

    .line 243
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$1;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mRewindScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 244
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$1;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iget-object v1, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mRewindScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setScrollX(I)V

    .line 245
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$1;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mRewindScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$1;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {v1, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 248
    iput-boolean v0, v1, Lcom/metamoji/ui/common/UiColorSelectionView2;->mDisableRewinder:Z

    return-void
.end method
