.class public Lcom/metamoji/un/bgimage/UnBGImageUnit;
.super Lcom/metamoji/nt/NtUnitController;
.source "UnBGImageUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/bgimage/UnBGImageUnit$UndoModelDef;,
        Lcom/metamoji/un/bgimage/UnBGImageUnit$UnBGImageUndoPerformer;,
        Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;,
        Lcom/metamoji/un/bgimage/UnBGImageUnit$ModelDef;
    }
.end annotation


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "$bgimage"


# instance fields
.field _image:Lcom/metamoji/cm/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/cm/BitmapEx;",
            ">;"
        }
    .end annotation
.end field

.field _imageSize:Lcom/metamoji/cm/Size;

.field protected m_imageSprite:Lcom/metamoji/df/sprite/Sprite;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtUnitController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    .line 95
    iput-object p1, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    return-void
.end method

.method public static createBGImageModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;Ljava/lang/String;DD)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 213
    const-string v0, "$bgimage"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 214
    const-string v0, "!version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 215
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    const-string/jumbo v1, "unit"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unitId"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 217
    const-string v0, "imageTicket"

    invoke-interface {p0, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    sget-object p1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->NONE:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    if-eq p1, p2, :cond_1

    .line 219
    const-string p1, "bgStyle"

    invoke-virtual {p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 221
    const-string p1, "bgColor"

    invoke-interface {p0, p1, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, p4, p1

    if-eqz p3, :cond_3

    .line 223
    const-string p3, "opacity"

    invoke-interface {p0, p3, p4, p5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    :cond_3
    cmpl-double p1, p6, p1

    if-eqz p1, :cond_4

    .line 225
    const-string p1, "colorOpacity"

    invoke-interface {p0, p1, p6, p7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    :cond_4
    return-object p0
.end method

.method private initImage()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getAttachmentTicket()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->getBitmapAttachment(Ljava/lang/String;)Lcom/metamoji/cm/SharedReference;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    .line 265
    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->getAttachment(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 267
    invoke-static {v0}, Lcom/metamoji/cm/ImageUtils;->getBitmapSizeFromBlob(Lcom/metamoji/cm/Blob;)Lcom/metamoji/cm/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    :cond_2
    :goto_0
    return-void
.end method

.method private performBGImageUndoUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 11

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_0

    .line 164
    const-string p1, "ot"

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    sget-object v2, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->NONE:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    invoke-virtual {v2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->intValue()I

    move-result v2

    const-string v3, "os"

    invoke-interface {p2, v3, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->valueOf(I)Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    move-result-object v2

    .line 166
    const-string v3, "oc"

    invoke-interface {p2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    const-string v4, "oo"

    invoke-interface {p2, v4, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 168
    const-string v5, "oco"

    invoke-interface {p2, v5, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    goto :goto_0

    .line 170
    :cond_0
    const-string p1, "nt"

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    sget-object v2, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->NONE:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    invoke-virtual {v2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->intValue()I

    move-result v2

    const-string v3, "ns"

    invoke-interface {p2, v3, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->valueOf(I)Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    move-result-object v2

    .line 172
    const-string v3, "nc"

    invoke-interface {p2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    const-string v4, "no"

    invoke-interface {p2, v4, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 174
    const-string v5, "nco"

    invoke-interface {p2, v5, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    :goto_0
    double-to-float p2, v0

    move-object v6, p1

    move v10, p2

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    .line 179
    iget-object p1, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/cm/SharedReference;->newRef()Lcom/metamoji/cm/SharedReference;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move-object v5, p0

    .line 180
    :try_start_0
    invoke-virtual/range {v5 .. v10}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_setAttributes(Ljava/lang/String;Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;Ljava/lang/String;FF)V

    .line 181
    invoke-direct {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->updateSprite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 182
    invoke-virtual {p1}, Lcom/metamoji/cm/SharedReference;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    if-eqz p1, :cond_3

    .line 179
    :try_start_1
    invoke-virtual {p1}, Lcom/metamoji/cm/SharedReference;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p2
.end method

.method public static registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 138
    new-instance v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$UnBGImageUndoPerformer;

    invoke-direct {v0}, Lcom/metamoji/un/bgimage/UnBGImageUnit$UnBGImageUndoPerformer;-><init>()V

    .line 140
    const-string v1, "bgimageundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private releaseImage()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/metamoji/cm/SharedReference;->close()V

    .line 274
    iput-object v1, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    .line 276
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    return-void
.end method

.method public static unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 147
    const-string v0, "bgimageundo"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private updateSprite()V
    .locals 18

    move-object/from16 v0, p0

    .line 497
    invoke-direct {v0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->initImage()V

    .line 498
    invoke-virtual {v0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getBgColor()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-virtual {v0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getBGStyle()Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    move-result-object v2

    .line 500
    invoke-virtual {v0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getOpacity()F

    move-result v3

    .line 501
    invoke-virtual {v0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getColorOpacity()F

    move-result v4

    .line 504
    invoke-virtual {v0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    .line 505
    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v6

    .line 506
    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v5

    .line 508
    iget-object v7, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v7}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 509
    iget-object v7, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->m_imageSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v7}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 511
    iget-object v7, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v7, v6}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 512
    iget-object v7, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v7, v5}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 516
    iget-object v9, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v9}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    .line 517
    iget-object v4, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 518
    iget-object v4, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v4

    new-instance v9, Lcom/metamoji/df/sprite/PaintSolid;

    const/high16 v10, -0x1000000

    invoke-static {v1, v10}, Lcom/metamoji/cm/WebColor;->colorWithString(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v9, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v4, v9}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 519
    iget-object v1, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v1

    invoke-virtual {v1, v8, v8, v6, v5}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    .line 523
    :cond_0
    iget-object v1, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    if-eqz v1, :cond_1

    .line 524
    invoke-virtual {v1}, Lcom/metamoji/cm/SharedReference;->get()Ljava/lang/AutoCloseable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/metamoji/cm/BitmapEx;

    :cond_1
    if-eqz v7, :cond_a

    .line 528
    invoke-virtual {v7}, Lcom/metamoji/cm/BitmapEx;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 529
    invoke-virtual {v7}, Lcom/metamoji/cm/BitmapEx;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 531
    iget-object v9, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    if-eqz v9, :cond_2

    iget v9, v9, Lcom/metamoji/cm/Size;->width:I

    goto :goto_0

    :cond_2
    move v9, v1

    .line 532
    :goto_0
    iget-object v10, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    if-eqz v10, :cond_3

    iget v10, v10, Lcom/metamoji/cm/Size;->height:I

    goto :goto_1

    :cond_3
    move v10, v4

    :goto_1
    if-eqz v1, :cond_4

    int-to-float v11, v9

    int-to-float v12, v1

    div-float/2addr v11, v12

    goto :goto_2

    :cond_4
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_2
    move/from16 v16, v11

    .line 536
    iget-object v11, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->m_imageSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v11, v6}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 537
    iget-object v11, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->m_imageSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v11, v5}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 538
    iget-object v11, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->m_imageSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v11, v3}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    .line 541
    sget-object v3, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->FIT_TO_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_7

    int-to-float v1, v1

    div-float v2, v6, v1

    int-to-float v3, v4

    mul-float v4, v3, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    div-float v2, v5, v3

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    const/4 v4, 0x1

    :goto_3
    move/from16 v16, v2

    .line 554
    iget-object v2, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->m_imageSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v4, :cond_6

    .line 552
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v12

    mul-float v3, v3, v16

    sub-float/2addr v5, v3

    div-float v14, v5, v11

    invoke-virtual {v7}, Lcom/metamoji/cm/BitmapEx;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    const/4 v13, 0x0

    move/from16 v17, v16

    invoke-virtual/range {v12 .. v17}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    return-void

    .line 554
    :cond_6
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v12

    mul-float v1, v1, v16

    sub-float/2addr v6, v1

    div-float v13, v6, v11

    const/4 v14, 0x0

    invoke-virtual {v7}, Lcom/metamoji/cm/BitmapEx;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    move/from16 v17, v16

    invoke-virtual/range {v12 .. v17}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    return-void

    .line 556
    :cond_7
    sget-object v3, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->TILED:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    if-ne v2, v3, :cond_8

    const/high16 v1, 0x40800000    # 4.0f

    div-float v1, v16, v1

    .line 559
    invoke-static {v8, v8, v6, v5}, Lcom/metamoji/cm/RectEx;->newRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v2

    .line 560
    iget-object v3, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->m_imageSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    invoke-virtual {v7}, Lcom/metamoji/cm/BitmapEx;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v1, v1}, Lcom/metamoji/df/sprite/Graphics;->drawTiledImage(Landroid/graphics/RectF;Landroid/graphics/Bitmap;FF)V

    return-void

    .line 561
    :cond_8
    sget-object v3, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->FIT_TO_WHOLE_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 568
    iget-object v8, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->m_imageSprite:Lcom/metamoji/df/sprite/Sprite;

    if-ne v2, v3, :cond_9

    int-to-float v1, v1

    div-float v13, v6, v1

    int-to-float v1, v4

    div-float v14, v5, v1

    .line 565
    invoke-virtual {v8}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v7}, Lcom/metamoji/cm/BitmapEx;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    const/4 v10, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    return-void

    .line 568
    :cond_9
    invoke-virtual {v8}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v12

    int-to-float v1, v9

    sub-float/2addr v6, v1

    div-float v13, v6, v11

    int-to-float v1, v10

    sub-float/2addr v5, v1

    div-float v14, v5, v11

    invoke-virtual {v7}, Lcom/metamoji/cm/BitmapEx;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    move/from16 v17, v16

    invoke-virtual/range {v12 .. v17}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    :cond_a
    return-void
.end method

.method public static visitModelForAttachments(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/AttachmentsModelVisitContext;)V
    .locals 3

    .line 330
    sget-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$1;->$SwitchMap$com$metamoji$df$controller$AttachmentsModelVisitContext$VisitorCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getCommand()Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "imageTicket"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 348
    const-string p0, "UnBGImageUnit.visitModelForAttachments: unknown command."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 339
    :cond_0
    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {p1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getReplaceTable()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 343
    invoke-interface {p0, v2, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 333
    :cond_1
    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 335
    invoke-virtual {p1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getTickets()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method _setAttributes(Ljava/lang/String;Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;Ljava/lang/String;FF)V
    .locals 3

    .line 457
    invoke-direct {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->releaseImage()V

    .line 458
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 459
    const-string v1, "imageTicket"

    if-nez p1, :cond_0

    .line 460
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :goto_0
    sget-object p1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->NONE:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    const-string v1, "bgStyle"

    if-ne p1, p2, :cond_1

    .line 466
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    goto :goto_1

    .line 468
    :cond_1
    invoke-virtual {p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 471
    :goto_1
    const-string p1, "bgColor"

    if-nez p3, :cond_2

    .line 472
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    goto :goto_2

    .line 474
    :cond_2
    invoke-interface {v0, p1, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    float-to-double p1, p4

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, p3

    .line 477
    const-string v2, "opacity"

    if-nez v1, :cond_3

    .line 478
    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    goto :goto_3

    .line 480
    :cond_3
    invoke-interface {v0, v2, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    :goto_3
    float-to-double p1, p5

    cmpl-double p3, p1, p3

    .line 483
    const-string p4, "colorOpacity"

    if-nez p3, :cond_4

    .line 484
    invoke-interface {v0, p4}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    return-void

    .line 486
    :cond_4
    invoke-interface {v0, p4, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public canFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 284
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 285
    invoke-direct {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->releaseImage()V

    return-void
.end method

.method public getAttachmentTicket()Ljava/lang/String;
    .locals 2

    .line 413
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "imageTicket"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBGStyle()Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;
    .locals 3

    .line 376
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->CENTER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    invoke-virtual {v1}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->intValue()I

    move-result v1

    const-string v2, "bgStyle"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->valueOf(I)Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    move-result-object v0

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "bgColor"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorOpacity()F
    .locals 4

    .line 404
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "colorOpacity"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getImageData()Lcom/metamoji/cm/Blob;
    .locals 2

    .line 364
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getAttachmentTicket()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/df/controller/AttachmentsManager;->getAttachment(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    return-object v0
.end method

.method public getOpacity()F
    .locals 4

    .line 395
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "opacity"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 238
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 241
    iget-object p1, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 242
    iget-object p1, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 243
    iget-object p1, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 245
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->m_imageSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 246
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 247
    iget-object p1, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v0, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->m_imageSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 249
    invoke-direct {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->updateSprite()V

    return-void
.end method

.method public paperSizeChanged(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->updateSprite()V

    return-void
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 127
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v1, "bgimageundo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->performBGImageUndoUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    :cond_0
    return-void
.end method

.method public setParameters(Ljava/lang/String;Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;Ljava/lang/String;FFLcom/metamoji/df/controller/EditContext;)V
    .locals 7

    .line 426
    const-string v0, "bgimageundo"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/metamoji/un/bgimage/UnBGImageUnit$UnBGImageUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    const-string v3, "imageTicket"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ot"

    invoke-interface {v0, v3, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    sget-object v3, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->NONE:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    invoke-virtual {v3}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->intValue()I

    move-result v3

    const-string v4, "bgStyle"

    invoke-interface {v2, v4, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "os"

    invoke-interface {v0, v3, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 430
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    const-string v3, "bgColor"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oc"

    invoke-interface {v0, v3, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    const-string v3, "opacity"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    const-string v6, "oo"

    invoke-interface {v0, v6, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 432
    invoke-virtual {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    const-string v3, "colorOpacity"

    invoke-interface {v2, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    const-string v4, "oco"

    invoke-interface {v0, v4, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 434
    const-string v2, "nt"

    invoke-interface {v0, v2, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v2, "ns"

    invoke-virtual {p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->intValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 436
    const-string v2, "nc"

    invoke-interface {v0, v2, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v2, "no"

    float-to-double v3, p4

    invoke-interface {v0, v2, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 438
    const-string v2, "nco"

    float-to-double v3, p5

    invoke-interface {v0, v2, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 441
    invoke-virtual {p6, v0, v1}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 446
    iget-object p6, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lcom/metamoji/cm/SharedReference;->newRef()Lcom/metamoji/cm/SharedReference;

    move-result-object p6

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    .line 447
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_setAttributes(Ljava/lang/String;Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;Ljava/lang/String;FF)V

    .line 449
    invoke-direct {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->updateSprite()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p6, :cond_1

    .line 450
    invoke-virtual {p6}, Lcom/metamoji/cm/SharedReference;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz p6, :cond_2

    .line 446
    :try_start_1
    invoke-virtual {p6}, Lcom/metamoji/cm/SharedReference;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
.end method

.method public workareaChanged(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfPageController;->getPaperWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/bgimage/UnBGImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfPageController;->getPaperHeight()F

    move-result p1

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 310
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->updateSprite()V

    return-void
.end method
