.class public Lcom/metamoji/ui/library/item/LibraryStorePageView;
.super Lcom/metamoji/ui/library/item/LibraryPageView;
.source "LibraryStorePageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;,
        Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;,
        Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;
    }
.end annotation


# static fields
.field static final COMMENT_MARGIN_TOP:I = 0xa

.field static final FONT_SIZE_CART:F = 14.0f

.field static final FONT_SIZE_COMMENT:F = 14.0f

.field static final FONT_SIZE_PAGETITLE:F = 18.0f

.field static final FONT_SIZE_TITLE:F = 16.0f

.field static final PRODUCT_MARGIN:I = 0xf

.field static final TEXT_THICKNESS:I = 0x5

.field public static final THUMBNAIL_HEIGHT:I = 0x64

.field static final THUMBNAIL_HORIZONTAL_MAX:I = 0x5

.field static final THUMBNAIL_HORIZONTAL_MAX_PORTRAIT:I = 0x3

.field static final THUMBNAIL_MARGIN_TOP:I = 0xf

.field public static final THUMBNAIL_WIDTH:I = 0x64

.field static final TITLE_MARGIN_TOP:I = 0xa


# instance fields
.field m_connGetAllPages:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;

.field m_connGetPage:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;

.field m_connLogin:Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;

.field m_priceCtrlDic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$monDownloadBtnClick(Lcom/metamoji/ui/library/item/LibraryStorePageView;Lcom/metamoji/ui/common/UiButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->onDownloadBtnClick(Lcom/metamoji/ui/common/UiButton;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPurchaseBtnClick(Lcom/metamoji/ui/library/item/LibraryStorePageView;Lcom/metamoji/ui/common/UiButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->onPurchaseBtnClick(Lcom/metamoji/ui/common/UiButton;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTrialBtnClick(Lcom/metamoji/ui/library/item/LibraryStorePageView;Lcom/metamoji/ui/common/UiButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->onTrialBtnClick(Lcom/metamoji/ui/common/UiButton;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private onDownloadBtnClick(Lcom/metamoji/ui/common/UiButton;)V
    .locals 3

    .line 991
    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 993
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    const-string v1, "g_productsArray"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 995
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 996
    const-string v0, "p_isFree"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 997
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    check-cast v1, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/metamoji/lb/LbConstants$DownloadMode;->Download:Lcom/metamoji/lb/LbConstants$DownloadMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/metamoji/lb/LbConstants$DownloadMode;->AlreadyPurchased:Lcom/metamoji/lb/LbConstants$DownloadMode;

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, p0, v2}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->downloadProduct(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Lcom/metamoji/ui/library/item/LibraryStorePageView;Ljava/lang/String;)V

    return-void
.end method

.method private onPurchaseBtnClick(Lcom/metamoji/ui/common/UiButton;)V
    .locals 3

    .line 1022
    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1024
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1025
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    const-string v2, "g_productsArray"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1026
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 1028
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    check-cast v1, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    sget-object v2, Lcom/metamoji/lb/LbConstants$DownloadMode;->Purchase:Lcom/metamoji/lb/LbConstants$DownloadMode;

    invoke-interface {v1, p1, v2, p0, v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->downloadProduct(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Lcom/metamoji/ui/library/item/LibraryStorePageView;Ljava/lang/String;)V

    return-void
.end method

.method private onTrialBtnClick(Lcom/metamoji/ui/common/UiButton;)V
    .locals 3

    .line 1006
    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1008
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    const-string v1, "g_productsArray"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1010
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 1011
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    check-cast v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    sget-object v1, Lcom/metamoji/lb/LbConstants$DownloadMode;->Trial:Lcom/metamoji/lb/LbConstants$DownloadMode;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p0, v2}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->downloadProduct(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Lcom/metamoji/ui/library/item/LibraryStorePageView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected canTrial()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method configureIndexDataCompletedPage()V
    .locals 9

    const/high16 v0, 0x41000000    # 8.0f

    .line 465
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 466
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 468
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v2}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 471
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 472
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 473
    invoke-virtual {v3, v1, v0, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 474
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    check-cast v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->getStorePageDataArray()Ljava/util/List;

    move-result-object v0

    .line 478
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_0

    const/16 v4, 0xd

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    .line 486
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 487
    new-instance v8, Lcom/metamoji/ui/common/UiButton;

    invoke-direct {v8, v4, v2}, Lcom/metamoji/ui/common/UiButton;-><init>(ILandroid/content/Context;)V

    .line 488
    new-instance v4, Lcom/metamoji/ui/library/item/LibraryStorePageView$2;

    invoke-direct {v4, p0, v8}, Lcom/metamoji/ui/library/item/LibraryStorePageView$2;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;Lcom/metamoji/ui/common/UiButton;)V

    invoke-virtual {v8, v4}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    const-string v4, "g_pageTitle"

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 495
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/metamoji/ui/common/UiButton;->setTag(Ljava/lang/Object;)V

    .line 496
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v4, v1, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 497
    invoke-virtual {v3, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v5, -0x2

    if-ne v6, v4, :cond_1

    const/16 v4, 0xf

    goto :goto_1

    :cond_1
    const/16 v4, 0xe

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method configureIndexDataRequestingPage()V
    .locals 1

    .line 347
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Store_Index_Loading:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->createMessagePanel(I)V

    .line 350
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->getAllPagesClass()Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connGetAllPages:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;

    .line 351
    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->requestAsync()V

    return-void
.end method

.method configurePage()V
    .locals 2

    const/4 v0, 0x0

    .line 182
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePage(Ljava/lang/String;)V

    return-void
.end method

.method configurePage(Landroid/content/Context;)V
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePage()V

    return-void
.end method

.method configurePage(Ljava/lang/String;)V
    .locals 3

    .line 187
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->removeAllViews()V

    .line 190
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$6;->$SwitchMap$com$metamoji$lb$LbConstants$StorePageStatus:[I

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    const-string v2, "g_pageStatus"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-virtual {v1}, Lcom/metamoji/lb/LbConstants$StorePageStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configureRequestFailedPage(Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configureRequestFailedPage(Ljava/lang/String;Z)V

    return-void

    .line 217
    :pswitch_1
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePageDataNothingPage()V

    return-void

    .line 213
    :pswitch_2
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePageDataCompletedPage()V

    return-void

    .line 209
    :pswitch_3
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePageDataRequestingPage()V

    return-void

    .line 205
    :pswitch_4
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configureIndexDataCompletedPage()V

    return-void

    .line 201
    :pswitch_5
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configureIndexDataRequestingPage()V

    return-void

    .line 197
    :pswitch_6
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configureServerMaintenanceCheckingPage()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method configurePageDataCompletedPage()V
    .locals 21

    move-object/from16 v0, p0

    .line 560
    iget-object v1, v0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v1}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    .line 562
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 563
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 566
    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->getHorizontalMaxCount()I

    move-result v4

    .line 569
    iget-object v5, v0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v5, v5, Lcom/metamoji/cm/Size;->width:I

    const/16 v6, 0xa

    div-int/2addr v5, v6

    .line 572
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    .line 573
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 574
    invoke-virtual {v7, v3, v2, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 575
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v3}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    iget-object v3, v0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    const-string v10, "g_pageTitle"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v10, 0x45

    const/16 v11, 0x3a

    const/16 v12, 0x32

    const/16 v14, 0xff

    const/16 v15, 0xf

    const/4 v13, -0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 579
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_0

    .line 580
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 581
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    invoke-static {v14, v12, v11, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41900000    # 18.0f

    .line 585
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 586
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 587
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 588
    invoke-virtual {v9, v6, v6, v6, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 589
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v3, v8, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v9, 0xd2

    .line 597
    invoke-static {v14, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 598
    invoke-virtual {v3, v6, v6, v6, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 599
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, 0x2

    invoke-direct {v9, v8, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_priceCtrlDic:Ljava/util/HashMap;

    .line 607
    iget-object v3, v0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    const-string v8, "g_productsArray"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_7

    .line 609
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v8, v6

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 611
    check-cast v9, Ljava/util/Map;

    if-lez v8, :cond_1

    .line 620
    new-instance v13, Landroid/view/View;

    invoke-direct {v13, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v10, 0xd2

    .line 621
    invoke-static {v14, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v13, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 622
    invoke-virtual {v13, v6, v15, v6, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 624
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, 0x2

    const/4 v15, -0x1

    invoke-direct {v11, v15, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    :cond_1
    const-string v10, "p_title"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x3

    if-eqz v10, :cond_2

    .line 629
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 630
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 631
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0x45

    const/16 v15, 0x3a

    .line 633
    invoke-static {v14, v12, v15, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41800000    # 16.0f

    .line 634
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 635
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v10, 0x1

    invoke-virtual {v13, v6, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 636
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x0

    const/16 v10, 0xa

    .line 637
    invoke-virtual {v13, v6, v10, v6, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 638
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v14, -0x1

    invoke-direct {v10, v14, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v13, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    const/4 v12, -0x2

    const/4 v14, -0x1

    const/16 v15, 0x3a

    .line 642
    :goto_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 645
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 646
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 647
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v14, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    new-instance v12, Landroid/view/View;

    invoke-direct {v12, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 651
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x1

    invoke-direct {v13, v6, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    sget-object v6, Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;->Download:Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;

    invoke-virtual {v0, v1, v6, v8}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->createBtn(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 653
    sget v6, Lcom/metamoji/noteanytime/R$string;->Library_Store_Free:I

    .line 656
    const-string v10, "p_comment"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/high16 v12, 0x41600000    # 14.0f

    if-eqz v10, :cond_3

    .line 657
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_3

    .line 658
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 659
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v10, 0xcc

    const/4 v14, 0x0

    .line 660
    invoke-static {v10, v14, v14, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 661
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 662
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v15, 0x1

    invoke-virtual {v13, v10, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 663
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v10, 0xf

    .line 664
    invoke-virtual {v13, v14, v14, v14, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 665
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v15, -0x2

    invoke-direct {v11, v10, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    const/4 v10, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x2

    .line 669
    :goto_2
    new-instance v11, Landroid/widget/GridLayout;

    invoke-direct {v11, v1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 670
    invoke-virtual {v11, v4}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 671
    invoke-virtual {v11, v14, v2, v14, v2}, Landroid/widget/GridLayout;->setPadding(IIII)V

    .line 672
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v13, v10, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v11, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    const-string v13, "p_partsArray"

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 677
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v13, v14

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 679
    check-cast v15, Ljava/util/Map;

    .line 681
    iget-object v10, v0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v10, v10, Lcom/metamoji/cm/Size;->width:I

    const/16 v16, 0x2

    mul-int/lit8 v17, v5, 0x2

    sub-int v10, v10, v17

    .line 686
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    .line 687
    invoke-virtual {v14, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 688
    new-instance v12, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v12}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    move/from16 v19, v2

    const/4 v2, -0x2

    .line 689
    iput v2, v12, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 690
    iput v2, v12, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 691
    invoke-virtual {v14, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    invoke-virtual {v11, v14, v12}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    const-string v2, "imagePath"

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 696
    invoke-virtual {v0, v1, v10, v2}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->createImageView(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-eqz v6, :cond_4

    .line 699
    sget-object v12, Lcom/metamoji/lb/LbConstants$DownloadMode;->Download:Lcom/metamoji/lb/LbConstants$DownloadMode;

    goto :goto_4

    :cond_4
    sget-object v12, Lcom/metamoji/lb/LbConstants$DownloadMode;->Purchase:Lcom/metamoji/lb/LbConstants$DownloadMode;

    :goto_4
    move-object/from16 v20, v3

    .line 700
    new-instance v3, Lcom/metamoji/ui/library/item/LibraryStorePageView$3;

    invoke-direct {v3, v0, v8, v13, v12}, Lcom/metamoji/ui/library/item/LibraryStorePageView$3;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;IILcom/metamoji/lb/LbConstants$DownloadMode;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 707
    iget-object v12, v0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v12, v12, Lcom/metamoji/cm/Size;->width:I

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 708
    iget-object v12, v0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v12, v12, Lcom/metamoji/cm/Size;->width:I

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 709
    invoke-virtual {v14, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 712
    const-string/jumbo v2, "title"

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 713
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 714
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 715
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0xbbbbbc

    .line 716
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 717
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v12, 0x31

    .line 719
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 720
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v12, v10, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x1

    .line 721
    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 722
    invoke-virtual {v14, v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_5
    const/high16 v2, 0x41600000    # 14.0f

    const/4 v10, 0x1

    const/4 v15, -0x2

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move v12, v2

    move/from16 v2, v19

    move-object/from16 v3, v20

    const/4 v10, -0x1

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_6
    move/from16 v19, v2

    move-object/from16 v20, v3

    const/4 v10, 0x1

    const/4 v15, -0x2

    const/16 v16, 0x2

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    const/16 v10, 0x45

    const/16 v11, 0x3a

    const/16 v12, 0x32

    const/16 v14, 0xff

    const/16 v15, 0xf

    goto/16 :goto_0

    .line 731
    :cond_7
    iget-object v1, v0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_priceCtrlDic:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 732
    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->getProductPrice()V

    :cond_8
    return-void
.end method

.method configurePageDataNothingPage()V
    .locals 9

    .line 834
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 835
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 838
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 839
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 840
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 841
    invoke-virtual {p0, v2, v3}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 845
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v6, 0x5

    .line 846
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 847
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 851
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Store_Page_Nothing:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x3a

    const/16 v1, 0x45

    const/16 v6, 0xff

    const/16 v8, 0x32

    .line 852
    invoke-static {v6, v8, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 854
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 855
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 856
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 857
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method configurePageDataRequestingPage()V
    .locals 1

    .line 514
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Store_Page_Loading:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->createMessagePanel(I)V

    .line 517
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V

    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connGetPage:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;

    .line 518
    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->requestAsync()V

    return-void
.end method

.method configureRequestFailedPage(Ljava/lang/String;Z)V
    .locals 9

    .line 868
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 869
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 872
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 873
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    .line 874
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 875
    invoke-virtual {p0, v2, v3}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 878
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 879
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v6, 0x5

    .line 880
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 881
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 896
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 897
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 898
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x777778

    .line 899
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 900
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 901
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 902
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 903
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 904
    invoke-virtual {v3, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-nez p2, :cond_1

    .line 909
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 910
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 911
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 914
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 915
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, p2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 919
    new-instance v3, Lcom/metamoji/ui/library/item/LibraryStorePageView$5;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView$5;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 924
    sget v3, Lcom/metamoji/noteanytime/R$string;->Library_Store_Access_RetryBtn:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 925
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 926
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 927
    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 931
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method configureServerMaintenanceCheckingPage()V
    .locals 4

    .line 294
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Store_Connecting:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->createMessagePanel(I)V

    .line 297
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 300
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryStorePageView$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView$1;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V

    const/4 v1, 0x0

    .line 330
    :try_start_0
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 333
    :catch_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    const-string v2, "g_pageStatus"

    sget-object v3, Lcom/metamoji/lb/LbConstants$StorePageStatus;->SERVER_MAINTENANCE:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePage()V

    .line 336
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    return-void
.end method

.method protected containProduct(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 957
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->searchItemByProductId(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method createBtn(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 746
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->createBtn(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;ILjava/util/Map;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method createBtn(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;ILjava/util/Map;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 752
    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 761
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Store_PurchaseBtn:I

    const/4 v1, 0x7

    goto :goto_0

    .line 754
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Store_DownloadBtn:I

    const/4 v1, 0x0

    .line 767
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 768
    new-instance v3, Lcom/metamoji/ui/common/UiButton;

    invoke-direct {v3, v1, p1}, Lcom/metamoji/ui/common/UiButton;-><init>(ILandroid/content/Context;)V

    .line 769
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 770
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/ui/common/UiButton;->setTag(Ljava/lang/Object;)V

    .line 771
    new-instance p1, Lcom/metamoji/ui/library/item/LibraryStorePageView$4;

    invoke-direct {p1, p0, p2}, Lcom/metamoji/ui/library/item/LibraryStorePageView$4;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;)V

    invoke-virtual {v3, p1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    sget-object p1, Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;->Purchase:Lcom/metamoji/ui/library/item/LibraryStorePageView$btnType;

    if-ne p2, p1, :cond_2

    if-eqz p4, :cond_2

    .line 790
    const-string p1, "purchaseBtn"

    invoke-interface {p4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v3
.end method

.method public createContents(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;Ljava/util/Map;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .line 103
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {p0, p5}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->setMinimumHeight(I)V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connLogin:Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;

    .line 107
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connGetAllPages:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;

    .line 108
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connGetPage:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;

    .line 110
    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    .line 111
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_partViewArray:Ljava/util/List;

    .line 114
    invoke-virtual {p0, p2, p4, p5}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->init(Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;II)I

    const/16 p2, 0xff

    const/16 p3, 0xf5

    .line 117
    invoke-static {p2, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->setBackgroundColor(I)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePage(Landroid/content/Context;)V

    return-void
.end method

.method protected createImageView(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .locals 5

    .line 803
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v0, v0, Lcom/metamoji/cm/Size;->width:I

    div-int/lit8 v0, v0, 0x32

    .line 806
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 809
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 810
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_dropshadow:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 811
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 812
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 813
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    new-instance v3, Lcom/metamoji/ui/common/UiAsyncImageView;

    invoke-direct {v3, p1}, Lcom/metamoji/ui/common/UiAsyncImageView;-><init>(Landroid/content/Context;)V

    .line 817
    new-instance p1, Lcom/metamoji/cm/Size;

    mul-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    invoke-direct {p1, v4, v4}, Lcom/metamoji/cm/Size;-><init>(II)V

    .line 818
    invoke-static {}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getThumbnailThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v3, p3, p1, v4}, Lcom/metamoji/ui/common/UiAsyncImageView;->loadImageURL(Ljava/lang/String;Lcom/metamoji/cm/Size;Ljava/util/concurrent/Executor;)V

    const/4 p1, -0x1

    .line 819
    invoke-virtual {v3, p1}, Lcom/metamoji/ui/common/UiAsyncImageView;->setBackgroundColor(I)V

    .line 820
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, p1}, Lcom/metamoji/ui/common/UiAsyncImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 821
    invoke-virtual {v3, v0, v0, v0, v0}, Lcom/metamoji/ui/common/UiAsyncImageView;->setPadding(IIII)V

    .line 822
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 823
    invoke-virtual {v2, v3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method createMessagePanel(I)V
    .locals 12

    .line 236
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 237
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    .line 239
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 240
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 243
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 244
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x11

    .line 245
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 246
    invoke-virtual {p0, v4, v5}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 250
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 251
    invoke-virtual {v5, v3, v2, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 252
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 256
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 257
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 261
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v4, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    new-instance v8, Landroid/widget/ProgressBar;

    invoke-direct {v8, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 265
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v11, 0x5

    .line 266
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 267
    invoke-virtual {v2, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    new-instance v8, Landroid/view/View;

    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 271
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v4, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 276
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x777778

    .line 277
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p1, 0x40a00000    # 5.0f

    const v0, -0x7f7f7f80

    const/high16 v1, 0x40c00000    # 6.0f

    .line 278
    invoke-virtual {v2, v1, p1, p1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 279
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, p1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 280
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 281
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 282
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 283
    iput v11, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 284
    invoke-virtual {v5, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected getAllPagesClass()Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;
    .locals 1

    .line 360
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V

    return-object v0
.end method

.method public getAllPagesResponce(Ljava/util/List;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connGetAllPages:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 419
    new-instance p1, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;

    sget-object p2, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;->GetAllPages:Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    invoke-direct {p1, p0, p2}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;)V

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connLogin:Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;

    .line 420
    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;->requestAsync()V

    return-void

    .line 426
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_4

    const/4 p2, 0x0

    .line 435
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 436
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 437
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 438
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 440
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 443
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 444
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    check-cast p2, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    invoke-interface {p2, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->appendStorePage(Ljava/util/List;)V

    .line 447
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePage()V

    return-void

    .line 452
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    const-string p2, "g_pageStatus"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    sget-object v0, Lcom/metamoji/lb/LbConstants$StorePageStatus;->INDEX_REQUEST_FAILED:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePage(Ljava/lang/String;)V

    return-void
.end method

.method protected getBasicThumbnailSize()Lcom/metamoji/cm/Size;
    .locals 2

    .line 170
    new-instance v0, Lcom/metamoji/cm/Size;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v1}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v0
.end method

.method protected getHorizontalMaxCount()I
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x5

    return v0
.end method

.method public getPageResponce(Ljava/util/List;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connGetPage:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 534
    new-instance p1, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;

    sget-object p2, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;->GetPage:Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    invoke-direct {p1, p0, p2}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;)V

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connLogin:Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;

    .line 535
    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;->requestAsync()V

    return-void

    .line 539
    :cond_0
    const-string p2, "g_pageStatus"

    if-eqz p1, :cond_1

    .line 541
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    const-string v0, "g_productsArray"

    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    sget-object p3, Lcom/metamoji/lb/LbConstants$StorePageStatus;->PAGE_DATA_COMPLETED:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePage()V

    return-void

    .line 548
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    sget-object v0, Lcom/metamoji/lb/LbConstants$StorePageStatus;->PAGE_REQUEST_FAILED:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-virtual {p0, p3}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePage(Ljava/lang/String;)V

    return-void
.end method

.method getProductPrice()V
    .locals 0

    return-void
.end method

.method protected isDownloadedContents(Ljava/lang/String;)Z
    .locals 1

    .line 966
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/lb/LbLibraryItemManager;->existsItem(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loginResponce(ZLcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;ILjava/lang/String;)V
    .locals 0

    const/4 p3, 0x0

    .line 372
    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connLogin:Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    .line 376
    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    new-instance p1, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connGetPage:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;

    .line 385
    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->requestAsync()V

    return-void

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->getAllPagesClass()Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connGetAllPages:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;

    .line 380
    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->requestAsync()V

    return-void

    .line 389
    :cond_2
    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;->ordinal()I

    move-result p1

    const-string p2, "g_pageStatus"

    if-eqz p1, :cond_4

    if-eq p1, p3, :cond_3

    :goto_0
    return-void

    .line 398
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    sget-object p3, Lcom/metamoji/lb/LbConstants$StorePageStatus;->PAGE_REQUEST_FAILED:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual {p0, p4}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePage(Ljava/lang/String;)V

    return-void

    .line 392
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    sget-object p3, Lcom/metamoji/lb/LbConstants$StorePageStatus;->INDEX_REQUEST_FAILED:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-virtual {p0, p4}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePage(Ljava/lang/String;)V

    return-void
.end method

.method onRetryButtonClicked()V
    .locals 3

    .line 978
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    const-string v1, "g_pageStatus"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lb/LbConstants$StorePageStatus;

    .line 979
    sget-object v2, Lcom/metamoji/lb/LbConstants$StorePageStatus;->INDEX_REQUEST_FAILED:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/metamoji/lb/LbConstants$StorePageStatus;->INDEX_DATA_REQUESTING:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/metamoji/lb/LbConstants$StorePageStatus;->PAGE_DATA_REQUESTING:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    .line 980
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->configurePage()V

    return-void
.end method

.method onThumbnailTap(Landroid/view/View;IILcom/metamoji/lb/LbConstants$DownloadMode;)V
    .locals 1

    .line 1038
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    const-string v0, "g_productsArray"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1040
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 1042
    const-string p2, "p_partsArray"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 1044
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 1045
    const-string p3, "entityId"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    return-void

    .line 1049
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ThumbnailTap! entityId="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->isDownloadedContents(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1053
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    check-cast p1, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    invoke-interface {p1, p2}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->selectStorePart(Ljava/lang/String;)V

    return-void

    .line 1058
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Download! productId="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "p_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1059
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    check-cast p3, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;

    invoke-interface {p3, p1, p4, p0, p2}, Lcom/metamoji/ui/library/item/LibraryStorePageView$ILibraryStorePageViewHandler;->downloadProduct(Ljava/util/Map;Lcom/metamoji/lb/LbConstants$DownloadMode;Lcom/metamoji/ui/library/item/LibraryStorePageView;Ljava/lang/String;)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_2

    .line 131
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connLogin:Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;->destory()V

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connGetAllPages:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->destory()V

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_connGetPage:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;

    if-eqz p1, :cond_2

    .line 138
    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->destory()V

    :cond_2
    return-void
.end method
