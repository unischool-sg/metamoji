.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$19;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->finalizeQRCodeCapture(Z)V
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

    .line 1732
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$19;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1734
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$19;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_qrCodeReader(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
