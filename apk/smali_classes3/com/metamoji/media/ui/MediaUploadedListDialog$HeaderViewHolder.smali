.class Lcom/metamoji/media/ui/MediaUploadedListDialog$HeaderViewHolder;
.super Lcom/metamoji/media/ui/MediaUploadedListDialog$ViewHolder;
.source "MediaUploadedListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field _titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1310
    invoke-direct {p0, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$ViewHolder;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog-IA;)V

    .line 1311
    sget v0, Lcom/metamoji/noteanytime/R$id;->medialist_header_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$HeaderViewHolder;->_titleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bindView(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;)V
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$HeaderViewHolder;->_titleView:Landroid/widget/TextView;

    check-cast p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$Header;

    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Header;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
