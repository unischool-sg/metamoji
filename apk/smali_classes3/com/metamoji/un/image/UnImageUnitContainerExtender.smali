.class public Lcom/metamoji/un/image/UnImageUnitContainerExtender;
.super Ljava/lang/Object;
.source "UnImageUnitContainerExtender.java"

# interfaces
.implements Lcom/metamoji/nt/INtUnitContainerExtender;


# direct methods
.method static bridge synthetic -$$Nest$mhandleAddImageUnit(Lcom/metamoji/un/image/UnImageUnitContainerExtender;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->handleAddImageUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRotateAngle(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 172
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 173
    const-string p0, "Orientation"

    invoke-virtual {v1, p0, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    const/16 p0, 0x5a

    return p0

    :cond_0
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    const/16 p0, 0xb4

    return p0

    :cond_1
    const/16 v1, 0x8

    if-ne p0, v1, :cond_2

    const/16 p0, 0x10e

    return p0

    :cond_2
    return v0

    :catch_0
    move-exception p0

    .line 183
    const-string v1, "UnImageUnitContainerExtender.getRotateAngle"

    invoke-static {p0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method private handleAddImageUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 0

    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->addImageUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return-void
.end method

.method private handleInternalAddImageUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 2

    .line 122
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/image/UnImageUnitContainerExtender$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/un/image/UnImageUnitContainerExtender$1;-><init>(Lcom/metamoji/un/image/UnImageUnitContainerExtender;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleReadFromAlbum(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 1

    .line 476
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object p1

    .line 477
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 479
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/metamoji/un/image/UnImageUnit;

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/image/UnImageUnit;

    if-eqz p1, :cond_0

    .line 481
    invoke-virtual {p1}, Lcom/metamoji/un/image/UnImageUnit;->replaceImage()V

    :cond_0
    return-void
.end method

.method public static hasTransparentPixels(Landroid/graphics/Bitmap;)Z
    .locals 9

    .line 194
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 195
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v8, v3, v7

    .line 196
    new-array v1, v8, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    move-object v0, p0

    .line 197
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, v8, :cond_1

    .line 198
    aget v2, v1, v0

    .line 199
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static imageFromBlob(Lcom/metamoji/cm/Blob;Z)Lcom/metamoji/cm/Blob;
    .locals 9

    if-eqz p1, :cond_0

    const/16 p1, 0x438

    const/16 v0, 0x5a0

    goto :goto_0

    :cond_0
    const/16 p1, 0x21c

    const/16 v0, 0x2d0

    :goto_0
    const/4 v1, 0x0

    .line 341
    :try_start_0
    invoke-static {p0, p1, v0, v1}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 345
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p0, v3, p1, v0}, Lcom/metamoji/cm/ImageUtils;->getBitmapScale(IIII)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    div-float p0, p1, p0

    cmpg-float p1, p0, p1

    if-gez p1, :cond_4

    .line 347
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    if-gez p1, :cond_2

    .line 349
    invoke-virtual {v7, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 351
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 352
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    move-object v2, p0

    .line 360
    :cond_4
    invoke-static {}, Lcom/metamoji/un/image/UnImageUnit;->isImageUnitWithJPEG()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v2}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->hasTransparentPixels(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 361
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget p1, Lcom/metamoji/un/image/UnImageUnit;->MMJUN_IMAGE_JPEG_QUALITY:I

    invoke-static {v2, p0, p1}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Lcom/metamoji/cm/Blob;

    move-result-object p0

    goto :goto_1

    .line 363
    :cond_5
    invoke-static {v2}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;)Lcom/metamoji/cm/Blob;

    move-result-object p0

    .line 365
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 368
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public addImageUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 12

    if-nez p1, :cond_0

    .line 378
    const-string p1, "addImageUnit: No context, No image."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 381
    :cond_0
    const-string v0, "imageSource"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 383
    const-string p1, "addImageUnit: No image data."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 387
    :cond_1
    const-string v1, "highResolution"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 390
    instance-of v3, v0, Landroid/net/Uri;

    if-eqz v3, :cond_2

    .line 391
    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->imageFromUri(Landroid/net/Uri;Z)Lcom/metamoji/cm/Blob;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_2
    instance-of v3, v0, Ljava/io/File;

    if-eqz v3, :cond_3

    .line 393
    check-cast v0, Ljava/io/File;

    const-string v3, "deleteFile"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->imageFromFile(Ljava/io/File;ZZ)Lcom/metamoji/cm/Blob;

    move-result-object v0

    goto :goto_0

    .line 394
    :cond_3
    instance-of v3, v0, Lcom/metamoji/noteanytime/cm/IntentContent;

    if-eqz v3, :cond_4

    .line 395
    check-cast v0, Lcom/metamoji/noteanytime/cm/IntentContent;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->imageFromIntentContent(Lcom/metamoji/noteanytime/cm/IntentContent;Z)Lcom/metamoji/cm/Blob;

    move-result-object v0

    goto :goto_0

    .line 396
    :cond_4
    instance-of v3, v0, Lcom/metamoji/cm/Blob;

    if-eqz v3, :cond_8

    .line 398
    check-cast v0, Lcom/metamoji/cm/Blob;

    invoke-static {v0, v1}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->imageFromBlob(Lcom/metamoji/cm/Blob;Z)Lcom/metamoji/cm/Blob;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_5

    .line 408
    const-string p1, "addImageUnit: Cannot retrieve data."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 416
    :cond_5
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v1

    .line 417
    invoke-virtual {v0}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/metamoji/df/controller/AttachmentsManager;->registerAttachment(Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v3

    .line 420
    invoke-virtual {p0, v3, v1, p1}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->createImageUnitModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Lcom/metamoji/cm/CmContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 424
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    .line 426
    invoke-static {v0}, Lcom/metamoji/cm/ImageUtils;->getBitmapSizeFromBlob(Lcom/metamoji/cm/Blob;)Lcom/metamoji/cm/Size;

    move-result-object v0

    .line 427
    iget v4, v0, Lcom/metamoji/cm/Size;->width:I

    int-to-float v4, v4

    .line 428
    iget v0, v0, Lcom/metamoji/cm/Size;->height:I

    int-to-float v0, v0

    .line 431
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    .line 432
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v3

    div-float/2addr v3, v6

    cmpl-float v6, v4, v5

    if-lez v6, :cond_6

    float-to-double v6, v4

    float-to-double v8, v0

    float-to-double v10, v5

    div-double/2addr v10, v6

    mul-double/2addr v8, v10

    double-to-float v0, v8

    move v4, v5

    :cond_6
    cmpl-float v5, v0, v3

    if-lez v5, :cond_7

    float-to-double v5, v0

    float-to-double v7, v4

    float-to-double v9, v3

    div-double/2addr v9, v5

    mul-double/2addr v7, v9

    double-to-float v4, v7

    goto :goto_1

    :cond_7
    move v3, v0

    .line 447
    :goto_1
    const-string/jumbo v0, "width"

    float-to-double v4, v4

    invoke-interface {v1, v0, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 448
    const-string v0, "height"

    float-to-double v3, v3

    invoke-interface {v1, v0, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 451
    const-string/jumbo v0, "tapPos"

    sget-object v3, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->CENTERCENTER:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {p1, v0, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 454
    const-string/jumbo v0, "toFocus"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 456
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v2, "toSelect"

    invoke-virtual {p1, v2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 458
    invoke-virtual {p2, v1, p1}, Lcom/metamoji/nt/NtUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 403
    :cond_8
    const-string p1, "addImageUnit: Unknown data source."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public commandsForChildUnit(Lcom/metamoji/nt/NtUnitController;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtUnitController;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtUnitCommandInfo;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/metamoji/un/image/UnImageUnit;

    if-eqz v0, :cond_2

    .line 58
    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/image/UnImageUnit;

    .line 59
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_EDIT_PHOTO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 64
    new-instance v4, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_EDIT_PHOTO:Lcom/metamoji/nt/NtCommand;

    sget v7, Lcom/metamoji/noteanytime/R$string;->ContextMenu_EditImage:I

    invoke-virtual {p1, v7}, Lcom/metamoji/nt/NtUnitController;->loadResourceString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7, v1, v5}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskHeight()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskWidth()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_IMAGE_TO_ALBUM:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_IMAGE_TO_ALBUM:Lcom/metamoji/nt/NtCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_DL_MENU_LABEL:I

    invoke-virtual {p1, v4}, Lcom/metamoji/nt/NtUnitController;->loadResourceString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1, v1, v5}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v3

    :cond_2
    return-object v1
.end method

.method protected createImageUnitModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Lcom/metamoji/cm/CmContext;)Lcom/metamoji/df/model/IModel;
    .locals 0

    .line 160
    invoke-static {p1, p2}, Lcom/metamoji/un/image/UnImageUnit;->createImageModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    return-object p1
.end method

.method protected handleEditImage(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 1

    .line 493
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object p1

    .line 494
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 496
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/metamoji/un/image/UnImageUnit;

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/image/UnImageUnit;

    if-eqz p1, :cond_0

    .line 498
    invoke-virtual {p1}, Lcom/metamoji/un/image/UnImageUnit;->editImage()V

    :cond_0
    return-void
.end method

.method protected handleSaveImage(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 1

    .line 508
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    .line 509
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_IMAGE_TO_ALBUM:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object p1

    .line 514
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    .line 515
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/metamoji/un/image/UnImageUnit;

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/image/UnImageUnit;

    if-eqz p1, :cond_1

    .line 517
    invoke-static {p1}, Lcom/metamoji/un/image/UnImageSaveTask;->saveImage(Lcom/metamoji/un/image/UnImageUnit;)V

    :cond_1
    :goto_0
    return-void
.end method

.method imageFromFile(Ljava/io/File;ZZ)Lcom/metamoji/cm/Blob;
    .locals 10

    if-eqz p2, :cond_0

    const/16 p2, 0x438

    const/16 v0, 0x5a0

    goto :goto_0

    :cond_0
    const/16 p2, 0x21c

    const/16 v0, 0x2d0

    :goto_0
    const/4 v1, 0x0

    .line 221
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, v0, v1}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile(Ljava/lang/String;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    if-eqz p3, :cond_1

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    return-object v1

    .line 225
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v2, v4, p2, v0}, Lcom/metamoji/cm/ImageUtils;->getBitmapScale(IIII)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p2, v0, p2

    .line 226
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->getRotateAngle(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    cmpg-float v4, p2, v0

    if-gez v4, :cond_8

    .line 228
    :cond_3
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v2, :cond_4

    int-to-float v2, v2

    .line 230
    invoke-virtual {v8, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_4
    cmpg-float v0, p2, v0

    if-gez v0, :cond_5

    .line 233
    invoke-virtual {v8, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 235
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 236
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_7

    if-eqz p3, :cond_6

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_6
    return-object v1

    :cond_7
    move-object v3, p2

    .line 244
    :cond_8
    :try_start_2
    invoke-static {}, Lcom/metamoji/un/image/UnImageUnit;->isImageUnitWithJPEG()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {v3}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->hasTransparentPixels(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 245
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v0, Lcom/metamoji/un/image/UnImageUnit;->MMJUN_IMAGE_JPEG_QUALITY:I

    invoke-static {v3, p2, v0}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Lcom/metamoji/cm/Blob;

    move-result-object p2

    goto :goto_1

    .line 247
    :cond_9
    invoke-static {v3}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;)Lcom/metamoji/cm/Blob;

    move-result-object p2

    .line 249
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_a

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_a
    return-object p2

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 252
    :try_start_3
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p3, :cond_b

    .line 256
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_b
    return-object v1

    :catchall_1
    move-exception v0

    move-object p2, v0

    if-eqz p3, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 258
    :cond_c
    throw p2
.end method

.method imageFromIntentContent(Lcom/metamoji/noteanytime/cm/IntentContent;Z)Lcom/metamoji/cm/Blob;
    .locals 2

    .line 325
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->imageFromFile(Ljava/io/File;ZZ)Lcom/metamoji/cm/Blob;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    .line 328
    throw p2
.end method

.method imageFromUri(Landroid/net/Uri;Z)Lcom/metamoji/cm/Blob;
    .locals 8

    .line 268
    const-string v0, "UnImageUnitContainerExtender.imageFromUri close in stream"

    const-string v1, "UnImageUnitContainerExtender.imageFromUri close out stream"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 272
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, v3}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->imageFromFile(Ljava/io/File;ZZ)Lcom/metamoji/cm/Blob;

    move-result-object p1

    return-object p1

    .line 281
    :cond_0
    :try_start_0
    const-string v2, "noteanytime"

    const-string/jumbo v5, "tmp"

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-static {v2, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 282
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 283
    :try_start_2
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 284
    :try_start_3
    invoke-static {v5, p1}, Lcom/metamoji/cm/CmUtils;->copyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 285
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 290
    :try_start_5
    invoke-virtual {p0, v2, p2, v3}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->imageFromFile(Ljava/io/File;ZZ)Lcom/metamoji/cm/Blob;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_1

    .line 310
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    return-object p1

    :catchall_0
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto/16 :goto_7

    :catch_0
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    move-object v5, v4

    goto :goto_2

    .line 297
    :cond_2
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 299
    invoke-static {p2, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_3

    .line 304
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 306
    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    goto :goto_5

    :catchall_1
    move-exception p2

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_6

    :catch_3
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object p2, v4

    goto :goto_6

    :catch_4
    move-exception p1

    move-object p2, v4

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object p2, v4

    goto :goto_7

    :catch_5
    move-exception p1

    move-object p2, v4

    move-object v5, p2

    goto :goto_2

    :catchall_4
    move-exception p1

    move-object p2, v4

    move-object v2, p2

    goto :goto_7

    :catch_6
    move-exception p1

    move-object p2, v4

    move-object v2, p2

    move-object v5, v2

    .line 293
    :goto_2
    :try_start_8
    const-string v3, "UnImageUnitContainerExtender.imageFromUri"

    invoke-static {p1, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v5, :cond_4

    .line 297
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_3

    :catch_7
    move-exception p1

    .line 299
    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    .line 304
    :try_start_a
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_4

    :catch_8
    move-exception p1

    .line 306
    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 310
    :goto_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_6
    return-object v4

    :catchall_5
    move-exception p1

    :goto_6
    move-object v4, v5

    :goto_7
    if-eqz v4, :cond_7

    .line 297
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_8

    :catch_9
    move-exception v3

    .line 299
    invoke-static {v3, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_7
    :goto_8
    if-eqz p2, :cond_8

    .line 304
    :try_start_c
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_9

    :catch_a
    move-exception p2

    .line 306
    invoke-static {p2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_8
    :goto_9
    if-eqz v2, :cond_9

    .line 310
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 312
    :cond_9
    throw p1
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)Z
    .locals 2

    .line 83
    sget-object v0, Lcom/metamoji/un/image/UnImageUnitContainerExtender$2;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->handleSaveImage(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 97
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->handleInternalAddImageUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 93
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->handleEditImage(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 89
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->handleReadFromAlbum(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 85
    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->handleAddImageUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0
.end method
