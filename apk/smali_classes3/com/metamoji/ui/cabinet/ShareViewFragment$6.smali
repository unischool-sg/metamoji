.class Lcom/metamoji/ui/cabinet/ShareViewFragment$6;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnPullEventListener<",
        "Lcom/metamoji/ui/common/UiOuterScrollView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 529
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$6;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPullEvent(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Lcom/metamoji/ui/common/UiOuterScrollView;",
            ">;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            ")V"
        }
    .end annotation

    .line 535
    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq p2, p1, :cond_0

    sget-object p1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    if-eq p2, p1, :cond_0

    .line 536
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$6;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_refreshIndicatorView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPullEvent(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<",
            "Lcom/metamoji/ui/common/UiOuterScrollView;",
            ">;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;",
            "II)V"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 546
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$6;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_refreshIndicatorView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    mul-int/lit8 p5, p5, 0xc

    .line 549
    div-int/2addr p5, p4

    .line 550
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$6;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_refreshIndicatorImageList(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ltz p5, :cond_1

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$6;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_refreshIndicatorImageList(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p5, p1, :cond_1

    .line 551
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$6;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_refreshIndicatorView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$6;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_refreshIndicatorImageList(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$6;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_refreshIndicatorView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
