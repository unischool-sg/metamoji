.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21$1;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1857
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21$1;->this$1:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1860
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21$1;->this$1:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$21;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_cameraSwitchingBtn(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
