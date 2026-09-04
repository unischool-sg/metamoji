.class Lcom/metamoji/ui/WebPageActivity$6$1;
.super Ljava/lang/Object;
.source "WebPageActivity.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/WebPageActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/WebPageActivity$6;

.field final synthetic val$dlg:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/WebPageActivity$6;Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V
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

    .line 337
    iput-object p1, p0, Lcom/metamoji/ui/WebPageActivity$6$1;->this$1:Lcom/metamoji/ui/WebPageActivity$6;

    iput-object p2, p0, Lcom/metamoji/ui/WebPageActivity$6$1;->val$dlg:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_1

    .line 341
    iget-object p1, p0, Lcom/metamoji/ui/WebPageActivity$6$1;->val$dlg:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->getQrCodeText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/WebPageActivity$6$1;->val$dlg:Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    invoke-virtual {p2}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/WebPageActivity;

    .line 347
    invoke-static {p2}, Lcom/metamoji/ui/WebPageActivity;->-$$Nest$fget_webView(Lcom/metamoji/ui/WebPageActivity;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
