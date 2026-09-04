.class Lcom/metamoji/noteanytime/ActionBarButton$Body;
.super Landroid/widget/ImageButton;
.source "ActionBarButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/ActionBarButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Body"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/ActionBarButton;


# direct methods
.method public constructor <init>(Lcom/metamoji/noteanytime/ActionBarButton;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton$Body;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    .line 177
    invoke-direct {p0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 182
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/ActionBarButton$Body;->isEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 195
    :cond_2
    iget-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton$Body;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    invoke-static {p1}, Lcom/metamoji/noteanytime/ActionBarButton;->-$$Nest$fget_container(Lcom/metamoji/noteanytime/ActionBarButton;)Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton$Body;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    invoke-static {v0}, Lcom/metamoji/noteanytime/ActionBarButton;->-$$Nest$mgetCenter(Lcom/metamoji/noteanytime/ActionBarButton;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-interface {p1, v0, v3, v1}, Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;->setActionBarButtonPressed(Landroid/view/View;Landroid/graphics/PointF;Z)V

    goto :goto_0

    .line 191
    :cond_3
    iget-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton$Body;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    invoke-static {p1}, Lcom/metamoji/noteanytime/ActionBarButton;->-$$Nest$fget_container(Lcom/metamoji/noteanytime/ActionBarButton;)Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton$Body;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    invoke-static {v0}, Lcom/metamoji/noteanytime/ActionBarButton;->-$$Nest$mgetCenter(Lcom/metamoji/noteanytime/ActionBarButton;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;->setActionBarButtonPressed(Landroid/view/View;Landroid/graphics/PointF;Z)V

    :goto_0
    return v2
.end method
