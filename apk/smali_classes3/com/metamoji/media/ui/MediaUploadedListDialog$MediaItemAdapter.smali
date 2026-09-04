.class Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaUploadedListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field private VIEWTYPE_HEADER:I

.field private VIEWTYPE_MEDIA:I

.field final synthetic this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1426
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    const/4 p1, 0x0

    .line 1427
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1433
    iput p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->VIEWTYPE_HEADER:I

    const/4 p1, 0x1

    .line 1434
    iput p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->VIEWTYPE_MEDIA:I

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    .line 1443
    invoke-virtual {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;

    .line 1444
    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;->isHeader()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->VIEWTYPE_HEADER:I

    return p1

    :cond_0
    iget p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->VIEWTYPE_MEDIA:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1456
    invoke-virtual {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1457
    invoke-virtual {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;

    if-nez p2, :cond_1

    .line 1461
    const-string p2, "layout_inflater"

    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 1462
    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;->isHeader()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1463
    sget v0, Lcom/metamoji/noteanytime/R$layout;->item_medialist_header:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1464
    new-instance p3, Lcom/metamoji/media/ui/MediaUploadedListDialog$HeaderViewHolder;

    invoke-direct {p3, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$HeaderViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 1466
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$layout;->item_medialist:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1467
    new-instance p3, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-direct {p3, v0, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;Landroid/view/View;)V

    .line 1469
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1471
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/media/ui/MediaUploadedListDialog$ViewHolder;

    .line 1474
    :goto_1
    invoke-virtual {p3, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$ViewHolder;->bindView(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 1450
    invoke-virtual {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;

    .line 1451
    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;->isHeader()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
