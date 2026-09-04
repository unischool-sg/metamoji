.class public Lcom/metamoji/un/image/UnImageUnit;
.super Lcom/metamoji/nt/NtUnitController;
.source "UnImageUnit.java"

# interfaces
.implements Lcom/metamoji/ns/direction/INsDirectionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/image/UnImageUnit$ModelDef;,
        Lcom/metamoji/un/image/UnImageUnit$ICloseImageEditDialog;,
        Lcom/metamoji/un/image/UnImageUnit$UndoModelDef;,
        Lcom/metamoji/un/image/UnImageUnit$ImageUnitUndoPerformer;,
        Lcom/metamoji/un/image/UnImageUnit$Orientation;,
        Lcom/metamoji/un/image/UnImageUnit$ContextDef;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static MMJUN_IMAGE_JPEG_QUALITY:I = 0x5a

.field public static final MODELTYPE:Ljava/lang/String; = "$image"


# instance fields
.field protected _image:Lcom/metamoji/cm/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/cm/BitmapEx;",
            ">;"
        }
    .end annotation
.end field

.field _imageSize:Lcom/metamoji/cm/Size;

.field private _pictureSprite:Lcom/metamoji/df/sprite/Sprite;

.field _rubberBand:Lcom/metamoji/un/util/UnRubberBandSupport;

.field mCloseImageEditDialog:Lcom/metamoji/un/image/UnImageUnit$ICloseImageEditDialog;


# direct methods
.method static bridge synthetic -$$Nest$fget_pictureSprite(Lcom/metamoji/un/image/UnImageUnit;)Lcom/metamoji/df/sprite/Sprite;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcompleteEditing(Lcom/metamoji/un/image/UnImageUnit;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Landroid/graphics/Rect;Landroid/graphics/Rect;FFLcom/metamoji/cm/PointArray;Lcom/metamoji/cm/PointArray;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/metamoji/un/image/UnImageUnit;->completeEditing(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Landroid/graphics/Rect;Landroid/graphics/Rect;FFLcom/metamoji/cm/PointArray;Lcom/metamoji/cm/PointArray;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtUnitController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/metamoji/un/image/UnImageUnit;->mCloseImageEditDialog:Lcom/metamoji/un/image/UnImageUnit$ICloseImageEditDialog;

    .line 165
    iput-object p1, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    .line 166
    iput-object p1, p0, Lcom/metamoji/un/image/UnImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    .line 177
    new-instance p1, Lcom/metamoji/un/util/UnRubberBandSupport;

    new-instance p2, Lcom/metamoji/un/image/UnImageUnit$1;

    invoke-direct {p2, p0}, Lcom/metamoji/un/image/UnImageUnit$1;-><init>(Lcom/metamoji/un/image/UnImageUnit;)V

    invoke-direct {p1, p0, p2}, Lcom/metamoji/un/util/UnRubberBandSupport;-><init>(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/un/util/UnRubberBandSupport$IRubberBandSupportCallback;)V

    iput-object p1, p0, Lcom/metamoji/un/image/UnImageUnit;->_rubberBand:Lcom/metamoji/un/util/UnRubberBandSupport;

    return-void
.end method

.method static synthetic access$000(Lcom/metamoji/un/image/UnImageUnit;)Lcom/metamoji/df/sprite/Sprite;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/metamoji/un/image/UnImageUnit;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    return-object p0
.end method

.method static synthetic access$100(Lcom/metamoji/un/image/UnImageUnit;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/metamoji/un/image/UnImageUnit;->_displayTag:Z

    return p0
.end method

.method static synthetic access$200(Lcom/metamoji/un/image/UnImageUnit;)Lcom/metamoji/df/sprite/Sprite;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/metamoji/un/image/UnImageUnit;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    return-object p0
.end method

.method private calcSpriteSize()Lcom/metamoji/cm/SizeF;
    .locals 5

    .line 562
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "width"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 563
    iget-object v1, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v4, "height"

    invoke-interface {v1, v4, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-ltz v3, :cond_0

    cmpg-float v4, v1, v2

    if-gez v4, :cond_2

    .line 565
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/image/UnImageUnit;->getImageSize()Lcom/metamoji/cm/Size;

    move-result-object v4

    if-gez v3, :cond_1

    .line 567
    iget v0, v4, Lcom/metamoji/cm/Size;->width:I

    int-to-float v0, v0

    :cond_1
    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 569
    iget v1, v4, Lcom/metamoji/cm/Size;->height:I

    int-to-float v1, v1

    .line 572
    :cond_2
    new-instance v2, Lcom/metamoji/cm/SizeF;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v2
.end method

.method private completeEditing(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Landroid/graphics/Rect;Landroid/graphics/Rect;FFLcom/metamoji/cm/PointArray;Lcom/metamoji/cm/PointArray;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v5, :cond_1

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v9, v8

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    .line 957
    invoke-virtual/range {p7 .. p8}, Lcom/metamoji/cm/PointArray;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_1

    .line 959
    :cond_2
    invoke-virtual {v6, v5}, Lcom/metamoji/cm/PointArray;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_1
    xor-int/2addr v9, v7

    .line 962
    :goto_2
    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    cmpl-float v10, v4, v3

    if-nez v10, :cond_3

    if-nez v9, :cond_3

    return-void

    .line 967
    :cond_3
    invoke-virtual {v1}, Lcom/metamoji/un/image/UnImageUnit;->isDirectable()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_4

    .line 968
    invoke-virtual {v1}, Lcom/metamoji/un/image/UnImageUnit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;

    move-result-object v10

    .line 969
    invoke-virtual {v1}, Lcom/metamoji/un/image/UnImageUnit;->getX()F

    move-result v12

    invoke-virtual {v10, v12}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setOffsetX(F)V

    .line 970
    invoke-virtual {v1}, Lcom/metamoji/un/image/UnImageUnit;->getY()F

    move-result v12

    invoke-virtual {v10, v12}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setOffsetY(F)V

    .line 971
    invoke-virtual {v1}, Lcom/metamoji/un/image/UnImageUnit;->getWidth()F

    move-result v12

    invoke-virtual {v10, v12}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setWidth(F)V

    .line 972
    invoke-virtual {v1}, Lcom/metamoji/un/image/UnImageUnit;->getHeight()F

    move-result v12

    invoke-virtual {v10, v12}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setHeight(F)V

    .line 974
    iget v12, v2, Lcom/metamoji/cm/RectEx;->width:F

    invoke-virtual {v10, v12}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskWidth(F)V

    .line 975
    iget v12, v2, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {v10, v12}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskHeight(F)V

    .line 976
    iget v12, v2, Lcom/metamoji/cm/RectEx;->x:F

    invoke-virtual {v10, v12}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskOffsetX(F)V

    .line 977
    iget v12, v2, Lcom/metamoji/cm/RectEx;->y:F

    invoke-virtual {v10, v12}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskOffsetY(F)V

    .line 979
    invoke-virtual {v10, v4}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setImageOpacity(F)V

    .line 981
    invoke-virtual {v10, v6}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskQCurvePathPoints(Lcom/metamoji/cm/PointArray;)V

    goto :goto_3

    :cond_4
    move-object v10, v11

    .line 990
    :goto_3
    invoke-virtual {v1, v11}, Lcom/metamoji/un/image/UnImageUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v12

    .line 992
    :try_start_0
    const-string v13, "imagemaskingundo"

    invoke-static {v1, v13, v7}, Lcom/metamoji/un/image/UnImageUnit$ImageUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v13

    .line 995
    invoke-virtual/range {p3 .. p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 997
    const-string v8, "nmw"

    iget v14, v2, Lcom/metamoji/cm/RectEx;->width:F

    float-to-double v14, v14

    invoke-interface {v13, v8, v14, v15}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 998
    const-string v8, "nmh"

    iget v14, v2, Lcom/metamoji/cm/RectEx;->height:F

    float-to-double v14, v14

    invoke-interface {v13, v8, v14, v15}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 999
    const-string v8, "nmx"

    iget v14, v2, Lcom/metamoji/cm/RectEx;->x:F

    float-to-double v14, v14

    invoke-interface {v13, v8, v14, v15}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1000
    const-string v8, "nmy"

    iget v14, v2, Lcom/metamoji/cm/RectEx;->y:F

    float-to-double v14, v14

    invoke-interface {v13, v8, v14, v15}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1002
    const-string v8, "omw"

    iget v14, v0, Lcom/metamoji/cm/RectEx;->width:F

    float-to-double v14, v14

    invoke-interface {v13, v8, v14, v15}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1003
    const-string v8, "omh"

    iget v14, v0, Lcom/metamoji/cm/RectEx;->height:F

    float-to-double v14, v14

    invoke-interface {v13, v8, v14, v15}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1004
    const-string v8, "omx"

    iget v14, v0, Lcom/metamoji/cm/RectEx;->x:F

    float-to-double v14, v14

    invoke-interface {v13, v8, v14, v15}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1005
    const-string v8, "omy"

    iget v14, v0, Lcom/metamoji/cm/RectEx;->y:F

    float-to-double v14, v14

    invoke-interface {v13, v8, v14, v15}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1015
    invoke-virtual {v1}, Lcom/metamoji/un/image/UnImageUnit;->getWidth()F

    move-result v8

    .line 1016
    invoke-virtual {v1}, Lcom/metamoji/un/image/UnImageUnit;->getHeight()F

    move-result v14

    .line 1018
    new-instance v15, Lcom/metamoji/cm/SizeF;

    iget v7, v0, Lcom/metamoji/cm/RectEx;->width:F

    div-float v7, v8, v7

    iget v11, v0, Lcom/metamoji/cm/RectEx;->height:F

    div-float v11, v14, v11

    invoke-direct {v15, v7, v11}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 1019
    new-instance v7, Lcom/metamoji/cm/SizeF;

    iget v11, v15, Lcom/metamoji/cm/SizeF;->width:F

    move/from16 v16, v9

    iget v9, v2, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v11, v9

    iget v9, v15, Lcom/metamoji/cm/SizeF;->height:F

    move/from16 p3, v9

    iget v9, v2, Lcom/metamoji/cm/RectEx;->height:F

    mul-float v9, v9, p3

    invoke-direct {v7, v11, v9}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 1022
    new-instance v9, Landroid/graphics/PointF;

    invoke-virtual {v1}, Lcom/metamoji/un/image/UnImageUnit;->getX()F

    move-result v11

    move/from16 p3, v11

    iget v11, v15, Lcom/metamoji/cm/SizeF;->width:F

    move/from16 p4, v11

    iget v11, v2, Lcom/metamoji/cm/RectEx;->x:F

    move/from16 v17, v11

    iget v11, v0, Lcom/metamoji/cm/RectEx;->x:F

    sub-float v11, v17, v11

    mul-float v11, v11, p4

    add-float v11, p3, v11

    invoke-virtual {v1}, Lcom/metamoji/un/image/UnImageUnit;->getY()F

    move-result v17

    iget v15, v15, Lcom/metamoji/cm/SizeF;->height:F

    move/from16 p3, v15

    iget v15, v2, Lcom/metamoji/cm/RectEx;->y:F

    iget v0, v0, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr v15, v0

    mul-float v15, v15, p3

    add-float v0, v17, v15

    invoke-direct {v9, v11, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1026
    invoke-virtual {v1}, Lcom/metamoji/un/image/UnImageUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v11

    .line 1028
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v0

    .line 1029
    iget v15, v9, Landroid/graphics/PointF;->x:F

    cmpl-float v15, v15, v11

    if-gtz v15, :cond_5

    iget v15, v9, Landroid/graphics/PointF;->y:F

    cmpl-float v15, v15, v0

    if-gtz v15, :cond_5

    iget v15, v9, Landroid/graphics/PointF;->x:F

    move/from16 v17, v15

    iget v15, v7, Lcom/metamoji/cm/SizeF;->width:F

    add-float v15, v17, v15

    const/16 v17, 0x0

    cmpg-float v15, v15, v17

    if-ltz v15, :cond_5

    iget v15, v9, Landroid/graphics/PointF;->y:F

    move/from16 p1, v15

    iget v15, v7, Lcom/metamoji/cm/SizeF;->height:F

    add-float v15, p1, v15

    cmpg-float v15, v15, v17

    if-ltz v15, :cond_5

    iget v15, v9, Landroid/graphics/PointF;->x:F

    move/from16 v17, v15

    neg-float v15, v11

    const/high16 v18, 0x3fc00000    # 1.5f

    mul-float v15, v15, v18

    cmpg-float v15, v17, v15

    if-ltz v15, :cond_5

    iget v15, v9, Landroid/graphics/PointF;->y:F

    move/from16 p1, v11

    neg-float v11, v0

    mul-float v11, v11, v18

    cmpg-float v11, v15, v11

    if-ltz v11, :cond_5

    iget v11, v9, Landroid/graphics/PointF;->x:F

    iget v15, v7, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v11, v15

    mul-float v15, p1, v18

    cmpl-float v11, v11, v15

    if-gtz v11, :cond_5

    iget v11, v9, Landroid/graphics/PointF;->y:F

    iget v15, v7, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v11, v15

    mul-float v0, v0, v18

    cmpl-float v0, v11, v0

    if-lez v0, :cond_6

    .line 1034
    :cond_5
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, v8, v14}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    new-instance v7, Lcom/metamoji/cm/SizeF;

    iget v8, v2, Lcom/metamoji/cm/RectEx;->width:F

    iget v9, v2, Lcom/metamoji/cm/RectEx;->height:F

    invoke-direct {v7, v8, v9}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    invoke-virtual {v1, v0, v7}, Lcom/metamoji/un/image/UnImageUnit;->autoUnitSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v7

    const/4 v9, 0x0

    .line 1040
    :cond_6
    new-instance v0, Lcom/metamoji/df/controller/GeometricProps;

    const/4 v8, 0x0

    invoke-direct {v0, v9, v7, v8, v8}, Lcom/metamoji/df/controller/GeometricProps;-><init>(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Ljava/lang/Float;Ljava/lang/Float;)V

    if-eqz v10, :cond_9

    .line 1043
    iget-object v7, v0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    if-eqz v7, :cond_7

    .line 1044
    iget-object v7, v0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-virtual {v10, v7}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setOffsetX(F)V

    .line 1045
    iget-object v7, v0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v7}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setOffsetY(F)V

    .line 1047
    :cond_7
    iget-object v7, v0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz v7, :cond_8

    .line 1048
    iget-object v7, v0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v7, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {v10, v7}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setWidth(F)V

    .line 1049
    iget-object v7, v0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v7, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v10, v7}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setHeight(F)V

    .line 1054
    :cond_8
    invoke-static {v1, v13, v0}, Lcom/metamoji/un/util/UnGeoPropUndoSupport;->pushUndoInfo(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/GeometricProps;)V

    :cond_9
    const/4 v8, 0x0

    .line 1057
    invoke-direct {v1, v0, v8}, Lcom/metamoji/un/image/UnImageUnit;->setGeometricPropsNoUpdate(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    .line 1058
    invoke-virtual {v1, v0, v12}, Lcom/metamoji/un/image/UnImageUnit;->notifyGeometricPropsChangedToParent(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    .line 1067
    iget v0, v2, Lcom/metamoji/cm/RectEx;->x:F

    invoke-virtual {v1, v0}, Lcom/metamoji/un/image/UnImageUnit;->setMaskOffsetX(F)V

    .line 1068
    iget v0, v2, Lcom/metamoji/cm/RectEx;->y:F

    invoke-virtual {v1, v0}, Lcom/metamoji/un/image/UnImageUnit;->setMaskOffsetY(F)V

    .line 1069
    iget v0, v2, Lcom/metamoji/cm/RectEx;->width:F

    invoke-virtual {v1, v0}, Lcom/metamoji/un/image/UnImageUnit;->setMaskWidth(F)V

    .line 1070
    iget v0, v2, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {v1, v0}, Lcom/metamoji/un/image/UnImageUnit;->setMaskHeight(F)V

    const/4 v8, 0x1

    goto :goto_4

    :cond_a
    move/from16 v16, v9

    :goto_4
    cmpl-float v0, v4, v3

    if-eqz v0, :cond_b

    .line 1079
    const-string v0, "nop"

    float-to-double v14, v4

    invoke-interface {v13, v0, v14, v15}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1080
    const-string v0, "oop"

    float-to-double v2, v3

    invoke-interface {v13, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1088
    invoke-virtual {v1, v4}, Lcom/metamoji/un/image/UnImageUnit;->setOpacity(F)V

    .line 1092
    :cond_b
    const-string v0, "nmqp"

    invoke-interface {v13, v0, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/PointArray;)V

    .line 1093
    const-string v0, "omqp"

    invoke-interface {v13, v0, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/PointArray;)V

    if-eqz v16, :cond_c

    .line 1096
    invoke-virtual {v1, v6}, Lcom/metamoji/un/image/UnImageUnit;->setMaskQCurvePathPoints(Lcom/metamoji/cm/PointArray;)V

    .line 1100
    :cond_c
    invoke-direct {v1, v8}, Lcom/metamoji/un/image/UnImageUnit;->updateSprite(Z)V

    const/4 v0, 0x1

    .line 1109
    invoke-virtual {v12, v13, v0}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    if-eqz v10, :cond_d

    .line 1111
    invoke-virtual {v10}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1112
    invoke-direct {v1, v10}, Lcom/metamoji/un/image/UnImageUnit;->sendMaskingDirection(Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    :cond_d
    invoke-virtual {v1, v12}, Lcom/metamoji/un/image/UnImageUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v12}, Lcom/metamoji/un/image/UnImageUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 1116
    throw v0
.end method

.method public static createImageModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 154
    const-string v0, "$image"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 155
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 156
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    const-string/jumbo v1, "unit"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unitId"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "imageTicket"

    invoke-interface {p0, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string p1, "hasShadow"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-object p0
.end method

.method private getBitmap()Lcom/metamoji/cm/BitmapEx;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    if-nez v0, :cond_0

    .line 362
    invoke-direct {p0}, Lcom/metamoji/un/image/UnImageUnit;->initImage()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 367
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/cm/SharedReference;->get()Ljava/lang/AutoCloseable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/BitmapEx;

    return-object v0
.end method

.method private getImageBlob()Lcom/metamoji/cm/Blob;
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "imageTicket"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/df/controller/AttachmentsManager;->getAttachment(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    return-object v0
.end method

.method private getImageSize()Lcom/metamoji/cm/Size;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    if-nez v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/metamoji/un/image/UnImageUnit;->initImage()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    return-object v0
.end method

.method private getTicket()Ljava/lang/String;
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "imageTicket"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleMaskingDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 1

    .line 1701
    new-instance v0, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1702
    invoke-virtual {p0, v0, p2, p1}, Lcom/metamoji/un/image/UnImageUnit;->handleMaskingDirectionData(Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;Lcom/metamoji/ns/direction/INsDirectionObserver;Z)V

    return-void
.end method

.method private handleShadowDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 1

    .line 1665
    new-instance v0, Lcom/metamoji/un/image/direction/UnImageShadowDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/un/image/direction/UnImageShadowDirectionData;-><init>(Ljava/lang/Object;)V

    .line 1666
    invoke-virtual {v0}, Lcom/metamoji/un/image/direction/UnImageShadowDirectionData;->hasShadow()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/image/UnImageUnit;->setHasShadow(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1667
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    :cond_0
    return-void
.end method

.method private initImage()V
    .locals 11

    .line 281
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v0

    .line 286
    invoke-direct {p0}, Lcom/metamoji/un/image/UnImageUnit;->getTicket()Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    if-nez v2, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    .line 293
    :cond_1
    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->getAttachment(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 298
    :cond_2
    invoke-static {v2}, Lcom/metamoji/cm/ImageUtils;->getBitmapSizeFromBlob(Lcom/metamoji/cm/Blob;)Lcom/metamoji/cm/Size;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 301
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskWidth()F

    move-result v3

    .line 302
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskHeight()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v6, v3, v5

    if-gtz v6, :cond_4

    .line 306
    iget-object v3, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    iget v3, v3, Lcom/metamoji/cm/Size;->width:I

    int-to-float v3, v3

    .line 307
    invoke-virtual {p0, v3}, Lcom/metamoji/un/image/UnImageUnit;->setMaskWidth(F)V

    :cond_4
    cmpg-float v5, v4, v5

    if-gtz v5, :cond_5

    .line 310
    iget-object v4, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    iget v4, v4, Lcom/metamoji/cm/Size;->height:I

    int-to-float v4, v4

    .line 311
    invoke-virtual {p0, v4}, Lcom/metamoji/un/image/UnImageUnit;->setMaskHeight(F)V

    .line 317
    :cond_5
    iget-object v5, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    iget v5, v5, Lcom/metamoji/cm/Size;->width:I

    int-to-long v5, v5

    iget-object v7, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    iget v7, v7, Lcom/metamoji/cm/Size;->height:I

    int-to-long v7, v7

    mul-long/2addr v5, v7

    float-to-long v7, v3

    float-to-long v9, v4

    mul-long/2addr v7, v9

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x9c40

    cmp-long v5, v5, v7

    if-lez v5, :cond_7

    .line 319
    invoke-static {}, Lcom/metamoji/df/controller/AttachmentsManager;->isHighResolution()Z

    move-result v5

    .line 320
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetX()F

    move-result v6

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetY()F

    move-result v7

    invoke-static {v6, v7, v3, v4}, Lcom/metamoji/cm/RectEx;->newRect(FFFF)Landroid/graphics/Rect;

    move-result-object v3

    if-nez v2, :cond_6

    .line 322
    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->getAttachment(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-nez v2, :cond_6

    :goto_1
    return-void

    .line 327
    :cond_6
    invoke-static {v5}, Lcom/metamoji/df/controller/AttachmentsManager;->getBitmapShortSideSize(Z)I

    move-result v0

    invoke-static {v5}, Lcom/metamoji/df/controller/AttachmentsManager;->getBitmapLongSideSize(Z)I

    move-result v1

    invoke-static {v2, v3, v0, v1}, Lcom/metamoji/cm/ImageUtils;->createCroppedBitmapFromBlob(Lcom/metamoji/cm/Blob;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    new-instance v1, Lcom/metamoji/cm/SharedReference;

    new-instance v2, Lcom/metamoji/cm/BitmapEx;

    iget-object v4, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    invoke-direct {v2, v0, v4, v3}, Lcom/metamoji/cm/BitmapEx;-><init>(Landroid/graphics/Bitmap;Lcom/metamoji/cm/Size;Landroid/graphics/Rect;)V

    invoke-direct {v1, v2}, Lcom/metamoji/cm/SharedReference;-><init>(Ljava/lang/AutoCloseable;)V

    iput-object v1, p0, Lcom/metamoji/un/image/UnImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    return-void

    .line 331
    :cond_7
    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->getBitmapAttachment(Ljava/lang/String;)Lcom/metamoji/cm/SharedReference;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    return-void
.end method

.method public static isImageUnitWithJPEG()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private performGeopropUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 1348
    invoke-static {p0, p2, p1}, Lcom/metamoji/un/util/UnGeoPropUndoSupport;->performUndo(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/model/IModel;Z)V

    .line 1351
    new-instance p1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {p1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/image/UnImageUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 1352
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->updateSprite()V

    return-void
.end method

.method private performMaskingUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 12

    .line 1366
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1371
    const-string v1, "omx"

    goto :goto_1

    :cond_1
    const-string v1, "nmx"

    :goto_1
    if-eqz p1, :cond_2

    .line 1372
    const-string v2, "omy"

    goto :goto_2

    :cond_2
    const-string v2, "nmy"

    :goto_2
    if-eqz p1, :cond_3

    .line 1373
    const-string v3, "omw"

    goto :goto_3

    :cond_3
    const-string v3, "nmw"

    :goto_3
    if-eqz p1, :cond_4

    .line 1374
    const-string v4, "omh"

    goto :goto_4

    :cond_4
    const-string v4, "nmh"

    :goto_4
    if-eqz p1, :cond_5

    .line 1375
    const-string v5, "oop"

    goto :goto_5

    :cond_5
    const-string v5, "nop"

    :goto_5
    if-eqz p1, :cond_6

    .line 1376
    const-string v6, "omqp"

    goto :goto_6

    :cond_6
    const-string v6, "nmqp"

    .line 1380
    :goto_6
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v7, 0x0

    if-eqz v1, :cond_7

    .line 1382
    invoke-static {v1, v7}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v1

    .line 1383
    iget-object v8, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v9, "maskOffsetX"

    float-to-double v10, v1

    invoke-interface {v8, v9, v10, v11}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    if-eqz v0, :cond_8

    .line 1385
    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskOffsetX(F)V

    goto :goto_7

    :cond_7
    if-eqz v0, :cond_8

    .line 1388
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskOffsetX(F)V

    .line 1390
    :cond_8
    :goto_7
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1392
    invoke-static {v1, v7}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v1

    .line 1393
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v8, "maskOffsetY"

    float-to-double v9, v1

    invoke-interface {v2, v8, v9, v10}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    if-eqz v0, :cond_a

    .line 1395
    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskOffsetY(F)V

    goto :goto_8

    :cond_9
    if-eqz v0, :cond_a

    .line 1398
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskOffsetY(F)V

    .line 1401
    :cond_a
    :goto_8
    invoke-interface {p2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1403
    invoke-static {v1, v7}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v1

    .line 1404
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v3, "maskWidth"

    float-to-double v8, v1

    invoke-interface {v2, v3, v8, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    if-eqz v0, :cond_c

    .line 1406
    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskWidth(F)V

    goto :goto_9

    :cond_b
    if-eqz v0, :cond_c

    .line 1409
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskWidth(F)V

    .line 1412
    :cond_c
    :goto_9
    invoke-interface {p2, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1414
    invoke-static {v1, v7}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v1

    .line 1415
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v3, "maskHeight"

    float-to-double v8, v1

    invoke-interface {v2, v3, v8, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    if-eqz v0, :cond_e

    .line 1417
    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskHeight(F)V

    goto :goto_a

    :cond_d
    if-eqz v0, :cond_e

    .line 1420
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskHeight(F)V

    .line 1422
    :cond_e
    :goto_a
    invoke-interface {p2, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsPointArray(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object v1

    .line 1423
    invoke-virtual {p0, v1}, Lcom/metamoji/un/image/UnImageUnit;->setMaskQCurvePathPoints(Lcom/metamoji/cm/PointArray;)V

    if-eqz v0, :cond_f

    .line 1425
    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setMaskQCurvePathPoints(Lcom/metamoji/cm/PointArray;)V

    .line 1427
    :cond_f
    invoke-interface {p2, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1429
    invoke-static {v1, v7}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v1

    .line 1430
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v3, "opacity"

    float-to-double v4, v1

    invoke-interface {v2, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    if-eqz v0, :cond_11

    .line 1432
    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setImageOpacity(F)V

    goto :goto_b

    :cond_10
    if-eqz v0, :cond_11

    .line 1435
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getOpacity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setImageOpacity(F)V

    :cond_11
    :goto_b
    const/4 v1, 0x1

    .line 1439
    invoke-direct {p0, v1}, Lcom/metamoji/un/image/UnImageUnit;->updateSprite(Z)V

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_12

    .line 1449
    const-string v1, "ox"

    goto :goto_c

    :cond_12
    const-string v1, "nx"

    :goto_c
    if-eqz p1, :cond_13

    .line 1450
    const-string v2, "oy"

    goto :goto_d

    :cond_13
    const-string v2, "ny"

    :goto_d
    if-eqz p1, :cond_14

    .line 1451
    const-string v3, "ow"

    goto :goto_e

    :cond_14
    const-string v3, "nw"

    :goto_e
    if-eqz p1, :cond_15

    .line 1452
    const-string p1, "oh"

    goto :goto_f

    :cond_15
    const-string p1, "nh"

    .line 1454
    :goto_f
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1456
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setOffsetX(F)V

    goto :goto_10

    .line 1458
    :cond_16
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setOffsetX(F)V

    .line 1460
    :goto_10
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1462
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setOffsetY(F)V

    goto :goto_11

    .line 1464
    :cond_17
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setOffsetY(F)V

    .line 1466
    :goto_11
    invoke-interface {p2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1468
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setWidth(F)V

    goto :goto_12

    .line 1470
    :cond_18
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setWidth(F)V

    .line 1472
    :goto_12
    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 1474
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setHeight(F)V

    goto :goto_13

    .line 1476
    :cond_19
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getHeight()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setHeight(F)V

    .line 1480
    :goto_13
    invoke-direct {p0, v0}, Lcom/metamoji/un/image/UnImageUnit;->sendMaskingDirection(Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;)V

    :cond_1a
    return-void
.end method

.method private performReplaceUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 11

    if-eqz p1, :cond_0

    .line 1489
    const-string v0, "ot"

    goto :goto_0

    :cond_0
    const-string v0, "nt"

    :goto_0
    if-eqz p1, :cond_1

    .line 1490
    const-string v1, "ow"

    goto :goto_1

    :cond_1
    const-string v1, "nw"

    :goto_1
    if-eqz p1, :cond_2

    .line 1491
    const-string v2, "oh"

    goto :goto_2

    :cond_2
    const-string v2, "nh"

    :goto_2
    if-eqz p1, :cond_3

    .line 1492
    const-string v3, "omx"

    goto :goto_3

    :cond_3
    const-string v3, "nmx"

    :goto_3
    if-eqz p1, :cond_4

    .line 1493
    const-string v4, "omy"

    goto :goto_4

    :cond_4
    const-string v4, "nmy"

    :goto_4
    if-eqz p1, :cond_5

    .line 1494
    const-string v5, "omw"

    goto :goto_5

    :cond_5
    const-string v5, "nmw"

    :goto_5
    if-eqz p1, :cond_6

    .line 1495
    const-string v6, "omh"

    goto :goto_6

    :cond_6
    const-string v6, "nmh"

    :goto_6
    if-eqz p1, :cond_7

    .line 1496
    const-string v7, "omqp"

    goto :goto_7

    :cond_7
    const-string v7, "nmqp"

    :goto_7
    if-eqz p1, :cond_8

    .line 1497
    const-string p1, "oop"

    goto :goto_8

    :cond_8
    const-string p1, "nop"

    .line 1501
    :goto_8
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1503
    iget-object v8, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v9, "imageTicket"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v9, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :cond_9
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1507
    iget-object v8, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    float-to-double v9, v0

    const-string/jumbo v0, "width"

    invoke-interface {v8, v0, v9, v10}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1509
    :cond_a
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1511
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    float-to-double v8, v0

    const-string v0, "height"

    invoke-interface {v2, v0, v8, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1513
    :cond_b
    invoke-interface {p2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1515
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    float-to-double v8, v0

    const-string v0, "maskOffsetX"

    invoke-interface {v2, v0, v8, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1517
    :cond_c
    invoke-interface {p2, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1519
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    float-to-double v3, v0

    const-string v0, "maskOffsetY"

    invoke-interface {v2, v0, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1521
    :cond_d
    invoke-interface {p2, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1523
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    float-to-double v3, v0

    const-string v0, "maskWidth"

    invoke-interface {v2, v0, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1525
    :cond_e
    invoke-interface {p2, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1527
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    float-to-double v3, v0

    const-string v0, "maskHeight"

    invoke-interface {v2, v0, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1529
    :cond_f
    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 1531
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result p1

    float-to-double v1, p1

    const-string p1, "opacity"

    invoke-interface {v0, p1, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1533
    :cond_10
    invoke-interface {p2, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsPointArray(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    .line 1534
    invoke-virtual {p0, p1}, Lcom/metamoji/un/image/UnImageUnit;->setMaskQCurvePathPoints(Lcom/metamoji/cm/PointArray;)V

    .line 1537
    new-instance p1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {p1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/image/UnImageUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    const/4 p1, 0x0

    .line 1540
    iput-object p1, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    const/4 p1, 0x1

    .line 1541
    invoke-direct {p0, p1}, Lcom/metamoji/un/image/UnImageUnit;->updateSprite(Z)V

    return-void
.end method

.method public static registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 1554
    new-instance v0, Lcom/metamoji/un/image/UnImageUnit$ImageUnitUndoPerformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/image/UnImageUnit$ImageUnitUndoPerformer;-><init>(Lcom/metamoji/un/image/UnImageUnit-IA;)V

    .line 1555
    const-string v1, "imagegeopropundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 1556
    const-string v1, "imagemaskingundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 1557
    const-string v1, "imagereplaceundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private sendMaskingDirection(Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;)V
    .locals 8

    .line 1677
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1681
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1683
    invoke-virtual {p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    .line 1684
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v3

    .line 1687
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 1688
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1683
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V

    .line 1691
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->destroy()V

    return-void
.end method

.method private setGeometricPropsNoUpdate(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 1216
    const-string v1, "imagegeopropundo"

    invoke-static {p0, v1, v0}, Lcom/metamoji/un/image/UnImageUnit$ImageUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 1218
    invoke-static {p0, v1, p1}, Lcom/metamoji/un/util/UnGeoPropUndoSupport;->pushUndoInfo(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/GeometricProps;)V

    .line 1220
    invoke-virtual {p2, v1, v0}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 1224
    :cond_0
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz p2, :cond_1

    .line 1225
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/image/UnImageUnit;->setHeight(F)V

    .line 1226
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/image/UnImageUnit;->setWidth(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1229
    :goto_0
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    if-eqz p2, :cond_2

    .line 1230
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/image/UnImageUnit;->setX(F)V

    .line 1231
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/image/UnImageUnit;->setY(F)V

    .line 1233
    :cond_2
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz p2, :cond_3

    .line 1234
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/image/UnImageUnit;->setRotation(D)V

    .line 1236
    :cond_3
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    if-eqz p2, :cond_4

    .line 1237
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/image/UnImageUnit;->setContentScale(D)V

    .line 1241
    :cond_4
    invoke-virtual {p0, p1}, Lcom/metamoji/un/image/UnImageUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    return v0
.end method

.method private setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z
    .locals 0

    .line 1253
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/image/UnImageUnit;->setGeometricPropsNoUpdate(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    .line 1254
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/image/UnImageUnit;->notifyGeometricPropsChangedToParent(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    move-result p1

    return p1
.end method

.method public static unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 1564
    const-string v0, "imagegeopropundo"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 1565
    const-string v0, "imagemaskingundo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 1566
    const-string v0, "imagereplaceundo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method public static updateModelVersion(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 506
    const-string v0, "maskQCurvePath"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 507
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 509
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    return-void
.end method

.method private updateSprite(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->updateSprite()V

    return-void

    .line 648
    :cond_0
    new-instance p1, Lcom/metamoji/df/controller/StageQueueingDisposer;

    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1, v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;-><init>(Lcom/metamoji/df/sprite/Sprite;)V

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/cm/SharedReference;->newRef()Lcom/metamoji/cm/SharedReference;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 652
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->releaseImage()V

    .line 653
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->updateSprite()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 654
    :try_start_2
    invoke-virtual {v0}, Lcom/metamoji/cm/SharedReference;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 656
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 651
    :try_start_3
    invoke-virtual {v0}, Lcom/metamoji/cm/SharedReference;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 656
    invoke-virtual {p1}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 657
    throw v0
.end method

.method public static visitModelForAttachments(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/AttachmentsModelVisitContext;)V
    .locals 3

    .line 1188
    sget-object v0, Lcom/metamoji/un/image/UnImageUnit$5;->$SwitchMap$com$metamoji$df$controller$AttachmentsModelVisitContext$VisitorCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getCommand()Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "imageTicket"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1201
    const-string p0, "UnImageUnit.visitModelForAttachments: unknown command."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 1194
    :cond_0
    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1195
    invoke-virtual {p1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getReplaceTable()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1197
    invoke-interface {p0, v2, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1191
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getTickets()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method autoUnitSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;
    .locals 5

    .line 1135
    invoke-virtual {p0, p1}, Lcom/metamoji/un/image/UnImageUnit;->getOrientation(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/un/image/UnImageUnit$Orientation;

    move-result-object v0

    .line 1136
    invoke-virtual {p0, p2}, Lcom/metamoji/un/image/UnImageUnit;->getOrientation(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/un/image/UnImageUnit$Orientation;

    move-result-object v1

    .line 1139
    sget-object v2, Lcom/metamoji/un/image/UnImageUnit$Orientation;->LANDSCAPE:Lcom/metamoji/un/image/UnImageUnit$Orientation;

    if-ne v0, v2, :cond_0

    .line 1141
    iget v2, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget v3, p2, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_0

    .line 1144
    :cond_0
    iget v2, p1, Lcom/metamoji/cm/SizeF;->height:F

    iget v3, p2, Lcom/metamoji/cm/SizeF;->height:F

    :goto_0
    div-float/2addr v2, v3

    .line 1146
    new-instance v3, Lcom/metamoji/cm/SizeF;

    iget v4, p2, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr v4, v2

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr p2, v2

    invoke-direct {v3, v4, p2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    if-eq v0, v1, :cond_1

    .line 1151
    iget p2, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr p2, p1

    .line 1152
    iget p1, v3, Lcom/metamoji/cm/SizeF;->width:F

    iget v0, v3, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr p1, v0

    div-float/2addr p2, p1

    float-to-double p1, p2

    .line 1153
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 1154
    iget p2, v3, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr p2, p1

    iput p2, v3, Lcom/metamoji/cm/SizeF;->width:F

    .line 1155
    iget p2, v3, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr p2, p1

    iput p2, v3, Lcom/metamoji/cm/SizeF;->height:F

    :cond_1
    return-object v3
.end method

.method public canFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 269
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 270
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->releaseImage()V

    return-void
.end method

.method public editImage()V
    .locals 17

    move-object/from16 v0, p0

    .line 876
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 881
    const-string v2, "ImageEdit"

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 887
    :cond_1
    invoke-direct {v0}, Lcom/metamoji/un/image/UnImageUnit;->getBitmap()Lcom/metamoji/cm/BitmapEx;

    move-result-object v3

    .line 889
    invoke-virtual {v3}, Lcom/metamoji/cm/BitmapEx;->isCropped()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 890
    invoke-virtual {v0}, Lcom/metamoji/un/image/UnImageUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v3

    invoke-direct {v0}, Lcom/metamoji/un/image/UnImageUnit;->getTicket()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/df/controller/AttachmentsManager;->getBitmapAttachment(Ljava/lang/String;)Lcom/metamoji/cm/SharedReference;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_0
    return-void

    .line 894
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/cm/SharedReference;->get()Ljava/lang/AutoCloseable;

    move-result-object v4

    check-cast v4, Lcom/metamoji/cm/BitmapEx;

    goto :goto_1

    .line 896
    :cond_3
    iget-object v4, v0, Lcom/metamoji/un/image/UnImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    invoke-virtual {v4}, Lcom/metamoji/cm/SharedReference;->newRef()Lcom/metamoji/cm/SharedReference;

    move-result-object v4

    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .line 901
    :goto_1
    invoke-virtual {v4}, Lcom/metamoji/cm/BitmapEx;->getRatioX()F

    move-result v10

    .line 902
    invoke-virtual {v4}, Lcom/metamoji/cm/BitmapEx;->getRatioY()F

    move-result v11

    .line 903
    new-instance v5, Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetX()F

    move-result v6

    invoke-virtual {v0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetY()F

    move-result v7

    invoke-virtual {v0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskWidth()F

    move-result v8

    invoke-virtual {v0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskHeight()F

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 904
    iget v6, v5, Lcom/metamoji/cm/RectEx;->x:F

    mul-float/2addr v6, v10

    iget v7, v5, Lcom/metamoji/cm/RectEx;->y:F

    mul-float/2addr v7, v11

    iget v8, v5, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v8, v10

    iget v9, v5, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v9, v11

    invoke-static {v6, v7, v8, v9}, Lcom/metamoji/cm/RectEx;->newRect(FFFF)Landroid/graphics/Rect;

    move-result-object v7

    .line 905
    invoke-virtual {v0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskQCurvePathPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v6

    .line 906
    invoke-virtual {v0, v6, v10, v11}, Lcom/metamoji/un/image/UnImageUnit;->zoomPointArray(Lcom/metamoji/cm/PointArray;FF)Lcom/metamoji/cm/PointArray;

    move-result-object v13

    .line 908
    invoke-virtual {v0}, Lcom/metamoji/un/image/UnImageUnit;->getUnitId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/metamoji/cm/BitmapEx;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v9, v8

    invoke-virtual {v0}, Lcom/metamoji/un/image/UnImageUnit;->getOpacity()F

    move-result v8

    move-object v12, v9

    instance-of v9, v0, Lcom/metamoji/un/web/UnWebUnit;

    move-object v14, v12

    invoke-virtual {v5}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object v12

    move-object v15, v14

    new-instance v14, Lcom/metamoji/un/image/UnImageUnit$3;

    invoke-direct {v14, v0, v5, v6}, Lcom/metamoji/un/image/UnImageUnit$3;-><init>(Lcom/metamoji/un/image/UnImageUnit;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/PointArray;)V

    move-object v5, v15

    new-instance v15, Lcom/metamoji/un/image/UnImageUnit$4;

    invoke-direct {v15, v0, v3}, Lcom/metamoji/un/image/UnImageUnit$4;-><init>(Lcom/metamoji/un/image/UnImageUnit;Lcom/metamoji/cm/SharedReference;)V

    move-object v6, v4

    invoke-static/range {v5 .. v15}, Lcom/metamoji/ui/dialog/ImageEditDialog;->newInstance(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Rect;FZFFLandroid/graphics/RectF;Lcom/metamoji/cm/PointArray;Lcom/metamoji/ui/dialog/ImageEditDialog$IOnResult;Ljava/lang/Runnable;)Lcom/metamoji/ui/dialog/ImageEditDialog;

    move-result-object v3

    .line 924
    iput-object v3, v0, Lcom/metamoji/un/image/UnImageUnit;->mCloseImageEditDialog:Lcom/metamoji/un/image/UnImageUnit$ICloseImageEditDialog;

    .line 925
    invoke-virtual {v3, v1, v2}, Lcom/metamoji/ui/dialog/ImageEditDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public getDirectionHandlerID()Ljava/lang/String;
    .locals 1

    .line 1602
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMaskHeight()F
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "maskHeight"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method getMaskOffsetX()F
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "maskOffsetX"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method getMaskOffsetY()F
    .locals 4

    .line 404
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "maskOffsetY"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method getMaskQCurvePathPoints()Lcom/metamoji/cm/PointArray;
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "maskQCurvePath"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsPointArray(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object v0

    return-object v0
.end method

.method getMaskWidth()F
    .locals 4

    .line 422
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "maskWidth"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getMinSize()Lcom/metamoji/cm/SizeF;
    .locals 2

    .line 521
    new-instance v0, Lcom/metamoji/cm/SizeF;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v1, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method getOpacity()F
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "opacity"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method getOrientation(Lcom/metamoji/cm/SizeF;)Lcom/metamoji/un/image/UnImageUnit$Orientation;
    .locals 1

    .line 1128
    iget v0, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    sget-object p1, Lcom/metamoji/un/image/UnImageUnit$Orientation;->LANDSCAPE:Lcom/metamoji/un/image/UnImageUnit$Orientation;

    return-object p1

    :cond_0
    sget-object p1, Lcom/metamoji/un/image/UnImageUnit$Orientation;->PORTRAIT:Lcom/metamoji/un/image/UnImageUnit$Orientation;

    return-object p1
.end method

.method public handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;",
            "Lcom/metamoji/ns/direction/INsDirectionObserver;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1614
    new-instance v0, Lcom/metamoji/df/controller/StageQueueingDisposer;

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/df/controller/StageQueueingDisposer;-><init>(Lcom/metamoji/df/sprite/Stage;)V

    .line 1617
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/direction/NsReceivedDirection;

    .line 1618
    invoke-virtual {p0, v1, p2}, Lcom/metamoji/un/image/UnImageUnit;->handleOneDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    .line 1619
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->isUnknownDataFound()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1624
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 1625
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 1624
    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 1625
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1626
    throw p1
.end method

.method protected handleMaskingDirectionData(Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;Lcom/metamoji/ns/direction/INsDirectionObserver;Z)V
    .locals 6

    .line 1714
    invoke-virtual {p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getOffsetX()F

    move-result v0

    .line 1715
    invoke-virtual {p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getOffsetY()F

    move-result v1

    .line 1716
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getY()F

    move-result v2

    cmpl-float v2, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getX()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    move-object p3, v4

    goto :goto_1

    .line 1717
    :cond_1
    :goto_0
    new-instance p3, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {p3}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 1718
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p3, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 1719
    invoke-virtual {p0, v0}, Lcom/metamoji/un/image/UnImageUnit;->setX(F)V

    .line 1720
    invoke-virtual {p0, v1}, Lcom/metamoji/un/image/UnImageUnit;->setY(F)V

    move v0, v3

    .line 1725
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getWidth()F

    move-result v1

    .line 1726
    invoke-virtual {p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getHeight()F

    move-result v2

    .line 1727
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getWidth()F

    move-result v5

    cmpl-float v5, v5, v1

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getHeight()F

    move-result v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_4

    :cond_2
    if-nez p3, :cond_3

    .line 1729
    new-instance p3, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {p3}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 1731
    :cond_3
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v0, p3, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 1732
    invoke-virtual {p0, v1}, Lcom/metamoji/un/image/UnImageUnit;->setWidth(F)V

    .line 1733
    invoke-virtual {p0, v2}, Lcom/metamoji/un/image/UnImageUnit;->setHeight(F)V

    move v0, v3

    .line 1738
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getMaskOffsetX()F

    move-result v1

    .line 1739
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetX()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_5

    .line 1740
    invoke-virtual {p0, v1}, Lcom/metamoji/un/image/UnImageUnit;->setMaskOffsetX(F)V

    move v0, v3

    .line 1743
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getMaskOffsetY()F

    move-result v1

    .line 1744
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetY()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_6

    .line 1745
    invoke-virtual {p0, v1}, Lcom/metamoji/un/image/UnImageUnit;->setMaskOffsetY(F)V

    move v0, v3

    .line 1748
    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getMaskWidth()F

    move-result v1

    .line 1749
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_7

    .line 1750
    invoke-virtual {p0, v1}, Lcom/metamoji/un/image/UnImageUnit;->setMaskWidth(F)V

    move v0, v3

    .line 1753
    :cond_7
    invoke-virtual {p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getMaskHeight()F

    move-result v1

    .line 1754
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskHeight()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_8

    .line 1755
    invoke-virtual {p0, v1}, Lcom/metamoji/un/image/UnImageUnit;->setMaskHeight(F)V

    move v0, v3

    .line 1759
    :cond_8
    invoke-virtual {p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getImageOpacity()F

    move-result v1

    .line 1760
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getOpacity()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_9

    .line 1761
    invoke-virtual {p0, v1}, Lcom/metamoji/un/image/UnImageUnit;->setOpacity(F)V

    move v0, v3

    .line 1765
    :cond_9
    invoke-virtual {p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getMaskQCurvePathPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    .line 1766
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskQCurvePathPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    if-nez p1, :cond_a

    if-eqz v1, :cond_c

    :cond_a
    if-eqz p1, :cond_b

    .line 1770
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/PointArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    .line 1772
    :cond_b
    invoke-virtual {v1, p1}, Lcom/metamoji/cm/PointArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_2
    xor-int/2addr v1, v3

    if-eqz v1, :cond_c

    .line 1775
    invoke-virtual {p0, p1}, Lcom/metamoji/un/image/UnImageUnit;->setMaskQCurvePathPoints(Lcom/metamoji/cm/PointArray;)V

    move v0, v3

    :cond_c
    if-eqz v0, :cond_e

    if-eqz p3, :cond_d

    .line 1782
    invoke-virtual {p0, p3, v4}, Lcom/metamoji/un/image/UnImageUnit;->notifyGeometricPropsChangedToParent(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    .line 1786
    :cond_d
    new-instance p1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {p1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/image/UnImageUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 1788
    invoke-direct {p0, v3}, Lcom/metamoji/un/image/UnImageUnit;->updateSprite(Z)V

    .line 1791
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 1792
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    :cond_e
    return-void
.end method

.method protected handleOneDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 2

    .line 1636
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v0

    .line 1637
    invoke-static {v0}, Lcom/metamoji/un/image/direction/UnImageShadowDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1638
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/image/UnImageUnit;->handleShadowDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void

    .line 1639
    :cond_0
    invoke-static {v0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1640
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/image/UnImageUnit;->handleMaskingDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void

    .line 1642
    :cond_1
    const-string v0, "image unit received unknown direction."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 1643
    invoke-interface {p2, p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->unknownDataFound(Lcom/metamoji/ns/direction/NsReceivedDirection;)V

    return-void
.end method

.method protected hasShadow()Z
    .locals 3

    .line 1286
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "hasShadow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 210
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 213
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 214
    const-string v0, "imageUnit"

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setName(Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 216
    iget-object p1, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 217
    iget-object p1, p0, Lcom/metamoji/un/image/UnImageUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 219
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->updateSprite()V

    .line 222
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->isDirectable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    :cond_0
    return-void
.end method

.method public isPngSuggested()Ljava/lang/Boolean;
    .locals 4

    .line 1823
    invoke-direct {p0}, Lcom/metamoji/un/image/UnImageUnit;->getImageBlob()Lcom/metamoji/cm/Blob;

    move-result-object v0

    const/4 v1, 0x0

    .line 1824
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    .line 1826
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 1827
    const-string v2, "image/png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1829
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1832
    :cond_1
    const-string v2, "application/pdf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1833
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "maskQCurvePath"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsPointArray(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1834
    invoke-virtual {v0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    .line 1836
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public killFocus(Z)V
    .locals 0

    .line 548
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->killFocus(Z)V

    return-void
.end method

.method public pageDeactivating(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->mCloseImageEditDialog:Lcom/metamoji/un/image/UnImageUnit$ICloseImageEditDialog;

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0}, Lcom/metamoji/un/image/UnImageUnit$ICloseImageEditDialog;->closeImageEditDialog()V

    .line 241
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->pageDeactivating(Lcom/metamoji/df/controller/DfPageController;)V

    return-void
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 1

    .line 732
    invoke-super {p0, p1, p2}, Lcom/metamoji/nt/NtUnitController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 736
    :cond_0
    sget-object p2, Lcom/metamoji/un/image/UnImageUnit$5;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 741
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->editImage()V

    return v0

    .line 738
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->replaceImage()V

    return v0
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 1330
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 1332
    const-string v1, "imagegeopropundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/image/UnImageUnit;->performGeopropUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1334
    :cond_0
    const-string v1, "imagemaskingundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1335
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/image/UnImageUnit;->performMaskingUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1336
    :cond_1
    const-string v1, "imagereplaceundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1337
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/image/UnImageUnit;->performReplaceUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1339
    :cond_2
    const-string/jumbo p1, "unkown undo model type (%s)"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->mCloseImageEditDialog:Lcom/metamoji/un/image/UnImageUnit$ICloseImageEditDialog;

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0}, Lcom/metamoji/un/image/UnImageUnit$ICloseImageEditDialog;->closeImageEditDialog()V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    .line 261
    :cond_1
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method protected releaseImage()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/metamoji/cm/SharedReference;->close()V

    const/4 v0, 0x0

    .line 341
    iput-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    :cond_0
    return-void
.end method

.method public replaceImage()V
    .locals 0

    return-void
.end method

.method public setFocus(Lcom/metamoji/nt/NtFocusOption;)V
    .locals 0

    .line 536
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->setFocus(Lcom/metamoji/nt/NtFocusOption;)V

    return-void
.end method

.method public setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V
    .locals 0

    .line 1266
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/image/UnImageUnit;->setGeometricPropsNoUpdate(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1267
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->updateSprite()V

    :cond_0
    return-void
.end method

.method protected setHasShadow(Z)Z
    .locals 3

    .line 1297
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "hasShadow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setImage(Lcom/metamoji/cm/Blob;Lcom/metamoji/df/controller/EditContext;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 780
    invoke-virtual {p0, v1}, Lcom/metamoji/un/image/UnImageUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object p2

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 784
    :goto_0
    :try_start_0
    new-instance v4, Lcom/metamoji/df/controller/StageQueueingDisposer;

    iget-object v5, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v4, v5}, Lcom/metamoji/df/controller/StageQueueingDisposer;-><init>(Lcom/metamoji/df/sprite/Sprite;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 787
    :try_start_1
    const-string v5, "imagereplaceundo"

    invoke-static {p0, v5, v0}, Lcom/metamoji/un/image/UnImageUnit$ImageUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 789
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    .line 790
    const-string v7, "imageTicket"

    invoke-interface {v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 791
    const-string v7, "ot"

    invoke-interface {v5, v7, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0, p1}, Lcom/metamoji/un/image/UnImageUnit;->storeImageItem(Lcom/metamoji/cm/Blob;)Ljava/lang/String;

    move-result-object p1

    .line 793
    const-string v6, "nt"

    invoke-interface {v5, v6, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string p1, "ow"

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getWidth()F

    move-result v6

    float-to-double v6, v6

    invoke-interface {v5, p1, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 797
    const-string p1, "oh"

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getHeight()F

    move-result v6

    float-to-double v6, v6

    invoke-interface {v5, p1, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 798
    const-string p1, "omw"

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskWidth()F

    move-result v6

    float-to-double v6, v6

    invoke-interface {v5, p1, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 799
    const-string p1, "omh"

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskHeight()F

    move-result v6

    float-to-double v6, v6

    invoke-interface {v5, p1, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 800
    const-string p1, "omx"

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetX()F

    move-result v6

    float-to-double v6, v6

    invoke-interface {v5, p1, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 801
    const-string p1, "omy"

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetY()F

    move-result v6

    float-to-double v6, v6

    invoke-interface {v5, p1, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 802
    const-string p1, "oop"

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getOpacity()F

    move-result v6

    float-to-double v6, v6

    invoke-interface {v5, p1, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 803
    const-string p1, "omqp"

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskQCurvePathPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/PointArray;)V

    .line 807
    iget-object p1, p0, Lcom/metamoji/un/image/UnImageUnit;->_image:Lcom/metamoji/cm/SharedReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/cm/SharedReference;->newRef()Lcom/metamoji/cm/SharedReference;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 808
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->releaseImage()V

    .line 809
    iput-object v1, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    .line 812
    iget-object v6, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v7, "maskWidth"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 813
    iget-object v6, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v7, "maskHeight"

    invoke-interface {v6, v7, v8, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 814
    invoke-direct {p0}, Lcom/metamoji/un/image/UnImageUnit;->getImageSize()Lcom/metamoji/cm/Size;

    move-result-object v6

    .line 815
    new-instance v7, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getWidth()F

    move-result v8

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getHeight()F

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    new-instance v8, Lcom/metamoji/cm/SizeF;

    invoke-direct {v8, v6}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/Size;)V

    invoke-virtual {p0, v7, v8}, Lcom/metamoji/un/image/UnImageUnit;->autoUnitSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Lcom/metamoji/cm/SizeF;

    move-result-object v7

    .line 818
    const-string v8, "nw"

    iget v9, v7, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v9, v9

    invoke-interface {v5, v8, v9, v10}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 819
    const-string v8, "nh"

    iget v9, v7, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v9, v9

    invoke-interface {v5, v8, v9, v10}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 820
    const-string v8, "nmw"

    iget v9, v6, Lcom/metamoji/cm/Size;->width:I

    invoke-interface {v5, v8, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 821
    const-string v8, "nmh"

    iget v9, v6, Lcom/metamoji/cm/Size;->height:I

    invoke-interface {v5, v8, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 822
    const-string v8, "nmx"

    invoke-interface {v5, v8, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 823
    const-string v8, "nmy"

    invoke-interface {v5, v8, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 824
    const-string v2, "nop"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-interface {v5, v2, v8, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 825
    const-string v2, "nmqp"

    invoke-interface {v5, v2}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 828
    new-instance v2, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v2, v1, v7, v1, v1}, Lcom/metamoji/df/controller/GeometricProps;-><init>(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 829
    invoke-direct {p0, v2, p2}, Lcom/metamoji/un/image/UnImageUnit;->setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    .line 832
    iget v2, v6, Lcom/metamoji/cm/Size;->width:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/metamoji/un/image/UnImageUnit;->setMaskWidth(F)V

    .line 833
    iget v2, v6, Lcom/metamoji/cm/Size;->height:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/metamoji/un/image/UnImageUnit;->setMaskHeight(F)V

    const/4 v2, 0x0

    .line 834
    invoke-virtual {p0, v2}, Lcom/metamoji/un/image/UnImageUnit;->setMaskOffsetX(F)V

    .line 835
    invoke-virtual {p0, v2}, Lcom/metamoji/un/image/UnImageUnit;->setMaskOffsetY(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 836
    invoke-virtual {p0, v2}, Lcom/metamoji/un/image/UnImageUnit;->setOpacity(F)V

    .line 837
    invoke-virtual {p0, v1}, Lcom/metamoji/un/image/UnImageUnit;->setMaskQCurvePathPoints(Lcom/metamoji/cm/PointArray;)V

    .line 839
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->updateSprite()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 840
    :try_start_3
    invoke-virtual {p1}, Lcom/metamoji/cm/SharedReference;->close()V

    .line 843
    :cond_2
    invoke-virtual {p2, v5, v0}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 851
    :try_start_4
    invoke-virtual {v4}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_3

    .line 855
    invoke-virtual {p0, p2}, Lcom/metamoji/un/image/UnImageUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_4

    .line 807
    :try_start_5
    invoke-virtual {p1}, Lcom/metamoji/cm/SharedReference;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 851
    :try_start_7
    invoke-virtual {v4}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 852
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    if-eqz v3, :cond_5

    .line 855
    invoke-virtual {p0, p2}, Lcom/metamoji/un/image/UnImageUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 857
    :cond_5
    throw p1
.end method

.method setMaskHeight(F)V
    .locals 4

    .line 449
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "maskHeight"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method setMaskOffsetX(F)V
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "maskOffsetX"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method setMaskOffsetY(F)V
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "maskOffsetY"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method setMaskQCurvePathPoints(Lcom/metamoji/cm/PointArray;)V
    .locals 2

    .line 465
    const-string v0, "maskQCurvePath"

    if-eqz p1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/PointArray;)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 470
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->updateModelVersion()V

    return-void
.end method

.method setMaskWidth(F)V
    .locals 4

    .line 431
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "maskWidth"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method setOpacity(F)V
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "opacity"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method protected setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V
    .locals 2

    .line 1273
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 1274
    iget-object p1, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz p1, :cond_0

    .line 1275
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    .line 1276
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 1277
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    :cond_0
    return-void
.end method

.method public spriteToBitmap()Landroid/graphics/Bitmap;
    .locals 7

    .line 1802
    invoke-direct {p0}, Lcom/metamoji/un/image/UnImageUnit;->getImageBlob()Lcom/metamoji/cm/Blob;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1803
    invoke-virtual {v0}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1804
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskHeight()F

    move-result v1

    .line 1805
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskWidth()F

    move-result v2

    .line 1806
    iget-object v3, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v4, "maskQCurvePath"

    invoke-interface {v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsPointArray(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1807
    invoke-virtual {v3}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    iget v3, v3, Lcom/metamoji/cm/Size;->width:I

    int-to-float v3, v3

    cmpl-float v2, v3, v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit;->_imageSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->height:I

    int-to-float v2, v2

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1

    .line 1808
    invoke-static {}, Lcom/metamoji/df/controller/AttachmentsManager;->getBitmapShortSideSize()I

    move-result v1

    invoke-static {}, Lcom/metamoji/df/controller/AttachmentsManager;->getBitmapLongSideSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1813
    :cond_1
    new-instance v1, Lcom/metamoji/df/sprite/Rasterizer;

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v0, v2}, Lcom/metamoji/df/sprite/Rasterizer;-><init>(II)V

    .line 1814
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskWidth()F

    move-result v0

    iget-object v3, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v3

    div-float v5, v0, v3

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskHeight()F

    move-result v0

    iget-object v3, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v3

    div-float v6, v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    .line 1815
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Rasterizer;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method storeImageItem(Lcom/metamoji/cm/Blob;)Ljava/lang/String;
    .locals 3

    .line 865
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v0

    .line 866
    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/df/controller/AttachmentsManager;->registerAttachment(Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 867
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "imageTicket"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method protected updateModelVersion()V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/un/image/UnImageUnit;->updateModelVersion(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method protected updateSprite()V
    .locals 14

    .line 580
    invoke-direct {p0}, Lcom/metamoji/un/image/UnImageUnit;->getBitmap()Lcom/metamoji/cm/BitmapEx;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 581
    invoke-virtual {v0}, Lcom/metamoji/cm/BitmapEx;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 584
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/un/image/UnImageUnit;->calcSpriteSize()Lcom/metamoji/cm/SizeF;

    move-result-object v1

    .line 585
    iget v2, v1, Lcom/metamoji/cm/SizeF;->width:F

    iget v3, v1, Lcom/metamoji/cm/SizeF;->height:F

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Lcom/metamoji/cm/RectEx;->newRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v2

    .line 586
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getOpacity()F

    move-result v3

    .line 587
    iget-object v4, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {v4, v5}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 588
    iget-object v4, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    iget v5, v1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v4, v5}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 589
    iget-object v4, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v4, v3}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    .line 590
    iget-object v3, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 594
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskQCurvePathPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 596
    invoke-virtual {v3}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    .line 597
    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskWidth()F

    move-result v6

    div-float/2addr v5, v6

    .line 598
    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskHeight()F

    move-result v6

    div-float/2addr v1, v6

    .line 599
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetX()F

    move-result v6

    .line 600
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetY()F

    move-result v7

    .line 601
    invoke-virtual {v3, v4}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v8

    .line 602
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 603
    sget-object v10, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v9, v10}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 604
    iget v10, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v6

    mul-float/2addr v10, v5

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v7

    mul-float/2addr v8, v1

    invoke-virtual {v9, v10, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v8, 0x1

    :goto_0
    add-int/lit8 v10, v8, 0x1

    .line 605
    invoke-virtual {v3}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 606
    invoke-virtual {v3, v8}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v11

    .line 607
    invoke-virtual {v3, v10}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v10

    .line 608
    iget v12, v11, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v6

    mul-float/2addr v12, v5

    iget v11, v11, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v7

    mul-float/2addr v11, v1

    iget v13, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v6

    mul-float/2addr v13, v5

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v7

    mul-float/2addr v10, v1

    invoke-virtual {v9, v12, v11, v13, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 613
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 615
    :goto_1
    iget-object v1, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1, v9}, Lcom/metamoji/df/sprite/Sprite;->setClippingPath(Landroid/graphics/Path;)V

    .line 617
    invoke-virtual {v0}, Lcom/metamoji/cm/BitmapEx;->isCropped()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    invoke-virtual {v0}, Lcom/metamoji/cm/BitmapEx;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 619
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v4, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 620
    iget-object v3, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/metamoji/df/sprite/Graphics;->drawImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void

    .line 626
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/cm/BitmapEx;->getRatioX()F

    move-result v1

    .line 627
    invoke-virtual {v0}, Lcom/metamoji/cm/BitmapEx;->getRatioY()F

    move-result v3

    .line 628
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetX()F

    move-result v4

    mul-float/2addr v4, v1

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskOffsetY()F

    move-result v5

    mul-float/2addr v5, v3

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskWidth()F

    move-result v6

    mul-float/2addr v6, v1

    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskHeight()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-static {v4, v5, v6, v1}, Lcom/metamoji/cm/RectEx;->newRect(FFFF)Landroid/graphics/Rect;

    move-result-object v1

    .line 629
    iget-object v3, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/cm/BitmapEx;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Lcom/metamoji/df/sprite/Graphics;->drawImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 633
    const-string v1, "UnImageUnit.updateSprite"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 636
    :cond_3
    const-string v0, "cannot draw image."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_pictureSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 638
    iget-object v0, p0, Lcom/metamoji/un/image/UnImageUnit;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/image/UnImageUnit;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    return-void
.end method

.method public updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 3

    .line 666
    invoke-virtual {p0}, Lcom/metamoji/un/image/UnImageUnit;->getMaskQCurvePathPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 668
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    return-void

    .line 669
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/image/UnImageUnit;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v1, :cond_1

    .line 670
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 671
    new-instance v2, Lcom/metamoji/un/image/UnImageUnit$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/un/image/UnImageUnit$2;-><init>(Lcom/metamoji/un/image/UnImageUnit;Lcom/metamoji/df/controller/ControllerContext$MediaType;Lcom/metamoji/cm/PointArray;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method zoomPointArray(Lcom/metamoji/cm/PointArray;FF)Lcom/metamoji/cm/PointArray;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 932
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->clone()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    .line 933
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v0

    .line 934
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 935
    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 936
    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    return-object p1
.end method
