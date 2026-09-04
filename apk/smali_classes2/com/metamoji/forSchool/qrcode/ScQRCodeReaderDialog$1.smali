.class Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$1;
.super Ljava/util/TimerTask;
.source "ScQRCodeReaderDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->startQRCodeCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;


# direct methods
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

    .line 503
    iput-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$1;->this$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog$1;->this$0:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    invoke-static {v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->-$$Nest$fget_qrCodeCamera(Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[QRCode] auto focus Failed.\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-void
.end method
