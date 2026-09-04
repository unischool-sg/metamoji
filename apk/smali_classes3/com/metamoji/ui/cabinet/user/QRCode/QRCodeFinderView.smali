.class public final Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;
.super Landroid/view/View;
.source "QRCodeFinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x50L

.field private static final MAX_RESULT_POINTS:I = 0x14

.field private static final RESULT_POINT_COLOR:I

.field private static final RESULT_POINT_OPACITY:I = 0xa0

.field private static final RESULT_POINT_SIZE:I = 0x8


# instance fields
.field private m_degrees:I

.field private m_isFrontCamera:Z

.field private m_resolution:Landroid/graphics/Point;

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xca

    const/16 v1, 0x38

    const/16 v2, 0xc0

    .line 58
    invoke-static {v2, v0, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->RESULT_POINT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_resolution:Landroid/graphics/Point;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_isFrontCamera:Z

    .line 66
    iput p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_degrees:I

    .line 74
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->paint:Landroid/graphics/Paint;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->possibleResultPoints:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->possibleResultPoints:Ljava/util/List;

    .line 105
    monitor-enter v0

    .line 106
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_0

    add-int/lit8 p1, p1, -0xa

    const/4 v1, 0x0

    .line 110
    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 112
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getPointInView(IIFF)Landroid/graphics/Point;
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_resolution:Landroid/graphics/Point;

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-nez v0, :cond_0

    float-to-double v3, p3

    .line 143
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p3, v3

    float-to-double v3, p4

    .line 144
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    :goto_0
    double-to-int p4, v3

    goto :goto_1

    .line 146
    :cond_0
    iget v3, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_degrees:I

    if-eq v3, v2, :cond_1

    if-eq v3, v1, :cond_1

    .line 154
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    int-to-float v0, p1

    mul-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p3, v3

    .line 155
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_resolution:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    int-to-float v0, p2

    mul-float/2addr p4, v0

    float-to-double v3, p4

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    goto :goto_0

    .line 149
    :cond_1
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    int-to-float v0, p2

    mul-float/2addr p3, v0

    float-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p3, v3

    .line 150
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_resolution:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr p4, v0

    int-to-float v0, p1

    mul-float/2addr p4, v0

    float-to-double v3, p4

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    goto :goto_0

    .line 159
    :goto_1
    iget v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_degrees:I

    if-eq v0, v2, :cond_7

    const/16 v2, 0xb4

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_3

    .line 167
    new-instance p2, Landroid/graphics/Point;

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_isFrontCamera:Z

    if-eqz v0, :cond_2

    sub-int p3, p1, p3

    :cond_2
    invoke-direct {p2, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    return-object p2

    .line 165
    :cond_3
    new-instance p1, Landroid/graphics/Point;

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_isFrontCamera:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    sub-int p3, p2, p3

    :goto_2
    invoke-direct {p1, p4, p3}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    .line 163
    :cond_5
    new-instance v0, Landroid/graphics/Point;

    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_isFrontCamera:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    sub-int p3, p1, p3

    :goto_3
    sub-int/2addr p2, p4

    invoke-direct {v0, p3, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 161
    :cond_7
    new-instance v0, Landroid/graphics/Point;

    sub-int/2addr p1, p4

    iget-boolean p4, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_isFrontCamera:Z

    if-eqz p4, :cond_8

    sub-int p3, p2, p3

    :cond_8
    invoke-direct {v0, p1, p3}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 81
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->getWidth()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->getHeight()I

    move-result v1

    .line 84
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->possibleResultPoints:Ljava/util/List;

    .line 85
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->possibleResultPoints:Ljava/util/List;

    .line 88
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 89
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->paint:Landroid/graphics/Paint;

    sget v4, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->RESULT_POINT_COLOR:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    monitor-enter v2

    .line 91
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/ResultPoint;

    .line 93
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {p0, v0, v1, v5, v4}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->getPointInView(IIFF)Landroid/graphics/Point;

    move-result-object v4

    .line 94
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Point;->x:I

    add-int/lit8 v6, v6, -0x4

    iget v7, v4, Landroid/graphics/Point;->y:I

    add-int/lit8 v7, v7, -0x4

    iget v8, v4, Landroid/graphics/Point;->x:I

    add-int/lit8 v8, v8, 0x4

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 97
    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v8, v0, 0x8

    add-int/lit8 v9, v1, 0x8

    const-wide/16 v4, 0x50

    const/4 v6, -0x8

    const/4 v7, -0x8

    move-object v3, p0

    .line 100
    invoke-virtual/range {v3 .. v9}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->postInvalidateDelayed(JIIII)V

    return-void
.end method

.method public setCameraInfo(ZI)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_isFrontCamera:Z

    .line 129
    iput p2, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_degrees:I

    return-void
.end method

.method public setCameraResolution(Landroid/graphics/Point;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFinderView;->m_resolution:Landroid/graphics/Point;

    return-void
.end method
