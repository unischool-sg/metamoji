.class public Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;
.super Lcom/metamoji/ui/library/item/LibraryPartView;
.source "LibraryBgImagePartView.java"


# static fields
.field static final ICON_MARGIN_HEIGHT:I = 0xa

.field static final ICON_MARGIN_WIDTH:I = 0x14

.field static final ICON_WIDTH:I = 0x5a


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPartView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->m_thumbnail:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->m_thumbnail:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->m_thumbnail:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method protected initCanvas()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getThumbnailSize()Lcom/metamoji/cm/Size;

    move-result-object v0

    .line 42
    iget v0, v0, Lcom/metamoji/cm/Size;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x43020000    # 130.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x42b40000    # 90.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$layout;->library_note:I

    invoke-static {v1, v2, p0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->setClipChildren(Z)V

    .line 54
    iget-object v1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->m_partDic:Ljava/util/Map;

    const-string v2, "imagePath"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    new-instance v2, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;-><init>(Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;ILjava/lang/String;)V

    .line 123
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->thumbnailTaskExecute(Landroid/os/AsyncTask;)V

    return-void
.end method

.method public onLongPressed(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected showContextMenu(Lcom/metamoji/lb/LbConstants$LbPageType;)V
    .locals 0

    return-void
.end method
