.class Lcom/metamoji/noteanytime/ActionBarButton$2;
.super Ljava/lang/Object;
.source "ActionBarButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 93
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton$2;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton$2;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    iget-object p1, p1, Lcom/metamoji/noteanytime/ActionBarButton;->_onClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton$2;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    iget-object p1, p1, Lcom/metamoji/noteanytime/ActionBarButton;->_onClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton$2;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
