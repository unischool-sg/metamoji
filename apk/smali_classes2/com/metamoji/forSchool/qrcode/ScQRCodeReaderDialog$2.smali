.class Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$2;
.super Ljava/util/TimerTask;
.source "ScQRCodeReaderDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->parseQRCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;


# direct methods
.method public static synthetic $r8$lambda$UKNDT2QeWgvK-6iu1FYYvdQNoVE(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$2;->lambda$run$0()V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 571
    iput-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$2;->this$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$2;->this$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    invoke-static {v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->-$$Nest$fget_qrCodeErrorLabel(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 574
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$2;->this$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    invoke-static {v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->-$$Nest$fget_qrCodeHideErrorLabelTimer(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$2;->this$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    invoke-static {v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->-$$Nest$fget_qrCodeHideErrorLabelTimer(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$2;->this$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->-$$Nest$fput_qrCodeHideErrorLabelTimer(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;Ljava/util/Timer;)V

    .line 578
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$2$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$2;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
