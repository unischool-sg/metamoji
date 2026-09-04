.class public Lcom/metamoji/un/pdf/UnPDFLocationContentView;
.super Landroid/view/View;
.source "UnPDFLocationContentView.java"


# instance fields
.field private final BBit:I

.field private final BM:I

.field private final Bottoms:[I

.field private final LB:I

.field private final LBit:I

.field private final LM:I

.field private final LT:I

.field private final Lefts:[I

.field private final RB:I

.field private final RBit:I

.field private final RM:I

.field private final RT:I

.field private final Rights:[I

.field private final TBit:I

.field private final TM:I

.field private final Tops:[I

.field _blur:Landroid/graphics/BlurMaskFilter;

.field _context:Landroid/content/Context;

.field _density:F

.field private _dragGesture:Landroid/view/GestureDetector;

.field _eventX:F

.field _eventY:F

.field private _handle:Landroid/graphics/Bitmap;

.field private _handleDiameter:I

.field private final _handleDiameterDP:I

.field private _handleOffset:I

.field private final _handleOffsetDP:I

.field private _handleRects:[Landroid/graphics/RectF;

.field _maskRect:Landroid/graphics/RectF;

.field private _midHandleDiameter:I

.field private final _midHandleDiameterDP:I

.field _offX:F

.field _offY:F

.field _paintWaku:Landroid/graphics/Paint;

.field private _pdfAppearHeight:F

.field private _pdfAppearWidth:F

.field private _tmpRect:Landroid/graphics/RectF;

.field _tmpRect2:Landroid/graphics/Rect;

.field m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

.field m_paperScale:F

.field m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

.field m_rubberBandRect:Landroid/graphics/RectF;

.field m_scaledPaperRect:Landroid/graphics/RectF;

.field paint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic -$$Nest$fgetBottoms(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Bottoms:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetLefts(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Lefts:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetRights(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Rights:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetTops(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)[I
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Tops:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_pdfAppearHeight(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_pdfAppearHeight:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_pdfAppearWidth(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)F
    .locals 0

    iget p0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_pdfAppearWidth:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_tmpRect(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_tmpRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mindexToBits(Lcom/metamoji/un/pdf/UnPDFLocationContentView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->indexToBits(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 106
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_density:F

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_tmpRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handle:Landroid/graphics/Bitmap;

    const/16 v0, 0xf

    .line 41
    iput v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleDiameterDP:I

    const/16 v0, 0xc

    .line 42
    iput v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_midHandleDiameterDP:I

    const/4 v0, 0x6

    .line 43
    iput v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleOffsetDP:I

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->LT:I

    const/4 v2, 0x1

    .line 52
    iput v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->RT:I

    const/4 v3, 0x2

    .line 53
    iput v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->LB:I

    const/4 v4, 0x3

    .line 54
    iput v4, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->RB:I

    const/4 v5, 0x4

    .line 55
    iput v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->LM:I

    const/4 v6, 0x5

    .line 56
    iput v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->TM:I

    .line 57
    iput v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->RM:I

    const/4 v7, 0x7

    .line 58
    iput v7, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->BM:I

    .line 60
    filled-new-array {v1, v3, v5, v6, v7}, [I

    move-result-object v8

    iput-object v8, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Lefts:[I

    .line 61
    filled-new-array {v2, v4, v5, v6, v7}, [I

    move-result-object v8

    iput-object v8, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Rights:[I

    .line 62
    filled-new-array {v1, v2, v6, v0, v5}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Tops:[I

    .line 63
    filled-new-array {v3, v4, v7, v0, v5}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Bottoms:[I

    .line 66
    iput v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->LBit:I

    .line 67
    iput v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->RBit:I

    .line 68
    iput v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->TBit:I

    const/16 v0, 0x8

    .line 69
    iput v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->BBit:I

    .line 665
    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    .line 748
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_tmpRect2:Landroid/graphics/Rect;

    .line 749
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->paint:Landroid/graphics/Paint;

    .line 750
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_paintWaku:Landroid/graphics/Paint;

    .line 107
    invoke-virtual {p0, p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_density:F

    .line 38
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_tmpRect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handle:Landroid/graphics/Bitmap;

    const/16 p2, 0xf

    .line 41
    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleDiameterDP:I

    const/16 p2, 0xc

    .line 42
    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_midHandleDiameterDP:I

    const/4 p2, 0x6

    .line 43
    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleOffsetDP:I

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->LT:I

    const/4 v1, 0x1

    .line 52
    iput v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->RT:I

    const/4 v2, 0x2

    .line 53
    iput v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->LB:I

    const/4 v3, 0x3

    .line 54
    iput v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->RB:I

    const/4 v4, 0x4

    .line 55
    iput v4, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->LM:I

    const/4 v5, 0x5

    .line 56
    iput v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->TM:I

    .line 57
    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->RM:I

    const/4 v6, 0x7

    .line 58
    iput v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->BM:I

    .line 60
    filled-new-array {v0, v2, v4, v5, v6}, [I

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Lefts:[I

    .line 61
    filled-new-array {v1, v3, v4, v5, v6}, [I

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Rights:[I

    .line 62
    filled-new-array {v0, v1, v5, p2, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Tops:[I

    .line 63
    filled-new-array {v2, v3, v6, p2, v4}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Bottoms:[I

    .line 66
    iput v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->LBit:I

    .line 67
    iput v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->RBit:I

    .line 68
    iput v4, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->TBit:I

    const/16 p2, 0x8

    .line 69
    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->BBit:I

    .line 665
    new-array p2, p2, [Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    .line 748
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_tmpRect2:Landroid/graphics/Rect;

    .line 749
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->paint:Landroid/graphics/Paint;

    .line 750
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_paintWaku:Landroid/graphics/Paint;

    .line 102
    invoke-virtual {p0, p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_density:F

    .line 38
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_tmpRect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handle:Landroid/graphics/Bitmap;

    const/16 p2, 0xf

    .line 41
    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleDiameterDP:I

    const/16 p2, 0xc

    .line 42
    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_midHandleDiameterDP:I

    const/4 p2, 0x6

    .line 43
    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleOffsetDP:I

    const/4 p3, 0x0

    .line 51
    iput p3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->LT:I

    const/4 v0, 0x1

    .line 52
    iput v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->RT:I

    const/4 v1, 0x2

    .line 53
    iput v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->LB:I

    const/4 v2, 0x3

    .line 54
    iput v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->RB:I

    const/4 v3, 0x4

    .line 55
    iput v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->LM:I

    const/4 v4, 0x5

    .line 56
    iput v4, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->TM:I

    .line 57
    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->RM:I

    const/4 v5, 0x7

    .line 58
    iput v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->BM:I

    .line 60
    filled-new-array {p3, v1, v3, v4, v5}, [I

    move-result-object v6

    iput-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Lefts:[I

    .line 61
    filled-new-array {v0, v2, v3, v4, v5}, [I

    move-result-object v6

    iput-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Rights:[I

    .line 62
    filled-new-array {p3, v0, v4, p2, v3}, [I

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Tops:[I

    .line 63
    filled-new-array {v1, v2, v5, p2, v3}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->Bottoms:[I

    .line 66
    iput v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->LBit:I

    .line 67
    iput v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->RBit:I

    .line 68
    iput v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->TBit:I

    const/16 p2, 0x8

    .line 69
    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->BBit:I

    .line 665
    new-array p2, p2, [Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    .line 748
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_tmpRect2:Landroid/graphics/Rect;

    .line 749
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->paint:Landroid/graphics/Paint;

    .line 750
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_paintWaku:Landroid/graphics/Paint;

    .line 97
    invoke-virtual {p0, p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private calcMeasuredSize(II)I
    .locals 2

    .line 647
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 648
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return p2

    :cond_0
    return p1

    .line 656
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
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


# virtual methods
.method calcHandleRects()V
    .locals 13

    .line 685
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    return-void

    .line 691
    :cond_0
    iget v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleDiameter:I

    int-to-float v1, v1

    .line 692
    iget v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_midHandleDiameter:I

    int-to-float v2, v2

    .line 695
    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    const/4 v4, 0x0

    aget-object v5, v3, v4

    const/4 v6, 0x2

    aget-object v3, v3, v6

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v1, v7

    iget v9, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleOffset:I

    int-to-float v9, v9

    add-float/2addr v9, v8

    sub-float/2addr v0, v9

    iput v0, v3, Landroid/graphics/RectF;->left:F

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 696
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v3, v0, v4

    aget-object v0, v0, v6

    iget v5, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v1

    iput v5, v0, Landroid/graphics/RectF;->right:F

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 698
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    div-float v7, v2, v7

    iget v9, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleOffset:I

    int-to-float v9, v9

    add-float/2addr v9, v7

    sub-float/2addr v5, v9

    iput v5, v0, Landroid/graphics/RectF;->left:F

    .line 699
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v0, v0, v3

    iget v5, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v2

    iput v5, v0, Landroid/graphics/RectF;->right:F

    .line 701
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    const/4 v5, 0x1

    aget-object v9, v0, v5

    aget-object v0, v0, v4

    iget-object v10, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget v11, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleOffset:I

    int-to-float v11, v11

    add-float/2addr v11, v8

    sub-float/2addr v10, v11

    iput v10, v0, Landroid/graphics/RectF;->top:F

    iput v10, v9, Landroid/graphics/RectF;->top:F

    .line 702
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v9, v0, v5

    aget-object v0, v0, v4

    iget v4, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    iput v4, v9, Landroid/graphics/RectF;->bottom:F

    .line 704
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    const/4 v4, 0x5

    aget-object v0, v0, v4

    iget-object v9, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget v10, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleOffset:I

    int-to-float v10, v10

    add-float/2addr v10, v7

    sub-float/2addr v9, v10

    iput v9, v0, Landroid/graphics/RectF;->top:F

    .line 705
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v0, v0, v4

    iget v9, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v2

    iput v9, v0, Landroid/graphics/RectF;->bottom:F

    .line 707
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v9, v0, v5

    const/4 v10, 0x3

    aget-object v0, v0, v10

    iget-object v11, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    iget v12, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleOffset:I

    int-to-float v12, v12

    add-float/2addr v12, v8

    add-float/2addr v11, v12

    iput v11, v0, Landroid/graphics/RectF;->right:F

    iput v11, v9, Landroid/graphics/RectF;->right:F

    .line 708
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v5, v0, v5

    aget-object v0, v0, v10

    iget v9, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v1

    iput v9, v0, Landroid/graphics/RectF;->left:F

    iput v9, v5, Landroid/graphics/RectF;->left:F

    .line 710
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    const/4 v5, 0x6

    aget-object v0, v0, v5

    iget-object v9, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget v11, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleOffset:I

    int-to-float v11, v11

    add-float/2addr v11, v7

    add-float/2addr v9, v11

    iput v9, v0, Landroid/graphics/RectF;->right:F

    .line 711
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v0, v0, v5

    iget v9, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v2

    iput v9, v0, Landroid/graphics/RectF;->left:F

    .line 714
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v9, v0, v10

    aget-object v0, v0, v6

    iget-object v11, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    iget v12, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleOffset:I

    int-to-float v12, v12

    add-float/2addr v8, v12

    add-float/2addr v11, v8

    iput v11, v0, Landroid/graphics/RectF;->bottom:F

    iput v11, v9, Landroid/graphics/RectF;->bottom:F

    .line 715
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v8, v0, v10

    aget-object v0, v0, v6

    iget v6, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v1

    iput v6, v0, Landroid/graphics/RectF;->top:F

    iput v6, v8, Landroid/graphics/RectF;->top:F

    .line 717
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleOffset:I

    int-to-float v8, v8

    add-float/2addr v8, v7

    add-float/2addr v6, v8

    iput v6, v0, Landroid/graphics/RectF;->bottom:F

    .line 718
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v0, v0, v1

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v2

    iput v6, v0, Landroid/graphics/RectF;->top:F

    .line 721
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v2, v0, v3

    aget-object v0, v0, v5

    iget-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    sub-float/2addr v6, v7

    iput v6, v0, Landroid/graphics/RectF;->top:F

    iput v6, v2, Landroid/graphics/RectF;->top:F

    .line 722
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v2, v0, v3

    aget-object v0, v0, v5

    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    add-float/2addr v3, v7

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 724
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v2, v0, v4

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v3, v7

    iput v3, v0, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 725
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v2, v0, v4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float/2addr v1, v7

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 727
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->setResult()V

    return-void
.end method

.method handleHitTest(FF)I
    .locals 4

    .line 612
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    .line 613
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 614
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 615
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 616
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method init(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 176
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 178
    iput-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_context:Landroid/content/Context;

    .line 179
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40800000    # 4.0f

    iget v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_density:F

    mul-float/2addr v3, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v3, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_blur:Landroid/graphics/BlurMaskFilter;

    const v0, 0x40892492

    .line 180
    iget v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_density:F

    mul-float/2addr v2, v0

    .line 181
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_paintWaku:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_paintWaku:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 183
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_paintWaku:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    iget v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_density:F

    const v4, 0x41092492

    mul-float/2addr v4, v3

    const v5, 0x40b6db6e

    mul-float/2addr v3, v5

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    aput v3, v5, v1

    const/4 v3, 0x0

    invoke-direct {v2, v5, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 184
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_paintWaku:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_paintWaku:Landroid/graphics/Paint;

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineColorARGB()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_density:F

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleDiameter:I

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 191
    iput v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_midHandleDiameter:I

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 192
    iput v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleOffset:I

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->resize_corner:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handle:Landroid/graphics/Bitmap;

    .line 196
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    array-length v0, v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 201
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView$1;-><init>(Lcom/metamoji/un/pdf/UnPDFLocationContentView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_dragGesture:Landroid/view/GestureDetector;

    return-void
.end method

.method initDimension(II)V
    .locals 0

    .line 676
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->layoutSubviews(II)V

    .line 677
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    .line 678
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->calcHandleRects()V

    return-void
.end method

.method invalidate(Landroid/graphics/RectF;)V
    .locals 5

    .line 117
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidate(IIII)V

    return-void
.end method

.method invalidateHandles()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 137
    invoke-virtual {p0, v3}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidate(Landroid/graphics/RectF;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method invalidateHandles([I)V
    .locals 4

    .line 127
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 128
    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    aget-object v2, v3, v2

    invoke-virtual {p0, v2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidate(Landroid/graphics/RectF;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method invalidateMask(Landroid/graphics/RectF;)V
    .locals 7

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 146
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 147
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    .line 148
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 149
    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 150
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 151
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 152
    invoke-virtual {p0, v1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidate(Landroid/graphics/RectF;)V

    .line 154
    :cond_0
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 155
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 156
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 157
    invoke-virtual {p0, v1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidate(Landroid/graphics/RectF;)V

    .line 159
    :cond_1
    iget v4, p1, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 160
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v1, v4, v2, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidate(Landroid/graphics/RectF;)V

    .line 163
    :cond_2
    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    .line 164
    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_maskRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 165
    invoke-virtual {p0, v1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->invalidate(Landroid/graphics/RectF;)V

    :cond_3
    return-void
.end method

.method isSidewaysOrientation(F)Z
    .locals 1

    const/high16 v0, 0x42340000    # 45.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x43070000    # 135.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    const/high16 v0, 0x43610000    # 225.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    const v0, 0x439d8000    # 315.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method layoutPDFView()V
    .locals 6

    .line 963
    new-instance v0, Lcom/metamoji/cm/SizeF;

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PDFLocation;->pdfSize:Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, v1}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/SizeF;)V

    .line 964
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v2, v2, Lcom/metamoji/ui/dialog/PDFLocation;->scale:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 965
    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v2, v2, Lcom/metamoji/ui/dialog/PDFLocation;->scale:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 966
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v2, v2, Lcom/metamoji/ui/dialog/PDFLocation;->offsetX:F

    iget v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_paperScale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 967
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v3, v3, Lcom/metamoji/ui/dialog/PDFLocation;->offsetY:F

    iget v4, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_paperScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 968
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_paperScale:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v1

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    iget v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_paperScale:F

    mul-float/2addr v0, v5

    add-float/2addr v0, v2

    invoke-direct {v3, v1, v2, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 972
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v0, v0, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    int-to-float v0, v0

    .line 974
    iput-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    .line 975
    invoke-virtual {p0, v3, v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->replaceRubberBandRectDirection(Landroid/graphics/RectF;F)V

    .line 977
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_pdfAppearWidth:F

    .line 978
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_pdfAppearHeight:F

    return-void
.end method

.method layoutSubviews(II)V
    .locals 6

    .line 897
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 898
    iget p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_density:F

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float v2, p1, p2

    mul-float/2addr p1, p2

    invoke-virtual {v0, v2, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 901
    new-instance p1, Lcom/metamoji/cm/SizeF;

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget-object p2, p2, Lcom/metamoji/ui/dialog/PDFLocation;->paperSize:Lcom/metamoji/cm/SizeF;

    invoke-direct {p1, p2}, Lcom/metamoji/cm/SizeF;-><init>(Lcom/metamoji/cm/SizeF;)V

    .line 903
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget v2, p1, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr p2, v2

    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_paperScale:F

    .line 904
    iget v2, p1, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr p2, v2

    .line 905
    iget v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_paperScale:F

    iget v3, p1, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v2, v3

    .line 906
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 907
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget v2, p1, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr p2, v2

    iput p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_paperScale:F

    .line 908
    iget v2, p1, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr p2, v2

    .line 909
    iget v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_paperScale:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v2, p1

    .line 912
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v1, v1, p2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    .line 913
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 914
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v3, p2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 915
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float/2addr v0, v2

    div-float/2addr v0, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float p2, v4

    add-float/2addr v3, p2

    .line 913
    invoke-virtual {p1, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 922
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/PDFLocation;->pdfSize:Lcom/metamoji/cm/SizeF;

    .line 923
    new-instance p2, Lcom/metamoji/cm/SizeF;

    iget v0, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_paperScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    iget v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_paperScale:F

    mul-float/2addr p1, v2

    div-float/2addr p1, v1

    invoke-direct {p2, v0, p1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    .line 924
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget p1, p1, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->isSidewaysOrientation(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 925
    new-instance p1, Lcom/metamoji/cm/SizeF;

    iget-object p2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandMinSize:Lcom/metamoji/cm/SizeF;

    .line 928
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->layoutPDFView()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 837
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 847
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 761
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_tmpRect2:Landroid/graphics/Rect;

    .line 762
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 763
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 764
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 766
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    const/16 v2, 0x3c

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 767
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_blur:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 768
    iget v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v2, v0, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 769
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 770
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 771
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 772
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 773
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/PDFLocation;->pdfImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 777
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 778
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 779
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 780
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 781
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v2, v2, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 782
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v2, v2, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v2, v2, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    if-ne v2, v3, :cond_2

    .line 783
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 785
    :cond_2
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/PDFLocation;->pdfImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 786
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 789
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v1, v1, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    const/4 v2, 0x0

    if-ne v1, v4, :cond_3

    .line 790
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_0

    .line 791
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v1, v1, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    const/16 v4, 0xb4

    if-ne v1, v4, :cond_4

    .line 792
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 793
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    goto :goto_0

    .line 794
    :cond_4
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v1, v1, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    if-ne v1, v3, :cond_5

    .line 795
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    goto :goto_0

    :cond_5
    move v1, v2

    .line 797
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v2

    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 798
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget-object v1, v1, Lcom/metamoji/ui/dialog/PDFLocation;->pdfImage:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 799
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 803
    :cond_6
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_tmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 804
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_tmpRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleOffset:I

    neg-int v2, v1

    int-to-float v2, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 806
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_tmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_paintWaku:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 810
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 811
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_tmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handle:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 812
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_tmpRect2:Landroid/graphics/Rect;

    .line 813
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handleRects:[Landroid/graphics/RectF;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    .line 814
    iget-object v5, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_handle:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 744
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    move-object p1, p0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 745
    invoke-virtual {p0, p4, p5}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->initDimension(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 v0, 0xc8

    .line 634
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->calcMeasuredSize(II)I

    move-result p1

    invoke-direct {p0, p2, v0}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->calcMeasuredSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x0

    .line 861
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 862
    instance-of p1, p1, Landroid/graphics/Rect;

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 881
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 882
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 735
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 736
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->initDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->_dragGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method replaceRubberBandRectDirection(Landroid/graphics/RectF;F)V
    .locals 4

    .line 952
    invoke-virtual {p0, p2}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->isSidewaysOrientation(F)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 954
    iget p2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    .line 955
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 956
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v1, p2

    .line 957
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v0

    .line 958
    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method public setParentInfo(Lcom/metamoji/ui/dialog/PDFLocation;)V
    .locals 0

    .line 984
    iput-object p1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    return-void
.end method

.method public setResult()V
    .locals 4

    .line 989
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_rubberBandRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 990
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v1, v1, Lcom/metamoji/ui/dialog/PDFLocation;->orientation:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->replaceRubberBandRectDirection(Landroid/graphics/RectF;F)V

    .line 991
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_paperScale:F

    div-float/2addr v2, v3

    iput v2, v1, Lcom/metamoji/ui/dialog/PDFLocation;->offsetX:F

    .line 992
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_scaledPaperRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_paperScale:F

    div-float/2addr v2, v3

    iput v2, v1, Lcom/metamoji/ui/dialog/PDFLocation;->offsetY:F

    .line 993
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_paperScale:F

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFLocationContentView;->m_ownerViewController:Lcom/metamoji/ui/dialog/PDFLocation;

    iget-object v2, v2, Lcom/metamoji/ui/dialog/PDFLocation;->pdfSize:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v0, v2

    iput v0, v1, Lcom/metamoji/ui/dialog/PDFLocation;->scale:F

    return-void
.end method
