.class Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;
.super Lcom/metamoji/media/ui/MediaUploadedListDialog$ViewHolder;
.source "MediaUploadedListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaViewHolder"
.end annotation


# instance fields
.field _checkbox:Landroid/widget/ToggleButton;

.field _dateAndAuthorView:Landroid/widget/TextView;

.field _download:Landroid/view/View;

.field _fileSizeView:Landroid/widget/TextView;

.field _margin:Landroid/view/View;

.field _media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

.field _showCheckbox:Z

.field _showDownload:Z

.field _titleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;


# direct methods
.method static bridge synthetic -$$Nest$mshowDownload(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->showDownload(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;Landroid/view/View;)V
    .locals 2
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

    .line 1330
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$ViewHolder;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog-IA;)V

    const/4 v0, 0x0

    .line 1327
    iput-boolean v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_showCheckbox:Z

    .line 1328
    iput-boolean v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_showDownload:Z

    .line 1331
    sget v0, Lcom/metamoji/noteanytime/R$id;->medialist_item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_titleView:Landroid/widget/TextView;

    .line 1332
    sget v0, Lcom/metamoji/noteanytime/R$id;->medialist_item_date_and_author:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_dateAndAuthorView:Landroid/widget/TextView;

    .line 1333
    sget v0, Lcom/metamoji/noteanytime/R$id;->medialist_item_filesize:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_fileSizeView:Landroid/widget/TextView;

    .line 1334
    sget v0, Lcom/metamoji/noteanytime/R$id;->medialist_item_margin:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_margin:Landroid/view/View;

    .line 1335
    sget v0, Lcom/metamoji/noteanytime/R$id;->medialist_item_check:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_checkbox:Landroid/widget/ToggleButton;

    .line 1336
    new-instance v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$1;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1342
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_checkbox:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$2;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1349
    sget v0, Lcom/metamoji/noteanytime/R$id;->medialist_item_download:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_download:Landroid/view/View;

    .line 1350
    new-instance v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showCheckbox(Z)V
    .locals 4

    .line 1402
    iget-boolean v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_showCheckbox:Z

    if-eq v0, p1, :cond_2

    .line 1403
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_margin:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_checkbox:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1405
    iput-boolean p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_showCheckbox:Z

    :cond_2
    return-void
.end method

.method private showDownload(Z)V
    .locals 2

    .line 1410
    iget-boolean v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_showDownload:Z

    if-eq v0, p1, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_download:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1412
    iput-boolean p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_showDownload:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public bindView(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;)V
    .locals 2

    .line 1392
    move-object v0, p1

    check-cast v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    .line 1393
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_dateAndAuthorView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-virtual {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getDateAndAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_fileSizeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-virtual {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getFormattedFileSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1396
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_isEditable(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->showCheckbox(Z)V

    .line 1397
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_checkbox:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_checked(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1398
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->isDownloadable()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->showDownload(Z)V

    return-void
.end method

.method disableDownload(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1375
    :goto_0
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_items(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1376
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_items(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;

    .line 1377
    invoke-virtual {v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;->isHeader()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1379
    :cond_0
    instance-of v3, v2, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    if-eqz v3, :cond_1

    .line 1380
    check-cast v2, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    .line 1381
    invoke-virtual {v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getTicket()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1382
    invoke-virtual {v2, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->setDownloadable(Z)V

    .line 1383
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_list(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1384
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v3}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_list(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Landroid/widget/ListView;

    move-result-object v3

    sub-int v2, v1, v2

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1385
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v3}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_items(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v4}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_list(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public update(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;)V
    .locals 1

    .line 1418
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    invoke-virtual {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->bindView(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;)V

    :cond_0
    return-void
.end method
