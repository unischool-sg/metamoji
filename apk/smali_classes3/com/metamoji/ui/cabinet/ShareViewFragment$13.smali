.class Lcom/metamoji/ui/cabinet/ShareViewFragment$13;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;
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

    .line 1315
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1318
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1321
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v1, p2}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->pointToPosition(II)I

    move-result p1

    .line 1322
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_normalView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/cabinet/ShareViewNormalGridView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    .line 1323
    instance-of p2, p1, Landroid/widget/LinearLayout;

    if-nez p2, :cond_1

    return v0

    .line 1329
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_currentView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1330
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fget_currentView(Lcom/metamoji/ui/cabinet/ShareViewFragment;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setActivated(Z)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 p2, 0x1

    .line 1336
    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    .line 1338
    :cond_3
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$13;->this$0:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    invoke-static {p2, p1}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$fput_currentView(Lcom/metamoji/ui/cabinet/ShareViewFragment;Landroid/view/View;)V

    :goto_0
    return v0
.end method
