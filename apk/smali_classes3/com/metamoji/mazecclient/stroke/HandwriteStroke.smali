.class public Lcom/metamoji/mazecclient/stroke/HandwriteStroke;
.super Ljava/lang/Object;
.source "HandwriteStroke.java"

# interfaces
.implements Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final GRANULARITY_CI:I = 0x40

.field private static final LINEREDUCER_DELTA_INPUT:D = 0.75

.field public static final LINEREDUCER_DELTA_TEXTUNIT:D = 0.75

.field private static final SERIAL_NUMBER_SPAN:J = 0x3e8L

.field private static __nextSerialNumber:J = 0x0L

.field private static __serialNumberLock:Ljava/lang/Object; = null

.field private static final kCodingMajorVer:I = 0x6

.field private static final kCodingMinorVer:I = 0x1


# instance fields
.field private _attrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private _lrDelta:D

.field private _orgPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private _penAttrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private _penInfo:Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;

.field private _points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private _serialNumber:J

.field private _style:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->__serialNumberLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;)V

    return-void
.end method

.method private constructor <init>(JDLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JD",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_orgPoints:Ljava/util/List;

    .line 101
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_serialNumber:J

    .line 102
    iput-wide p3, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_lrDelta:D

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_points:Ljava/util/List;

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_attrs:Ljava/util/List;

    if-eqz p7, :cond_1

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_penAttrs:Ljava/util/List;

    goto :goto_0

    .line 110
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_points:Ljava/util/List;

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_attrs:Ljava/util/List;

    .line 112
    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_penAttrs:Ljava/util/List;

    :cond_1
    :goto_0
    if-eqz p8, :cond_2

    .line 115
    invoke-interface {p8}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->cloneImmutable()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_style:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    .line 117
    :cond_2
    iput-object p9, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_penInfo:Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;)V
    .locals 10

    .line 128
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->generateSerialNumber()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->getDelta()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->getSamplingPoints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->getSegmentAttrs()Ljava/util/List;

    move-result-object v6

    .line 129
    invoke-virtual {p1}, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->getPenAttrs()Ljava/util/List;

    move-result-object v7

    move-object v0, p0

    move-object v8, p2

    move-object v9, p3

    .line 128
    invoke-direct/range {v0 .. v9}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;-><init>(JDLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->generateSerialNumber()J

    move-result-wide v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;-><init>(JDLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;D)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            "D)V"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->generateSerialNumber()J

    move-result-wide v1

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    move-wide/from16 v3, p6

    invoke-direct/range {v0 .. v9}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;-><init>(JDLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;)V

    return-void
.end method

.method private MAJOR_VER(I)I
    .locals 0

    shr-int/lit8 p1, p1, 0x10

    return p1
.end method

.method private MAKE_VER(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, p2

    return p1
.end method

.method private MINOR_VER(I)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public static createStroke(Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)Lcom/metamoji/mazecclient/stroke/HandwriteStroke;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            ")",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStroke;"
        }
    .end annotation

    .line 382
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v0

    .line 383
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-eq v0, v1, :cond_0

    return-object v2

    .line 386
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 390
    :cond_1
    new-instance v1, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;

    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v6

    :goto_0
    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    invoke-direct {v1, v7, v8, v6, v3}, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;-><init>(DZZ)V

    sub-int/2addr v0, v5

    move v3, v6

    :goto_1
    const-wide/16 v7, 0x0

    if-ge v3, v0, :cond_3

    .line 393
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-virtual {v1, v4, v7, v8, v6}, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->addPoint(Landroid/graphics/PointF;JZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 395
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    invoke-virtual {v1, p0, v7, v8, v5}, Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;->addPoint(Landroid/graphics/PointF;JZ)V

    .line 397
    new-instance p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    invoke-direct {p0, v1, p1, v2}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;-><init>(Lcom/metamoji/mazecclient/stroke/StrokePointSamplerLR;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;)V

    return-object p0
.end method

.method private static generateSerialNumber()J
    .locals 5

    .line 35
    sget-object v0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->__serialNumberLock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-wide v1, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->__nextSerialNumber:J

    const-wide/16 v3, 0x3e8

    add-long/2addr v3, v1

    .line 38
    sput-wide v3, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->__nextSerialNumber:J

    .line 39
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearPenInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_penInfo:Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;

    return-void
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 7

    .line 143
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_points:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 148
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 149
    iget-object v4, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_points:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 150
    iget v6, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v6, v6, v1

    if-gez v6, :cond_2

    .line 152
    iget v1, v5, Landroid/graphics/PointF;->x:F

    .line 154
    :cond_2
    iget v6, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v6, v2

    if-gez v6, :cond_3

    .line 156
    iget v2, v5, Landroid/graphics/PointF;->y:F

    .line 158
    :cond_3
    iget v6, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v6, v3, v6

    if-gez v6, :cond_4

    .line 160
    iget v3, v5, Landroid/graphics/PointF;->x:F

    .line 162
    :cond_4
    iget v6, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v6, v0, v6

    if-gez v6, :cond_1

    .line 164
    iget v0, v5, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 167
    :cond_5
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public getBoundsForBaseHeight(F)Landroid/graphics/RectF;
    .locals 3

    .line 172
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 173
    sget-object v1, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    if-eq v1, v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_style:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v1, p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineWidthForHeight(F)F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    .line 175
    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 176
    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 177
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 178
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_0
    return-object v0
.end method

.method public getCountOfPoints()I
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDelta()D
    .locals 2

    .line 212
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_lrDelta:D

    return-wide v0
.end method

.method public getPenAttr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_penAttrs:Ljava/util/List;

    return-object v0
.end method

.method public getPenInfo()Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_penInfo:Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_points:Ljava/util/List;

    return-object v0
.end method

.method public getSegmentAttr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_attrs:Ljava/util/List;

    return-object v0
.end method

.method public getSerialNumber()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_serialNumber:J

    return-wide v0
.end method

.method public getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_style:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    return-object v0
.end method

.method public serialize(Lcom/metamoji/cm/DataArchiver;)I
    .locals 11

    .line 458
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 462
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataToTemporary()Z

    .line 465
    invoke-direct {p0, v3, v4}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->MAKE_VER(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    .line 473
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_points:Ljava/util/List;

    invoke-static {v0}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->encodeToStringFromPoints(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeString(Ljava/lang/String;)I

    .line 477
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->tsInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->isEncodeAsIndex()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    iget-object v2, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_style:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-virtual {v0, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->indexForStrokeStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)I

    move-result v0

    .line 480
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move v4, v5

    goto :goto_0

    .line 483
    :cond_0
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    .line 487
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 488
    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 489
    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 490
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 491
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    const/16 v0, 0x40

    .line 493
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    .line 495
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->getSegmentAttr()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/ListUtils;->toPrimitiveArrayFromByteList(Ljava/util/List;)[B

    move-result-object v0

    .line 497
    array-length v2, v0

    int-to-short v3, v2

    .line 499
    invoke-virtual {p1, v3}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    if-lez v2, :cond_1

    .line 501
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->appendData([B)I

    :cond_1
    if-eqz v4, :cond_2

    .line 506
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_style:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    invoke-interface {v0, p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    .line 510
    :cond_2
    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_lrDelta:D

    double-to-float v0, v2

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 511
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 514
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_penAttrs:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 515
    invoke-static {v0}, Lcom/metamoji/cm/ListUtils;->toPrimitiveArrayFromByteList(Ljava/util/List;)[B

    move-result-object v1

    .line 516
    array-length v5, v1

    :cond_3
    int-to-short v0, v5

    .line 519
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    if-lez v5, :cond_4

    .line 521
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->appendData([B)I

    .line 527
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataBackToMain()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    .line 530
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 532
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->appendData(Ljava/io/ByteArrayOutputStream;)I

    return v1

    .line 536
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v0

    .line 538
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v6

    .line 540
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v7

    .line 547
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/mazecclient/stroke/StrokeUtil;->decodeToPointsFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 548
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 549
    iget-object v10, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_points:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 553
    :cond_6
    sget-object v8, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;->tsInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;

    if-eqz v8, :cond_8

    .line 555
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v9

    if-ne v9, v2, :cond_7

    goto :goto_3

    .line 560
    :cond_7
    invoke-virtual {v8, v9}, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;->strokeStylePlaceholderForIndex(I)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_style:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    goto :goto_2

    .line 563
    :cond_8
    invoke-direct {p0, v7}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->MAJOR_VER(I)I

    move-result v2

    const/4 v8, 0x5

    if-ne v2, v8, :cond_9

    invoke-direct {p0, v7}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->MINOR_VER(I)I

    move-result v2

    if-ne v2, v4, :cond_9

    .line 565
    new-instance v2, Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    invoke-direct {v2, p1}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;-><init>(Lcom/metamoji/cm/DataArchiver;)V

    iput-object v2, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_style:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    :goto_2
    move v4, v5

    goto :goto_3

    .line 567
    :cond_9
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    .line 573
    :goto_3
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    .line 574
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    .line 575
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    .line 576
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    .line 578
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    .line 580
    iget-object v2, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 581
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v2

    if-lez v2, :cond_a

    .line 583
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->readData(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/ListUtils;->toObjectList([B)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_attrs:Ljava/util/List;

    goto :goto_4

    .line 586
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_attrs:Ljava/util/List;

    :cond_b
    :goto_4
    if-eqz v4, :cond_c

    .line 591
    new-instance v2, Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    invoke-direct {v2, p1}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;-><init>(Lcom/metamoji/cm/DataArchiver;)V

    iput-object v2, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_style:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    .line 593
    :cond_c
    invoke-direct {p0, v7}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->MAJOR_VER(I)I

    move-result v2

    if-lt v2, v3, :cond_e

    .line 595
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_lrDelta:D

    .line 596
    iget-object v2, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 597
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v2

    if-lez v2, :cond_d

    .line 599
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->readData(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/ListUtils;->toObjectList([B)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_penAttrs:Ljava/util/List;

    goto :goto_5

    .line 601
    :cond_d
    iput-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_penAttrs:Ljava/util/List;

    goto :goto_5

    :cond_e
    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    .line 606
    iput-wide v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_lrDelta:D

    :cond_f
    :goto_5
    add-int/2addr v6, v0

    .line 609
    invoke-virtual {p1, v6}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    return v5
.end method

.method public setPenInfo(Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_penInfo:Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;

    return-void
.end method

.method public setStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V
    .locals 0

    .line 264
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->cloneImmutable()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->_style:Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    return-void
.end method
