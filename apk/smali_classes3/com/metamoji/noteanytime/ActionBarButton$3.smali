.class Lcom/metamoji/noteanytime/ActionBarButton$3;
.super Ljava/lang/Object;
.source "ActionBarButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/ActionBarButton;->adjustButtonPos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/ActionBarButton;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/ActionBarButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton$3;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton$3;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    iget-object p1, p1, Lcom/metamoji/noteanytime/ActionBarButton;->_onLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton$3;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    iget-object p1, p1, Lcom/metamoji/noteanytime/ActionBarButton;->_onLongClickListener:Landroid/view/View$OnLongClickListener;

    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton$3;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
