.class Lcom/metamoji/ui/WebPageActivity$6;
.super Ljava/lang/Object;
.source "WebPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/WebPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/WebPageActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/WebPageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/metamoji/ui/WebPageActivity$6;->this$0:Lcom/metamoji/ui/WebPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 335
    new-instance p1, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;

    invoke-direct {p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;-><init>()V

    const/4 v0, 0x1

    .line 336
    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->setFromBrowser(Z)V

    .line 337
    new-instance v0, Lcom/metamoji/ui/WebPageActivity$6$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/WebPageActivity$6$1;-><init>(Lcom/metamoji/ui/WebPageActivity$6;Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 352
    const-string v0, "ScQRCodeReaderDialog"

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeReaderDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
