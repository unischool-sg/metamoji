.class public Lcom/metamoji/media/voice/ui/VcPlaylistDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "VcPlaylistDialog.java"

# interfaces
.implements Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;


# instance fields
.field m_custumMenuView:Lcom/metamoji/ui/CustomMenuView;

.field m_deleteButton:Lcom/metamoji/ui/common/UiButton;

.field m_listView:Landroid/widget/ListView;

.field m_listViewLayer:Landroid/widget/FrameLayout;

.field m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field m_rightButton:Lcom/metamoji/ui/common/UiButtonHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustumMenuView()Lcom/metamoji/ui/CustomMenuView;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_custumMenuView:Lcom/metamoji/ui/CustomMenuView;

    return-object v0
.end method

.method public onChangedChecked(Z)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method

.method public onChangedEditable(ZZ)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_rightButton:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 121
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 122
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->onChangedEditing(Z)V

    .line 123
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditingAndChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->onChangedChecked(Z)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 125
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 126
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void
.end method

.method public onChangedEditing(Z)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_rightButton:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz p1, :cond_1

    sget v1, Lcom/metamoji/noteanytime/R$string;->Button_Done_J:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/metamoji/noteanytime/R$string;->Button_Edit:I

    :goto_1
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 138
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_rightButton:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz p1, :cond_2

    sget p1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_purple:I

    goto :goto_2

    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    :goto_2
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 42
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_voice_playlist:I

    iput v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->mViewId:I

    .line 43
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_PlayList_Title:I

    iput v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->mTitleId:I

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->mDone:Z

    .line 45
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->mCancel:Z

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->mCloseLeft:Z

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    .line 51
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    .line 52
    invoke-virtual {p2, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setListener(Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;)V

    .line 55
    sget p2, Lcom/metamoji/noteanytime/R$id;->vc_playlist_listview_layer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_listViewLayer:Landroid/widget/FrameLayout;

    .line 56
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->getListView()Landroid/widget/ListView;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_listView:Landroid/widget/ListView;

    .line 57
    invoke-virtual {p2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_listViewLayer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_listView:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p2

    const/4 p3, -0x1

    if-ne p3, p2, :cond_0

    .line 58
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_listViewLayer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_listView:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 62
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_rightButton:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 64
    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 65
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_rightButton:Lcom/metamoji/ui/common/UiButtonHeader;

    new-instance p3, Lcom/metamoji/media/voice/ui/VcPlaylistDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/media/voice/ui/VcPlaylistDialog$1;-><init>(Lcom/metamoji/media/voice/ui/VcPlaylistDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget p2, Lcom/metamoji/noteanytime/R$id;->vc_playlist_delete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    .line 74
    new-instance p3, Lcom/metamoji/media/voice/ui/VcPlaylistDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/media/voice/ui/VcPlaylistDialog$2;-><init>(Lcom/metamoji/media/voice/ui/VcPlaylistDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget p2, Lcom/metamoji/noteanytime/R$id;->vc_playlist_CustomMenuView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/CustomMenuView;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_custumMenuView:Lcom/metamoji/ui/CustomMenuView;

    .line 83
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->canEdit()Z

    move-result p2

    .line 84
    iget-object p3, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {p3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditing()Z

    move-result p3

    .line 85
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->onChangedEditable(ZZ)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setListener(Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;)V

    .line 93
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_listViewLayer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleEditTrackButtonTouchUp()V

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onDestroy()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditing()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleEditTrackButtonTouchUp()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 163
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    sget-object v0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
