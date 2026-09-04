.class Lcom/metamoji/ui/help/HelpController$2;
.super Ljava/lang/Object;
.source "HelpController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/help/HelpController;->updateViewSub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/help/HelpController;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/help/HelpController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/metamoji/ui/help/HelpController$2;->this$0:Lcom/metamoji/ui/help/HelpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lcom/metamoji/ui/help/HelpController$2;->this$0:Lcom/metamoji/ui/help/HelpController;

    iget-object p1, p1, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-virtual {p1}, Lcom/metamoji/ui/CustomHelpView;->clearAnimation()V

    .line 189
    iget-object p1, p0, Lcom/metamoji/ui/help/HelpController$2;->this$0:Lcom/metamoji/ui/help/HelpController;

    sget-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_SHOW:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    iput-object v0, p1, Lcom/metamoji/ui/help/HelpController;->m_state:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
