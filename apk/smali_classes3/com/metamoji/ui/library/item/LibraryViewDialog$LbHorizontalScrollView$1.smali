.class Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;-><init>(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryViewDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2006
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2009
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mDisableRewinder:Z

    .line 2010
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mRewindScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2011
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    iget-object v1, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mRewindScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->setScrollX(I)V

    .line 2012
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mRewindScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    .line 2015
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    if-nez v0, :cond_0

    .line 2013
    invoke-virtual {v1, p0}, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2015
    iput-boolean v0, v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->mDisableRewinder:Z

    .line 2016
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView$1;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;

    iget-object v1, v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$LbHorizontalScrollView;->m_dlg:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget-object v1, v1, Lcom/metamoji/ui/library/item/LibraryViewDialog;->m_scrollContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
