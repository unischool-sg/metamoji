.class Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;
.super Ljava/lang/Object;
.source "NtItemListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/itemlist/NtItemListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field m_checkButton:Landroid/widget/ImageButton;

.field m_infoIcon:Landroid/widget/ImageView;

.field m_jumpIcon:Landroid/widget/ImageView;

.field m_presenterViewingPageIcon:Landroid/widget/ImageView;

.field m_schoolPageTypeIcon:I

.field m_schoolPageTypeIconImageView:Landroid/widget/ImageView;

.field tagView:Lcom/metamoji/ui/ContentsTagView;

.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtItemListItem;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtItemListItem;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->this$0:Lcom/metamoji/nt/itemlist/NtItemListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget p1, Lcom/metamoji/noteanytime/R$id;->nt_itemlist_item_check:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_checkButton:Landroid/widget/ImageButton;

    .line 43
    sget p1, Lcom/metamoji/noteanytime/R$id;->nt_itemlist_item_jump:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_jumpIcon:Landroid/widget/ImageView;

    .line 44
    sget p1, Lcom/metamoji/noteanytime/R$id;->infoIcon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_infoIcon:Landroid/widget/ImageView;

    .line 47
    sget p1, Lcom/metamoji/noteanytime/R$id;->presenterViewingPageIcon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_presenterViewingPageIcon:Landroid/widget/ImageView;

    .line 49
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_checkButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 50
    sget p1, Lcom/metamoji/noteanytime/R$id;->nt_itemlist_tag_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/ContentsTagView;

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->tagView:Lcom/metamoji/ui/ContentsTagView;

    .line 52
    sget p1, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeIcon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_schoolPageTypeIconImageView:Landroid/widget/ImageView;

    .line 53
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_schoolPageTypeIcon:I

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_checkButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_checkButton:Landroid/widget/ImageButton;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_jumpIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_jumpIcon:Landroid/widget/ImageView;

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_infoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_infoIcon:Landroid/widget/ImageView;

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_presenterViewingPageIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_presenterViewingPageIcon:Landroid/widget/ImageView;

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->tagView:Lcom/metamoji/ui/ContentsTagView;

    if-eqz v0, :cond_4

    .line 82
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->tagView:Lcom/metamoji/ui/ContentsTagView;

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_schoolPageTypeIconImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iput-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_schoolPageTypeIconImageView:Landroid/widget/ImageView;

    :cond_5
    return-void
.end method
