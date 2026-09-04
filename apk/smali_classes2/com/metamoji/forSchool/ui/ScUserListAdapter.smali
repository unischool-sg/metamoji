.class public Lcom/metamoji/forSchool/ui/ScUserListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScUserListAdapter.java"


# static fields
.field private static final INDEX_PATH_ROW_HEADER:I = -0x1

.field private static final ITEM_VIEW_TYPE_HEADER:I

.field private static final ITEM_VIEW_TYPE_ROW:I


# instance fields
.field private m_collaboModeViewBase:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

.field private m_indexPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScIndexPath;",
            ">;"
        }
    .end annotation
.end field

.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field private m_rowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScUserListItemData;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_sectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScUserListSectionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_collaboModeViewBase:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    .line 39
    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_sectionList:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_rowList:Ljava/util/List;

    .line 42
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_sectionList:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getIndexPathList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_indexPathList:Ljava/util/List;

    return-void
.end method

.method private getIndexPathList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScUserListSectionData;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScUserListItemData;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScIndexPath;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 178
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 179
    new-instance v3, Lcom/metamoji/forSchool/ui/ScIndexPath;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Lcom/metamoji/forSchool/ui/ScIndexPath;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v4, v1

    .line 182
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 183
    new-instance v5, Lcom/metamoji/forSchool/ui/ScIndexPath;

    invoke-direct {v5, v4, v2}, Lcom/metamoji/forSchool/ui/ScIndexPath;-><init>(II)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isHeader(Lcom/metamoji/forSchool/ui/ScIndexPath;)Z
    .locals 1

    const/4 v0, -0x1

    .line 196
    iget p1, p1, Lcom/metamoji/forSchool/ui/ScIndexPath;->row:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addSection(Lcom/metamoji/forSchool/ui/ScUserListSectionData;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/forSchool/ui/ScUserListSectionData;",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScUserListItemData;",
            ">;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_sectionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_rowList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cellForRowAtIndexPath(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScIndexPath;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/metamoji/noteanytime/R$layout;->collabo_mode_bar_userlist_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_rowList:Ljava/util/List;

    iget v1, p2, Lcom/metamoji/forSchool/ui/ScIndexPath;->section:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget p2, p2, Lcom/metamoji/forSchool/ui/ScIndexPath;->row:I

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_collaboModeViewBase:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->createScUserListUserInfo(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScUserListItemData;)Landroid/view/View;

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_sectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 172
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_rowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->updateIndexPathList()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_indexPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_indexPathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScIndexPath;

    .line 90
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->isHeader(Lcom/metamoji/forSchool/ui/ScIndexPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_sectionList:Ljava/util/List;

    iget p1, p1, Lcom/metamoji/forSchool/ui/ScIndexPath;->section:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_rowList:Ljava/util/List;

    iget v1, p1, Lcom/metamoji/forSchool/ui/ScIndexPath;->section:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget p1, p1, Lcom/metamoji/forSchool/ui/ScIndexPath;->row:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->isHeader(I)Z

    const/4 p1, 0x0

    return p1
.end method

.method public getPositionFromIndexPath(Lcom/metamoji/forSchool/ui/ScIndexPath;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 66
    :goto_0
    iget v2, p1, Lcom/metamoji/forSchool/ui/ScIndexPath;->section:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 70
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_rowList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 71
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 76
    iget p1, p1, Lcom/metamoji/forSchool/ui/ScIndexPath;->row:I

    add-int/2addr v1, p1

    return v1
.end method

.method public getSectionCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_sectionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserListInSection(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/ui/ScUserListItemData;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_rowList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 104
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_indexPathList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScIndexPath;

    .line 107
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->isHeader(Lcom/metamoji/forSchool/ui/ScIndexPath;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 108
    iget p1, p1, Lcom/metamoji/forSchool/ui/ScIndexPath;->section:I

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->viewForHeaderInSection(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->cellForRowAtIndexPath(Landroid/view/View;Lcom/metamoji/forSchool/ui/ScIndexPath;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 167
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isHeader(I)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_indexPathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/ui/ScIndexPath;

    .line 192
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->isHeader(Lcom/metamoji/forSchool/ui/ScIndexPath;)Z

    move-result p1

    return p1
.end method

.method public updateIndexPathList()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_sectionList:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_rowList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getIndexPathList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_indexPathList:Ljava/util/List;

    .line 61
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public viewForHeaderInSection(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/metamoji/noteanytime/R$layout;->collabo_mode_bar_userlist_item:I

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_rowList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 121
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_sectionList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->m_collaboModeViewBase:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    if-lez v1, :cond_1

    .line 126
    iget-object v0, p2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupName:Ljava/lang/String;

    iget-boolean v1, p2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->isOffline:Z

    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, v1, p2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->createScUserListHeader(Landroid/view/View;Ljava/lang/String;ZLjava/lang/String;)Landroid/view/View;

    return-object p1

    .line 128
    :cond_1
    iget-boolean p2, p2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->isOffline:Z

    invoke-virtual {v2, p1, v0, p2, v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->createScUserListHeader(Landroid/view/View;Ljava/lang/String;ZLjava/lang/String;)Landroid/view/View;

    return-object p1
.end method
