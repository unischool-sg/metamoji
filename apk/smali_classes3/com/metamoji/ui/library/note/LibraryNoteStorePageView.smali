.class public Lcom/metamoji/ui/library/note/LibraryNoteStorePageView;
.super Lcom/metamoji/ui/library/item/LibraryStorePageView;
.source "LibraryNoteStorePageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryStorePageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected canTrial()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected containProduct(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 80
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->searchSheetTemplateByProductId(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method protected createImageView(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;
    .locals 2

    .line 41
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v1, Lcom/metamoji/ui/common/UiAsyncImageView;

    invoke-direct {v1, p1}, Lcom/metamoji/ui/common/UiAsyncImageView;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance p1, Lcom/metamoji/cm/Size;

    invoke-direct {p1, p2, p2}, Lcom/metamoji/cm/Size;-><init>(II)V

    .line 46
    invoke-static {}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getThumbnailThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {v1, p3, p1, p2}, Lcom/metamoji/ui/common/UiAsyncImageView;->loadImageURL(Ljava/lang/String;Lcom/metamoji/cm/Size;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x1

    .line 47
    invoke-virtual {v1, p1}, Lcom/metamoji/ui/common/UiAsyncImageView;->setAdjustViewBounds(Z)V

    const/4 p1, 0x0

    .line 48
    invoke-virtual {v1, p1, p1, p1, p1}, Lcom/metamoji/ui/common/UiAsyncImageView;->setPadding(IIII)V

    .line 49
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_thumbnail_dropshadow:I

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/common/UiAsyncImageView;->setBackgroundResource(I)V

    .line 50
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xd

    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getAllPagesClass()Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;
    .locals 1

    .line 30
    new-instance v0, Lcom/metamoji/ui/library/sheet/LibrarySheetURLConnectionForGetAllPages;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/sheet/LibrarySheetURLConnectionForGetAllPages;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V

    return-object v0
.end method

.method protected isDownloadedContents(Ljava/lang/String;)Z
    .locals 1

    .line 90
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->existsSheetTemplate(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
