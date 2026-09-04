.class public Lcom/metamoji/ui/dialog/SortList;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "SortList.java"


# instance fields
.field private _ascending:Z

.field private _sortKey:Ljava/lang/String;

.field private _sortKeyGroup:Lcom/metamoji/ui/common/UiRadioGroup;

.field private _sortKeyId:I

.field private _sortOrderGroup:Lcom/metamoji/ui/common/UiRadioGroup;

.field private _sortOrderId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/metamoji/ui/dialog/SortList;->_sortKeyId:I

    .line 35
    iput v0, p0, Lcom/metamoji/ui/dialog/SortList;->_sortOrderId:I

    .line 39
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListSortKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/SortList;->_sortKey:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListAscending()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/SortList;->_ascending:Z

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 48
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_sort_list:I

    iput v0, p0, Lcom/metamoji/ui/dialog/SortList;->mViewId:I

    .line 49
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Sort_Dialog_Title:I

    iput v0, p0, Lcom/metamoji/ui/dialog/SortList;->mTitleId:I

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 53
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_radiogroup_sort_subtitle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/SortList;->_sortKeyGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 54
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_radiogroup_sort_order:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/SortList;->_sortOrderGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 56
    iget p2, p0, Lcom/metamoji/ui/dialog/SortList;->_sortKeyId:I

    const/4 p3, -0x1

    if-ne p3, p2, :cond_2

    .line 57
    const-string/jumbo p2, "title"

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SortList;->_sortKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 58
    iget-object p2, p0, Lcom/metamoji/ui/dialog/SortList;->_sortKeyGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_sort_title_btn:I

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    goto :goto_0

    .line 59
    :cond_0
    const-string/jumbo p2, "update"

    iget-object v0, p0, Lcom/metamoji/ui/dialog/SortList;->_sortKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 62
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SortList;->_sortKeyGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p2, :cond_1

    .line 60
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_sort_updated_btn:I

    invoke-virtual {v0, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    goto :goto_0

    .line 62
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_sort_created_btn:I

    invoke-virtual {v0, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SortList;->_sortKeyGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    .line 68
    :goto_0
    iget p2, p0, Lcom/metamoji/ui/dialog/SortList;->_sortOrderId:I

    if-ne p3, p2, :cond_4

    .line 69
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/SortList;->_ascending:Z

    .line 72
    iget-object p3, p0, Lcom/metamoji/ui/dialog/SortList;->_sortOrderGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p2, :cond_3

    .line 70
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_sort_ascending_btn:I

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    return-object p1

    .line 72
    :cond_3
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_sort_descending_btn:I

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    return-object p1

    .line 75
    :cond_4
    iget-object p3, p0, Lcom/metamoji/ui/dialog/SortList;->_sortOrderGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onDestroyView()V

    .line 85
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SortList;->_sortKeyGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/SortList;->_sortKeyId:I

    .line 86
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SortList;->_sortOrderGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/SortList;->_sortOrderId:I

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SortList;->_sortKeyGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 92
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_sort_title_btn:I

    if-ne v1, v0, :cond_0

    .line 93
    const-string/jumbo v0, "title"

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->setNoteListSortKey(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_sort_updated_btn:I

    if-ne v1, v0, :cond_1

    .line 95
    const-string/jumbo v0, "update"

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->setNoteListSortKey(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "create"

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->setNoteListSortKey(Ljava/lang/String;)V

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SortList;->_sortOrderGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiRadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 101
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_sort_ascending_btn:I

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    .line 102
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->setNoteListAscending(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 104
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->setNoteListAscending(Z)V

    .line 106
    :goto_1
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->resetPagingButton()V

    .line 108
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 122
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    sget-object v0, Lcom/metamoji/ui/dialog/SortList;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
