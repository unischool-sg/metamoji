.class public Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils;
.super Ljava/lang/Object;
.source "ScQRCodeUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final QR_CODE_TEXT_MAX:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQrCodeImage(Ljava/lang/String;Lcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;
    .locals 6

    .line 40
    :try_start_0
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeEncoder;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;-><init>()V

    .line 42
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 45
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "UTF-8"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    move-object v1, p0

    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 56
    :goto_1
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iget v3, p1, Lcom/metamoji/cm/Size;->width:I

    iget v4, p1, Lcom/metamoji/cm/Size;->height:I

    invoke-virtual/range {v0 .. v5}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;->encodeBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 59
    const-string p1, "createBitmapFailed"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isWebUnitEnabled()Z
    .locals 3

    .line 68
    invoke-static {}, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->isMushroomEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 70
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v2, Lcom/metamoji/nt/NtFeature;->AppUnavailableWebUnit:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$showQRCode$0(Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 174
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->getQrCodeImage()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 178
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    .line 181
    new-instance p2, Lcom/metamoji/cm/CmContext;

    invoke-direct {p2}, Lcom/metamoji/cm/CmContext;-><init>()V

    invoke-static {p0, p2, p1}, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils;->pasteQRCodeImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    :cond_0
    return-void
.end method

.method public static pasteQRCodeImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 11

    const/4 v0, 0x0

    .line 78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "highResolution"

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x438

    const/16 v2, 0x5a0

    goto :goto_0

    :cond_0
    const/16 v1, 0x21c

    const/16 v2, 0x2d0

    .line 88
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4, v1, v2}, Lcom/metamoji/cm/ImageUtils;->getBitmapScale(IIII)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 90
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    if-gez v2, :cond_1

    .line 92
    invoke-virtual {v8, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 94
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 95
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    if-nez p0, :cond_3

    return-void

    :cond_2
    move-object v3, p0

    .line 105
    :cond_3
    invoke-static {}, Lcom/metamoji/un/image/UnImageUnit;->isImageUnitWithJPEG()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->hasTransparentPixels(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 106
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v2, Lcom/metamoji/un/image/UnImageUnit;->MMJUN_IMAGE_JPEG_QUALITY:I

    invoke-static {p0, v1, v2}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Lcom/metamoji/cm/Blob;

    move-result-object p0

    goto :goto_1

    .line 108
    :cond_4
    invoke-static {p0}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;)Lcom/metamoji/cm/Blob;

    move-result-object p0

    .line 110
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    if-nez p0, :cond_5

    .line 113
    const-string p0, "addImageUnit: Cannot retrieve data."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 117
    :cond_5
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/metamoji/df/controller/AttachmentsManager;->registerAttachment(Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    .line 121
    invoke-static {v2, v1}, Lcom/metamoji/un/image/UnImageUnit;->createImageModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 125
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    .line 127
    invoke-static {p0}, Lcom/metamoji/cm/ImageUtils;->getBitmapSizeFromBlob(Lcom/metamoji/cm/Blob;)Lcom/metamoji/cm/Size;

    move-result-object p0

    .line 129
    iget v3, p0, Lcom/metamoji/cm/Size;->width:I

    int-to-float v3, v3

    .line 130
    iget p0, p0, Lcom/metamoji/cm/Size;->height:I

    int-to-float p0, p0

    .line 133
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    .line 134
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v2

    div-float/2addr v2, v5

    cmpl-float v5, v3, v4

    if-lez v5, :cond_6

    float-to-double v5, v3

    float-to-double v7, p0

    float-to-double v9, v4

    div-double/2addr v9, v5

    mul-double/2addr v7, v9

    double-to-float p0, v7

    move v3, v4

    :cond_6
    cmpl-float v4, p0, v2

    if-lez v4, :cond_7

    float-to-double v4, p0

    float-to-double v6, v3

    float-to-double v8, v2

    div-double/2addr v8, v4

    mul-double/2addr v6, v8

    double-to-float v3, v6

    goto :goto_2

    :cond_7
    move v2, p0

    .line 149
    :goto_2
    const-string p0, "width"

    float-to-double v3, v3

    invoke-interface {v1, p0, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 150
    const-string p0, "height"

    float-to-double v2, v2

    invoke-interface {v1, p0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 153
    const-string p0, "tapPos"

    sget-object v2, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->CENTERCENTER:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {p1, p0, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    const-string p0, "toFocus"

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 158
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "toSelect"

    invoke-virtual {p1, v0, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    invoke-virtual {p2, v1, p1}, Lcom/metamoji/nt/NtUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public static showQRCode(Ljava/lang/String;)V
    .locals 2

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 166
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_ERROR_QR_CODE_TEXT_MAX:I

    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 170
    :cond_0
    new-instance v0, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;

    invoke-direct {v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;-><init>()V

    .line 171
    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->setQrCodeText(Ljava/lang/String;)V

    .line 172
    new-instance p0, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeUtils$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 185
    const-string p0, "ScQRCodeDialog"

    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/qrcode/ScQRCodeDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
