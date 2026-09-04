.class public Lcom/metamoji/forSchool/ui/UiHeaderListView;
.super Landroid/widget/HorizontalScrollView;
.source "UiHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;,
        Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewSortAction;,
        Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewCellTapAction;,
        Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BORDER_COLOR:I

.field public static final BORDER_WIDTH:I = 0x1

.field public static final COLUMN_ALIGN:Ljava/lang/String; = "align"

.field public static final COLUMN_BOLD:Ljava/lang/String; = "bold"

.field public static final COLUMN_SORTABLE:Ljava/lang/String; = "sortable"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_WIDTH:Ljava/lang/String; = "width"

.field public static final COUPLEDCOLUMN_SPAN:Ljava/lang/String; = "span"

.field public static final COUPLEDCOLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final FONT_SIZE:I = 0xe

.field private static final HEADER_COLOR:I

.field private static final HEADER_COLUMN_HEIGHT:F = 30.0f

.field private static final HEADER_COUPLEDCOLUMN_HEIGHT:F = 30.0f

.field private static final HEADER_FONT_COLOR:I

.field private static final HEADER_FONT_SIZE:I = 0xe

.field public static final OVERLAY_COLOR:I

.field public static final PADDING_X:F = 5.0f

.field public static final ROW_HEIGHT:F = 40.0f


# instance fields
.field m_cellTapAction:Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewCellTapAction;

.field m_columnInfoDicArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_coupledColumnInfoDicArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_dataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field m_headerPanel:Landroid/widget/LinearLayout;

.field m_listDataAdapter:Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;

.field m_listView:Landroid/widget/ListView;

.field m_selectedItemPos:I

.field m_sortAction:Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewSortAction;

.field m_sortColumnIndex:I

.field m_sortIsDesending:Z

.field m_tag:I

.field m_touchPositionX:I

.field m_touchPositionY:I


# direct methods
.method static bridge synthetic -$$Nest$mhandleSortButtonTap(Lcom/metamoji/forSchool/ui/UiHeaderListView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->handleSortButtonTap(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc8

    const/16 v1, 0xff

    .line 57
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->HEADER_COLOR:I

    const/16 v0, 0x3a

    const/16 v2, 0x45

    const/16 v3, 0x32

    .line 58
    invoke-static {v1, v3, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->HEADER_FONT_COLOR:I

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 65
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->OVERLAY_COLOR:I

    const/16 v0, 0x1e

    .line 68
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->BORDER_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 320
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_touchPositionX:I

    .line 96
    iput v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_touchPositionY:I

    .line 97
    iput v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_selectedItemPos:I

    .line 321
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 95
    iput p2, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_touchPositionX:I

    .line 96
    iput p2, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_touchPositionY:I

    .line 97
    iput p2, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_selectedItemPos:I

    .line 325
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 328
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 95
    iput p2, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_touchPositionX:I

    .line 96
    iput p2, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_touchPositionY:I

    .line 97
    iput p2, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_selectedItemPos:I

    .line 329
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private handleSortButtonTap(I)V
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_sortAction:Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewSortAction;

    if-eqz v0, :cond_0

    .line 739
    invoke-interface {v0, p1}, Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewSortAction;->sort(I)V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v0, -0x1

    .line 333
    iput v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_sortColumnIndex:I

    const/4 v1, 0x1

    .line 334
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_sortIsDesending:Z

    .line 336
    iput v1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_tag:I

    .line 339
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 340
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 342
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 345
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    invoke-virtual {p0, v2}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->addView(Landroid/view/View;)V

    .line 350
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_headerPanel:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    .line 351
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 352
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_headerPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listView:Landroid/widget/ListView;

    .line 357
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 360
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 364
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listView:Landroid/widget/ListView;

    new-instance v1, Lcom/metamoji/forSchool/ui/UiHeaderListView$1;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ui/UiHeaderListView$1;-><init>(Lcom/metamoji/forSchool/ui/UiHeaderListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 374
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listView:Landroid/widget/ListView;

    new-instance v1, Lcom/metamoji/forSchool/ui/UiHeaderListView$2;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ui/UiHeaderListView$2;-><init>(Lcom/metamoji/forSchool/ui/UiHeaderListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    new-instance v0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;-><init>(Lcom/metamoji/forSchool/ui/UiHeaderListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;

    .line 411
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method getColumnInfoDicArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_columnInfoDicArray:Ljava/util/List;

    return-object v0
.end method

.method getCoupledColumnInfoDicArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_coupledColumnInfoDicArray:Ljava/util/List;

    return-object v0
.end method

.method getDataArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_dataArray:Ljava/util/List;

    return-object v0
.end method

.method public selectedRowIndex()I
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    return v0
.end method

.method public setCellTapAction(Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewCellTapAction;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_cellTapAction:Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewCellTapAction;

    return-void
.end method

.method public setColumnInfoDicArray(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->setColumnInfoDicArray(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setColumnInfoDicArray(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 448
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_columnInfoDicArray:Ljava/util/List;

    .line 449
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_coupledColumnInfoDicArray:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 454
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_1

    goto :goto_0

    .line 459
    :cond_1
    const-string v0, "span"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    :cond_2
    iget p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_tag:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_tag:I

    .line 475
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->updateHeaderView()V

    return-void
.end method

.method public setDataArray(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 426
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->setDataArray(Ljava/util/List;I)V

    return-void
.end method

.method public setDataArray(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 430
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;->clear()V

    .line 431
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_dataArray:Ljava/util/List;

    .line 432
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listDataAdapter:Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemAdapter;->addAll(Ljava/util/Collection;)V

    if-ltz p2, :cond_0

    .line 435
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_listView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setSortAction(Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewSortAction;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_sortAction:Lcom/metamoji/forSchool/ui/UiHeaderListView$IHeaderListViewSortAction;

    return-void
.end method

.method public setSortColumnIndex(IZ)V
    .locals 0

    .line 482
    iput p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_sortColumnIndex:I

    .line 483
    iput-boolean p2, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_sortIsDesending:Z

    .line 486
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->updateHeaderView()V

    return-void
.end method

.method updateHeaderView()V
    .locals 32

    move-object/from16 v0, p0

    .line 508
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_headerPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 510
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_columnInfoDicArray:Ljava/util/List;

    if-nez v1, :cond_0

    goto/16 :goto_1b

    .line 515
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/UiHeaderListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 516
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_coupledColumnInfoDicArray:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/high16 v5, 0x41f00000    # 30.0f

    if-lez v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-float/2addr v2, v5

    .line 517
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_headerPanel:Landroid/widget/LinearLayout;

    sget v7, Lcom/metamoji/forSchool/ui/UiHeaderListView;->HEADER_COLOR:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 523
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_coupledColumnInfoDicArray:Ljava/util/List;

    if-eqz v6, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 530
    :goto_2
    const-string v9, "span"

    if-eqz v8, :cond_6

    .line 531
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v11, -0x1

    const/4 v12, -0x1

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    if-eqz v13, :cond_4

    .line 536
    invoke-interface {v13, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 538
    :try_start_0
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    :cond_5
    const/4 v13, 0x0

    :goto_4
    add-int/2addr v12, v13

    goto :goto_3

    :cond_6
    const/4 v11, -0x1

    const/4 v12, -0x1

    .line 547
    :cond_7
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_headerPanel:Landroid/widget/LinearLayout;

    .line 548
    iget-object v13, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_columnInfoDicArray:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move/from16 v16, v2

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_21

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, Ljava/util/Map;

    .line 552
    const-string v18, ""

    const-string v10, "width"

    const-string v3, "title"

    const/high16 v21, 0x40a00000    # 5.0f

    if-eqz v8, :cond_14

    if-lez v14, :cond_8

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_e

    .line 562
    :cond_8
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_coupledColumnInfoDicArray:Ljava/util/List;

    add-int/lit8 v14, v15, 0x1

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_9

    .line 567
    iget-object v6, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_headerPanel:Landroid/widget/LinearLayout;

    move/from16 v16, v2

    move/from16 v22, v16

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v31, v11

    move v15, v14

    const/4 v7, 0x1

    const/4 v14, 0x0

    :goto_6
    const/16 v17, 0x0

    goto/16 :goto_f

    .line 572
    :cond_9
    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 574
    :try_start_1
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    :cond_a
    const/4 v15, 0x0

    .line 582
    :goto_7
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 584
    :try_start_2
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    :cond_b
    move-object/from16 v6, v18

    :goto_8
    move/from16 v22, v2

    move v7, v4

    const/16 v16, 0x0

    :goto_9
    add-int v2, v4, v15

    if-gt v7, v2, :cond_d

    .line 590
    iget-object v2, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_columnInfoDicArray:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 591
    invoke-interface {v2, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 593
    :try_start_3
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    add-float v16, v16, v2

    :catch_3
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 599
    :cond_d
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 600
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 601
    iget-object v7, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_headerPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 604
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v7, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 605
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x11

    .line 606
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 607
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 608
    sget v6, Lcom/metamoji/forSchool/ui/UiHeaderListView;->HEADER_FONT_COLOR:I

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    const/4 v6, 0x1

    .line 609
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    move/from16 v23, v8

    const/16 v8, 0xe

    .line 610
    invoke-static {v7, v6, v8, v6, v6}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 611
    invoke-static/range {v21 .. v21}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    invoke-static/range {v21 .. v21}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v24, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v9, v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 613
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 614
    invoke-static/range {v16 .. v16}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v8

    float-to-int v8, v8

    .line 615
    invoke-static/range {v19 .. v19}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x10

    .line 616
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 617
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v4, :cond_e

    const/4 v6, 0x1

    goto :goto_a

    :cond_e
    const/4 v6, 0x0

    :goto_a
    if-lez v11, :cond_f

    if-gt v11, v14, :cond_f

    const/4 v8, 0x1

    goto :goto_b

    :cond_f
    const/4 v8, 0x0

    .line 624
    :goto_b
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move/from16 v16, v6

    .line 625
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    move/from16 v17, v8

    move/from16 v31, v11

    const/4 v8, 0x1

    new-array v11, v8, [Landroid/graphics/drawable/Drawable;

    const/16 v20, 0x0

    aput-object v9, v11, v20

    invoke-direct {v6, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    if-gtz v16, :cond_10

    if-lez v17, :cond_13

    .line 627
    :cond_10
    sget v11, Lcom/metamoji/forSchool/ui/UiHeaderListView;->BORDER_COLOR:I

    invoke-virtual {v9, v8, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    if-lez v16, :cond_11

    const/16 v27, 0x0

    goto :goto_c

    :cond_11
    const/16 v27, -0x1

    :goto_c
    if-lez v17, :cond_12

    const/16 v29, 0x0

    goto :goto_d

    :cond_12
    const/16 v29, -0x1

    :goto_d
    const/16 v30, 0x0

    const/16 v26, 0x0

    const/16 v28, -0x1

    move-object/from16 v25, v6

    .line 628
    invoke-virtual/range {v25 .. v30}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 630
    :cond_13
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 632
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    .line 633
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 634
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v7, v15

    move v15, v14

    move v14, v7

    move/from16 v7, v16

    move/from16 v16, v19

    goto/16 :goto_6

    :cond_14
    :goto_e
    move/from16 v22, v2

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v31, v11

    const/4 v7, 0x0

    .line 641
    :goto_f
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 643
    :try_start_4
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_10

    :catch_4
    :cond_15
    move-object/from16 v2, v18

    .line 648
    :goto_10
    invoke-interface {v5, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 650
    :try_start_5
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_11

    :catch_5
    :cond_16
    const/4 v3, 0x0

    .line 655
    :goto_11
    const-string v8, "sortable"

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 657
    :try_start_6
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_12

    :catch_6
    :cond_17
    const/4 v5, 0x0

    .line 663
    :goto_12
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 664
    rem-int/lit8 v9, v17, 0x2

    if-lez v9, :cond_18

    sget v9, Lcom/metamoji/forSchool/ui/UiHeaderListView;->OVERLAY_COLOR:I

    goto :goto_13

    :cond_18
    const/4 v9, 0x0

    :goto_13
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 665
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    const/4 v10, 0x1

    new-array v11, v10, [Landroid/graphics/drawable/Drawable;

    const/16 v20, 0x0

    aput-object v8, v11, v20

    invoke-direct {v9, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    if-lez v12, :cond_19

    if-gt v12, v4, :cond_19

    const/4 v10, 0x1

    goto :goto_14

    :cond_19
    const/4 v10, 0x0

    :goto_14
    if-gtz v7, :cond_1b

    if-lez v10, :cond_1a

    goto :goto_15

    :cond_1a
    move/from16 v18, v3

    move-object v3, v9

    goto :goto_18

    .line 669
    :cond_1b
    :goto_15
    sget v11, Lcom/metamoji/forSchool/ui/UiHeaderListView;->BORDER_COLOR:I

    move/from16 v18, v3

    const/4 v3, 0x1

    invoke-virtual {v8, v3, v11}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    if-lez v7, :cond_1c

    const/16 v27, 0x0

    goto :goto_16

    :cond_1c
    const/16 v27, -0x1

    :goto_16
    if-lez v10, :cond_1d

    const/16 v29, 0x0

    goto :goto_17

    :cond_1d
    const/16 v29, -0x1

    :goto_17
    const/16 v30, -0x1

    const/16 v26, 0x0

    const/16 v28, -0x1

    move-object/from16 v25, v9

    .line 670
    invoke-virtual/range {v25 .. v30}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move-object/from16 v3, v25

    :goto_18
    if-nez v5, :cond_1e

    .line 676
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v5, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 677
    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    .line 678
    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 679
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 680
    sget v2, Lcom/metamoji/forSchool/ui/UiHeaderListView;->HEADER_FONT_COLOR:I

    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    const/4 v7, 0x1

    .line 681
    invoke-virtual {v5, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    const/16 v8, 0xe

    .line 682
    invoke-static {v5, v7, v8, v7, v7}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 683
    invoke-static/range {v21 .. v21}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static/range {v21 .. v21}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    const/4 v9, 0x0

    invoke-virtual {v5, v2, v9, v7, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 685
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 686
    invoke-static/range {v18 .. v18}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    float-to-int v7, v7

    .line 687
    invoke-static/range {v16 .. v16}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x10

    .line 688
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 689
    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    invoke-virtual {v5, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 692
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto :goto_1a

    .line 697
    :cond_1e
    iget v5, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_sortColumnIndex:I

    if-ne v4, v5, :cond_20

    .line 698
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, v0, Lcom/metamoji/forSchool/ui/UiHeaderListView;->m_sortIsDesending:Z

    if-eqz v5, :cond_1f

    const-string v5, "\u25bc"

    goto :goto_19

    :cond_1f
    const-string v5, "\u25b2"

    :goto_19
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 702
    :cond_20
    new-instance v5, Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {v5, v1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    .line 704
    new-instance v7, Lcom/metamoji/forSchool/ui/UiHeaderListView$3;

    invoke-direct {v7, v0, v4}, Lcom/metamoji/forSchool/ui/UiHeaderListView$3;-><init>(Lcom/metamoji/forSchool/ui/UiHeaderListView;I)V

    invoke-virtual {v5, v7}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    .line 711
    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/AppCompatButton;->setGravity(I)V

    .line 712
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 713
    sget v2, Lcom/metamoji/forSchool/ui/UiHeaderListView;->HEADER_FONT_COLOR:I

    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTextColor(I)V

    const/4 v7, 0x1

    .line 714
    invoke-virtual {v5, v7}, Landroidx/appcompat/widget/AppCompatButton;->setMaxLines(I)V

    const/16 v8, 0xe

    .line 715
    invoke-static {v5, v7, v8, v7, v7}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 716
    invoke-static/range {v21 .. v21}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static/range {v21 .. v21}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-virtual {v5, v2, v9, v8, v9}, Landroidx/appcompat/widget/AppCompatButton;->setPadding(IIII)V

    .line 718
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 719
    invoke-static/range {v18 .. v18}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v8

    float-to-int v8, v8

    .line 720
    invoke-static/range {v16 .. v16}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v2, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x10

    .line 721
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 722
    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/AppCompatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    invoke-virtual {v5, v3}, Landroidx/appcompat/widget/AppCompatButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 725
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1a
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v5, v19

    move/from16 v2, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v11, v31

    goto/16 :goto_5

    :cond_21
    :goto_1b
    return-void
.end method
