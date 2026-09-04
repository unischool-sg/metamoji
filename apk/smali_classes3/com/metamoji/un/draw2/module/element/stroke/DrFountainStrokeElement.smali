.class public Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;
.super Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;
.source "DrFountainStrokeElement.java"


# static fields
.field public static final MIME_TYPE_OF_PENATTR_DATA:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_TYPE_OF_SEGMENT_DATA:Ljava/lang/String; = "application/octet-stream"

.field public static final MODEL_PROPERTY_PENATTR_DATA:Ljava/lang/String; = "q"

.field public static final MODEL_PROPERTY_REDUCER_DELTA:Ljava/lang/String; = "d"

.field public static final MODEL_PROPERTY_REDUCER_ZOOM:Ljava/lang/String; = "z"

.field public static final MODEL_PROPERTY_SCDIST:Ljava/lang/String; = "sc"

.field public static final MODEL_PROPERTY_SEGMENT_DATA:Ljava/lang/String; = "g"

.field public static final MODEL_PROPERTY_WCDIST:Ljava/lang/String; = "wc"


# instance fields
.field private m_applyPointsAndUpdatePathWithReRedution:Z

.field private m_bezierPath:Landroid/graphics/Path;

.field private m_bezierPoints:Lcom/metamoji/cm/PointArray;

.field private final m_bounds:Lcom/metamoji/cm/RectEx;

.field private m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

.field private final m_frameBounds:Lcom/metamoji/cm/RectEx;

.field private m_pathRects:Ljava/lang/Object;

.field private m_penAttrData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private m_reducerDelta:F

.field private m_reducerZoom:F

.field private m_scDist:D

.field private m_segmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private m_times:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_wcDist:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;-><init>()V

    .line 64
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    .line 65
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_frameBounds:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method public static checkFountainStrokeElementModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 795
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->checkStrokeElementModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->getStrokeTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->FOUNTAIN:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkReducerDeltaFromModel(Lcom/metamoji/df/model/IModel;F)F
    .locals 1

    if-nez p0, :cond_0

    return p1

    .line 807
    :cond_0
    const-string v0, "d"

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static checkReducerZoomFromModel(Lcom/metamoji/df/model/IModel;F)F
    .locals 1

    if-nez p0, :cond_0

    return p1

    .line 814
    :cond_0
    const-string/jumbo v0, "z"

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static checkSCDistFromModel(Lcom/metamoji/df/model/IModel;D)D
    .locals 1

    if-nez p0, :cond_0

    return-wide p1

    .line 835
    :cond_0
    const-string/jumbo v0, "sc"

    invoke-static {v0, p1, p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static checkWCDistFromModel(Lcom/metamoji/df/model/IModel;D)D
    .locals 1

    if-nez p0, :cond_0

    return-wide p1

    .line 842
    :cond_0
    const-string/jumbo v0, "wc"

    invoke-static {v0, p1, p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getPenAttrDataFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 828
    :cond_0
    const-string v0, "q"

    const-string v1, "application/octet-stream"

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->mutableDataPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSegmentDataFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 821
    :cond_0
    const-string v0, "g"

    const-string v1, "application/octet-stream"

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->mutableDataPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static newEmptyFountainStrokeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 849
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->newEmptyStrokeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 851
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->FOUNTAIN:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 853
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static newFountainStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;
    .locals 1

    if-eqz p0, :cond_0

    .line 864
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->newEmptyFountainStrokeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 865
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;

    return-object p0
.end method

.method private resizePathWithTransform(Landroid/graphics/Matrix;FFLandroid/graphics/PointF;)Z
    .locals 1

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    cmpl-float p2, p3, p4

    if-nez p2, :cond_0

    return v0

    .line 1114
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/metamoji/ci/StrokeCutter;->penAttrDataApplyMatrix(Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 1115
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1116
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->savePenAttrDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    .line 1124
    :cond_1
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updatePathWithReRedution(Z)V

    .line 1132
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updateBounds()V

    const/4 p1, 0x1

    return p1
.end method

.method private rotatePathWithTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;)Z
    .locals 3

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1180
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p2

    :goto_0
    if-ge v0, p2, :cond_1

    .line 1181
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1182
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1183
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1187
    :cond_1
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/metamoji/ci/StrokeCutter;->penAttrDataApplyMatrix(Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 1188
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1189
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->savePenAttrDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    .line 1193
    :cond_2
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1199
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPathRectsFromBezierPoints(Lcom/metamoji/cm/PointArray;F)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_pathRects:Ljava/lang/Object;

    .line 1202
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updateBounds()V

    const/4 p1, 0x1

    return p1
.end method

.method private static savePenAttrDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1243
    :cond_0
    const-string v0, "q"

    if-eqz p1, :cond_1

    .line 1244
    const-string v1, "application/octet-stream"

    invoke-static {v0, p1, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDataPropertyForName(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1246
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveReducerDeltaToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1214
    :cond_0
    const-string v0, "d"

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveReducerZoomToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    .line 1221
    const-string/jumbo v1, "z"

    if-eqz v0, :cond_1

    .line 1222
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1224
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveSCDistToModel(Lcom/metamoji/df/model/IModel;D)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    .line 1254
    const-string/jumbo v1, "sc"

    if-eqz v0, :cond_1

    .line 1255
    invoke-static {v1, p1, p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1257
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveSegmentDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1232
    :cond_0
    const-string v0, "g"

    if-eqz p1, :cond_1

    .line 1233
    const-string v1, "application/octet-stream"

    invoke-static {v0, p1, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDataPropertyForName(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1235
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveWCDistToModel(Lcom/metamoji/df/model/IModel;D)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    .line 1265
    const-string/jumbo v1, "wc"

    if-eqz v0, :cond_1

    .line 1266
    invoke-static {v1, p1, p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1268
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private scalePathWithTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;)Z
    .locals 0

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p3

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return p3

    .line 1147
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/metamoji/ci/StrokeCutter;->penAttrDataApplyMatrix(Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 1148
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1149
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->savePenAttrDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    .line 1157
    :cond_1
    invoke-direct {p0, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updatePathWithReRedution(Z)V

    .line 1165
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updateBounds()V

    const/4 p1, 0x1

    return p1
.end method

.method private setPenAttrData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 887
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 888
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 891
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 892
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 895
    :cond_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    .line 896
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 897
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->savePenAttrDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private setSegmentData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 872
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 873
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 876
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 877
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 880
    :cond_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_segmentData:Ljava/util/List;

    .line 881
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 882
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_segmentData:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->saveSegmentDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private translatePathWithTransform(Landroid/graphics/Matrix;FF)Z
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    return v2

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1073
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 1076
    iget v4, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, p2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, p3

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v1, v4, v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(IFFLcom/metamoji/cm/PointArray;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1080
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/metamoji/ci/StrokeCutter;->penAttrDataApplyMatrix(Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 1081
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1082
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->savePenAttrDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    .line 1086
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1092
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_3

    .line 1093
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 1094
    invoke-virtual {v0, p2, p3}, Lcom/metamoji/cm/RectEx;->offset(FF)V

    .line 1095
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->replaceRectAtIndex(ILcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1100
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updateBounds()V

    const/4 p1, 0x1

    return p1
.end method

.method private updateFountainPenStyleWithTransform(Landroid/graphics/Matrix;FF)V
    .locals 0

    .line 990
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    if-eqz p1, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p3, p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 995
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->cloneWithScale(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 998
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updatePenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 999
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateIndexes()V
    .locals 13

    .line 1051
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    move-object v1, p0

    .line 1052
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setIndexesWithBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)V

    return-void

    .line 1055
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->startIndex()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->endIndex()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1056
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    move-object v7, p0

    .line 1057
    invoke-virtual/range {v7 .. v12}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setIndexesWithBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)V

    return-void
.end method

.method private updatePathWithReRedution(Z)V
    .locals 4

    .line 903
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 904
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->removeAllRects(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 905
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    .line 908
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 913
    :cond_0
    new-instance v1, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;-><init>()V

    .line 914
    iget v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setDelta(F)V

    .line 915
    iget v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerZoom:F

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setZoom(F)V

    .line 916
    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_scDist:D

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setScDist(D)V

    .line 917
    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_wcDist:D

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setWcDist(D)V

    .line 918
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/draw2/module/DrModuleSettings;->minPenSize:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 919
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/draw2/module/DrModuleSettings;->minPenSize:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setPenWidth(D)V

    goto :goto_0

    .line 921
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setPenWidth(D)V

    .line 923
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->trans()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTrans(D)V

    .line 924
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStay()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBeginStay(D)V

    .line 925
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStayRate()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBeginStayRate(D)V

    .line 926
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStayDelta()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBeginStayDelta(D)V

    .line 927
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRun()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBeginRun(D)V

    .line 928
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRunRate()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBeginRunRate(D)V

    .line 929
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRunDelta()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBeginRunDelta(D)V

    .line 930
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStay()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setEndStay(D)V

    .line 931
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStayRate()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setEndStayRate(D)V

    .line 932
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStayDelta()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setEndStayDelta(D)V

    .line 933
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRun()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setEndRun(D)V

    .line 934
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRunRate()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setEndRunRate(D)V

    .line 935
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRunDelta()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setEndRunDelta(D)V

    .line 936
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStay()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTailStay(D)V

    .line 937
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStayRate()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTailStayRate(D)V

    .line 938
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStayDelta()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTailStayDelta(D)V

    .line 939
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRun()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTailRun(D)V

    .line 940
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRunRate()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTailRunRate(D)V

    .line 941
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRunDelta()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTailRunDelta(D)V

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 946
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setPoints(Lcom/metamoji/cm/PointArray;)V

    .line 947
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_times:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setTimes(Ljava/util/List;)V

    .line 948
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->reducePoints()Z

    move-result p1

    if-nez p1, :cond_2

    .line 949
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 952
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBezierPoints(Lcom/metamoji/cm/PointArray;)V

    .line 953
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->updateBezierPaths()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 954
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 957
    :cond_3
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->bezierPaths()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Path;->getPath()Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    .line 960
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->reducedPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updatePoints(Lcom/metamoji/cm/PointArray;)V

    .line 963
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->segmentData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_segmentData:Ljava/util/List;

    .line 964
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->penAttrData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    .line 965
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 966
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_segmentData:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->saveSegmentDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    .line 967
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->savePenAttrDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    goto :goto_1

    .line 971
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setReducedPoints(Lcom/metamoji/cm/PointArray;)V

    .line 972
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_segmentData:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setSegmentData(Ljava/util/List;)V

    .line 973
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setBezierPoints(Lcom/metamoji/cm/PointArray;)V

    .line 974
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->setPenAttrData(Ljava/util/List;)V

    .line 975
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->updateBezierPaths()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x2

    .line 976
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 979
    :cond_5
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/fountainer/DrUtFountainer;->bezierPaths()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/sprite/Path;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Path;->getPath()Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    .line 983
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPathRectsFromBezierPoints(Lcom/metamoji/cm/PointArray;F)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_pathRects:Ljava/lang/Object;

    .line 986
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updatePathLengthsWithBezierPoints(Lcom/metamoji/cm/PointArray;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private updateReducerDeltaWithResizeX(FF)Z
    .locals 4

    .line 1004
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1005
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    .line 1006
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v0, p2, v0

    .line 1007
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1008
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmpl-float v0, v1, v0

    .line 1015
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    if-lez v0, :cond_1

    mul-float/2addr v1, p1

    .line 1013
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    goto :goto_0

    :cond_1
    mul-float/2addr v1, p2

    .line 1015
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    .line 1017
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1018
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->saveReducerDeltaToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private updateReducerDeltaWithTransform(Landroid/graphics/Matrix;)Z
    .locals 5

    .line 1024
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1025
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    .line 1026
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1027
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    .line 1028
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    sub-float v0, v2, v1

    .line 1029
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p1, v1

    .line 1030
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1031
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmpl-float v0, v0, v1

    .line 1038
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    if-lez v0, :cond_1

    mul-float/2addr v1, v2

    .line 1036
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    goto :goto_0

    :cond_1
    mul-float/2addr v1, p1

    .line 1038
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    .line 1040
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1041
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->saveReducerDeltaToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected applyPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 640
    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 643
    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->isEqualToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 649
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    .line 651
    check-cast p2, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 652
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineWidth()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineWidth()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 653
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->trans()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->trans()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 654
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStay()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStay()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 655
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStayRate()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStayRate()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 656
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStayDelta()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStayDelta()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 657
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRun()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRun()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 658
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRunRate()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRunRate()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 659
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRunDelta()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRunDelta()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 660
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStay()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStay()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 661
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStayRate()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStayRate()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 662
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStayDelta()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStayDelta()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 663
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRun()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRun()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 664
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRunRate()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRunRate()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 665
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRunDelta()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRunDelta()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 666
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStay()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStay()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 667
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStayRate()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStayRate()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 668
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStayDelta()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStayDelta()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 669
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRun()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRun()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 670
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRunRate()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRunRate()F

    move-result v1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 671
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRunDelta()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRunDelta()F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    goto :goto_1

    .line 683
    :cond_3
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updatePathWithReRedution(Z)V

    .line 684
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updateBounds()V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method protected applyPoints_()Z
    .locals 1

    .line 570
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_applyPointsAndUpdatePathWithReRedution:Z

    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updatePathWithReRedution(Z)V

    .line 573
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updateIndexes()V

    .line 576
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updateBounds()V

    const/4 v0, 0x1

    return v0
.end method

.method protected applyVariationWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 0

    .line 591
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->applyVariationWithTransform_(Landroid/graphics/Matrix;FF)Z

    .line 594
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updateFountainPenStyleWithTransform(Landroid/graphics/Matrix;FF)V

    .line 597
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/metamoji/ci/StrokeCutter;->penAttrDataApplyMatrix(Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 598
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->savePenAttrDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    :cond_0
    const/4 p1, 0x0

    .line 607
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updatePathWithReRedution(Z)V

    .line 628
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updateBounds()V

    const/4 p1, 0x1

    return p1
.end method

.method protected bounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method protected checkEraseIntervalsBySegmentWithPoints_(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/DrEraseContext;I)V
    .locals 12

    move/from16 v0, p5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    int-to-float v2, v1

    .line 705
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v5

    int-to-float v0, v0

    .line 706
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, v0, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v7

    .line 707
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->containsInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    mul-int/2addr v1, v0

    const/4 v3, 0x4

    .line 713
    new-array v11, v3, [F

    fill-array-data v11, :array_0

    .line 714
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 715
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    add-int/lit8 v3, v1, 0x1

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 716
    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 717
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, p1

    move-object v9, p2

    move v10, p3

    .line 714
    invoke-static/range {v4 .. v11}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkIntersectionParametersOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/graphics/PointF;F[F)I

    move-result p1

    const/4 p2, 0x0

    .line 724
    aget p2, v11, p2

    const/4 p3, 0x1

    .line 725
    aget v1, v11, p3

    .line 726
    aget v9, v11, v0

    const/4 v3, 0x3

    .line 727
    aget v10, v11, v3

    if-eq p1, p3, :cond_3

    if-eq p1, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    add-float/2addr p2, v2

    .line 737
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-float/2addr v1, v2

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 738
    invoke-virtual {p0, v1, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 739
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    move-object/from16 v3, p4

    .line 737
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    add-float/2addr v9, v2

    .line 740
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, v9, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-float/2addr v10, v2

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 741
    invoke-virtual {p0, v10, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 742
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    .line 740
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void

    :cond_3
    add-float/2addr p2, v2

    .line 732
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-float/2addr v1, v2

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 733
    invoke-virtual {p0, v1, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 734
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    move-object/from16 v3, p4

    .line 732
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected checkPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 635
    instance-of p1, p1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected coverAtIndex_(I)Lcom/metamoji/cm/RectEx;
    .locals 1

    if-nez p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 321
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected coverCount_()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected createSubStrokeWithIndices_(DD)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->parameterFromIndex(DLcom/metamoji/cm/PointArray;)F

    move-result p1

    float-to-double p1, p1

    .line 753
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p3, p4, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->parameterFromIndex(DLcom/metamoji/cm/PointArray;)F

    move-result p3

    float-to-double p3, p3

    .line 757
    new-instance v0, Lcom/metamoji/ci/StrokeCutter;

    invoke-direct {v0}, Lcom/metamoji/ci/StrokeCutter;-><init>()V

    .line 758
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/StrokeCutter;->reducedPoints:Ljava/util/List;

    .line 759
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_segmentData:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/StrokeCutter;->segmentAttr:Ljava/util/List;

    .line 760
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/StrokeCutter;->penAttr:Ljava/util/List;

    double-to-float p1, p1

    double-to-float p2, p3

    .line 761
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ci/StrokeCutter;->cut(FF)V

    .line 763
    iget-object p1, v0, Lcom/metamoji/ci/StrokeCutter;->cuttedReducedPoints:Ljava/util/List;

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 765
    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p3

    .line 770
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p4

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-static {p4, v1, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->newFountainStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;

    move-result-object p3

    .line 771
    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {p3, p4}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 772
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p4

    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result p4

    invoke-virtual {p3, p4}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setReducerZoom(F)V

    .line 773
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p4

    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object p4

    iget p4, p4, Lcom/metamoji/un/draw2/module/DrModuleSettings;->reducerDelta:F

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->reducerZoom()F

    move-result v1

    div-float/2addr p4, v1

    invoke-virtual {p3, p4}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setReducerDelta(F)V

    .line 777
    iget-object p4, v0, Lcom/metamoji/ci/StrokeCutter;->cuttedSegmentAttr:Ljava/util/List;

    invoke-direct {p3, p4}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setSegmentData(Ljava/util/List;)V

    .line 778
    iget-object p4, v0, Lcom/metamoji/ci/StrokeCutter;->cuttedPenAttr:Ljava/util/List;

    invoke-direct {p3, p4}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setPenAttrData(Ljava/util/List;)V

    .line 781
    iput-boolean p2, p3, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_applyPointsAndUpdatePathWithReRedution:Z

    .line 782
    new-instance p2, Lcom/metamoji/cm/PointArray;

    invoke-direct {p2, p1}, Lcom/metamoji/cm/PointArray;-><init>(Ljava/util/List;)V

    invoke-virtual {p3, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setPoints(Lcom/metamoji/cm/PointArray;)V

    const/4 p1, 0x1

    .line 783
    iput-boolean p1, p3, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_applyPointsAndUpdatePathWithReRedution:Z

    return-object p3
.end method

.method protected destroy_()V
    .locals 1

    const/4 v0, 0x0

    .line 493
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_segmentData:Ljava/util/List;

    .line 494
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    .line 495
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 496
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    .line 497
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_pathRects:Ljava/lang/Object;

    .line 498
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 499
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_times:Ljava/util/List;

    .line 500
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->destroy_()V

    return-void
.end method

.method protected distanceToPoint_(Landroid/graphics/PointF;I)F
    .locals 2

    .line 463
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1
.end method

.method protected distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F
    .locals 3

    if-nez p3, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    .line 475
    invoke-static {v0, v1, p2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, -0x1

    mul-int/lit8 p3, p3, 0x2

    .line 483
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 484
    invoke-static {p3, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 485
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    add-int/lit8 p3, p3, 0x2

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 486
    invoke-static {p3, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p3

    .line 483
    invoke-static {v0, v1, p3, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 4

    .line 328
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z

    .line 331
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 336
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updateFountainPenStyleWithTransform(Landroid/graphics/Matrix;FF)V

    .line 339
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    .line 351
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_1
    return v1

    .line 347
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->rotatePathWithTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 345
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->scale()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->scalePathWithTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 343
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeX()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeY()F

    move-result v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->resizePathWithTransform(Landroid/graphics/Matrix;FFLandroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 341
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->translateX()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->translateY()F

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->translatePathWithTransform(Landroid/graphics/Matrix;FF)Z

    move-result p1

    return p1
.end method

.method public fountainPenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    return-object v0
.end method

.method protected frameBounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_frameBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method protected highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V
    .locals 12

    .line 358
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 361
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrHighlightProcess:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->process()Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_8

    const/4 p1, 0x4

    if-eq v0, p1, :cond_8

    const/4 p1, 0x0

    .line 371
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 376
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 381
    :cond_2
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->newSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v9

    .line 384
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    .line 385
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->highlightBaseColor()Ljava/lang/Integer;

    move-result-object v4

    .line 386
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    .line 387
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightDropShadowOffset:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    iget-object v7, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightDropShadowOffset:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v6

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightDropShadowBlur:F

    mul-float v8, v0, v6

    move v6, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setDropShadowWithColor(Ljava/lang/Integer;FFFFLcom/metamoji/df/sprite/Sprite;)V

    .line 395
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStFountainInkType:[I

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkType()Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x0

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    .line 409
    :cond_3
    invoke-static {v4, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineWidth(FLcom/metamoji/df/sprite/Sprite;)V

    .line 410
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 411
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineAlpha()F

    move-result v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 412
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 413
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineAlpha()F

    move-result v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 414
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawPath(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Sprite;)V

    .line 417
    new-instance v5, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v5, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 418
    new-instance v8, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v4, v4, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v1, v4

    invoke-direct {v8, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 420
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    if-eqz v0, :cond_6

    .line 421
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 427
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    if-eq v0, v3, :cond_4

    .line 431
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 432
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkColors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v6, v0

    goto :goto_1

    .line 427
    :cond_4
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 423
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 436
    :cond_6
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    move-object v1, v0

    move-object v6, v1

    .line 439
    :goto_1
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 442
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineAlpha()F

    move-result v7

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 445
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineAlpha()F

    move-result v10

    move-object v11, v9

    move-object v9, v1

    .line 439
    invoke-static/range {v4 .. v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawLinearGradientPath(Landroid/graphics/Path;Landroid/graphics/PointF;Ljava/lang/Integer;FLandroid/graphics/PointF;Ljava/lang/Integer;FLcom/metamoji/df/sprite/Sprite;)V

    move-object v9, v11

    goto :goto_2

    .line 397
    :cond_7
    invoke-static {v4, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineWidth(FLcom/metamoji/df/sprite/Sprite;)V

    .line 398
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 399
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineAlpha()F

    move-result v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 400
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 401
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineAlpha()F

    move-result v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 402
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawPath(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Sprite;)V

    .line 454
    :goto_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->addChild(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V

    .line 457
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->addSnapShotBounds(Lcom/metamoji/cm/RectEx;)V

    :cond_8
    :goto_3
    return-void
.end method

.method protected initWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 4

    .line 237
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerZoom:F

    .line 238
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->reducerDelta:F

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerZoom:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    .line 239
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 240
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    .line 241
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->newRectArray()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_pathRects:Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 243
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_frameBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_applyPointsAndUpdatePathWithReRedution:Z

    .line 245
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->fountainerSCDistance:F

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_scDist:D

    .line 246
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->fountainerWCDistance:F

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_wcDist:D

    .line 249
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->checkReducerDeltaFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v1

    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    .line 251
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerZoom:F

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->checkReducerZoomFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v1

    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerZoom:F

    .line 252
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->getSegmentDataFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_segmentData:Ljava/util/List;

    .line 253
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->getPenAttrDataFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    .line 254
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_scDist:D

    invoke-static {v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->checkSCDistFromModel(Lcom/metamoji/df/model/IModel;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_scDist:D

    .line 255
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_wcDist:D

    invoke-static {v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->checkWCDistFromModel(Lcom/metamoji/df/model/IModel;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_wcDist:D

    .line 259
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/metamoji/ci/StrokeCutter;->penAttrDataApplyMatrix(Ljava/util/List;Landroid/graphics/Matrix;)V

    .line 261
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->savePenAttrDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    .line 271
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->initWithTransform_(Landroid/graphics/Matrix;FF)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 272
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    :cond_3
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 280
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updateFountainPenStyleWithTransform(Landroid/graphics/Matrix;FF)V

    .line 283
    invoke-direct {p0, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updatePathWithReRedution(Z)V

    .line 286
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updateIndexes()V

    .line 289
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->updateBounds()V

    return v0
.end method

.method protected pathBounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public penAttrData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 207
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_penAttrData:Ljava/util/List;

    return-object v0
.end method

.method public reducerDelta()F
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 92
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    return v0
.end method

.method public reducerZoom()F
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 115
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerZoom:F

    return v0
.end method

.method protected repaint_()V
    .locals 11

    .line 506
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->clear(Lcom/metamoji/df/sprite/Sprite;)V

    .line 509
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->displayableCanvasBoundaryLimit:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkBoundaryOfRect(Lcom/metamoji/cm/RectEx;F)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 519
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStFountainInkType:[I

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkType()Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto/16 :goto_2

    .line 529
    :cond_2
    new-instance v4, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v4, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 530
    new-instance v7, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v2, v3

    invoke-direct {v7, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 532
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    .line 548
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    if-eqz v0, :cond_5

    .line 533
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 539
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    .line 543
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 544
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v5, v0

    move-object v8, v1

    goto :goto_1

    .line 539
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 548
    :cond_5
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    move-object v5, v0

    move-object v8, v5

    .line 551
    :goto_1
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 555
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineAlpha()F

    move-result v6

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 558
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineAlpha()F

    move-result v9

    .line 559
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v10

    .line 551
    invoke-static/range {v3 .. v10}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawLinearGradientPath(Landroid/graphics/Path;Landroid/graphics/PointF;Ljava/lang/Integer;FLandroid/graphics/PointF;Ljava/lang/Integer;FLcom/metamoji/df/sprite/Sprite;)V

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineWidth(FLcom/metamoji/df/sprite/Sprite;)V

    .line 522
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 523
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineAlpha()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 524
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 525
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_fountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineAlpha()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 526
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawPath(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Sprite;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public scDist()D
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    return-wide v0

    .line 138
    :cond_0
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_scDist:D

    return-wide v0
.end method

.method public segmentData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 199
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_segmentData:Ljava/util/List;

    return-object v0
.end method

.method public setReducerDelta(F)V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 96
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 100
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 103
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerDelta:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->saveReducerDeltaToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_2
    return-void
.end method

.method public setReducerZoom(F)V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 119
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 123
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 126
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerZoom:F

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_reducerZoom:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->saveReducerZoomToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_2
    return-void
.end method

.method public setSCDist(D)V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 142
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 146
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 149
    :cond_1
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_scDist:D

    .line 150
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_scDist:D

    invoke-static {p1, v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->saveSCDistToModel(Lcom/metamoji/df/model/IModel;D)V

    :cond_2
    return-void
.end method

.method public setTimes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_times:Ljava/util/List;

    return-void
.end method

.method public setWCDist(D)V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 164
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 168
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 171
    :cond_1
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_wcDist:D

    .line 172
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_wcDist:D

    invoke-static {p1, v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->saveWCDistToModel(Lcom/metamoji/df/model/IModel;D)V

    :cond_2
    return-void
.end method

.method protected strokeType_()Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;
    .locals 1

    .line 296
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->FOUNTAIN:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    return-object v0
.end method

.method public times()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_times:Ljava/util/List;

    return-object v0
.end method

.method protected updateBounds()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathGetPathBoundingBox(Landroid/graphics/Path;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_frameBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 229
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateBounds()V

    return-void
.end method

.method public wcDist()D
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    return-wide v0

    .line 160
    :cond_0
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->m_wcDist:D

    return-wide v0
.end method
