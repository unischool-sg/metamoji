.class public Lcom/metamoji/ui/dialog/PDFImportOption;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "PDFImportOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/PDFImportOption$IOnResult;,
        Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;,
        Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;
    }
.end annotation


# static fields
.field private static final KEY_LISTENER:Ljava/lang/String; = "Listener"

.field private static sCurrent:Lcom/metamoji/ui/dialog/UiPasswordDialog;


# instance fields
.field locationId:[I

.field m_locationButton:Landroid/widget/RadioGroup;

.field private m_options:Lcom/metamoji/nt/NtPDFImportOptions;

.field private m_pdfImage:Landroid/graphics/Bitmap;

.field private m_pdfSize:Lcom/metamoji/cm/SizeF;

.field m_previewBitmap:Landroid/graphics/Bitmap;

.field m_previewView:Landroid/widget/ImageView;

.field m_rotationButton:Lcom/metamoji/ui/common/UiRadioGroup;

.field rotationId:[I


# direct methods
.method static bridge synthetic -$$Nest$fgetm_options(Lcom/metamoji/ui/dialog/PDFImportOption;)Lcom/metamoji/nt/NtPDFImportOptions;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_options:Lcom/metamoji/nt/NtPDFImportOptions;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatePreview(Lcom/metamoji/ui/dialog/PDFImportOption;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PDFImportOption;->updatePreview()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smasyncPdfImportOption(Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;Lcom/metamoji/nt/NtPDFImportOptions;FFLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/metamoji/ui/dialog/PDFImportOption;->asyncPdfImportOption(Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;Lcom/metamoji/nt/NtPDFImportOptions;FFLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 51
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 65
    new-instance v0, Lcom/metamoji/nt/NtPDFImportOptions;

    invoke-direct {v0}, Lcom/metamoji/nt/NtPDFImportOptions;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_options:Lcom/metamoji/nt/NtPDFImportOptions;

    .line 83
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_pdfopt_rotation_0:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_pdfopt_rotation_90:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->dlg_pdfopt_rotation_180:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->dlg_pdfopt_rotation_270:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->rotationId:[I

    .line 89
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlg_pdfopt_location_c:I

    sget v1, Lcom/metamoji/noteanytime/R$id;->dlg_pdfopt_location_lt:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->dlg_pdfopt_location_rt:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->dlg_pdfopt_location_rb:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->dlg_pdfopt_location_lb:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->locationId:[I

    return-void
.end method

.method private MMJSp_retrieveDisplayScale()F
    .locals 1

    .line 292
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 293
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private static asyncPdfImportOption(Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;Lcom/metamoji/nt/NtPDFImportOptions;FFLandroid/graphics/Bitmap;)V
    .locals 2

    .line 423
    new-instance v0, Lcom/metamoji/ui/dialog/PDFImportOption;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/PDFImportOption;-><init>()V

    .line 424
    new-instance v1, Lcom/metamoji/ui/dialog/PDFImportOption$4;

    invoke-direct {v1, p1, p0}, Lcom/metamoji/ui/dialog/PDFImportOption$4;-><init>(Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;Lcom/metamoji/ui/dialog/PDFImportOption$IPdfOptResult;)V

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/PDFImportOption;->setParams(Lcom/metamoji/ui/dialog/PDFImportOption$IOnResult;)V

    .line 438
    invoke-virtual {v0, p2}, Lcom/metamoji/ui/dialog/PDFImportOption;->setOptions(Lcom/metamoji/nt/NtPDFImportOptions;)V

    .line 439
    invoke-virtual {v0, p3, p4}, Lcom/metamoji/ui/dialog/PDFImportOption;->setPdfSize(FF)V

    .line 440
    invoke-virtual {v0, p5}, Lcom/metamoji/ui/dialog/PDFImportOption;->setPdfimage(Landroid/graphics/Bitmap;)V

    .line 441
    const-string p0, "PdfImportOption"

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/PDFImportOption;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public static dismissAllDialogs()V
    .locals 1

    .line 506
    sget-object v0, Lcom/metamoji/ui/dialog/PDFImportOption;->sCurrent:Lcom/metamoji/ui/dialog/UiPasswordDialog;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/UiPasswordDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private getOnResultListener()Lcom/metamoji/ui/dialog/PDFImportOption$IOnResult;
    .locals 2

    .line 365
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/PDFImportOption;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 369
    :cond_0
    const-string v1, "Listener"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->getAndRemoveRetainData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/dialog/PDFImportOption$IOnResult;

    return-object v0
.end method

.method private makePreView(IILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/metamoji/cm/SizeF;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 338
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 339
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 340
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 341
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 342
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v1, 0x64

    const/16 v3, 0x3c

    .line 344
    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, p7, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 346
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 348
    invoke-virtual {p2, p5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    const/4 p5, -0x1

    .line 349
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 351
    iget p5, p6, Lcom/metamoji/cm/SizeF;->width:F

    iget p6, p6, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p2, p5, p6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 352
    invoke-virtual {p2, p3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 353
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 354
    invoke-virtual {p2, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 355
    iget-object p3, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_pdfImage:Landroid/graphics/Bitmap;

    new-instance p5, Landroid/graphics/Rect;

    iget-object p6, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_pdfImage:Landroid/graphics/Bitmap;

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    iget-object p7, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_pdfImage:Landroid/graphics/Bitmap;

    invoke-virtual {p7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p7

    const/4 v1, 0x0

    invoke-direct {p5, v1, v1, p6, p7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p3, p5, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method private setParams(Lcom/metamoji/ui/dialog/PDFImportOption$IOnResult;)V
    .locals 2

    .line 445
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/PDFImportOption;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 448
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/PDFImportOption;->setArguments(Landroid/os/Bundle;)V

    .line 450
    :cond_0
    const-string v1, "Listener"

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->setRetainData(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setPdfImportOption(Lcom/metamoji/nt/NtPDFImportOptions;FFLandroid/graphics/Bitmap;)Lcom/metamoji/nt/NtPDFImportOptions;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 459
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 460
    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->isBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    new-instance v3, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;

    invoke-direct {v3}, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;-><init>()V

    const/4 v0, 0x1

    .line 465
    invoke-virtual {v1, v0}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    const/4 v8, 0x0

    .line 467
    :try_start_0
    new-instance v2, Lcom/metamoji/ui/dialog/PDFImportOption$5;

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/dialog/PDFImportOption$5;-><init>(Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;Lcom/metamoji/nt/NtPDFImportOptions;FFLandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 479
    invoke-virtual {v3}, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->waitFor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    invoke-virtual {v1, v8}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 487
    invoke-virtual {v3}, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->result()Lcom/metamoji/nt/NtPDFImportOptions;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 481
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 482
    invoke-virtual {v3}, Lcom/metamoji/ui/dialog/PDFImportOption$SyncPdfOpt;->cancel()V

    .line 483
    invoke-virtual {v1, v8}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 484
    throw p0

    .line 461
    :cond_0
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo p1, "syncCheckPasseord() / must be called from sub-thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updatePreview()V
    .locals 15

    .line 182
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_pdfSize:Lcom/metamoji/cm/SizeF;

    .line 183
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PDFImportOption;->MMJSp_retrieveDisplayScale()F

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_previewView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 187
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_previewView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    if-eqz v4, :cond_e

    if-nez v5, :cond_0

    goto/16 :goto_6

    .line 191
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v6, 0x10

    .line 192
    invoke-virtual {v2, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 193
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v6, v7

    .line 194
    iget v7, v0, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr v7, v6

    .line 195
    iget v8, v0, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v6, v8

    .line 196
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-lez v8, :cond_1

    .line 197
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v6, v7

    .line 198
    iget v7, v0, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr v7, v6

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 199
    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v6, v0

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v6, v8

    .line 202
    :cond_1
    new-instance v0, Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-direct {v0, v8, v8, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 203
    iget v9, v2, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    .line 204
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v10, v7

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    .line 205
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v6

    div-float/2addr v2, v7

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-float v2, v11

    add-float/2addr v10, v2

    .line 203
    invoke-virtual {v0, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 209
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_rotationButton:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v2}, Lcom/metamoji/ui/common/UiRadioGroup;->getCurrentButtonIndex()I

    move-result v2

    .line 210
    iget-object v6, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_locationButton:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v6

    .line 213
    iget-object v9, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->locationId:[I

    array-length v10, v9

    move v11, v3

    move v12, v11

    :goto_0
    if-ge v11, v10, :cond_3

    aget v13, v9, v11

    if-ne v13, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v6, 0x4

    if-le v12, v6, :cond_4

    goto :goto_2

    :cond_4
    move v3, v12

    :goto_2
    move v9, v8

    .line 223
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v10, v1

    .line 226
    new-instance v1, Lcom/metamoji/cm/SizeF;

    invoke-direct {v1, v9, v10}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v2, v13, :cond_7

    if-eq v2, v12, :cond_6

    if-eq v2, v11, :cond_5

    :goto_3
    move v14, v7

    goto :goto_4

    :cond_5
    const/high16 v1, 0x43870000    # 270.0f

    .line 240
    invoke-virtual {v8, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v1, v5

    .line 241
    invoke-virtual {v8, v9, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 243
    new-instance v1, Lcom/metamoji/cm/SizeF;

    neg-float v14, v10

    invoke-direct {v1, v14, v9}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    goto :goto_3

    :cond_6
    const/high16 v1, 0x43340000    # 180.0f

    .line 235
    invoke-virtual {v8, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v1, v4

    int-to-float v14, v5

    .line 236
    invoke-virtual {v8, v1, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 237
    new-instance v1, Lcom/metamoji/cm/SizeF;

    neg-float v14, v10

    invoke-direct {v1, v9, v14}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    goto :goto_3

    :cond_7
    const/high16 v1, 0x42b40000    # 90.0f

    .line 230
    invoke-virtual {v8, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v1, v4

    .line 231
    invoke-virtual {v8, v1, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 232
    new-instance v1, Lcom/metamoji/cm/SizeF;

    invoke-direct {v1, v10, v9}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    goto :goto_3

    .line 247
    :goto_4
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    if-eqz v3, :cond_c

    sub-int/2addr v3, v13

    rsub-int/lit8 v2, v2, 0x4

    add-int/2addr v3, v2

    .line 255
    rem-int/2addr v3, v6

    add-int/2addr v3, v13

    .line 256
    iput v9, v7, Landroid/graphics/RectF;->left:F

    .line 257
    iput v9, v7, Landroid/graphics/RectF;->top:F

    .line 258
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, v14

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v2, v9

    iput v2, v7, Landroid/graphics/RectF;->right:F

    .line 259
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v14

    div-float/2addr v2, v9

    iput v2, v7, Landroid/graphics/RectF;->bottom:F

    if-eq v3, v13, :cond_b

    if-eq v3, v12, :cond_a

    if-eq v3, v11, :cond_9

    if-eq v3, v6, :cond_8

    goto :goto_5

    .line 274
    :cond_8
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 275
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    add-float/2addr v3, v6

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v3, v6

    .line 274
    invoke-virtual {v7, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_5

    .line 270
    :cond_9
    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 271
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    add-float/2addr v3, v6

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v3, v6

    .line 270
    invoke-virtual {v7, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_5

    .line 266
    :cond_a
    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_5

    .line 262
    :cond_b
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 279
    :cond_c
    :goto_5
    iget-object v2, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_previewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_d

    .line 280
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    .line 281
    iput-object v2, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_previewBitmap:Landroid/graphics/Bitmap;

    :cond_d
    move-object v3, p0

    move-object v6, v0

    move-object v9, v1

    .line 284
    :try_start_0
    invoke-direct/range {v3 .. v10}, Lcom/metamoji/ui/dialog/PDFImportOption;->makePreView(IILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix;Lcom/metamoji/cm/SizeF;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v3, Lcom/metamoji/ui/dialog/PDFImportOption;->m_previewBitmap:Landroid/graphics/Bitmap;

    .line 285
    iget-object v1, v3, Lcom/metamoji/ui/dialog/PDFImportOption;->m_previewView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_e
    :goto_6
    move-object v3, p0

    :catch_0
    return-void
.end method


# virtual methods
.method public dismissAllowingStateLoss()V
    .locals 2

    .line 493
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->mDealt:Z

    if-nez v0, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PDFImportOption;->getOnResultListener()Lcom/metamoji/ui/dialog/PDFImportOption$IOnResult;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 496
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->mDealt:Z

    const/4 v1, 0x0

    .line 497
    invoke-interface {v0, v1}, Lcom/metamoji/ui/dialog/PDFImportOption$IOnResult;->onResult(Lcom/metamoji/nt/NtPDFImportOptions;)V

    return-void

    .line 502
    :cond_0
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method public getOptions(Lcom/metamoji/nt/NtPDFImportOptions;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_options:Lcom/metamoji/nt/NtPDFImportOptions;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPDFImportOptions;->getLocation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtPDFImportOptions;->setLocation(Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;)V

    .line 74
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_options:Lcom/metamoji/nt/NtPDFImportOptions;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPDFImportOptions;->getRotation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtPDFImportOptions;->setRotation(Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;)V

    return-void
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 1

    .line 308
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    .line 309
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PDFImportOption;->getOnResultListener()Lcom/metamoji/ui/dialog/PDFImportOption$IOnResult;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 311
    invoke-interface {p1, v0}, Lcom/metamoji/ui/dialog/PDFImportOption$IOnResult;->onResult(Lcom/metamoji/nt/NtPDFImportOptions;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 100
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_pdf_import_options:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->mViewId:I

    .line 101
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_Import_PDF_Title:I

    iput v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->mTitleId:I

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 104
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_pdfopt_rotation:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_rotationButton:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 105
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_options:Lcom/metamoji/nt/NtPDFImportOptions;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPDFImportOptions;->getRotationIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 106
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_rotationButton:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance v0, Lcom/metamoji/ui/dialog/PDFImportOption$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/PDFImportOption$1;-><init>(Lcom/metamoji/ui/dialog/PDFImportOption;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 120
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_pdfopt_location:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_locationButton:Landroid/widget/RadioGroup;

    .line 121
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->locationId:[I

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_options:Lcom/metamoji/nt/NtPDFImportOptions;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPDFImportOptions;->getLocationIndex()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 122
    iget-object p2, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_locationButton:Landroid/widget/RadioGroup;

    new-instance v0, Lcom/metamoji/ui/dialog/PDFImportOption$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/dialog/PDFImportOption$2;-><init>(Lcom/metamoji/ui/dialog/PDFImportOption;)V

    invoke-virtual {p2, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 136
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_pdfopt_preview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_previewView:Landroid/widget/ImageView;

    if-nez p3, :cond_0

    .line 138
    new-instance p3, Lcom/metamoji/ui/dialog/PDFImportOption$3;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/PDFImportOption$3;-><init>(Lcom/metamoji/ui/dialog/PDFImportOption;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/PDFImportOption;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->mDealt:Z

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/PDFImportOption;->onCancel(Landroid/content/DialogInterface;)V

    .line 322
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 1

    .line 298
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 299
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PDFImportOption;->getOnResultListener()Lcom/metamoji/ui/dialog/PDFImportOption$IOnResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_options:Lcom/metamoji/nt/NtPDFImportOptions;

    invoke-interface {p1, v0}, Lcom/metamoji/ui/dialog/PDFImportOption$IOnResult;->onResult(Lcom/metamoji/nt/NtPDFImportOptions;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 165
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onResume()V

    .line 166
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/PDFImportOption;->updatePreview()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 171
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 173
    sget-object v0, Lcom/metamoji/ui/dialog/PDFImportOption;->Key_CancelDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setOptions(Lcom/metamoji/nt/NtPDFImportOptions;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_options:Lcom/metamoji/nt/NtPDFImportOptions;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPDFImportOptions;->getLocation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPDFImportOptions;->setLocation(Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;)V

    .line 69
    iget-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_options:Lcom/metamoji/nt/NtPDFImportOptions;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPDFImportOptions;->getRotation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtPDFImportOptions;->setRotation(Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;)V

    return-void
.end method

.method public setPdfSize(FF)V
    .locals 1

    .line 62
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_pdfSize:Lcom/metamoji/cm/SizeF;

    return-void
.end method

.method public setPdfimage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PDFImportOption;->m_pdfImage:Landroid/graphics/Bitmap;

    return-void
.end method
