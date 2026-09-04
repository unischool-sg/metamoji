.class public Lcom/metamoji/ui/UiImageEditorView;
.super Landroid/view/View;
.source "UiImageEditorView.java"

# interfaces
.implements Lcom/metamoji/ui/UiScrollView$IOnZoomed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;,
        Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;
    }
.end annotation


# static fields
.field private static final BBit:I = 0x8

.field private static final BM:I = 0x7

.field private static final Bottoms:[I

.field private static final DASH_LENGTH:F = 6.0f

.field private static final HANDLE_DIAMETER_DP:I = 0xf

.field private static final HitPriority:[I

.field private static final IMAGE_MARGIN_DP:I = 0x2d

.field private static final KEY_ALPHA:Ljava/lang/String; = "alpha"

.field private static final KEY_MASK_QCURVE_PATH:Ljava/lang/String; = "maskQCurvePath"

.field private static final KEY_MASK_RECT:Ljava/lang/String; = "maskRect"

.field private static final KEY_SELECT_MODE:Ljava/lang/String; = "selectMode"

.field private static final LB:I = 0x2

.field private static final LBit:I = 0x1

.field private static final LM:I = 0x4

.field private static final LT:I = 0x0

.field private static final Lefts:[I

.field private static final MID_HANDLE_DIAMETER_DP:I = 0xc

.field private static final MIN_H:F = 10.0f

.field private static final MIN_V:F = 10.0f

.field private static final RB:I = 0x3

.field private static final RBit:I = 0x2

.field private static final RM:I = 0x6

.field private static final RT:I = 0x1

.field private static final Rights:[I

.field public static final SELECTMODE_LASSO:I = 0x1

.field public static final SELECTMODE_RECT:I = 0x0

.field private static final STROKE_WIDTH:F = 3.0f

.field private static final TBit:I = 0x4

.field private static final TM:I = 0x5

.field private static final Tops:[I


# instance fields
.field private _alpha:I

.field private _bitmap:Landroid/graphics/Bitmap;

.field _bitmapRect:Landroid/graphics/RectF;

.field private _clip:Landroid/graphics/Path;

.field _dash:Landroid/graphics/DashPathEffect;

.field private _dragRecognizer:Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;

.field _drawingPath:Landroid/graphics/Path;

.field _drawingPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field final _fill:Landroid/graphics/Paint;

.field private _handle:Landroid/graphics/Bitmap;

.field private _handleDiameter:I

.field private _handleRects:[Landroid/graphics/RectF;

.field private _imageMargin:I

.field final _imagePaint:Landroid/graphics/Paint;

.field final _lasso:Landroid/graphics/Paint;

.field _maskPath:Landroid/graphics/Path;

.field _maskQCurvePath:Lcom/metamoji/cm/PointArray;

.field _maskRect:Landroid/graphics/RectF;

.field private _midHandleDiameter:I

.field final _prev:Landroid/graphics/PointF;

.field final _rcHandle:Landroid/graphics/Rect;

.field final _rcWork:Landroid/graphics/RectF;

.field final _rcWork2:Landroid/graphics/RectF;

.field final _rcWork3:Landroid/graphics/Rect;

.field private _scalingInfo:Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;

.field private _selectMode:I

.field final _start:Landroid/graphics/PointF;

.field private _touchSlop:I


# direct methods
.method static bridge synthetic -$$Nest$fget_selectMode(Lcom/metamoji/ui/UiImageEditorView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/UiImageEditorView;->_selectMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$maddLassoPoint(Lcom/metamoji/ui/UiImageEditorView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/UiImageEditorView;->addLassoPoint(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearDrawing(Lcom/metamoji/ui/UiImageEditorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->clearDrawing()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseLasso(Lcom/metamoji/ui/UiImageEditorView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/UiImageEditorView;->closeLasso(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mindexToBits(Lcom/metamoji/ui/UiImageEditorView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiImageEditorView;->indexToBits(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmoveHandle(Lcom/metamoji/ui/UiImageEditorView;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/UiImageEditorView;->moveHandle(IFF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmoveMask(Lcom/metamoji/ui/UiImageEditorView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/UiImageEditorView;->moveMask(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMask(Lcom/metamoji/ui/UiImageEditorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->updateMask()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x7

    .line 73
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Lcom/metamoji/ui/UiImageEditorView;->Lefts:[I

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x6

    .line 74
    filled-new-array {v5, v6, v7, v3, v4}, [I

    move-result-object v8

    sput-object v8, Lcom/metamoji/ui/UiImageEditorView;->Rights:[I

    .line 75
    filled-new-array {v0, v5, v3, v7, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/UiImageEditorView;->Tops:[I

    .line 76
    filled-new-array {v1, v6, v4, v7, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/UiImageEditorView;->Bottoms:[I

    const/16 v0, 0x8

    .line 77
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/metamoji/ui/UiImageEditorView;->HitPriority:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x1
        0x2
        0x0
        0x6
        0x7
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 115
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    .line 31
    iput-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_handle:Landroid/graphics/Bitmap;

    .line 32
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_clip:Landroid/graphics/Path;

    const/16 v1, 0x28

    .line 35
    iput v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_imageMargin:I

    const/16 v1, 0xff

    .line 36
    iput v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_alpha:I

    .line 41
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    .line 42
    iput-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskQCurvePath:Lcom/metamoji/cm/PointArray;

    .line 43
    iput-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskPath:Landroid/graphics/Path;

    .line 60
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork:Landroid/graphics/RectF;

    .line 61
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork2:Landroid/graphics/RectF;

    .line 534
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_start:Landroid/graphics/PointF;

    .line 535
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_prev:Landroid/graphics/PointF;

    const/4 v1, 0x0

    .line 733
    iput v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_selectMode:I

    .line 890
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    const/16 v1, 0x8

    .line 891
    new-array v1, v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    .line 1052
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork3:Landroid/graphics/Rect;

    .line 1053
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcHandle:Landroid/graphics/Rect;

    .line 1055
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_fill:Landroid/graphics/Paint;

    .line 1057
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_imagePaint:Landroid/graphics/Paint;

    .line 1059
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_lasso:Landroid/graphics/Paint;

    .line 1060
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_dash:Landroid/graphics/DashPathEffect;

    .line 1062
    iput-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPath:Landroid/graphics/Path;

    .line 1204
    iput-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_scalingInfo:Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;

    .line 116
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiImageEditorView;->init(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        0x40c00000    # 6.0f
        0x40c00000    # 6.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/UiImageEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 30
    iput-object p2, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    .line 31
    iput-object p2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handle:Landroid/graphics/Bitmap;

    .line 32
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_clip:Landroid/graphics/Path;

    const/16 p3, 0x28

    .line 35
    iput p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_imageMargin:I

    const/16 p3, 0xff

    .line 36
    iput p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_alpha:I

    .line 41
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    .line 42
    iput-object p2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskQCurvePath:Lcom/metamoji/cm/PointArray;

    .line 43
    iput-object p2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskPath:Landroid/graphics/Path;

    .line 60
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork:Landroid/graphics/RectF;

    .line 61
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork2:Landroid/graphics/RectF;

    .line 534
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_start:Landroid/graphics/PointF;

    .line 535
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_prev:Landroid/graphics/PointF;

    const/4 p3, 0x0

    .line 733
    iput p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_selectMode:I

    .line 890
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    const/16 p3, 0x8

    .line 891
    new-array p3, p3, [Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    .line 1052
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork3:Landroid/graphics/Rect;

    .line 1053
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcHandle:Landroid/graphics/Rect;

    .line 1055
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_fill:Landroid/graphics/Paint;

    .line 1057
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_imagePaint:Landroid/graphics/Paint;

    .line 1059
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_lasso:Landroid/graphics/Paint;

    .line 1060
    new-instance p3, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p3, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p3, p0, Lcom/metamoji/ui/UiImageEditorView;->_dash:Landroid/graphics/DashPathEffect;

    .line 1062
    iput-object p2, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPath:Landroid/graphics/Path;

    .line 1204
    iput-object p2, p0, Lcom/metamoji/ui/UiImageEditorView;->_scalingInfo:Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;

    .line 125
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiImageEditorView;->init(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        0x40c00000    # 6.0f
        0x40c00000    # 6.0f
    .end array-data
.end method

.method private addLassoPoint(FF)V
    .locals 7

    .line 553
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_prev:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_prev:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, p2

    div-float/2addr v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 555
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPoints:Ljava/util/List;

    if-nez v1, :cond_0

    .line 557
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPath:Landroid/graphics/Path;

    .line 558
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 559
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPoints:Ljava/util/List;

    .line 560
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 563
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 564
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_prev:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView;->_prev:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 565
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPoints:Ljava/util/List;

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView;->_prev:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/metamoji/ui/UiImageEditorView;->_prev:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPoints:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork:Landroid/graphics/RectF;

    .line 570
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 571
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_prev:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_prev:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v3}, Landroid/graphics/RectF;->union(FF)V

    .line 572
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v0}, Landroid/graphics/RectF;->union(FF)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 573
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    neg-float v0, v0

    .line 574
    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 575
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(Landroid/graphics/RectF;)V

    .line 578
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_prev:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private addLassoPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 543
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, p1}, Lcom/metamoji/ui/UiImageEditorView;->addLassoPoint(FF)V

    return-void
.end method

.method private calcMeasuredSize(II)I
    .locals 2

    .line 873
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 874
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return p2

    :cond_0
    return p1

    .line 882
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private clearDrawing()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork:Landroid/graphics/RectF;

    const/4 v2, 0x1

    .line 526
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 527
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->getScaleX()F

    move-result v2

    div-float/2addr v0, v2

    neg-float v0, v0

    .line 528
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 529
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(Landroid/graphics/RectF;)V

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPath:Landroid/graphics/Path;

    .line 531
    iput-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPoints:Ljava/util/List;

    return-void
.end method

.method private closeLasso(FF)V
    .locals 1

    .line 617
    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->isLassoEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 619
    iput-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPath:Landroid/graphics/Path;

    .line 620
    iput-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPoints:Ljava/util/List;

    .line 621
    iput-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskQCurvePath:Lcom/metamoji/cm/PointArray;

    .line 622
    iput-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskPath:Landroid/graphics/Path;

    .line 623
    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->updateMask()V

    .line 624
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->invalidate()V

    return-void

    .line 628
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/UiImageEditorView;->addLassoPoint(FF)V

    .line 629
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskQCurvePath:Lcom/metamoji/cm/PointArray;

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 631
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_start:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiImageEditorView;->addLassoPoint(Landroid/graphics/PointF;)V

    .line 632
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPoints:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiImageEditorView;->addLassoPoint(Landroid/graphics/PointF;)V

    .line 633
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 636
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork:Landroid/graphics/RectF;

    .line 637
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 638
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 640
    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->clearDrawing()V

    return-void

    .line 644
    :cond_2
    new-instance p1, Lcom/metamoji/cm/PointArray;

    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPoints:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/metamoji/cm/PointArray;-><init>(Ljava/util/List;)V

    .line 645
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskQCurvePath:Lcom/metamoji/cm/PointArray;

    if-nez v0, :cond_3

    .line 647
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathGenerator;->simplifyBezierPointArray(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    goto :goto_0

    .line 650
    :cond_3
    invoke-static {v0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathGenerator;->mergeBezierPointArray(Lcom/metamoji/cm/PointArray;Lcom/metamoji/cm/PointArray;Z)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    .line 652
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiImageEditorView;->setMaskQCurvePath(Lcom/metamoji/cm/PointArray;)V

    .line 654
    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->clearDrawing()V

    .line 655
    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->updateMask()V

    .line 656
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->invalidate()V

    return-void
.end method

.method private indexToBits(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/16 p1, 0x8

    return p1

    :pswitch_1
    const/4 p1, 0x2

    return p1

    :pswitch_2
    const/4 p1, 0x4

    return p1

    :pswitch_3
    const/4 p1, 0x1

    return p1

    :pswitch_4
    const/16 p1, 0xa

    return p1

    :pswitch_5
    const/16 p1, 0x9

    return p1

    :pswitch_6
    const/4 p1, 0x6

    return p1

    :pswitch_7
    const/4 p1, 0x5

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDrawResources(Landroid/content/Context;)V
    .locals 3

    .line 1065
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_fill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1066
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_fill:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1068
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_lasso:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1069
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_lasso:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$color;->lasso_line:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1072
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$drawable;->resize_corner:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_handle:Landroid/graphics/Bitmap;

    .line 1073
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isLassoEmpty()Z
    .locals 11

    .line 583
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPoints:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->getScaleX()F

    move-result v0

    .line 588
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPoints:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 589
    iget v4, v2, Landroid/graphics/PointF;->x:F

    .line 591
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 593
    iget-object v5, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    move v7, v6

    move v4, v2

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 594
    iget v9, v8, Landroid/graphics/PointF;->x:F

    cmpl-float v9, v6, v9

    if-lez v9, :cond_2

    .line 595
    iget v6, v8, Landroid/graphics/PointF;->x:F

    .line 597
    :cond_2
    iget v9, v8, Landroid/graphics/PointF;->y:F

    cmpl-float v9, v2, v9

    if-lez v9, :cond_3

    .line 598
    iget v2, v8, Landroid/graphics/PointF;->y:F

    .line 600
    :cond_3
    iget v9, v8, Landroid/graphics/PointF;->x:F

    cmpg-float v9, v7, v9

    if-gez v9, :cond_4

    .line 601
    iget v7, v8, Landroid/graphics/PointF;->x:F

    .line 603
    :cond_4
    iget v9, v8, Landroid/graphics/PointF;->y:F

    cmpg-float v9, v4, v9

    if-gez v9, :cond_5

    .line 604
    iget v4, v8, Landroid/graphics/PointF;->y:F

    :cond_5
    sub-float v8, v7, v6

    mul-float/2addr v8, v0

    .line 606
    iget v9, p0, Lcom/metamoji/ui/UiImageEditorView;->_touchSlop:I

    int-to-float v10, v9

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    return v3

    :cond_6
    sub-float v8, v4, v2

    mul-float/2addr v8, v0

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    return v3

    :cond_7
    return v1
.end method

.method private moveHandle(IFF)V
    .locals 11

    .line 200
    new-instance v0, Lcom/metamoji/cm/MinMaxF;

    invoke-direct {v0}, Lcom/metamoji/cm/MinMaxF;-><init>()V

    and-int/lit8 v1, p1, 0x2

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 205
    sget-object v6, Lcom/metamoji/ui/UiImageEditorView;->Rights:[I

    invoke-virtual {p0, v6}, Lcom/metamoji/ui/UiImageEditorView;->invalidateHandles([I)V

    .line 206
    iget-object v6, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v2

    invoke-virtual {v0, v6, v7}, Lcom/metamoji/cm/MinMaxF;->set(FF)V

    .line 207
    iget-object v6, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, p2

    invoke-virtual {v0, v6}, Lcom/metamoji/cm/MinMaxF;->limit(F)F

    move-result p2

    .line 208
    iget-object v6, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v6, p2}, Lcom/metamoji/cm/MinMaxF;->set(FF)V

    .line 210
    iget-object v6, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork:Landroid/graphics/RectF;

    .line 211
    invoke-virtual {v0}, Lcom/metamoji/cm/MinMaxF;->getMin()F

    move-result v7

    iget-object v8, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Lcom/metamoji/cm/MinMaxF;->getMax()F

    move-result v9

    iget-object v10, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 212
    iget-object v7, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iput p2, v7, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    and-int/lit8 v6, p1, 0x1

    if-ne v6, v3, :cond_1

    .line 215
    sget-object v6, Lcom/metamoji/ui/UiImageEditorView;->Lefts:[I

    invoke-virtual {p0, v6}, Lcom/metamoji/ui/UiImageEditorView;->invalidateHandles([I)V

    .line 216
    iget-object v6, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v2

    invoke-virtual {v0, v6, v7}, Lcom/metamoji/cm/MinMaxF;->set(FF)V

    .line 217
    iget-object v6, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, p2

    invoke-virtual {v0, v6}, Lcom/metamoji/cm/MinMaxF;->limit(F)F

    move-result p2

    .line 218
    iget-object v6, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v6, p2}, Lcom/metamoji/cm/MinMaxF;->set(FF)V

    .line 220
    iget-object v6, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork:Landroid/graphics/RectF;

    .line 221
    invoke-virtual {v0}, Lcom/metamoji/cm/MinMaxF;->getMin()F

    move-result v7

    iget-object v8, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Lcom/metamoji/cm/MinMaxF;->getMax()F

    move-result v9

    iget-object v10, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 222
    iget-object v7, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iput p2, v7, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_1
    move-object v6, v4

    :goto_0
    and-int/lit8 p2, p1, 0x8

    const/16 v7, 0x8

    const/4 v8, 0x4

    if-ne p2, v7, :cond_2

    .line 226
    sget-object v4, Lcom/metamoji/ui/UiImageEditorView;->Bottoms:[I

    invoke-virtual {p0, v4}, Lcom/metamoji/ui/UiImageEditorView;->invalidateHandles([I)V

    .line 227
    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v2

    invoke-virtual {v0, v4, v9}, Lcom/metamoji/cm/MinMaxF;->set(FF)V

    .line 228
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, p3

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/MinMaxF;->limit(F)F

    move-result p3

    .line 229
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, p3}, Lcom/metamoji/cm/MinMaxF;->set(FF)V

    .line 231
    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork2:Landroid/graphics/RectF;

    .line 232
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lcom/metamoji/cm/MinMaxF;->getMin()F

    move-result v9

    iget-object v10, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Lcom/metamoji/cm/MinMaxF;->getMax()F

    move-result v0

    invoke-virtual {v4, v2, v9, v10, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 233
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_2
    and-int/lit8 v9, p1, 0x4

    if-ne v9, v8, :cond_3

    .line 236
    sget-object v4, Lcom/metamoji/ui/UiImageEditorView;->Tops:[I

    invoke-virtual {p0, v4}, Lcom/metamoji/ui/UiImageEditorView;->invalidateHandles([I)V

    .line 237
    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v9, v2

    invoke-virtual {v0, v4, v9}, Lcom/metamoji/cm/MinMaxF;->set(FF)V

    .line 238
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p3

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/MinMaxF;->limit(F)F

    move-result p3

    .line 239
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, p3}, Lcom/metamoji/cm/MinMaxF;->set(FF)V

    .line 241
    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork2:Landroid/graphics/RectF;

    .line 242
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Lcom/metamoji/cm/MinMaxF;->getMin()F

    move-result v9

    iget-object v10, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Lcom/metamoji/cm/MinMaxF;->getMax()F

    move-result v0

    invoke-virtual {v4, v2, v9, v10, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 243
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->top:F

    :cond_3
    :goto_1
    if-eqz v4, :cond_5

    if-eqz v6, :cond_5

    .line 248
    iget p3, v6, Landroid/graphics/RectF;->left:F

    iget v0, v4, Landroid/graphics/RectF;->left:F

    cmpg-float p3, p3, v0

    if-gez p3, :cond_4

    .line 249
    iget p3, v6, Landroid/graphics/RectF;->left:F

    iput p3, v4, Landroid/graphics/RectF;->left:F

    .line 251
    :cond_4
    iget p3, v6, Landroid/graphics/RectF;->right:F

    iget v0, v4, Landroid/graphics/RectF;->right:F

    cmpl-float p3, p3, v0

    if-lez p3, :cond_5

    .line 252
    iget p3, v6, Landroid/graphics/RectF;->right:F

    iput p3, v4, Landroid/graphics/RectF;->right:F

    :cond_5
    const/high16 p3, 0x40400000    # 3.0f

    .line 256
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->getScaleX()F

    move-result v0

    div-float/2addr p3, v0

    if-eqz v4, :cond_6

    .line 257
    invoke-virtual {v4}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    neg-float v0, p3

    .line 258
    invoke-virtual {v4, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 259
    invoke-virtual {p0, v4}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(Landroid/graphics/RectF;)V

    :cond_6
    if-eqz v6, :cond_7

    .line 261
    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    neg-float p3, p3

    .line 262
    invoke-virtual {v6, p3, p3}, Landroid/graphics/RectF;->inset(FF)V

    .line 263
    invoke-virtual {p0, v6}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(Landroid/graphics/RectF;)V

    .line 267
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->calcHandleRects()V

    .line 268
    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->updateMask()V

    if-ne v1, v5, :cond_8

    .line 271
    sget-object p3, Lcom/metamoji/ui/UiImageEditorView;->Rights:[I

    invoke-virtual {p0, p3}, Lcom/metamoji/ui/UiImageEditorView;->invalidateHandles([I)V

    goto :goto_2

    :cond_8
    and-int/lit8 p3, p1, 0x1

    if-ne p3, v3, :cond_9

    .line 273
    sget-object p3, Lcom/metamoji/ui/UiImageEditorView;->Lefts:[I

    invoke-virtual {p0, p3}, Lcom/metamoji/ui/UiImageEditorView;->invalidateHandles([I)V

    :cond_9
    :goto_2
    if-ne p2, v7, :cond_a

    .line 276
    sget-object p1, Lcom/metamoji/ui/UiImageEditorView;->Bottoms:[I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiImageEditorView;->invalidateHandles([I)V

    return-void

    :cond_a
    and-int/2addr p1, v8

    if-ne p1, v8, :cond_b

    .line 278
    sget-object p1, Lcom/metamoji/ui/UiImageEditorView;->Tops:[I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiImageEditorView;->invalidateHandles([I)V

    :cond_b
    return-void
.end method

.method private moveMask(FF)V
    .locals 3

    .line 288
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->invalidateHandles()V

    .line 289
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(Landroid/graphics/RectF;)V

    neg-float p1, p1

    neg-float p2, p2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    .line 296
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    if-lez v1, :cond_0

    .line 294
    iget v1, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ui/UiImageEditorView;->limitMax(FF)F

    move-result p1

    goto :goto_0

    .line 296
    :cond_0
    iget v1, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ui/UiImageEditorView;->limitMin(FF)F

    move-result p1

    :goto_0
    cmpl-float v0, p2, v0

    .line 301
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    if-lez v0, :cond_1

    .line 299
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/metamoji/ui/UiImageEditorView;->limitMax(FF)F

    move-result p2

    goto :goto_1

    .line 301
    :cond_1
    iget v0, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/metamoji/ui/UiImageEditorView;->limitMin(FF)F

    move-result p2

    .line 304
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 306
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->calcHandleRects()V

    .line 307
    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->updateMask()V

    .line 308
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(Landroid/graphics/RectF;)V

    .line 309
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->invalidateHandles()V

    return-void
.end method

.method private rawBitmapHeight()I
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private rawBitmapRect()Landroid/graphics/Rect;
    .locals 4

    .line 709
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private rawBitmapWidth()I
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private rawScreenHeight()I
    .locals 2

    .line 727
    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->rawBitmapHeight()I

    move-result v0

    iget v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_imageMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private rawScreenWidth()I
    .locals 2

    .line 718
    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->rawBitmapWidth()I

    move-result v0

    iget v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_imageMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public static restorePointArray(Landroid/os/Bundle;Ljava/lang/String;)Lcom/metamoji/cm/PointArray;
    .locals 0

    .line 1314
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1319
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 1320
    new-instance p1, Lcom/metamoji/cm/PointArray;

    invoke-direct {p1, p0}, Lcom/metamoji/cm/PointArray;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public static storePointArray(Landroid/os/Bundle;Ljava/lang/String;Lcom/metamoji/cm/PointArray;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1301
    invoke-virtual {p2}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object p2

    .line 1302
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Parcelable;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    .line 1303
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method private updateMask()V
    .locals 3

    .line 1020
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_clip:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 1021
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_clip:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1023
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/high16 v1, -0x3ee00000    # -10.0f

    .line 1024
    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 1025
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_clip:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1027
    iget v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_selectMode:I

    if-nez v1, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_clip:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void

    .line 1029
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskPath:Landroid/graphics/Path;

    .line 1032
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_clip:Landroid/graphics/Path;

    if-nez v1, :cond_1

    .line 1030
    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void

    .line 1032
    :cond_1
    invoke-virtual {v2, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method calcHandleRects()V
    .locals 12

    .line 986
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    goto :goto_0

    .line 989
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_selectMode:I

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 993
    :cond_1
    iget v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleDiameter:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->getScaleX()F

    move-result v1

    div-float/2addr v0, v1

    .line 994
    iget v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_midHandleDiameter:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->getScaleX()F

    move-result v2

    div-float/2addr v1, v2

    .line 996
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    const/4 v5, 0x2

    aget-object v6, v2, v5

    const/4 v7, 0x4

    aget-object v2, v2, v7

    iget-object v8, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iput v8, v2, Landroid/graphics/RectF;->right:F

    iput v8, v6, Landroid/graphics/RectF;->right:F

    iput v8, v4, Landroid/graphics/RectF;->right:F

    .line 997
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v4, v2, v3

    aget-object v2, v2, v5

    iget-object v6, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v0

    iput v6, v2, Landroid/graphics/RectF;->left:F

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 998
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v2, v2, v7

    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v1

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 1000
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    const/4 v4, 0x1

    aget-object v6, v2, v4

    aget-object v8, v2, v3

    const/4 v9, 0x5

    aget-object v2, v2, v9

    iget-object v10, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iput v10, v2, Landroid/graphics/RectF;->bottom:F

    iput v10, v8, Landroid/graphics/RectF;->bottom:F

    iput v10, v6, Landroid/graphics/RectF;->bottom:F

    .line 1001
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v6, v2, v4

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iput v3, v6, Landroid/graphics/RectF;->top:F

    .line 1002
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1004
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v3, v2, v4

    const/4 v6, 0x3

    aget-object v8, v2, v6

    const/4 v10, 0x6

    aget-object v2, v2, v10

    iget-object v11, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    iput v11, v2, Landroid/graphics/RectF;->left:F

    iput v11, v8, Landroid/graphics/RectF;->left:F

    iput v11, v3, Landroid/graphics/RectF;->left:F

    .line 1005
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v3, v2, v4

    aget-object v2, v2, v6

    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v0

    iput v4, v2, Landroid/graphics/RectF;->right:F

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 1006
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 1008
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v3, v2, v6

    aget-object v4, v2, v5

    const/4 v8, 0x7

    aget-object v2, v2, v8

    iget-object v11, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    iput v11, v2, Landroid/graphics/RectF;->top:F

    iput v11, v4, Landroid/graphics/RectF;->top:F

    iput v11, v3, Landroid/graphics/RectF;->top:F

    .line 1009
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v3, v2, v6

    aget-object v2, v2, v5

    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 1010
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v0, v0, v8

    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 1012
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v2, v0, v7

    aget-object v0, v0, v10

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1013
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v2, v0, v7

    aget-object v0, v0, v10

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1015
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v2, v0, v9

    aget-object v0, v0, v8

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1016
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v2, v0, v9

    aget-object v0, v0, v8

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public check()Z
    .locals 3

    .line 943
    iget v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_selectMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskQCurvePath:Lcom/metamoji/cm/PointArray;

    if-nez v0, :cond_0

    .line 945
    sget v0, Lcom/metamoji/noteanytime/R$string;->Image_Msg_Error_NoSelection:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return v2

    :cond_0
    return v1
.end method

.method public getMaskQCurvePath()Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskQCurvePath:Lcom/metamoji/cm/PointArray;

    return-object v0
.end method

.method public getMaskRect()Landroid/graphics/Rect;
    .locals 2

    .line 897
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 898
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getResultMaskQCurvePath()Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 931
    iget v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_selectMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    goto :goto_0

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskQCurvePath:Lcom/metamoji/cm/PointArray;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResultMaskRect()Landroid/graphics/Rect;
    .locals 4

    .line 906
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 907
    iget v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_selectMode:I

    if-nez v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object v0

    .line 909
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskPath:Landroid/graphics/Path;

    if-nez v1, :cond_1

    .line 910
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object v0

    .line 912
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 913
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskPath:Landroid/graphics/Path;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 914
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 915
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getSelectMode()I
    .locals 1

    .line 740
    iget v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_selectMode:I

    return v0
.end method

.method handleHitTest(FF)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 668
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 669
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    :cond_1
    :goto_1
    sget-object v1, Lcom/metamoji/ui/UiImageEditorView;->HitPriority:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 675
    aget v1, v1, v0

    .line 676
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 677
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    iget-object v5, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    neg-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 678
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method init(Landroid/content/Context;)V
    .locals 2

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41700000    # 15.0f

    mul-float/2addr v1, v0

    .line 319
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleDiameter:I

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    .line 320
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_midHandleDiameter:I

    const/high16 v1, 0x42340000    # 45.0f

    mul-float/2addr v0, v1

    .line 321
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_imageMargin:I

    .line 322
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_touchSlop:I

    .line 324
    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiImageEditorView;->initDrawResources(Landroid/content/Context;)V

    .line 327
    new-instance p1, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;-><init>(Lcom/metamoji/ui/UiImageEditorView;Lcom/metamoji/ui/UiImageEditorView-IA;)V

    iput-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_dragRecognizer:Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;

    return-void
.end method

.method invalidate(Landroid/graphics/RectF;)V
    .locals 5

    .line 134
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_imageMargin:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_imageMargin:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 135
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_imageMargin:I

    add-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    iget v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_imageMargin:I

    add-int/2addr p1, v3

    .line 134
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(IIII)V

    return-void
.end method

.method invalidateHandles()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 154
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(Landroid/graphics/RectF;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method invalidateHandles([I)V
    .locals 4

    .line 144
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 145
    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v2, v3, v2

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(Landroid/graphics/RectF;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method invalidateMask(Landroid/graphics/RectF;)V
    .locals 8

    .line 162
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork2:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 163
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork2:Landroid/graphics/RectF;

    .line 164
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork:Landroid/graphics/RectF;

    .line 165
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 166
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    const/high16 v4, 0x40400000    # 3.0f

    .line 167
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->getScaleX()F

    move-result v5

    div-float/2addr v4, v5

    .line 168
    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 169
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 170
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    neg-float v5, v4

    .line 171
    invoke-virtual {v1, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 172
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(Landroid/graphics/RectF;)V

    .line 174
    :cond_0
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 175
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 176
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v1, Landroid/graphics/RectF;->top:F

    neg-float v5, v4

    .line 177
    invoke-virtual {v1, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 178
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(Landroid/graphics/RectF;)V

    .line 180
    :cond_1
    iget v5, p1, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 181
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, p1, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v1, v5, v2, v6, v3}, Landroid/graphics/RectF;->set(FFFF)V

    neg-float v5, v4

    .line 182
    invoke-virtual {v1, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 183
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(Landroid/graphics/RectF;)V

    .line 185
    :cond_2
    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 186
    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    neg-float p1, v4

    .line 187
    invoke-virtual {v1, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 188
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(Landroid/graphics/RectF;)V

    :cond_3
    return-void
.end method

.method limitMax(FF)F
    .locals 1

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method limitMin(FF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1242
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1244
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/UiScrollView;

    const v1, 0x3f4ccccd    # 0.8f

    .line 1245
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiScrollView;->setMinScale(F)V

    .line 1246
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiScrollView;->addOnZoomedListener(Lcom/metamoji/ui/UiScrollView$IOnZoomed;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1257
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1258
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/UiScrollView;

    .line 1259
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiScrollView;->removeOnZoomedListener(Lcom/metamoji/ui/UiScrollView$IOnZoomed;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1085
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcWork3:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1092
    :cond_1
    iget v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_imageMargin:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1095
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_fill:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1096
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1098
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_imagePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_alpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1099
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->rawBitmapRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView;->_imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1103
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 1104
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_fill:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1105
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_clip:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1106
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_clip:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_lasso:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1109
    iget v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_selectMode:I

    if-nez v0, :cond_2

    .line 1111
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_imagePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1112
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcHandle:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_handle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_handle:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1113
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    array-length v0, v0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1114
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_handle:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_rcHandle:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/metamoji/ui/UiImageEditorView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/metamoji/ui/UiImageEditorView;->_imagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1118
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_drawingPath:Landroid/graphics/Path;

    if-eqz v0, :cond_3

    .line 1119
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_lasso:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1049
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 837
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 838
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_2

    if-eq v1, v2, :cond_2

    .line 841
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 842
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 844
    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->rawScreenWidth()I

    move-result v2

    .line 845
    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->rawScreenHeight()I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_0

    .line 850
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v2

    div-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    if-ne v1, v4, :cond_1

    .line 854
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    int-to-float v0, v3

    div-float/2addr p2, v0

    .line 855
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_1
    int-to-float p2, v2

    mul-float/2addr p2, p1

    float-to-double v0, p2

    .line 858
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, v0

    int-to-float v0, v3

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ui/UiImageEditorView;->setMeasuredDimension(II)V

    return-void

    .line 861
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->rawScreenWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/UiImageEditorView;->calcMeasuredSize(II)I

    move-result p1

    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->rawScreenHeight()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/metamoji/ui/UiImageEditorView;->calcMeasuredSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiImageEditorView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1336
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1338
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1341
    check-cast p1, Landroid/os/Bundle;

    .line 1342
    const-string v0, "maskRect"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    .line 1343
    const-string v0, "maskQCurvePath"

    invoke-static {p1, v0}, Lcom/metamoji/ui/UiImageEditorView;->restorePointArray(Landroid/os/Bundle;Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiImageEditorView;->setMaskQCurvePath(Lcom/metamoji/cm/PointArray;)V

    .line 1344
    const-string/jumbo v0, "selectMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiImageEditorView;->setSelectMode(I)V

    .line 1345
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiImageEditorView;->setImageAlpha(I)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1372
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 1374
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1375
    const-string/jumbo v1, "selectMode"

    iget v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_selectMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1376
    const-string v1, "maskRect"

    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1377
    const-string v1, "maskQCurvePath"

    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskQCurvePath:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/UiImageEditorView;->storePointArray(Landroid/os/Bundle;Ljava/lang/String;Lcom/metamoji/cm/PointArray;)V

    .line 1378
    const-string v1, "alpha"

    iget v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_alpha:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1041
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1214
    iget v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_imageMargin:I

    neg-int v1, v0

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1217
    iget-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_dragRecognizer:Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiImageEditorView$DragRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1218
    iget v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_selectMode:I

    if-nez v1, :cond_2

    .line 1219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1221
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_scalingInfo:Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;

    if-nez v1, :cond_0

    .line 1223
    new-instance v1, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;-><init>(Lcom/metamoji/ui/UiImageEditorView;Landroid/view/MotionEvent;)V

    iput-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_scalingInfo:Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;

    return v0

    .line 1226
    :cond_0
    invoke-virtual {v1, p1}, Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;->update(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 1230
    iput-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_scalingInfo:Lcom/metamoji/ui/UiImageEditorView$ScalingInfo;

    :cond_2
    return v0
.end method

.method public onZoomed(FF)V
    .locals 2

    .line 1281
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_lasso:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->getScaleX()F

    move-result v0

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 p1, 0x40c00000    # 6.0f

    .line 1282
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->getScaleX()F

    move-result p2

    div-float/2addr p1, p2

    .line 1283
    new-instance p2, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/high16 p1, 0x40000000    # 2.0f

    invoke-direct {p2, v0, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object p2, p0, Lcom/metamoji/ui/UiImageEditorView;->_dash:Landroid/graphics/DashPathEffect;

    .line 1284
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_lasso:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1286
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->calcHandleRects()V

    .line 1288
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->invalidate()V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/metamoji/cm/PointArray;)V
    .locals 2

    .line 761
    iput-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    .line 762
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/UiImageEditorView;->setMaskQCurvePath(Lcom/metamoji/cm/PointArray;)V

    .line 766
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 764
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 766
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v0, p2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 768
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v0, p2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 770
    :goto_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiImageEditorView;->setSelectMode(I)V

    .line 772
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->requestLayout()V

    return-void
.end method

.method public setImageAlpha(I)V
    .locals 0

    .line 800
    iput p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_alpha:I

    .line 801
    iget-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiImageEditorView;->invalidate(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setMaskQCurvePath(Lcom/metamoji/cm/PointArray;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 781
    iput-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskQCurvePath:Lcom/metamoji/cm/PointArray;

    .line 782
    iput-object p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskPath:Landroid/graphics/Path;

    return-void

    .line 786
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->clone()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskQCurvePath:Lcom/metamoji/cm/PointArray;

    .line 788
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskPath:Landroid/graphics/Path;

    .line 789
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 791
    iget-object v1, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x2

    .line 795
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/UiImageEditorView;->_maskPath:Landroid/graphics/Path;

    if-ge v1, v0, :cond_1

    add-int/lit8 v3, v1, -0x1

    .line 793
    invoke-virtual {p1, v3}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v3}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 795
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    :cond_2
    return-void
.end method

.method public setSelectMode(I)V
    .locals 0

    .line 748
    iput p1, p0, Lcom/metamoji/ui/UiImageEditorView;->_selectMode:I

    .line 750
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->calcHandleRects()V

    .line 751
    invoke-direct {p0}, Lcom/metamoji/ui/UiImageEditorView;->updateMask()V

    .line 752
    invoke-virtual {p0}, Lcom/metamoji/ui/UiImageEditorView;->invalidate()V

    return-void
.end method
