.class public Lcom/metamoji/nt/itemlist/NtItemListItemContainer;
.super Landroid/widget/LinearLayout;
.source "NtItemListItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;
    }
.end annotation


# instance fields
.field private m_checkIconVisibility:I

.field private m_checked:Z

.field private m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

.field private m_infoIconVisibility:I

.field private m_jumpIconVisibility:I

.field private m_position:I

.field private m_presenterViewingPageIconVisibility:I

.field private m_schoolPageTypeIcon:I

.field private m_schoolPageTypeIconVisibility:I

.field private m_selected:Z

.field private m_tagInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/tag/CtTagInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_checked:Z

    .line 90
    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_selected:Z

    const/4 v1, 0x4

    .line 91
    iput v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_checkIconVisibility:I

    .line 92
    iput v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_jumpIconVisibility:I

    .line 93
    iput v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_infoIconVisibility:I

    .line 96
    iput v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_presenterViewingPageIconVisibility:I

    .line 98
    iput p2, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_position:I

    .line 99
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_tagInstances:Ljava/util/List;

    .line 101
    iput v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_schoolPageTypeIconVisibility:I

    .line 102
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_schoolPageTypeIcon:I

    return-void
.end method

.method private dpToPx(I)I
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 114
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->purge()V

    return-void
.end method

.method public getHolder()Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder<",
            "TT;>;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_position:I

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

    .line 171
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_tagInstances:Ljava/util/List;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->initialize()V

    .line 124
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/16 v1, 0x7c

    invoke-direct {p0, v1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->dpToPx(I)I

    move-result v1

    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->dpToPx(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->isChecked()Z

    move-result v0

    return v0

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_checked:Z

    return v0
.end method

.method public isPurged()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public load(Lcom/metamoji/nt/itemlist/NtItemListAdapter;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/nt/itemlist/NtItemListAdapter<",
            "TT;>;",
            "Ljava/util/ArrayList<",
            "TT;>;)Z"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 207
    :cond_0
    monitor-enter p2

    .line 208
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_position:I

    if-gt v0, v2, :cond_1

    monitor-exit p2

    return v1

    .line 209
    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 210
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 214
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 215
    sget v2, Lcom/metamoji/noteanytime/R$layout;->nt_pagelist_item:I

    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p2, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/nt/itemlist/NtItemListItem;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    .line 216
    invoke-virtual {p2}, Lcom/metamoji/nt/itemlist/NtItemListItem;->initialize()V

    .line 218
    new-instance p2, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;

    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    invoke-direct {p2, p0, v1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;-><init>(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;Lcom/metamoji/nt/itemlist/NtItemListItem;)V

    .line 219
    invoke-virtual {p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->holderInitialize(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;)V

    .line 220
    iget-object v1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    invoke-virtual {v1, p2}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setTag(Ljava/lang/Object;)V

    .line 222
    iput-object v0, p2, Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;->item:Ljava/lang/Object;

    .line 225
    invoke-virtual {p1, p0}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->updateLabel(Lcom/metamoji/nt/itemlist/NtItemListItemContainer;)V

    .line 226
    invoke-virtual {p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListAdapter;->setThumbnail(Lcom/metamoji/nt/itemlist/NtItemListItemContainer$Holder;)V

    .line 229
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    iget-boolean p2, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_checked:Z

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setChecked(Z)V

    .line 230
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    iget p2, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_checkIconVisibility:I

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setCheckIconVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    iget-boolean p2, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_selected:Z

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setSelected(Z)V

    .line 232
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    iget p2, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_jumpIconVisibility:I

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setJumpIconVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    iget p2, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_infoIconVisibility:I

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setInfoIconVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    iget p2, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_presenterViewingPageIconVisibility:I

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setPresenterViewingPageIconVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_tagInstances:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setTagInstances(Ljava/util/List;)V

    .line 241
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    iget p2, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_schoolPageTypeIconVisibility:I

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setSchoolPageTypeIconVisibility(I)V

    .line 242
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    iget p2, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_schoolPageTypeIcon:I

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setSchoolPageTypeIcon(I)V

    .line 245
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 210
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public purge()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()V"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->isSelected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_selected:Z

    .line 255
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_checked:Z

    .line 256
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->getCheckIconVisibility()I

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_checkIconVisibility:I

    .line 257
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->getJumpIconVisibility()I

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_jumpIconVisibility:I

    .line 258
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->getInfoIconVisibility()I

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_infoIconVisibility:I

    .line 261
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->getPresenterViewingPageIconVisibility()I

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_presenterViewingPageIconVisibility:I

    .line 263
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->getTagInstances()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_tagInstances:Ljava/util/List;

    .line 266
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->getSchoolPageTypeIconVisibility()I

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_schoolPageTypeIconVisibility:I

    .line 267
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->getSchoolPageTypeIcon()I

    move-result v0

    iput v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_schoolPageTypeIcon:I

    .line 270
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtItemListItem;->destroy()V

    .line 271
    invoke-virtual {p0}, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->removeAllViews()V

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    return-void
.end method

.method public setCheckIconVisibility(I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setCheckIconVisibility(I)V

    .line 147
    :cond_0
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_checkIconVisibility:I

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setChecked(Z)V

    .line 135
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_checked:Z

    return-void
.end method

.method public setInfoIconVisibility(I)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setInfoIconVisibility(I)V

    .line 153
    :cond_0
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_infoIconVisibility:I

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_position:I

    return-void
.end method

.method public setPresenterViewingPageIconVisibility(I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setPresenterViewingPageIconVisibility(I)V

    .line 161
    :cond_0
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_presenterViewingPageIconVisibility:I

    return-void
.end method

.method public setSchoolPageTypeIcon(I)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setSchoolPageTypeIcon(I)V

    .line 287
    :cond_0
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_schoolPageTypeIcon:I

    return-void
.end method

.method public setSchoolPageTypeIconVisibility(I)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setSchoolPageTypeIconVisibility(I)V

    .line 280
    :cond_0
    iput p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_schoolPageTypeIconVisibility:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 177
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 178
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setSelected(Z)V

    .line 179
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_selected:Z

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

    .line 166
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_contents:Lcom/metamoji/nt/itemlist/NtItemListItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtItemListItem;->setTagInstances(Ljava/util/List;)V

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtItemListItemContainer;->m_tagInstances:Ljava/util/List;

    return-void
.end method
