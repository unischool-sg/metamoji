.class public Lcom/metamoji/ui/common/UiShapeSelectionView;
.super Landroid/widget/ScrollView;
.source "UiShapeSelectionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;,
        Lcom/metamoji/ui/common/UiShapeSelectionView$IShapeSelected;
    }
.end annotation


# static fields
.field private static FlowChartListing:[I

.field private static ShapeListing:[I


# instance fields
.field private mContentView:Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;

.field private mContext:Landroid/content/Context;

.field private mLabelPaint:Landroid/graphics/Paint;

.field private mStyle:Lcom/metamoji/nt/share/NtPenStyle;

.field private typeflowchart:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmLabelPaint(Lcom/metamoji/ui/common/UiShapeSelectionView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mLabelPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStyle(Lcom/metamoji/ui/common/UiShapeSelectionView;)Lcom/metamoji/nt/share/NtPenStyle;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettypeflowchart(Lcom/metamoji/ui/common/UiShapeSelectionView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->typeflowchart:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetFlowChartListing()[I
    .locals 1

    sget-object v0, Lcom/metamoji/ui/common/UiShapeSelectionView;->FlowChartListing:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetShapeListing()[I
    .locals 1

    sget-object v0, Lcom/metamoji/ui/common/UiShapeSelectionView;->ShapeListing:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 52
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->RECTANGLE_1:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 53
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v1

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->CIRCLE_1:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 54
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v2

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->TRIANGLE_2:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 55
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v3

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->STAR_1:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 56
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v4

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->RECTANGLE_2:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 57
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v5

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->TRIANGLE_1:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 58
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v6

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->BLOCK_ARROW_2:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 59
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v7

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->BLOCK_ARROW_3:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 60
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v8

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->CIRCLE_2:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 61
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v9

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->BALLOON_1:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 62
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v10

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->BALLOON_2:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 63
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v11

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->LINE_ARROW:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 64
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v12

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->LINE_ARROW:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 65
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v0

    add-int/lit8 v13, v0, 0x1

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->LINE_ARROW:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 66
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v0

    add-int/lit8 v14, v0, 0x2

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->LINE_ARROW:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 67
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v0

    add-int/lit8 v15, v0, 0x3

    filled-new-array/range {v1 .. v15}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/common/UiShapeSelectionView;->ShapeListing:[I

    .line 70
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->FLOWCHART_START_END:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 71
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v1

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->FLOWCHART_PROCESS:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 72
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v2

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->FLOWCHART_DECISION:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 73
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v3

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->FLOWCHART_LOOP_START:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 74
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v4

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->FLOWCHART_LOOP_END:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 75
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v5

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->FLOWCHART_ARROW_1:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 76
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v6

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->FLOWCHART_ARROW_2:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 77
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v7

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->FLOWCHART_ARROW_3:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 78
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v8

    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->FLOWCHART_ARROW_4:Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;

    .line 79
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->intValue()I

    move-result v9

    filled-new-array/range {v1 .. v9}, [I

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/common/UiShapeSelectionView;->FlowChartListing:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/common/UiShapeSelectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 109
    iput-object p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 111
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->typeflowchart:Z

    .line 104
    iput-object p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createContents(Lcom/metamoji/nt/share/NtPenStyle;Z)V
    .locals 2

    .line 121
    iput-boolean p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->typeflowchart:Z

    .line 122
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mLabelPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41300000    # 11.0f

    .line 125
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 126
    iget-object p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mLabelPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    new-instance p2, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {p2, p1}, Lcom/metamoji/nt/share/NtPenStyle;-><init>(Lcom/metamoji/nt/share/NtPenStyle;)V

    iput-object p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 130
    iget-object p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mContentView:Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiShapeSelectionView;->removeAllViews()V

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mContentView:Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;

    .line 134
    :cond_0
    new-instance p1, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;

    iget-object p2, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;-><init>(Lcom/metamoji/ui/common/UiShapeSelectionView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mContentView:Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;

    .line 135
    invoke-virtual {p1, p0}, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->createContent(Lcom/metamoji/ui/common/UiShapeSelectionView;)V

    .line 136
    iget-object p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mContentView:Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->setSaveFromParentEnabled(Z)V

    .line 137
    iget-object p1, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mContentView:Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/common/UiShapeSelectionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSelectedListener(Lcom/metamoji/ui/common/UiShapeSelectionView$IShapeSelected;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/metamoji/ui/common/UiShapeSelectionView;->mContentView:Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiShapeSelectionView$UiShapeListView;->setSelectedListener(Lcom/metamoji/ui/common/UiShapeSelectionView$IShapeSelected;)V

    return-void
.end method
