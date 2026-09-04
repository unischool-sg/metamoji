.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$20;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->changeCameraDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

.field final synthetic val$animation2:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1831
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$20;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$20;->val$animation2:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1839
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$20;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->finalizeQRCodeCapture(Z)V

    .line 1840
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$20;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->initializeQRCodeCapture(Z)V

    .line 1842
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$20;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_cameraSwitchingBtn(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1843
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$20;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_qrCodePreviewBase(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$20;->val$animation2:Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

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
