.class Lcom/metamoji/ui/cabinet/ShareViewFragment$18;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;->endShareViewWaiting()V
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

    .line 2193
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$18;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2197
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$18;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_waitingView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2198
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$18;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_waitingView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2200
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$18;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/metamoji/ui/cabinet/ShareViewActivity;

    if-eqz v0, :cond_1

    .line 2201
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$18;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/ShareViewActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->notifyShareViewWaiting(Z)V

    .line 2203
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$18;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_refreshIndicatorView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$18;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_refreshIndicatorAnimation(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2204
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$18;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_refreshIndicatorView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2205
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$18;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_refreshIndicatorView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method
