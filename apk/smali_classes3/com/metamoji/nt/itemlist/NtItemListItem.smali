.class public Lcom/metamoji/nt/itemlist/NtItemListItem;
.super Landroid/widget/LinearLayout;
.source "NtItemListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;
    }
.end annotation


# instance fields
.field private m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->destroy()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    :cond_0
    return-void
.end method

.method public getCheckIconVisibility()I
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 150
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_checkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getInfoIconVisibility()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 185
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_infoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getJumpIconVisibility()I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 136
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_jumpIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getPresenterViewingPageIconVisibility()I
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 200
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_presenterViewingPageIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getSchoolPageTypeIcon()I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 249
    :cond_0
    iget v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_schoolPageTypeIcon:I

    return v0
.end method

.method public getSchoolPageTypeIconVisibility()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 229
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_schoolPageTypeIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getTagInstances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 213
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->tagView:Lcom/metamoji/ui/ContentsTagView;

    invoke-virtual {v0}, Lcom/metamoji/ui/ContentsTagView;->getTagInstances()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViewHolder()Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    invoke-direct {v0, p0, p0}, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;-><init>(Lcom/metamoji/nt/itemlist/NtItemListItem;Landroid/view/View;)V

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 155
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_checkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    return v0
.end method

.method public setCheckIconVisibility(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_checkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_checkButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void
.end method

.method public setInfoIconVisibility(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_infoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setJumpIconVisibility(I)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_jumpIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setPresenterViewingPageIconVisibility(I)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_presenterViewingPageIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setSchoolPageTypeIcon(I)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    iput p1, v1, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_schoolPageTypeIcon:I

    .line 242
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    iget-object p1, p1, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_schoolPageTypeIconImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSchoolPageTypeIconVisibility(I)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->m_schoolPageTypeIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->isChecked()Z

    move-result v0

    .line 170
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setChecked(Z)V

    return-void
.end method

.method public setTagInstances(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;)V"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItem;->m_holder:Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    iget-object v0, v0, Lcom/metamoji/nt/itemlist/NtItemListItem$ViewHolder;->tagView:Lcom/metamoji/ui/ContentsTagView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/ContentsTagView;->setTagInstances(Ljava/util/List;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setChecked(Z)V

    return-void
.end method
