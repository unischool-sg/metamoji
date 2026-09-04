.class Lcom/metamoji/ui/cabinet/ShareViewFragment$2;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 445
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$2;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 456
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$2;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_pullToRefreshView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$2;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 465
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$2;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    if-nez p2, :cond_0

    .line 462
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_pullToRefreshView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object p1

    sget-object p2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    return-void

    .line 465
    :cond_0
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_pullToRefreshView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    move-result-object p1

    sget-object p2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
