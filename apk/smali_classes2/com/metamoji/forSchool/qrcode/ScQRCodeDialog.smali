.class public Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScQRCodeDialog.java"


# instance fields
.field _imageView:Landroid/widget/ImageView;

.field _qrCodeText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 32
    const-string v0, "ScQRCodeDialog.constructor"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getQrCodeImage()Landroid/graphics/Bitmap;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->_qrCodeText:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    new-instance v1, Lcom/metamoji/cm/Size;

    const/16 v2, 0x190

    invoke-direct {v1, v2, v2}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils;->getQrCodeImage(Ljava/lang/String;Lcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-nez p3, :cond_0

    .line 56
    const-string v0, "new"

    goto :goto_0

    :cond_0
    const-string v0, "restore"

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ScQRCodeDialog.onCreateDialog: %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_qr_code:I

    iput v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->mViewId:I

    .line 59
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_QR_CODE:I

    iput v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->mTitleId:I

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->mDone:Z

    .line 61
    iput-boolean v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->mCancel:Z

    .line 62
    iput-boolean v0, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->mModal:Z

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 78
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz p2, :cond_1

    .line 80
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PASTE_QR_CODE:I

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 84
    const-string p2, "qrCodeText"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->_qrCodeText:Ljava/lang/String;

    .line 87
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->image_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->_imageView:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->getQrCodeImage()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 89
    iget-object p3, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->_imageView:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    const-string v0, "ScQRCodeDialog.onSaveInstanceState"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 103
    const-string v0, "qrCodeText"

    iget-object v1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->_qrCodeText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setQrCodeText(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->_qrCodeText:Ljava/lang/String;

    return-void
.end method
