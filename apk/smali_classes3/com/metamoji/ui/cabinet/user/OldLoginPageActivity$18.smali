.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$18;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->initializeQRCodeCapture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1663
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$18;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1668
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$18;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    iget-boolean v0, v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1672
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$18;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_qrCodeReader(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
