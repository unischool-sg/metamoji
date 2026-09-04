.class public Lcom/metamoji/ui/library/sheet/LibrarySheetStorePageView;
.super Lcom/metamoji/ui/library/note/LibraryNoteStorePageView;
.source "LibrarySheetStorePageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/note/LibraryNoteStorePageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected canTrial()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected containProduct(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 50
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

.method protected getAllPagesClass()Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;
    .locals 1

    .line 24
    new-instance v0, Lcom/metamoji/ui/library/sheet/LibrarySheetURLConnectionForGetAllPages;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/sheet/LibrarySheetURLConnectionForGetAllPages;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V

    return-object v0
.end method

.method protected isDownloadedContents(Ljava/lang/String;)Z
    .locals 1

    .line 60
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->existsSheetTemplate(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
