.class Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;
.super Landroid/view/View;
.source "UiColorSelectionView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiColorPaletteView"
.end annotation


# instance fields
.field private border:Landroid/graphics/RectF;

.field private frectWork:Landroid/graphics/RectF;

.field private mColor:Landroid/graphics/Paint;

.field mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

.field private mColumnCount:I

.field private mGColors:[I

.field private mGPos:[F

.field mOwner:Lcom/metamoji/ui/common/UiColorSelectionView2;

.field private mRowCount:I

.field private mSelected:I

.field mSelectedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IPaletteColorSelected;

.field private posWork:Landroid/graphics/Point;

.field private rectWork:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1320
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 1321
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 1305
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColumnCount:I

    const/4 p1, 0x6

    .line 1306
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mRowCount:I

    const/4 p1, -0x1

    .line 1307
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mSelected:I

    .line 1308
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 1309
    filled-new-array {p1, p1, p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mGColors:[I

    const/4 p1, 0x4

    .line 1310
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mGPos:[F

    .line 1411
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    .line 1412
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->border:Landroid/graphics/RectF;

    .line 1613
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->rectWork:Landroid/graphics/Rect;

    .line 1614
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->posWork:Landroid/graphics/Point;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calcMeasuredSize(II)I
    .locals 2

    .line 1394
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1395
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return p2

    :cond_0
    return p1

    .line 1403
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private calcPageHeight()I
    .locals 3

    .line 1369
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    array-length v0, v0

    iget v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColumnCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    .line 1370
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHeight(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v1

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellVertSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v2

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmTopMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public createContent(Lcom/metamoji/ui/common/UiColorSelectionView2;Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;Lcom/metamoji/ui/common/UiColorSelectionView2$IPaletteColorSelected;)V
    .locals 0

    .line 1331
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mOwner:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 1332
    iput-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    .line 1333
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mSelectedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IPaletteColorSelected;

    .line 1334
    invoke-static {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellCountPerLine(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColumnCount:I

    .line 1335
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object p1, p1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    array-length p1, p1

    iget p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColumnCount:I

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    div-int/2addr p1, p2

    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mRowCount:I

    return-void
.end method

.method getCellRect(IILandroid/graphics/Rect;)V
    .locals 3

    .line 1575
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSideMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHorzSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1576
    iget p2, p3, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p3, Landroid/graphics/Rect;->right:I

    .line 1578
    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmTopMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result p2

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHeight(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellVertSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    add-int/2addr p2, v0

    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 1579
    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHeight(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getColorSet()Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;
    .locals 1

    .line 1342
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    return-object v0
.end method

.method getRowHeight()I
    .locals 2

    .line 1602
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHeight(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellVertSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getSelectMarkRect(IILandroid/graphics/Rect;)V
    .locals 0

    .line 1590
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->getCellRect(IILandroid/graphics/Rect;)V

    .line 1591
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHorzSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    sub-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->left:I

    .line 1592
    iget p1, p3, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellVertSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    sub-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 1593
    iget p1, p3, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHorzSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 1594
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellVertSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method getTopMargin()I
    .locals 2

    .line 1610
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmTopMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v1}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellVertSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method index2pos(ILandroid/graphics/Point;)V
    .locals 2

    .line 1554
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mOwner:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iget-boolean v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTransposedMode:Z

    .line 1562
    iget v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColumnCount:I

    if-nez v0, :cond_0

    .line 1555
    div-int v0, p1, v1

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 1556
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColumnCount:I

    rem-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Point;->x:I

    return-void

    .line 1562
    :cond_0
    div-int v0, p1, v1

    iput v0, p2, Landroid/graphics/Point;->y:I

    .line 1563
    iget v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColumnCount:I

    rem-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Point;->x:I

    return-void
.end method

.method inflateRect(FLandroid/graphics/RectF;)V
    .locals 1

    .line 1421
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 1422
    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 1423
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 1424
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method invalidateCell(I)V
    .locals 2

    .line 1623
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->posWork:Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->index2pos(ILandroid/graphics/Point;)V

    .line 1624
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->posWork:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->posWork:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->rectWork:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->getSelectMarkRect(IILandroid/graphics/Rect;)V

    .line 1625
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->rectWork:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public isGradation(I)Z
    .locals 2

    .line 1661
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    array-length v0, v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors2:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    aget v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    aget p1, v0, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1434
    iget-object v1, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1435
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v3, 0x0

    .line 1436
    iget-object v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1447
    iget-object v2, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSideMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1448
    iget-object v2, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmTopMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v3

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1449
    iget-object v2, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->border:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSideMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 1450
    iget-object v2, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->border:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmTopMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    move v3, v2

    .line 1451
    :goto_0
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v5, v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 1452
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 1453
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget-object v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHeight(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 1454
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->border:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 1455
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->border:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHeight(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 1457
    iget v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mSelected:I

    const/4 v6, 0x0

    if-ne v3, v5, :cond_0

    .line 1458
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    const v7, -0xf26042

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1459
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1460
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSelectMarkWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1461
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSelectMarkMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)F

    move-result v5

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSelectMarkWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)F

    move-result v7

    add-float/2addr v5, v7

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    invoke-virtual {v0, v5, v7}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->inflateRect(FLandroid/graphics/RectF;)V

    .line 1462
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSelectMarkMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSelectMarkWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)F

    move-result v8

    add-float/2addr v7, v8

    iget-object v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v9}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSelectMarkMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v9}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSelectMarkWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)F

    move-result v9

    add-float/2addr v8, v9

    iget-object v9, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1464
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSelectMarkMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)F

    move-result v5

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSelectMarkWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)F

    move-result v7

    add-float/2addr v5, v7

    neg-float v5, v5

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    invoke-virtual {v0, v5, v7}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->inflateRect(FLandroid/graphics/RectF;)V

    .line 1465
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1466
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1469
    :cond_0
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    const v7, -0x3e3e3f

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1470
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1471
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1472
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->border:Landroid/graphics/RectF;

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1473
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1474
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1476
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v5, v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors2:[I

    const/high16 v6, -0x1000000

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v5, v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    const/4 v7, 0x2

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v5, v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    aget v5, v5, v3

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v5, v5, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    aget v5, v5, v3

    if-ne v5, v7, :cond_1

    goto :goto_1

    .line 1480
    :cond_1
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mGColors:[I

    iget-object v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v8, v8, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    aget v8, v8, v3

    or-int/2addr v8, v6

    aput v8, v5, v4

    aput v8, v5, v2

    .line 1481
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mGColors:[I

    iget-object v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v8, v8, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors2:[I

    aget v8, v8, v3

    or-int/2addr v6, v8

    const/4 v8, 0x3

    aput v6, v5, v8

    aput v6, v5, v7

    .line 1482
    new-instance v9, Landroid/graphics/LinearGradient;

    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    iget v10, v5, Landroid/graphics/RectF;->left:F

    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    iget v11, v5, Landroid/graphics/RectF;->top:F

    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    iget v12, v5, Landroid/graphics/RectF;->right:F

    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    iget v13, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v14, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mGColors:[I

    iget-object v15, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mGPos:[F

    sget-object v16, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1483
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1484
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1485
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 1477
    :cond_2
    :goto_1
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v7, v7, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    aget v7, v7, v3

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1478
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmRoundRadius(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 1488
    iget v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColumnCount:I

    rem-int v5, v3, v5

    .line 1494
    iget-object v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    if-nez v5, :cond_3

    .line 1489
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v5}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSideMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v5, v5

    iput v5, v6, Landroid/graphics/RectF;->left:F

    .line 1490
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->border:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v6}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSideMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 1491
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->frectWork:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHeight(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v7

    iget-object v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellVertSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 1492
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->border:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHeight(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v7

    iget-object v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellVertSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 1494
    :cond_3
    iget v5, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v7

    iget-object v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHorzSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v5, v7

    iput v5, v6, Landroid/graphics/RectF;->left:F

    .line 1495
    iget-object v5, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->border:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v7}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v7

    iget-object v8, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v8}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHorzSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1350
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1379
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 1380
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$mcalcWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->calcMeasuredSize(II)I

    move-result p1

    .line 1381
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->calcPageHeight()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->calcMeasuredSize(II)I

    move-result p2

    .line 1382
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->setMeasuredDimension(II)V

    .line 1383
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->name:Ljava/lang/String;

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "UiColorPaletteView#onMeasure w=%d, h=%d (%s)"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Touch"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1512
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmSideMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHorzSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellWidth(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v2

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v4}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHorzSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 1513
    iget v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColumnCount:I

    if-gt v4, v0, :cond_0

    goto :goto_0

    .line 1517
    :cond_0
    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v4}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmTopMargin(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v4}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellVertSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr p1, v4

    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellHeight(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v3

    iget-object v4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v4}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmCellVertSpacing(Lcom/metamoji/ui/common/UiColorSelectionView2;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr p1, v3

    float-to-int p1, p1

    if-ltz p1, :cond_2

    .line 1518
    iget v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mRowCount:I

    if-gt v3, p1, :cond_1

    goto :goto_0

    .line 1523
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->pos2index(II)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->selectItem(IZ)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v2

    :cond_3
    return v1
.end method

.method pos2index(II)I
    .locals 2

    .line 1535
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mOwner:Lcom/metamoji/ui/common/UiColorSelectionView2;

    iget-boolean v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTransposedMode:Z

    .line 1541
    iget v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColumnCount:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    if-ltz p1, :cond_0

    .line 1543
    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object p2, p2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    array-length p2, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public selectItem(IZ)Z
    .locals 3

    .line 1634
    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object p2, p2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    array-length p2, p2

    const/4 v0, 0x0

    if-lt p1, p2, :cond_0

    return v0

    .line 1637
    :cond_0
    iget p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mSelected:I

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    if-ltz p2, :cond_2

    .line 1641
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->invalidateCell(I)V

    .line 1643
    :cond_2
    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mSelected:I

    if-ltz p1, :cond_5

    .line 1645
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->invalidateCell(I)V

    .line 1646
    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object p2, p2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors2:[I

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object p2, p2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object p2, p2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    aget p2, p2, p1

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object p2, p2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->type:[I

    aget p2, p2, p1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    goto :goto_0

    .line 1649
    :cond_3
    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mSelectedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IPaletteColorSelected;

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v1, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v2, v2, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors2:[I

    aget v2, v2, p1

    invoke-interface {p2, v0, p1, v1, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$IPaletteColorSelected;->onColorItemSelectionChanged(Ljava/lang/String;III)V

    goto :goto_1

    .line 1647
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mSelectedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IPaletteColorSelected;

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v0, v0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorPaletteView;->mColorSet:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    iget-object v1, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;->colors:[I

    aget v1, v1, p1

    invoke-interface {p2, v0, p1, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$IPaletteColorSelected;->onColorItemSelectionChanged(Ljava/lang/String;II)V

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
