.class public Lcom/metamoji/ui/library/item/LibraryPageViewEx;
.super Lcom/metamoji/ui/library/item/LibraryPageView;
.source "LibraryPageViewEx.java"


# static fields
.field static final COMMENT_LABEL_FONT_SIZE:F = 12.0f

.field static final COMMENT_LABEL_MARGIN_TOP:I = 0x8

.field static final TITLE_FONT_SIZE:F = 14.0f


# instance fields
.field private final BORDER_HEIGHT:I

.field private DOWNLOAD_CATEGORY_MARGIN:I

.field m_commentViewArray:[Landroid/view/View;

.field protected m_dlPartViewArrayArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/library/item/LibraryPartView;",
            ">;>;"
        }
    .end annotation
.end field

.field m_dlPartViewGridArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field m_headerViewArray:[Landroid/view/View;

.field m_heldPartDlCategoryNo:I

.field m_heldPartDlIndex:I

.field protected m_pageDicArray:Ljava/util/List;
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

.field protected m_partViewArrayArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/library/item/LibraryPartView;",
            ">;>;"
        }
    .end annotation
.end field

.field m_partViewGridArray:[Landroid/widget/FrameLayout;

.field private m_scrollCount:I

.field protected final scrollPageDown:Ljava/lang/Runnable;

.field protected final scrollPageUp:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$ZjBfRlzmkpLS22Iw9W9RWVZ5uag(Lcom/metamoji/ui/library/item/LibraryPageViewEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$wT30D2-7sdCaoiYa6B3Ei3sYrec(Lcom/metamoji/ui/library/item/LibraryPageViewEx;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->lambda$createContents$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wlIgmje8S89SUnu7RK-L-9YJvUY(Lcom/metamoji/ui/library/item/LibraryPageViewEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->lambda$new$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x32

    .line 40
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->DOWNLOAD_CATEGORY_MARGIN:I

    const/4 p1, 0x2

    .line 41
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->BORDER_HEIGHT:I

    const/4 p1, 0x3

    .line 50
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_headerViewArray:[Landroid/view/View;

    .line 51
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_commentViewArray:[Landroid/view/View;

    .line 52
    new-array p1, p1, [Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewGridArray:[Landroid/widget/FrameLayout;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewGridArray:Ljava/util/List;

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    .line 56
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlIndex:I

    const/4 p1, 0x0

    .line 801
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_scrollCount:I

    .line 805
    new-instance p1, Lcom/metamoji/ui/library/item/LibraryPageViewEx$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ui/library/item/LibraryPageViewEx;)V

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->scrollPageUp:Ljava/lang/Runnable;

    .line 823
    new-instance p1, Lcom/metamoji/ui/library/item/LibraryPageViewEx$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/library/item/LibraryPageViewEx;)V

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->scrollPageDown:Ljava/lang/Runnable;

    return-void
.end method

.method private adjustDlGridHeight(Landroid/view/ViewGroup;I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 1270
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewGridArray:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1271
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->DOWNLOAD_CATEGORY_MARGIN:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1273
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1274
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private countDlParts(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gt v0, p1, :cond_0

    .line 414
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private synthetic lambda$createContents$0(Landroid/content/Context;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_headerViewArray:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 165
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->DOWNLOAD_CATEGORY_MARGIN:I

    .line 167
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->configurePage(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 4

    .line 807
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewGrid()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    .line 808
    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewGridArray:Ljava/util/List;

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->DOWNLOAD_CATEGORY_MARGIN:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginHeight:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 810
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getScrollY()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 811
    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_scrollCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_scrollCount:I

    .line 812
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v1, v1, Lcom/metamoji/cm/Size;->height:I

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_scrollCount:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->height:I

    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_scrollCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    .line 813
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->scrollTo(II)V

    return-void

    .line 816
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->cancelAutoScrollTimer()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 4

    .line 825
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewGrid()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    .line 826
    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlIndex:I

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewGrid()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewGridArray:Ljava/util/List;

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 828
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    .line 829
    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_scrollCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_scrollCount:I

    .line 830
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v1, v1, Lcom/metamoji/cm/Size;->height:I

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_scrollCount:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->height:I

    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_scrollCount:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    .line 831
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getScrollY()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->scrollTo(II)V

    return-void

    .line 834
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->cancelAutoScrollTimer()V

    return-void
.end method

.method private makeBorder(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 329
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xff

    const/16 v1, 0xd2

    .line 330
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p1, 0x0

    .line 331
    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginHeight:I

    invoke-virtual {v0, p1, p1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object v0
.end method

.method private makeCategoryLabel(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .line 384
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 385
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 386
    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginWidth:I

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginHeight:I

    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginWidth:I

    iget v4, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 387
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->makeBorder(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 388
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->makeTitleLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object p2

    .line 391
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->DOWNLOAD_CATEGORY_MARGIN:I

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewGridArray:[Landroid/widget/FrameLayout;

    aget-object p2, p2, p3

    const/4 p3, 0x0

    .line 393
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    .line 395
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 399
    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/16 p1, 0x8

    .line 400
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 401
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p3, 0x800033

    .line 402
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 403
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewGridArray:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {p2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private makeTitleLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 7

    .line 339
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 340
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 342
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x44

    const/16 v4, 0x88

    const/16 v5, 0x33

    .line 343
    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x3a

    const/16 v4, 0x45

    const/16 v5, 0xff

    const/16 v6, 0x32

    .line 344
    invoke-static {v5, v6, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 346
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 347
    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginHeight:I

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 348
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {p2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public appendPartViewWithDic(Landroid/content/Context;Ljava/util/Map;IIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;IIZ)V"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewArrayArray:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 478
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewGridArray:[Landroid/widget/FrameLayout;

    aget-object v1, v1, p3

    if-ltz p4, :cond_0

    .line 480
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 481
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewGridArray:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 484
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->createPartView(Landroid/content/Context;Ljava/util/Map;)Lcom/metamoji/ui/library/item/LibraryPartView;

    move-result-object p1

    .line 485
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    .line 486
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->pointOfIndex(I)Landroid/graphics/PointF;

    move-result-object p2

    .line 487
    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationX(F)V

    .line 488
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationY(F)V

    .line 489
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->width:I

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v3, v3, Lcom/metamoji/cm/Size;->height:I

    invoke-direct {p2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 490
    invoke-virtual {v1, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x0

    .line 491
    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-ltz p4, :cond_1

    .line 493
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewGridArray:[Landroid/widget/FrameLayout;

    aget-object v2, v2, p3

    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 494
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewArrayArray:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 495
    invoke-direct {p0, p4}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->countDlParts(I)I

    move-result p4

    invoke-interface {p2, p4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 496
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->adjustGridHeight(Landroid/view/ViewGroup;I)V

    .line 498
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewGridArray:[Landroid/widget/FrameLayout;

    aget-object p2, p2, p3

    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->adjustDlGridHeight(Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 500
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p5, :cond_2

    .line 506
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->adjustGridHeight(Landroid/view/ViewGroup;I)V

    .line 509
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->updateContentOffsetByPartView(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    :cond_2
    return-void
.end method

.method public appendPartViewWithDic(Landroid/content/Context;Ljava/util/Map;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewArrayArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/lit8 v5, v0, -0x1

    .line 440
    invoke-virtual {p0, v5, v1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->updateCommentView(IZ)V

    .line 442
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_pageDicArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartsArray(I)Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v8, "category"

    const/4 v9, 0x0

    if-le v2, v1, :cond_0

    .line 446
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 447
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 448
    iget-object v2, v2, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v9

    .line 451
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    goto :goto_3

    :cond_2
    :goto_1
    move v6, v9

    .line 453
    :goto_2
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 454
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 455
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 456
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    .line 458
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->appendPartViewWithDic(Landroid/content/Context;Ljava/util/Map;IIZ)V

    return-void

    :cond_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    .line 462
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v3, p1, v5}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->makeCategoryLabel(Landroid/content/Context;Ljava/lang/String;I)V

    .line 463
    iget-object p1, v2, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :goto_3
    iget-object p1, v2, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v6, p1, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->appendPartViewWithDic(Landroid/content/Context;Ljava/util/Map;IIZ)V

    return-void
.end method

.method protected backHeldItemToGrid()V
    .locals 5

    .line 894
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPartView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 899
    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    if-ltz v1, :cond_1

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlIndex:I

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewGridArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewGrid()Landroid/view/ViewGroup;

    move-result-object v1

    :goto_0
    if-ne v0, v1, :cond_2

    :goto_1
    return-void

    .line 904
    :cond_2
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 905
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v3}, Lcom/metamoji/ui/library/item/LibraryPartView;->getTranslationX()F

    move-result v3

    iget-object v4, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v4}, Lcom/metamoji/ui/library/item/LibraryPartView;->getTranslationY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 906
    invoke-static {v2, v0, v1}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v2

    .line 907
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 908
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationX(F)V

    .line 909
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationY(F)V

    .line 910
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 914
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlIndex:I

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    :goto_2
    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    .line 915
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->pointOfIndex(ILandroid/graphics/PointF;)V

    .line 916
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected bringHeldItemToTop()V
    .locals 4

    .line 879
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getTopLayer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 880
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->getTranslationX()F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v3}, Lcom/metamoji/ui/library/item/LibraryPartView;->getTranslationY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 881
    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewGridArray:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewGrid()Landroid/view/ViewGroup;

    move-result-object v2

    .line 882
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v1

    .line 883
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 884
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationX(F)V

    .line 885
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationY(F)V

    .line 886
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected categoryCommentStringId(I)I
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->hasDownload()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 241
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Comment_User:I

    return p1

    .line 243
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Comment_System:I

    return p1

    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 248
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Comment_Add_Download:I

    return p1

    .line 247
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Comment_System:I

    return p1

    .line 246
    :cond_3
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Comment_User:I

    return p1
.end method

.method protected categoryNoFromPageType(Lcom/metamoji/lb/LbConstants$LbPageType;)I
    .locals 5

    .line 577
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->hasDownload()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 578
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    return v1

    :cond_0
    return v4

    :cond_1
    return v2

    .line 584
    :cond_2
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    return v1

    :cond_3
    return v3

    :cond_4
    return v4

    :cond_5
    return v2
.end method

.method protected categoryTitleStringId(I)I
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->hasDownload()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 223
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Title_User:I

    return p1

    .line 225
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Title_System:I

    return p1

    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 230
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Title_Download:I

    return p1

    .line 229
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Title_System:I

    return p1

    .line 228
    :cond_3
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_Title_User:I

    return p1
.end method

.method configurePage(Landroid/content/Context;)V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    move v5, v1

    .line 261
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_pageDicArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 263
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartsArray(I)Ljava/util/List;

    move-result-object v8

    .line 264
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 265
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewGridArray:[Landroid/widget/FrameLayout;

    aget-object v2, v2, v5

    if-eqz v2, :cond_7

    .line 268
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->adjustGridHeight(Landroid/view/ViewGroup;I)V

    .line 272
    const-string v9, ""

    const/4 v2, -0x1

    move v11, v0

    move v10, v2

    move-object v12, v9

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_7

    .line 273
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 274
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 275
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/util/Map;

    .line 276
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 277
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 278
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_0

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 283
    :cond_1
    invoke-virtual {p0, v5}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->isDownloadItem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 284
    const-string v2, "category"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    .line 285
    invoke-static {v13, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v6, v0

    .line 287
    :goto_3
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_3

    .line 288
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 289
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 290
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, v3, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    invoke-interface {v8, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v6, 0x1

    .line 293
    invoke-direct {p0, v2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->countDlParts(I)I

    move-result v2

    invoke-interface {v8, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 294
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->appendPartViewWithDic(Landroid/content/Context;Ljava/util/Map;IIZ)V

    move-object p1, v2

    const/4 v2, 0x1

    goto :goto_4

    :cond_2
    move-object v3, p1

    move-object p1, p0

    add-int/lit8 v6, v6, 0x1

    move-object p1, v3

    goto :goto_3

    :cond_3
    move-object v3, p1

    move-object p1, p0

    move v2, v0

    :goto_4
    if-nez v2, :cond_5

    .line 301
    invoke-direct {p0, v3, v13, v5}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->makeCategoryLabel(Landroid/content/Context;Ljava/lang/String;I)V

    .line 302
    iget-object v6, p1, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move v6, v10

    move-object v12, v13

    goto :goto_5

    :cond_4
    move-object v3, p1

    move-object p1, p0

    move v2, v0

    :cond_5
    move v6, v10

    :goto_5
    if-nez v2, :cond_6

    const/4 v7, 0x0

    move-object v2, p1

    .line 308
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->appendPartViewWithDic(Landroid/content/Context;Ljava/util/Map;IIZ)V

    goto :goto_6

    :cond_6
    move-object v2, p1

    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-object p1, v3

    move v10, v6

    goto/16 :goto_1

    :cond_7
    move-object v2, p0

    move-object v3, p1

    goto :goto_7

    :cond_8
    move-object v2, p0

    move-object v3, p1

    .line 316
    invoke-virtual {p0, v5, v0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->updateCommentView(IZ)V

    :goto_7
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object p1, v3

    goto/16 :goto_0

    :cond_9
    move-object v2, p0

    return-void
.end method

.method public createContents(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryViewDialog;Ljava/util/List;II)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/metamoji/ui/library/item/LibraryViewDialog;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p2

    move/from16 v4, p5

    .line 69
    invoke-virtual {v0, v3, v2, v4}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->init(Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;II)I

    move-object/from16 v3, p3

    .line 72
    iput-object v3, v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_pageDicArray:Ljava/util/List;

    .line 73
    invoke-static {}, Lcom/metamoji/ui/library/LibraryConstants;->getInstance()Lcom/metamoji/ui/library/LibraryConstants;

    move-result-object v3

    iget-object v4, v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_pageDicArray:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/metamoji/ui/library/LibraryConstants;->hasDownload(Ljava/util/List;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->setHasDownload(Z)V

    .line 74
    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->createPartViewArrayArray()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewArrayArray:Ljava/util/List;

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    .line 79
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 80
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x0

    .line 81
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 82
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v2, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v6}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, 0x41000000    # 8.0f

    .line 84
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 85
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    move v9, v5

    .line 88
    :goto_0
    iget-object v10, v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewArrayArray:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 91
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    iget v11, v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginWidth:I

    iget v12, v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginHeight:I

    iget v13, v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginWidth:I

    iget v14, v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginHeight:I

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v7, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x2

    if-lez v9, :cond_0

    .line 105
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->makeBorder(Landroid/content/Context;)Landroid/view/View;

    move-result-object v13

    .line 106
    invoke-virtual {v0, v9}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->isDownloadItem(I)Z

    move-result v14

    if-nez v14, :cond_0

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v7, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    :cond_0
    invoke-virtual {v0, v9}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->categoryTitleStringId(I)I

    move-result v13

    .line 111
    invoke-static {v13}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v13}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->makeTitleLabel(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v13

    .line 112
    invoke-virtual {v0, v9}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->isDownloadItem(I)Z

    move-result v14

    if-nez v14, :cond_1

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v7, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    :cond_1
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 116
    invoke-virtual {v0, v9}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->isDownloadItem(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 117
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->makeBorder(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    :cond_2
    invoke-virtual {v0, v9}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->categoryCommentStringId(I)I

    move-result v11

    const/16 v14, 0x8

    if-eq v11, v7, :cond_4

    .line 123
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setText(I)V

    const v11, -0x777778

    .line 125
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const v11, 0x800003

    .line 126
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v11, 0x41400000    # 12.0f

    .line 127
    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 128
    invoke-virtual {v15, v8, v6, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 129
    invoke-virtual {v0, v9}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->isDownloadItem(I)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x3a

    const/16 v4, 0x45

    const/16 v5, 0xff

    const/16 v7, 0x32

    invoke-static {v5, v7, v11, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    :cond_3
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    :cond_4
    iget-object v4, v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_headerViewArray:[Landroid/view/View;

    aput-object v10, v4, v9

    .line 137
    iget-object v4, v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_commentViewArray:[Landroid/view/View;

    aput-object v13, v4, v9

    .line 141
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 142
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 144
    invoke-virtual {v4, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 145
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v2, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v7, 0x800033

    .line 146
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 147
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {v0, v9}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->isDownloadItem(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 151
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 152
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v10, 0x0

    .line 153
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 154
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    const/4 v11, -0x1

    .line 158
    :goto_1
    iget-object v5, v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewGridArray:[Landroid/widget/FrameLayout;

    aput-object v4, v5, v9

    add-int/lit8 v9, v9, 0x1

    move v4, v7

    move v7, v11

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 163
    :cond_6
    iget-object v2, v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_headerViewArray:[Landroid/view/View;

    const/4 v10, 0x0

    aget-object v2, v2, v10

    new-instance v3, Lcom/metamoji/ui/library/item/LibraryPageViewEx$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/library/item/LibraryPageViewEx;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected createPartViewArrayArray()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/library/item/LibraryPartView;",
            ">;>;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->hasDownload()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 210
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public deletePart(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 12

    .line 1083
    iget-object v0, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 1084
    invoke-virtual {p0, v6}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->categoryNoFromPageType(Lcom/metamoji/lb/LbConstants$LbPageType;)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_0

    .line 1089
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1093
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1095
    const-string v8, "LibraryPageViewEx#deletePart"

    invoke-virtual {v0, v8}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_0
    return-void

    .line 1099
    :cond_2
    iget-object v1, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v2, "entityId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 1100
    iget-object v1, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v2, "title"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1102
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1103
    sget v2, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Msg:I

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1104
    sget v3, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Msg_With_Name:I

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1105
    const-string v5, "%@"

    const-string v10, "%s"

    invoke-virtual {v3, v5, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1106
    sget v5, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Title:I

    .line 1107
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isValidString(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1108
    :goto_1
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Delete:I

    move v3, v5

    .line 1110
    invoke-virtual {p0, v4, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->downloadNo(ILcom/metamoji/ui/library/item/LibraryPartView;)[I

    move-result-object v5

    .line 1113
    iget-object v10, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v10}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v10

    .line 1114
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1115
    invoke-virtual {v10, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1116
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lcom/metamoji/ui/library/item/LibraryPageViewEx$1;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ui/library/item/LibraryPageViewEx$1;-><init>(Lcom/metamoji/ui/library/item/LibraryPageViewEx;Lcom/metamoji/ui/library/item/LibraryPartView;I[ILcom/metamoji/lb/LbConstants$LbPageType;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1134
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v10, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1135
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v10}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1136
    invoke-virtual {p1, v0, v8}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected downloadNo(ILcom/metamoji/ui/library/item/LibraryPartView;)[I
    .locals 6

    const/4 v0, 0x2

    .line 184
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 185
    aput v2, v0, v1

    const/4 v3, 0x1

    .line 186
    aput v2, v0, v3

    .line 187
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->isDownloadItem(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v4, v2

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    add-int/2addr v4, v3

    .line 190
    invoke-interface {v5, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 192
    aput v4, v0, v1

    .line 193
    aput v5, v0, v3

    :cond_1
    return-object v0
.end method

.method findPartView(Ljava/lang/String;)Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;
    .locals 6

    .line 617
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewArrayArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 620
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 621
    iget-object v4, v3, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v5, "entityId"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    new-instance p1, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;-><init>(Lcom/metamoji/ui/library/item/LibraryPageView;)V

    .line 623
    iput v1, p1, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->categoryNo:I

    .line 624
    iput-object v3, p1, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getPartViewArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/library/item/LibraryPartView;",
            ">;"
        }
    .end annotation

    .line 666
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartCategoryNo:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewArray(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPartViewArray(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/library/item/LibraryPartView;",
            ">;"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewArrayArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method protected getPartViewGrid()Landroid/view/ViewGroup;
    .locals 1

    .line 683
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartCategoryNo:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewGrid(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected getPartViewGrid(I)Landroid/view/ViewGroup;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewGridArray:[Landroid/widget/FrameLayout;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected getPartsArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 674
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartCategoryNo:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartsArray(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPartsArray(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_pageDicArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 653
    const-string v0, "partsArray"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method protected getTotalCount()I
    .locals 3

    .line 693
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewArrayArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 694
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected hitPartIndex(Landroid/graphics/PointF;)Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;
    .locals 9

    .line 1216
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;-><init>(Lcom/metamoji/ui/library/item/LibraryPageView;)V

    const/4 v1, 0x0

    move v2, v1

    .line 1220
    :goto_0
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewArrayArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1222
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewGrid(I)Landroid/view/ViewGroup;

    move-result-object v3

    .line 1223
    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1226
    :cond_0
    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    goto/16 :goto_5

    .line 1230
    :cond_1
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->isDownloadItem(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v1

    .line 1231
    :goto_1
    iget-object v5, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1232
    iget-object v5, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewGridArray:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1233
    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    goto :goto_2

    .line 1236
    :cond_2
    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    move-object v3, v5

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    .line 1245
    :goto_3
    invoke-static {p1, p0, v3}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    if-ltz v4, :cond_5

    .line 1246
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewArray(I)Ljava/util/List;

    move-result-object v3

    .line 1247
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->hitPartIndexInGrid(Landroid/graphics/PointF;I)I

    move-result p1

    if-ltz p1, :cond_6

    .line 1249
    iput v2, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->categoryNo:I

    .line 1250
    iput p1, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->index:I

    .line 1251
    iget p1, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->index:I

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/library/item/LibraryPartView;

    iput-object p1, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 1252
    iget-object p1, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {p0, v2, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->downloadNo(ILcom/metamoji/ui/library/item/LibraryPartView;)[I

    move-result-object p1

    .line 1253
    aget v1, p1, v1

    iput v1, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->dlCategoryNo:I

    const/4 v1, 0x1

    .line 1254
    aget p1, p1, v1

    iput p1, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->dlIndex:I

    :cond_6
    :goto_5
    return-object v0
.end method

.method protected isDownloadItem(I)Z
    .locals 3

    .line 172
    invoke-static {}, Lcom/metamoji/ui/library/LibraryConstants;->getInstance()Lcom/metamoji/ui/library/LibraryConstants;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/library/LibraryConstants;->showDownloadStyle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->hasDownload()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewArrayArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method protected moveToIndex(Landroid/graphics/PointF;)I
    .locals 4

    .line 844
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewGrid()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    int-to-float v0, v0

    .line 845
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewArray()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 846
    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    if-ltz v2, :cond_0

    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlIndex:I

    if-ltz v3, :cond_0

    .line 847
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewGridArray:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 848
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 852
    :cond_0
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginHeight:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 855
    :cond_1
    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginHeight:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v0, v0, Lcom/metamoji/cm/Size;->height:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 858
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginWidth:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 861
    :cond_2
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_marginWidth:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->width:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 862
    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_perLine:I

    if-lt p1, v2, :cond_3

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 866
    :cond_3
    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_perLine:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p1

    if-lt v0, v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_4
    return v0
.end method

.method moveUnheldPartsAwayFromPointOfView(Lcom/metamoji/ui/library/item/LibraryPartView;Landroid/graphics/PointF;)V
    .locals 11

    .line 926
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->moveToIndex(Landroid/graphics/PointF;)I

    move-result p2

    .line 929
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    if-eq p2, v0, :cond_9

    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlIndex:I

    if-ne p2, v0, :cond_0

    goto/16 :goto_5

    .line 933
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 936
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewArray()Ljava/util/List;

    move-result-object v1

    .line 937
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartsArray()Ljava/util/List;

    move-result-object v2

    .line 938
    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    .line 939
    iget v4, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlIndex:I

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 940
    iget v5, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlIndex:I

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    :goto_1
    if-eqz v4, :cond_3

    .line 941
    iget-object v6, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    iget v7, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    goto :goto_2

    :cond_3
    move-object v6, v1

    :goto_2
    if-ge p2, v5, :cond_5

    :goto_3
    if-le v5, p2, :cond_7

    add-int/lit8 v7, v5, -0x1

    .line 947
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 948
    invoke-virtual {p0, v5, v0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->pointOfIndex(ILandroid/graphics/PointF;)V

    .line 949
    invoke-virtual {v7}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget v9, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget v9, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 952
    invoke-interface {v6, v5, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 953
    iget-object v8, v7, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v2, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_4

    .line 954
    invoke-interface {v1, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_5
    if-ge v5, p2, :cond_7

    :goto_4
    if-ge v5, p2, :cond_7

    add-int/lit8 v7, v5, 0x1

    .line 964
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 965
    invoke-virtual {p0, v5, v0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->pointOfIndex(ILandroid/graphics/PointF;)V

    .line 966
    invoke-virtual {v8}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget v10, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    iget v10, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 969
    invoke-interface {v6, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 970
    iget-object v5, v8, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v2, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 971
    invoke-interface {v1, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    move v5, v7

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    .line 980
    iput p2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlIndex:I

    .line 981
    invoke-interface {v6, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 983
    :cond_8
    iput v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    .line 986
    iget p2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    invoke-interface {v1, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 987
    iget p2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v2, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_5
    return-void
.end method

.method protected onPointerMoved(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 765
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_isArrangementMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 770
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    if-gez v0, :cond_1

    return v1

    .line 774
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getContentsPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 777
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getTopLayer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    .line 778
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_touchPointInPart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationX(F)V

    .line 779
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_touchPointInPart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationY(F)V

    .line 782
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->moveUnheldPartsAwayFromPointOfView(Lcom/metamoji/ui/library/item/LibraryPartView;Landroid/graphics/PointF;)V

    .line 785
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getScrollY()I

    move-result v0

    .line 786
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 787
    iget v2, p1, Landroid/graphics/PointF;->y:F

    sget v3, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_autoScrollArea:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    .line 788
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->scrollPageUp:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->setAutoScrollTimer(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 789
    :cond_2
    iget p1, p1, Landroid/graphics/PointF;->y:F

    sget v0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_autoScrollArea:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 790
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->scrollPageDown:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->setAutoScrollTimer(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 793
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->cancelAutoScrollTimer()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onPointerPressed(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 705
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_isArrangementMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 710
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getContentsPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 711
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->hitPartIndex(Landroid/graphics/PointF;)Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;

    move-result-object v0

    .line 714
    iget v2, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->index:I

    if-gez v2, :cond_1

    return v1

    .line 722
    :cond_1
    iget-object v2, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-static {p1, p0, v2}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v2

    .line 723
    iget-object v3, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->containsThumbnailPoint(Landroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 727
    :cond_2
    iget v2, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->categoryNo:I

    iput v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartCategoryNo:I

    .line 728
    iget v2, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->index:I

    iput v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    .line 729
    iget-object v2, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iput-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 730
    iget v2, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->dlCategoryNo:I

    iput v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    .line 731
    iget v0, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->dlIndex:I

    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlIndex:I

    .line 732
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    const/4 v2, 0x1

    if-lez v0, :cond_3

    .line 734
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    sub-int/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->countDlParts(I)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    .line 738
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-static {p1, p0, v0}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_touchPointInPart:Landroid/graphics/PointF;

    .line 741
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {p1, v2}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->lockScroll(Z)V

    .line 744
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->bringHeldItemToTop()V

    .line 747
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryPartView;->appearDraggable()V

    .line 749
    iget p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    if-ltz p1, :cond_4

    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlIndex:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewArray()Ljava/util/List;

    move-result-object p1

    .line 750
    :goto_0
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlCategoryNo:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartDlIndex:I

    if-ltz v0, :cond_5

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    .line 751
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    if-eq v1, v0, :cond_6

    .line 753
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 754
    invoke-virtual {v3}, Lcom/metamoji/ui/library/item/LibraryPartView;->appearSmall()V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return v2
.end method

.method public pageType()Lcom/metamoji/lb/LbConstants$LbPageType;
    .locals 1

    .line 999
    sget-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_EXTENSION:Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object v0
.end method

.method protected removePartView(Lcom/metamoji/ui/library/item/LibraryPartView;III)V
    .locals 8

    .line 1146
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewArray(I)Ljava/util/List;

    move-result-object v0

    .line 1147
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartViewGrid(I)Landroid/view/ViewGroup;

    move-result-object v1

    .line 1151
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1152
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1153
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_0

    .line 1154
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    if-ltz p3, :cond_1

    if-ltz p4, :cond_1

    .line 1157
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewGridArray:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1158
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1159
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 1160
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1164
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->isDownloadItem(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    goto :goto_1

    :cond_3
    move-object v5, v0

    .line 1165
    :goto_1
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->isDownloadItem(I)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move p4, v2

    .line 1168
    :goto_2
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    :goto_3
    add-int/lit8 p4, p4, 0x1

    .line 1169
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge p4, v6, :cond_5

    .line 1171
    invoke-interface {v5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ui/library/item/LibraryPartView;

    add-int/lit8 v7, p4, -0x1

    .line 1172
    invoke-virtual {p0, v7, v2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->pointOfIndex(ILandroid/graphics/PointF;)V

    .line 1173
    invoke-virtual {v6}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_3

    .line 1177
    :cond_5
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->getPartsArray(I)Ljava/util/List;

    move-result-object p4

    .line 1178
    iget-object v2, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {p4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1179
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1180
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->isDownloadItem(I)Z

    move-result p4

    const/4 v2, 0x0

    if-eqz p4, :cond_7

    .line 1181
    invoke-interface {v5, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1182
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewGridArray:[Landroid/widget/FrameLayout;

    aget-object p1, p1, p2

    .line 1183
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    .line 1184
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_6

    mul-int/lit8 p4, p3, 0x2

    .line 1186
    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1187
    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1188
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewGridArray:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1189
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1191
    :cond_6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->adjustGridHeight(Landroid/view/ViewGroup;I)V

    .line 1192
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_dlPartViewArrayArray:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->adjustDlGridHeight(Landroid/view/ViewGroup;I)V

    goto :goto_4

    .line 1196
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->adjustGridHeight(Landroid/view/ViewGroup;I)V

    .line 1200
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1201
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewGridArray:[Landroid/widget/FrameLayout;

    aget-object p1, p1, p2

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1202
    invoke-virtual {p0, p2, v2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->updateCommentView(IZ)V

    :cond_8
    return-void
.end method

.method public removePartViewWithEntityId(Ljava/lang/String;)V
    .locals 4

    .line 535
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->findPartView(Ljava/lang/String;)Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 537
    iget v0, p1, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->categoryNo:I

    iget-object v1, p1, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->downloadNo(ILcom/metamoji/ui/library/item/LibraryPartView;)[I

    move-result-object v0

    .line 538
    iget-object v1, p1, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget p1, p1, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->categoryNo:I

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->removePartView(Lcom/metamoji/ui/library/item/LibraryPartView;III)V

    :cond_0
    return-void
.end method

.method public startArrangementMode()Z
    .locals 7

    .line 1015
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1019
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_isArrangementMode:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewArrayArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1026
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ui/library/item/LibraryPartView;

    add-int/lit8 v6, v4, 0x1

    .line 1027
    invoke-virtual {v5, v4}, Lcom/metamoji/ui/library/item/LibraryPartView;->startArrangementMode(I)V

    move v4, v6

    goto :goto_0

    .line 1032
    :cond_3
    iput-boolean v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_isArrangementMode:Z

    const/4 v0, -0x1

    .line 1033
    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    const/4 v0, 0x0

    .line 1034
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    return v2
.end method

.method public stopArrangementMode()V
    .locals 3

    .line 1045
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_isArrangementMode:Z

    if-nez v0, :cond_0

    return-void

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->cancelAutoScrollTimer()V

    .line 1053
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->backHeldItemToGrid()V

    .line 1056
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewArrayArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1057
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 1058
    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->stopArrangementMode()V

    goto :goto_0

    .line 1063
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->lockScroll(Z)V

    const/4 v0, -0x1

    .line 1066
    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartIndex:I

    const/4 v0, 0x0

    .line 1067
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 1068
    iput-boolean v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_isArrangementMode:Z

    return-void
.end method

.method updateCommentLabel(I)V
    .locals 0

    return-void
.end method

.method updateCommentView(IZ)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_commentViewArray:[Landroid/view/View;

    aget-object p1, v0, p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 426
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method updateContentOffsetByEntityId(Ljava/lang/String;)V
    .locals 0

    .line 601
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->findPartView(Ljava/lang/String;)Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 603
    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->updateContentOffsetByPartView(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    :cond_0
    return-void
.end method

.method public updatePartViewWithDic(ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 550
    const-string/jumbo v0, "type"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    .line 551
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->categoryNoFromPageType(Lcom/metamoji/lb/LbConstants$LbPageType;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewArrayArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 558
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->m_partViewGridArray:[Landroid/widget/FrameLayout;

    aget-object v0, v2, v0

    .line 559
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 560
    iput-object p2, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    .line 563
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->adjustGridHeight(Landroid/view/ViewGroup;I)V

    .line 566
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageViewEx;->updateContentOffsetByPartView(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    .line 569
    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryPartView;->invalidate()V

    return-void
.end method
