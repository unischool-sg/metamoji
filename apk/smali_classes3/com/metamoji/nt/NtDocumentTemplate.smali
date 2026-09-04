.class public Lcom/metamoji/nt/NtDocumentTemplate;
.super Ljava/lang/Object;
.source "NtDocumentTemplate.java"


# static fields
.field public static final DEFAULT_DPI:F = 72.0f

.field public static final DEVICE_DPI:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    sget-object v0, Lcom/metamoji/df/controller/DfUtility;->DEVICE_DPI:Landroid/graphics/PointF;

    sput-object v0, Lcom/metamoji/nt/NtDocumentTemplate;->DEVICE_DPI:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructNewPageWithModelManager(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPageController$CreateModelParams;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 524
    invoke-static {p0, p1}, Lcom/metamoji/nt/NtPageController;->createNewPageModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPageController$CreateModelParams;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 527
    const-string/jumbo v0, "system:background"

    invoke-static {p0, v0}, Lcom/metamoji/nt/NtLayerController;->createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 529
    invoke-interface {v0, p2}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 533
    :cond_0
    const-string/jumbo p2, "system:form"

    invoke-static {p0, p2}, Lcom/metamoji/nt/NtLayerController;->createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 535
    invoke-interface {p2, p3}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 539
    :cond_1
    const-string/jumbo p3, "system:bgdata"

    invoke-static {p0, p3}, Lcom/metamoji/nt/NtLayerController;->createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p3

    if-eqz p4, :cond_2

    .line 541
    invoke-interface {p3, p4}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 545
    :cond_2
    const-string/jumbo p4, "system:edit"

    invoke-static {p0, p4}, Lcom/metamoji/nt/NtLayerController;->createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p5, :cond_3

    .line 547
    invoke-interface {p0, p5}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 550
    :cond_3
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 551
    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 552
    invoke-interface {p1, p3}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 553
    invoke-interface {p1, p0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 554
    sget-object p0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->EDIT:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtLayerController$LayerIndex;->intValue()I

    move-result p0

    const-string p2, "currentLayer"

    invoke-interface {p1, p2, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-object p1
.end method

.method public static newDocument(Ljava/io/File;Ljava/lang/String;)Lcom/metamoji/df/model/IModelManager;
    .locals 1

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "$freenote"

    invoke-static {v0, p0}, Lcom/metamoji/df/model/ModelManagerFactory;->newModelManager(Ljava/io/File;Ljava/lang/String;)Lcom/metamoji/df/model/IModelManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/metamoji/nt/NtDocumentTemplate;->newDocument(Lcom/metamoji/df/model/IModelManager;)V

    return-object p0
.end method

.method public static newDocument(Lcom/metamoji/df/model/IModelManager;)V
    .locals 1

    .line 78
    invoke-static {p0}, Lcom/metamoji/nt/NtDocumentTemplate;->newSheet(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 79
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    .line 80
    invoke-static {p0}, Lcom/metamoji/nt/NtDocumentTemplate;->newPage(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static newDocumentFromImage(Ljava/io/File;Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;
    .locals 28

    .line 578
    const-string/jumbo v1, "unit"

    const-string v2, "layer"

    const-string v3, "page"

    const-string v0, "$freenote"

    move-object/from16 v4, p0

    invoke-static {v4, v0}, Lcom/metamoji/df/model/ModelManagerFactory;->newModelManager(Ljava/io/File;Ljava/lang/String;)Lcom/metamoji/df/model/IModelManager;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 585
    :cond_0
    :try_start_0
    invoke-static {v4}, Lcom/metamoji/nt/NtDocumentTemplate;->newSheet(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 586
    invoke-interface {v4, v0}, Lcom/metamoji/df/model/IModelManager;->replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    .line 589
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x5a0

    const/16 v8, 0x438

    invoke-static {v6, v8, v7, v5}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile(Ljava/lang/String;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 590
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v6, v10, v8, v7}, Lcom/metamoji/cm/ImageUtils;->getBitmapScale(IIII)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v6, v7, v6

    .line 591
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;->getRotateAngle(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2

    cmpg-float v10, v6, v7

    if-gez v10, :cond_1

    goto :goto_0

    :cond_1
    move-object v13, v9

    goto :goto_2

    .line 593
    :cond_2
    :goto_0
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v8, :cond_3

    int-to-float v8, v8

    .line 595
    :try_start_1
    invoke-virtual {v14, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v4

    goto/16 :goto_6

    :cond_3
    :goto_1
    cmpg-float v7, v6, v7

    if-gez v7, :cond_4

    .line 598
    invoke-virtual {v14, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 600
    :cond_4
    :try_start_2
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 601
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    if-nez v6, :cond_5

    return-object v5

    :cond_5
    move-object v13, v6

    .line 609
    :goto_2
    new-instance v12, Lcom/metamoji/df/controller/AttachmentsManager;

    invoke-direct {v12, v0}, Lcom/metamoji/df/controller/AttachmentsManager;-><init>(Lcom/metamoji/df/model/IModel;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 612
    :try_start_3
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v13, v6}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object v6

    .line 613
    const-string v7, "image/jpeg"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v6, v7, v8}, Lcom/metamoji/df/controller/AttachmentsManager;->registerAttachment(Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 617
    new-instance v7, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v7}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    const/4 v8, 0x1

    .line 618
    invoke-virtual {v7, v8}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setCramped(Z)V

    .line 619
    invoke-interface {v4, v7}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 620
    invoke-virtual {v12, v6}, Lcom/metamoji/df/controller/AttachmentsManager;->purgeAttachment(Ljava/lang/String;)V

    .line 622
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 624
    :try_start_4
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v15, v7

    .line 625
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 626
    new-instance v9, Lcom/metamoji/nt/NtPageController$CreateModelParams;

    invoke-direct {v9}, Lcom/metamoji/nt/NtPageController$CreateModelParams;-><init>()V

    const/4 v10, 0x0

    .line 627
    iput v10, v9, Lcom/metamoji/nt/NtPageController$CreateModelParams;->AutoPaper:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 p0, v12

    float-to-double v11, v15

    .line 628
    :try_start_5
    iput-wide v11, v9, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PaperWidth:D

    move-object/from16 p1, v6

    float-to-double v5, v7

    .line 629
    iput-wide v5, v9, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PaperHeight:D

    .line 630
    iput-wide v11, v9, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PrintWidth:D

    .line 631
    iput-wide v5, v9, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PrintHeight:D

    .line 632
    iget-object v8, v9, Lcom/metamoji/nt/NtPageController$CreateModelParams;->MarginLines:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const-wide v18, 0x4046800000000000L    # 45.0

    move-object/from16 v20, v4

    :try_start_6
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v8, v10, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v4, v9, Lcom/metamoji/nt/NtPageController$CreateModelParams;->MarginLines:Ljava/util/List;

    const-wide/high16 v18, 0x402e000000000000L    # 15.0

    sub-double v18, v11, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v10, 0x1

    invoke-interface {v4, v10, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 634
    iput-object v4, v9, Lcom/metamoji/nt/NtPageController$CreateModelParams;->TextSetting:Lcom/metamoji/df/model/IModel;

    move-wide v4, v5

    .line 635
    sget-object v6, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->FIT_TO_PAPER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v10, v9

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v16, v11

    move-object v12, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move/from16 v18, v7

    const/4 v7, 0x0

    move-wide/from16 v26, v4

    move-object/from16 v4, v20

    move-wide/from16 v19, v26

    move-wide/from16 v26, v16

    move-object/from16 v16, v12

    move/from16 v12, v18

    move-wide/from16 v17, v26

    move-object/from16 v5, p1

    :try_start_7
    invoke-static/range {v4 .. v11}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->createBGImageModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;Ljava/lang/String;DD)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    .line 637
    invoke-static {v4}, Lcom/metamoji/nt/NtDocumentTemplate;->newDrawCanvas(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, v16

    .line 638
    invoke-static/range {v4 .. v9}, Lcom/metamoji/nt/NtDocumentTemplate;->constructNewPageWithModelManager(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPageController$CreateModelParams;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v6, v4

    const-wide v7, 0x3fc999999999999aL    # 0.2

    mul-double v9, v17, v7

    move-wide/from16 v16, v7

    mul-double v7, v19, v16

    .line 647
    :try_start_8
    new-instance v4, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v4}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/4 v11, 0x0

    .line 648
    invoke-virtual {v4, v11}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 649
    invoke-virtual {v4, v11}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 650
    invoke-virtual {v4, v15}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 651
    invoke-virtual {v4, v12}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    move-wide v11, v9

    .line 652
    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v9, v14

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-wide/from16 v18, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-wide/from16 v1, v18

    move-object/from16 v19, v4

    move-object v4, v9

    move-object/from16 v9, p0

    :try_start_9
    invoke-virtual/range {v10 .. v15}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    .line 654
    new-instance v10, Lcom/metamoji/df/sprite/Rasterizer;

    invoke-direct {v10}, Lcom/metamoji/df/sprite/Rasterizer;-><init>()V

    double-to-int v1, v1

    .line 655
    invoke-virtual {v10, v1}, Lcom/metamoji/df/sprite/Rasterizer;->setWidth(I)V

    double-to-int v1, v7

    .line 656
    invoke-virtual {v10, v1}, Lcom/metamoji/df/sprite/Rasterizer;->setHeight(I)V

    const/16 v21, 0x0

    move-wide/from16 v1, v16

    double-to-float v1, v1

    const/16 v20, 0x0

    move/from16 v23, v1

    move/from16 v22, v1

    move-object/from16 v18, v10

    .line 657
    invoke-virtual/range {v18 .. v23}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    .line 659
    invoke-virtual/range {v18 .. v18}, Lcom/metamoji/df/sprite/Rasterizer;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 660
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v1, v2}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    .line 661
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 662
    invoke-virtual/range {v19 .. v19}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 665
    const-string v1, "pagethumbnail"

    invoke-interface {v6, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 666
    const-string/jumbo v7, "v"

    invoke-interface {v1, v7, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 667
    const-string/jumbo v2, "thumbModel"

    invoke-interface {v5, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 668
    invoke-interface {v0, v5}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 672
    :try_start_a
    invoke-virtual {v4, v3}, Lcom/metamoji/cm/CmLocalIdManager;->endReserveSubId(Ljava/lang/String;)V

    move-object/from16 v1, v25

    .line 673
    invoke-virtual {v4, v1}, Lcom/metamoji/cm/CmLocalIdManager;->endReserveSubId(Ljava/lang/String;)V

    move-object/from16 v2, v24

    .line 674
    invoke-virtual {v4, v2}, Lcom/metamoji/cm/CmLocalIdManager;->endReserveSubId(Ljava/lang/String;)V

    .line 677
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 682
    invoke-virtual {v9}, Lcom/metamoji/df/controller/AttachmentsManager;->destroy()V

    return-object v6

    .line 679
    :cond_6
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0017"

    const-string v2, "no page is found."

    sget-object v3, Lcom/metamoji/nt/NtErrorCode;->ERROR_NO_PAGE_IN_PDF:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v1, v25

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v9, p0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v9, p0

    move-object v4, v14

    move-object/from16 v6, v20

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    move-object/from16 v9, p0

    move-object v6, v4

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    move-object v6, v4

    move-object v9, v12

    :goto_3
    move-object v4, v14

    .line 672
    :goto_4
    invoke-virtual {v4, v3}, Lcom/metamoji/cm/CmLocalIdManager;->endReserveSubId(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v4, v1}, Lcom/metamoji/cm/CmLocalIdManager;->endReserveSubId(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v4, v2}, Lcom/metamoji/cm/CmLocalIdManager;->endReserveSubId(Ljava/lang/String;)V

    .line 675
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v6, v4

    move-object v9, v12

    :goto_5
    move-object v5, v9

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v6, v4

    move-object v4, v5

    :goto_6
    if-eqz v5, :cond_7

    .line 686
    invoke-virtual {v5}, Lcom/metamoji/df/controller/AttachmentsManager;->destroy()V

    .line 688
    :cond_7
    invoke-interface {v6}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 689
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "AP0018"

    const-string/jumbo v3, "unexpected exception while importing pdf file."

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newDocumentFromPDF(Ljava/io/File;Ljava/io/File;Lcom/metamoji/nt/NtPDFImportOptions;Lcom/metamoji/nt/INtProgressUI;)Lcom/metamoji/df/model/IModelManager;
    .locals 39

    move-object/from16 v0, p3

    .line 111
    const-string/jumbo v1, "unit"

    const-string v2, "layer"

    const-string v3, "page"

    const-string v4, "$freenote"

    move-object/from16 v5, p0

    invoke-static {v5, v4}, Lcom/metamoji/df/model/ModelManagerFactory;->newModelManager(Ljava/io/File;Ljava/lang/String;)Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    const/4 v4, 0x0

    if-nez v5, :cond_0

    return-object v4

    .line 118
    :cond_0
    :try_start_0
    invoke-static {v5}, Lcom/metamoji/nt/NtDocumentTemplate;->newSheet(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v12

    .line 119
    invoke-interface {v5, v12}, Lcom/metamoji/df/model/IModelManager;->replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    .line 122
    new-instance v13, Lcom/metamoji/df/controller/AttachmentsManager;

    invoke-direct {v13, v12}, Lcom/metamoji/df/controller/AttachmentsManager;-><init>(Lcom/metamoji/df/model/IModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 125
    :try_start_1
    new-instance v6, Lcom/metamoji/cm/Blob;

    invoke-static/range {p1 .. p1}, Lcom/metamoji/cm/CmUtils;->loadFileInBuffer(Ljava/io/File;)[B

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 126
    const-string v7, "application/pdf"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v6, v7, v8}, Lcom/metamoji/df/controller/AttachmentsManager;->registerAttachment(Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 130
    new-instance v7, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v7}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    const/4 v14, 0x1

    .line 131
    invoke-virtual {v7, v14}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setCramped(Z)V

    .line 132
    invoke-interface {v5, v7}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 133
    invoke-virtual {v13, v6}, Lcom/metamoji/df/controller/AttachmentsManager;->purgeAttachment(Ljava/lang/String;)V

    .line 136
    new-instance v15, Lcom/metamoji/df/sprite/pdf/PDFReader;

    invoke-direct {v15}, Lcom/metamoji/df/sprite/pdf/PDFReader;-><init>()V

    .line 137
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v15, v7, v8}, Lcom/metamoji/df/sprite/pdf/PDFReader;->createDocument(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/df/sprite/pdf/PDFDocument;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 143
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :try_start_2
    invoke-virtual {v7}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->size()I

    move-result v9

    .line 148
    invoke-virtual {v8, v3, v9}, Lcom/metamoji/cm/CmLocalIdManager;->setReserveSubId(Ljava/lang/String;I)V

    mul-int/lit8 v10, v9, 0x5

    .line 149
    invoke-virtual {v8, v2, v10}, Lcom/metamoji/cm/CmLocalIdManager;->setReserveSubId(Ljava/lang/String;I)V

    mul-int/lit8 v10, v9, 0x2

    .line 150
    invoke-virtual {v8, v1, v10}, Lcom/metamoji/cm/CmLocalIdManager;->setReserveSubId(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_1e

    .line 154
    :try_start_3
    const-string v4, "import pdf at page %d / %d"

    add-int/lit8 v14, v11, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    move-object/from16 v17, v8

    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v10, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v7, v11}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getPage(I)Lcom/metamoji/df/sprite/pdf/PDFPage;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    if-eqz v0, :cond_1

    int-to-float v8, v11

    int-to-float v10, v9

    div-float/2addr v8, v10

    .line 162
    :try_start_5
    invoke-interface {v0, v8}, Lcom/metamoji/nt/INtProgressUI;->progress(F)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v19, v7

    :goto_1
    move-object/from16 v18, v13

    :goto_2
    move-object/from16 v28, v15

    move-object/from16 v37, v17

    goto/16 :goto_10

    :cond_1
    :goto_3
    const/4 v8, 0x0

    if-eqz v4, :cond_4

    .line 165
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtPDFImportOptions;->getRotation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    move-result-object v10

    sget-object v11, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation0:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    if-eq v10, v11, :cond_3

    .line 166
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtPDFImportOptions;->getRotation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    move-result-object v10

    sget-object v11, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation180:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    if-ne v10, v11, :cond_2

    goto :goto_4

    .line 170
    :cond_2
    invoke-virtual {v4}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getHeight()F

    move-result v10

    .line 171
    invoke-virtual {v4}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getWidth()F

    move-result v11

    goto :goto_5

    .line 167
    :cond_3
    :goto_4
    invoke-virtual {v4}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getWidth()F

    move-result v10

    .line 168
    invoke-virtual {v4}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getHeight()F

    move-result v11

    goto :goto_5

    :cond_4
    move v10, v8

    move v11, v10

    :goto_5
    cmpg-float v18, v10, v8

    if-lez v18, :cond_1c

    cmpg-float v18, v11, v8

    if-gtz v18, :cond_5

    goto/16 :goto_11

    .line 180
    :cond_5
    new-instance v8, Lcom/metamoji/nt/NtPageController$CreateModelParams;

    invoke-direct {v8}, Lcom/metamoji/nt/NtPageController$CreateModelParams;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v19, v7

    const/4 v7, 0x0

    .line 181
    :try_start_6
    iput v7, v8, Lcom/metamoji/nt/NtPageController$CreateModelParams;->AutoPaper:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    move-object/from16 v20, v1

    float-to-double v0, v10

    .line 182
    :try_start_7
    iput-wide v0, v8, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PaperWidth:D
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    float-to-double v2, v11

    .line 183
    :try_start_8
    iput-wide v2, v8, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PaperHeight:D

    .line 184
    iput-wide v0, v8, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PrintWidth:D

    .line 185
    iput-wide v2, v8, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PrintHeight:D

    .line 186
    iget-object v7, v8, Lcom/metamoji/nt/NtPageController$CreateModelParams;->MarginLines:Ljava/util/List;

    const-wide v23, 0x4046800000000000L    # 45.0

    move-wide/from16 v25, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, v8, Lcom/metamoji/nt/NtPageController$CreateModelParams;->MarginLines:Ljava/util/List;

    const-wide/high16 v23, 0x402e000000000000L    # 15.0

    sub-double v23, v25, v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v1, 0x1

    invoke-interface {v0, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 188
    iput-object v1, v8, Lcom/metamoji/nt/NtPageController$CreateModelParams;->TextSetting:Lcom/metamoji/df/model/IModel;

    .line 190
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 192
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 194
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 196
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    .line 197
    iput v0, v8, Lcom/metamoji/nt/NtPageController$CreateModelParams;->SchoolPageType:I

    .line 206
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtPDFImportOptions;->getLocation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationAsIs:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    if-ne v0, v1, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_7
    const v0, 0x3f2aaaab

    .line 210
    :goto_6
    new-instance v1, Lcom/metamoji/cm/SizeF;

    mul-float v7, v10, v0

    const/high16 v23, 0x40000000    # 2.0f

    move/from16 p1, v0

    div-float v0, v7, v23

    move-wide/from16 v27, v2

    mul-float v2, v11, p1

    div-float v3, v2, v23

    invoke-direct {v1, v0, v3}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 211
    new-instance v0, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 212
    sget-object v18, Lcom/metamoji/nt/NtDocumentTemplate$5;->$SwitchMap$com$metamoji$nt$NtPDFImportOptions$NtPDFImportOptionLocation:[I

    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtPDFImportOptions;->getLocation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->ordinal()I

    move-result v23

    aget v3, v18, v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v18, v13

    const/4 v13, 0x2

    move/from16 v29, v7

    const/4 v7, 0x1

    if-eq v3, v7, :cond_b

    if-eq v3, v13, :cond_b

    const/4 v7, 0x3

    if-eq v3, v7, :cond_a

    const/4 v7, 0x4

    if-eq v3, v7, :cond_9

    const/4 v7, 0x5

    if-eq v3, v7, :cond_8

    .line 227
    :try_start_9
    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v7, v1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v0, v3, v7}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_7

    .line 224
    :cond_8
    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v7, v1, Lcom/metamoji/cm/SizeF;->height:F

    sub-float v7, v11, v7

    invoke-virtual {v0, v3, v7}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_7

    .line 221
    :cond_9
    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    sub-float v3, v10, v3

    iget v7, v1, Lcom/metamoji/cm/SizeF;->height:F

    sub-float v7, v11, v7

    invoke-virtual {v0, v3, v7}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_7

    .line 218
    :cond_a
    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    sub-float v3, v10, v3

    iget v7, v1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v0, v3, v7}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_7

    .line 215
    :cond_b
    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v7, v1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v0, v3, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 230
    :goto_7
    sget-object v3, Lcom/metamoji/nt/NtDocumentTemplate$5;->$SwitchMap$com$metamoji$nt$NtPDFImportOptions$NtPDFImportOptionRotation:[I

    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtPDFImportOptions;->getRotation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->ordinal()I

    move-result v7

    aget v3, v3, v7

    const/4 v7, 0x1

    if-eq v3, v7, :cond_f

    if-eq v3, v13, :cond_e

    const/4 v7, 0x3

    if-eq v3, v7, :cond_d

    const/4 v7, 0x4

    if-eq v3, v7, :cond_c

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_8

    .line 248
    :cond_c
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v7, v1, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr v3, v7

    .line 249
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43870000    # 270.0f

    goto :goto_8

    .line 243
    :cond_d
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v7, v1, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v3, v7

    .line 244
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_8

    .line 238
    :cond_e
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v7, v1, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr v3, v7

    .line 239
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    goto :goto_8

    .line 233
    :cond_f
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v7, v1, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v3, v7

    .line 234
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 253
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtPDFImportOptions;->getRotation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    move-result-object v7

    sget-object v13, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation0:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    if-ne v7, v13, :cond_11

    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtPDFImportOptions;->getLocation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    move-result-object v7

    sget-object v13, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationAsIs:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    if-eq v7, v13, :cond_10

    goto :goto_9

    .line 257
    :cond_10
    invoke-static {v5, v6, v14}, Lcom/metamoji/un/pdf/UnPDFUnit;->createPdfModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v7, v0

    move-object/from16 v24, v6

    move v3, v10

    move v13, v11

    move v11, v14

    move-object/from16 v1, v17

    move/from16 v0, v29

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v6, p1

    move-object/from16 v17, v8

    move/from16 p1, v9

    goto :goto_a

    :cond_11
    :goto_9
    move v13, v11

    move v7, v14

    const/4 v14, 0x0

    const/16 v16, 0x0

    move v11, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v8

    move v8, v3

    move v3, v10

    move/from16 v10, p1

    move/from16 p1, v9

    move v9, v0

    move/from16 v0, v29

    .line 254
    :try_start_a
    invoke-static/range {v5 .. v11}, Lcom/metamoji/un/pdf/UnPDFUnit;->createNewPdfModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;IFFFF)Lcom/metamoji/df/model/IModel;

    move-result-object v8

    move-object/from16 v24, v6

    move v11, v7

    move-object v7, v8

    move v6, v10

    .line 259
    :goto_a
    invoke-static {v5}, Lcom/metamoji/nt/NtDocumentTemplate;->newDrawCanvas(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v30, v6

    move-object/from16 v6, v17

    .line 260
    invoke-static/range {v5 .. v10}, Lcom/metamoji/nt/NtDocumentTemplate;->constructNewPageWithModelManager(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPageController$CreateModelParams;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    const-wide v7, 0x3fc999999999999aL    # 0.2

    mul-double v9, v25, v7

    move-wide/from16 v25, v7

    mul-double v7, v27, v25

    .line 269
    new-instance v14, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v14}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    move/from16 v27, v11

    const/4 v11, 0x0

    .line 270
    invoke-virtual {v14, v11}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 271
    invoke-virtual {v14, v11}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 272
    invoke-virtual {v14, v3}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 273
    invoke-virtual {v14, v13}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 274
    invoke-virtual {v14}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v28, v15

    const/4 v15, 0x0

    .line 275
    :try_start_b
    invoke-virtual {v11, v15}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 276
    sget-object v15, Lcom/metamoji/df/sprite/PaintSolid;->WHITE:Lcom/metamoji/df/sprite/PaintSolid;

    invoke-virtual {v11, v15}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    const/4 v15, 0x0

    .line 277
    invoke-virtual {v11, v15, v15, v3, v13}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    .line 279
    new-instance v15, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v15}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    move/from16 v29, v13

    .line 281
    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13}, Landroid/graphics/PointF;-><init>()V

    .line 282
    sget-object v31, Lcom/metamoji/nt/NtDocumentTemplate$5;->$SwitchMap$com$metamoji$nt$NtPDFImportOptions$NtPDFImportOptionRotation:[I

    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtPDFImportOptions;->getRotation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->ordinal()I

    move-result v32
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v37, v1

    :try_start_c
    aget v1, v31, v32

    move-object/from16 v38, v12

    const/4 v12, 0x1

    if-eq v1, v12, :cond_15

    const/4 v12, 0x2

    if-eq v1, v12, :cond_14

    const/4 v12, 0x3

    if-eq v1, v12, :cond_13

    const/4 v12, 0x4

    if-eq v1, v12, :cond_12

    goto :goto_b

    :cond_12
    const v1, 0x4096cbe4

    .line 297
    invoke-virtual {v15, v1}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    const/4 v1, 0x0

    .line 298
    invoke-virtual {v13, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_b

    :cond_13
    const v1, 0x40490fdb    # (float)Math.PI

    .line 293
    invoke-virtual {v15, v1}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    .line 294
    invoke-virtual {v13, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_b

    :cond_14
    const v1, 0x3fc90fdb

    .line 288
    invoke-virtual {v15, v1}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v13, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 290
    invoke-virtual {v15, v1}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    goto :goto_b

    :cond_15
    const/4 v1, 0x0

    .line 284
    invoke-virtual {v15, v1}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    .line 285
    invoke-virtual {v13, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 301
    :goto_b
    sget-object v1, Lcom/metamoji/nt/NtDocumentTemplate$5;->$SwitchMap$com$metamoji$nt$NtPDFImportOptions$NtPDFImportOptionLocation:[I

    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtPDFImportOptions;->getLocation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->ordinal()I

    move-result v12

    aget v1, v1, v12

    const/4 v12, 0x3

    if-eq v1, v12, :cond_18

    const/4 v12, 0x4

    if-eq v1, v12, :cond_17

    const/4 v12, 0x5

    if-eq v1, v12, :cond_16

    goto :goto_c

    .line 313
    :cond_16
    iget v0, v13, Landroid/graphics/PointF;->y:F

    sub-float v1, v29, v2

    add-float/2addr v0, v1

    iput v0, v13, Landroid/graphics/PointF;->y:F

    goto :goto_c

    .line 309
    :cond_17
    iget v1, v13, Landroid/graphics/PointF;->x:F

    sub-float v0, v3, v0

    add-float/2addr v1, v0

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 310
    iget v0, v13, Landroid/graphics/PointF;->y:F

    sub-float v1, v29, v2

    add-float/2addr v0, v1

    iput v0, v13, Landroid/graphics/PointF;->y:F

    goto :goto_c

    .line 306
    :cond_18
    iget v1, v13, Landroid/graphics/PointF;->x:F

    sub-float v0, v3, v0

    add-float/2addr v1, v0

    iput v1, v13, Landroid/graphics/PointF;->x:F

    .line 318
    :goto_c
    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtPDFImportOptions;->getRotation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;->NtPDFImportOptionRotation0:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionRotation;

    if-ne v0, v1, :cond_1a

    invoke-virtual/range {p2 .. p2}, Lcom/metamoji/nt/NtPDFImportOptions;->getLocation()Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;->NtPDFImportOptionLocationAsIs:Lcom/metamoji/nt/NtPDFImportOptions$NtPDFImportOptionLocation;

    if-eq v0, v1, :cond_19

    goto :goto_d

    :cond_19
    const/4 v1, 0x0

    .line 330
    invoke-virtual {v11, v1, v1, v4}, Lcom/metamoji/df/sprite/Graphics;->drawPDFPage(FFLcom/metamoji/df/sprite/pdf/PDFPage;)V

    goto :goto_e

    .line 320
    :cond_1a
    :goto_d
    iget v0, v13, Landroid/graphics/PointF;->x:F

    invoke-virtual {v15, v0}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 321
    iget v0, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v15, v0}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 322
    invoke-virtual {v15, v3}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 323
    invoke-virtual {v15, v3}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    move/from16 v0, v30

    .line 324
    invoke-virtual {v15, v0}, Lcom/metamoji/df/sprite/Sprite;->setScaleX(F)V

    .line 325
    invoke-virtual {v15, v0}, Lcom/metamoji/df/sprite/Sprite;->setScaleY(F)V

    .line 326
    invoke-virtual {v15}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v4}, Lcom/metamoji/df/sprite/Graphics;->drawPDFPage(FFLcom/metamoji/df/sprite/pdf/PDFPage;)V

    .line 328
    invoke-virtual {v14, v15}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 334
    :goto_e
    new-instance v0, Lcom/metamoji/df/sprite/Rasterizer;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Rasterizer;-><init>()V

    double-to-int v1, v9

    .line 335
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Rasterizer;->setWidth(I)V

    double-to-int v1, v7

    .line 336
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Rasterizer;->setHeight(I)V

    const/16 v34, 0x0

    move-wide/from16 v1, v25

    double-to-float v1, v1

    const/16 v33, 0x0

    move/from16 v36, v1

    move-object/from16 v31, v0

    move/from16 v35, v1

    move-object/from16 v32, v14

    .line 337
    invoke-virtual/range {v31 .. v36}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    .line 339
    invoke-virtual/range {v31 .. v31}, Lcom/metamoji/df/sprite/Rasterizer;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, v1}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object v1

    .line 341
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 342
    invoke-virtual {v11}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 345
    const-string v0, "pagethumbnail"

    invoke-interface {v5, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 346
    const-string/jumbo v2, "v"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 347
    const-string/jumbo v1, "thumbModel"

    invoke-interface {v6, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    move-object/from16 v0, v38

    .line 348
    invoke-interface {v0, v6}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v4, :cond_1d

    goto :goto_12

    :catchall_1
    move-exception v0

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object/from16 v37, v1

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object/from16 v37, v1

    move-object/from16 v28, v15

    goto :goto_10

    :catchall_4
    move-exception v0

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    goto/16 :goto_1

    :catchall_6
    move-exception v0

    goto :goto_f

    :catchall_7
    move-exception v0

    move-object/from16 v20, v1

    :goto_f
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    goto/16 :goto_1

    :goto_10
    if-eqz v4, :cond_1b

    .line 352
    :try_start_d
    invoke-virtual {v4}, Lcom/metamoji/df/sprite/pdf/PDFPage;->close()V

    .line 354
    :cond_1b
    throw v0

    :cond_1c
    :goto_11
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v6

    move-object/from16 v19, v7

    move/from16 p1, v9

    move-object v0, v12

    move-object/from16 v18, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    move-object/from16 v37, v17

    const/16 v16, 0x0

    if-eqz v4, :cond_1d

    .line 352
    :goto_12
    invoke-virtual {v4}, Lcom/metamoji/df/sprite/pdf/PDFPage;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_13

    :catchall_8
    move-exception v0

    goto :goto_14

    :cond_1d
    :goto_13
    move/from16 v9, p1

    move-object v12, v0

    move-object/from16 v13, v18

    move-object/from16 v7, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v6, v24

    move/from16 v11, v27

    move-object/from16 v15, v28

    move-object/from16 v8, v37

    const/4 v14, 0x1

    move-object/from16 v0, p3

    goto/16 :goto_0

    :catchall_9
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v19, v7

    move-object/from16 v18, v13

    move-object/from16 v28, v15

    move-object/from16 v37, v17

    goto :goto_14

    :catchall_a
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v19, v7

    move-object/from16 v37, v8

    move-object/from16 v18, v13

    move-object/from16 v28, v15

    :goto_14
    move-object/from16 v2, v22

    move-object/from16 v1, v37

    .line 358
    :try_start_e
    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmLocalIdManager;->endReserveSubId(Ljava/lang/String;)V

    move-object/from16 v3, v21

    .line 359
    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmLocalIdManager;->endReserveSubId(Ljava/lang/String;)V

    move-object/from16 v4, v20

    .line 360
    invoke-virtual {v1, v4}, Lcom/metamoji/cm/CmLocalIdManager;->endReserveSubId(Ljava/lang/String;)V

    .line 361
    throw v0

    :cond_1e
    move-object v0, v3

    move-object v3, v2

    move-object v2, v0

    move-object v4, v1

    move-object/from16 v19, v7

    move-object v1, v8

    move-object v0, v12

    move-object/from16 v18, v13

    move-object/from16 v28, v15

    .line 358
    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmLocalIdManager;->endReserveSubId(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmLocalIdManager;->endReserveSubId(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1, v4}, Lcom/metamoji/cm/CmLocalIdManager;->endReserveSubId(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    if-eqz v19, :cond_1f

    .line 364
    :try_start_f
    invoke-virtual/range {v19 .. v19}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->close()V

    .line 368
    :cond_1f
    invoke-virtual/range {v28 .. v28}, Lcom/metamoji/df/sprite/pdf/PDFReader;->release()V

    .line 372
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_21

    if-eqz p3, :cond_20

    move-object/from16 v0, p3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 378
    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtProgressUI;->progress(F)V

    .line 382
    :cond_20
    invoke-virtual/range {v18 .. v18}, Lcom/metamoji/df/controller/AttachmentsManager;->destroy()V

    return-object v5

    .line 374
    :cond_21
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0017"

    const-string v2, "no page is found."

    sget-object v3, Lcom/metamoji/nt/NtErrorCode;->ERROR_NO_PAGE_IN_PDF:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_15

    :catchall_c
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v18, v13

    move-object/from16 v28, v15

    :goto_15
    if-eqz v19, :cond_22

    .line 364
    invoke-virtual/range {v19 .. v19}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->close()V

    .line 368
    :cond_22
    invoke-virtual/range {v28 .. v28}, Lcom/metamoji/df/sprite/pdf/PDFReader;->release()V

    .line 370
    throw v0

    :cond_23
    move-object/from16 v18, v13

    .line 140
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0019"

    const-string v2, "could not load pdf file."

    sget-object v3, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANT_READ_PDF:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :catch_0
    move-exception v0

    goto :goto_16

    :catch_1
    move-exception v0

    move-object/from16 v18, v13

    :goto_16
    move-object/from16 v4, v18

    goto :goto_17

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    :goto_17
    if-eqz v4, :cond_24

    .line 386
    invoke-virtual {v4}, Lcom/metamoji/df/controller/AttachmentsManager;->destroy()V

    .line 387
    :cond_24
    invoke-interface {v5}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 388
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "AP0018"

    const-string/jumbo v3, "unexpected exception while importing pdf file."

    invoke-direct {v1, v2, v3, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newDrawCanvas(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 0

    .line 566
    invoke-static {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->createEmptyModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static newEmptyDocument(Ljava/io/File;)Lcom/metamoji/df/model/IModelManager;
    .locals 7

    .line 699
    const-string v0, "$freenote"

    invoke-static {p0, v0}, Lcom/metamoji/df/model/ModelManagerFactory;->newModelManager(Ljava/io/File;Ljava/lang/String;)Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 705
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/metamoji/nt/NtDocumentTemplate;->newSheet(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 706
    invoke-interface {v1, p0}, Lcom/metamoji/df/model/IModelManager;->replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    .line 708
    new-instance v2, Lcom/metamoji/nt/NtDocumentTemplate$3;

    invoke-direct {v2}, Lcom/metamoji/nt/NtDocumentTemplate$3;-><init>()V

    .line 720
    invoke-static {v1}, Lcom/metamoji/nt/NtDocumentTemplate;->newDrawCanvas(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 721
    invoke-static/range {v1 .. v6}, Lcom/metamoji/nt/NtDocumentTemplate;->constructNewPageWithModelManager(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPageController$CreateModelParams;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 722
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 728
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object v1

    .line 730
    :cond_1
    new-instance p0, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0017"

    const-string v2, "no page is found."

    sget-object v3, Lcom/metamoji/nt/NtErrorCode;->ERROR_NO_PAGE_IN_PDF:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 734
    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 735
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "AP0018"

    const-string/jumbo v2, "unexpected exception while importing pdf file."

    invoke-direct {v0, v1, v2, p0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static newPage(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 394
    new-instance v0, Lcom/metamoji/nt/NtDocumentTemplate$1;

    invoke-direct {v0}, Lcom/metamoji/nt/NtDocumentTemplate$1;-><init>()V

    .line 411
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeDefaultValue()I

    move-result v1

    iput v1, v0, Lcom/metamoji/nt/NtPageController$CreateModelParams;->SchoolPageType:I

    .line 413
    invoke-static {p0, v0}, Lcom/metamoji/nt/NtDocumentTemplate;->newPage(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPageController$CreateModelParams;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static newPage(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPageController$CreateModelParams;)Lcom/metamoji/df/model/IModel;
    .locals 14

    .line 419
    invoke-static {p0}, Lcom/metamoji/nt/NtDocumentTemplate;->newDrawCanvas(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 424
    iget-object v0, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->BgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 425
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 430
    :try_start_0
    new-instance v2, Lcom/metamoji/df/controller/AttachmentsManager;

    invoke-direct {v2, v0}, Lcom/metamoji/df/controller/AttachmentsManager;-><init>(Lcom/metamoji/df/model/IModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 431
    :try_start_1
    iget-object v0, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->BgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    iget-object v0, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->BgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    iget-object v0, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    .line 434
    const-string v3, "image/png"

    invoke-virtual {v2, v0, v3, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->registerAttachment(Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 435
    iget-object v0, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->BgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    iget-object v8, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->Style:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iget-object v0, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->BgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    iget-object v9, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->Color:Ljava/lang/String;

    iget-object v0, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->BgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    iget v0, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->Opacity:F

    float-to-double v10, v0

    iget-object v0, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->BgImageParams:Lcom/metamoji/nt/NtPageController$BGImageParams;

    iget v0, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->ColorOpacity:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    float-to-double v12, v0

    move-object v6, p0

    :try_start_2
    invoke-static/range {v6 .. v13}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->createBGImageModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;Ljava/lang/String;DD)Lcom/metamoji/df/model/IModel;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v6

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-object v0, v6

    goto :goto_1

    :cond_0
    move-object v0, p0

    .line 444
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Lcom/metamoji/df/controller/AttachmentsManager;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_1
    move-object v0, p0

    :catch_2
    :goto_1
    move-object p0, v1

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-object v0, p0

    move-object p0, v1

    :goto_2
    if-eqz v1, :cond_1

    .line 446
    invoke-virtual {v1}, Lcom/metamoji/df/controller/AttachmentsManager;->destroy()V

    .line 447
    :cond_1
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->close()V

    move-object v2, p0

    goto :goto_4

    :cond_2
    move-object v0, p0

    :goto_3
    move-object v2, v1

    :goto_4
    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 450
    invoke-static/range {v0 .. v5}, Lcom/metamoji/nt/NtDocumentTemplate;->constructNewPageWithModelManager(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPageController$CreateModelParams;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static newPageFromModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 6

    .line 461
    new-instance v1, Lcom/metamoji/nt/NtDocumentTemplate$2;

    invoke-direct {v1, p1}, Lcom/metamoji/nt/NtDocumentTemplate$2;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 473
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object p1

    .line 474
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    .line 475
    sget-object v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->BGIMAGE:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController$LayerIndex;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    .line 477
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 479
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "$bgimage"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 480
    new-instance v4, Lcom/metamoji/df/model/ModelManagerImportContext;

    invoke-direct {v4, p0, p0}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    invoke-interface {p0, v0, v2, v4}, Lcom/metamoji/df/model/IModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    .line 481
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "$pdf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "template"

    invoke-interface {v0, v4}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 483
    new-instance v4, Lcom/metamoji/df/model/ModelManagerImportContext;

    invoke-direct {v4, p0, p0}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    invoke-interface {p0, v0, v2, v4}, Lcom/metamoji/df/model/IModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 490
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 491
    sget-object v4, Lcom/metamoji/nt/NtLayerController$LayerIndex;->FORM:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtLayerController$LayerIndex;->intValue()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/df/model/IModel;

    if-eqz v4, :cond_2

    .line 493
    invoke-interface {v4}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 495
    new-instance v5, Lcom/metamoji/df/model/ModelManagerImportContext;

    invoke-direct {v5, p0, p0}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    invoke-interface {p0, v4, v2, v5}, Lcom/metamoji/df/model/IModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 502
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 503
    sget-object v5, Lcom/metamoji/nt/NtLayerController$LayerIndex;->BGDATA:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtLayerController$LayerIndex;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 504
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 506
    new-instance v3, Lcom/metamoji/df/model/ModelManagerImportContext;

    invoke-direct {v3, p0, p0}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    invoke-interface {p0, p1, v2, v3}, Lcom/metamoji/df/model/IModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 510
    :cond_3
    invoke-static {p0}, Lcom/metamoji/nt/NtDocumentTemplate;->newDrawCanvas(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    move-object v2, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, p0

    .line 512
    invoke-static/range {v0 .. v5}, Lcom/metamoji/nt/NtDocumentTemplate;->constructNewPageWithModelManager(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPageController$CreateModelParams;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static newPageFromPageData(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtDocument;Ljava/io/File;Ljava/util/Map;)Lcom/metamoji/df/model/IModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModelManager;",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/df/model/IModel;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 743
    :try_start_0
    new-instance v0, Lcom/metamoji/nt/NtDocumentTemplate$4;

    invoke-direct {v0}, Lcom/metamoji/nt/NtDocumentTemplate$4;-><init>()V

    invoke-static {p2, p1, v0, p3}, Lcom/metamoji/nt/NtPasteDataUtil;->importModelsFromFile(Ljava/io/File;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPasteDataUtil$IPreChecker;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 757
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/df/model/IModel;

    invoke-interface {p3}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p3

    const-string v0, "$page"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 758
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/df/model/IModel;

    :cond_0
    return-object p0

    :catch_0
    move-exception p1

    .line 750
    const-string p2, "failed to retrieve page data in pasteboard."

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object p0
.end method

.method private static newSheet(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 85
    invoke-static {p0}, Lcom/metamoji/nt/NtNoteController;->createNewNoteModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 87
    const-string v1, "docmeta"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 90
    const-string v1, "docMetaData"

    invoke-interface {v0, v1, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 94
    new-instance p0, Lcom/metamoji/df/controller/SettingsManager;

    invoke-direct {p0}, Lcom/metamoji/df/controller/SettingsManager;-><init>()V

    .line 95
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/df/controller/SettingsManager;->init(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/SettingsFactory;)V

    .line 96
    const-string v1, "MMJNtDocumentSettings"

    invoke-virtual {p0, v1}, Lcom/metamoji/df/controller/SettingsManager;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    return-object v0
.end method
