.class Lcom/metamoji/noteanytime/ActionBarButton$4;
.super Ljava/lang/Object;
.source "ActionBarButton.java"

# interfaces
.implements Landroid/view/View$OnContextClickListener;


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

    .line 114
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton$4;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/View;)Z
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton$4;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    iget-object p1, p1, Lcom/metamoji/noteanytime/ActionBarButton;->_onContextClickListener:Landroid/view/View$OnContextClickListener;

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton$4;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    iget-object p1, p1, Lcom/metamoji/noteanytime/ActionBarButton;->_onContextClickListener:Landroid/view/View$OnContextClickListener;

    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton$4;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    invoke-interface {p1, v0}, Landroid/view/View$OnContextClickListener;->onContextClick(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
