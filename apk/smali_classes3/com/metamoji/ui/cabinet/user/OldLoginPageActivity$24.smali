.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$24;
.super Ljava/util/TimerTask;
.source "OldLoginPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->parseQRCode(Ljava/lang/String;)V
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

    .line 2100
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$24;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2103
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$24;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_qrCodeHideErrorLabelTimer(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2104
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$24;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_qrCodeHideErrorLabelTimer(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2106
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$24;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fputm_qrCodeHideErrorLabelTimer(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Ljava/util/Timer;)V

    .line 2107
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$24$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$24$1;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$24;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
