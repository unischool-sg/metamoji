.class public Lcom/metamoji/ui/library/bgimage/LibraryBgImagePageView;
.super Lcom/metamoji/ui/library/item/LibraryPageView;
.source "LibraryBgImagePageView.java"


# static fields
.field public static final THUMBNAIL_HEIGHT:I = 0xa0

.field static final THUMBNAIL_HORIZONTAL_MAX:I = 0x4

.field public static final THUMBNAIL_WIDTH:I = 0x82


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createPartView(Landroid/content/Context;Ljava/util/Map;)Lcom/metamoji/ui/library/item/LibraryPartView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/ui/library/item/LibraryPartView;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v0, p0, p2}, Lcom/metamoji/ui/library/item/LibraryPartView;->createContents(Lcom/metamoji/ui/library/item/LibraryPageView;Ljava/util/Map;)V

    return-object v0
.end method

.method public deletePart(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 0

    return-void
.end method

.method protected getBasicThumbnailSize()Lcom/metamoji/cm/Size;
    .locals 3

    .line 35
    new-instance v0, Lcom/metamoji/cm/Size;

    const/16 v1, 0x82

    const/16 v2, 0xa0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v0
.end method

.method protected getHorizontalMaxCount()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePageView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    div-int/2addr v1, v0

    return v1
.end method

.method protected guidanceStringId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updatePartViewTitle(Lcom/metamoji/lb/LbConstants$LbPageType;I)V
    .locals 0

    return-void
.end method
