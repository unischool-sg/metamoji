.class Lcom/metamoji/noteanytime/ActionBarButton$1;
.super Ljava/lang/Object;
.source "ActionBarButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/ActionBarButton;->setFrame(IIII)Z
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

    .line 62
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton$1;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton$1;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/ActionBarButton;->-$$Nest$fput_initPos(Lcom/metamoji/noteanytime/ActionBarButton;Z)V

    .line 66
    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton$1;->this$0:Lcom/metamoji/noteanytime/ActionBarButton;

    invoke-static {v0}, Lcom/metamoji/noteanytime/ActionBarButton;->-$$Nest$madjustButtonPos(Lcom/metamoji/noteanytime/ActionBarButton;)V

    return-void
.end method
