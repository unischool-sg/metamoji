.class public Lcom/metamoji/media/voice/ui/VcPlaylist;
.super Landroidx/fragment/app/Fragment;
.source "VcPlaylist.java"

# interfaces
.implements Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;


# static fields
.field private static final KEY_HIDDEN:Ljava/lang/String; = "hidden"


# instance fields
.field m_deleteButton:Lcom/metamoji/ui/common/UiButton;

.field m_editButton:Lcom/metamoji/ui/common/UiButton;

.field m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

.field m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field m_playlistLabel:Lcom/metamoji/ui/common/UiTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlaylist;->setRetainInstance(Z)V

    return-void
.end method


# virtual methods
.method public getCustumMenuView()Lcom/metamoji/ui/CustomMenuView;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMenu()Lcom/metamoji/ui/CustomMenuView;

    move-result-object v0

    return-object v0
.end method

.method public onChangedChecked(Z)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method

.method public onChangedEditable(ZZ)V
    .locals 0

    .line 156
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_editButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_0

    .line 157
    invoke-virtual {p2, p1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onChangedEditing(Z)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 168
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 170
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_playlistLabel:Lcom/metamoji/ui/common/UiTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiTextView;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_editButton:Lcom/metamoji/ui/common/UiButton;

    sget v0, Lcom/metamoji/noteanytime/R$string;->Button_Done_J:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 173
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_playlistLabel:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiTextView;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_editButton:Lcom/metamoji/ui/common/UiButton;

    sget v0, Lcom/metamoji/noteanytime/R$string;->Button_Edit:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 178
    :goto_0
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_editButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    .line 179
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_editButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 61
    sget p3, Lcom/metamoji/noteanytime/R$layout;->vc_playlist:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditing()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 144
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleEditTrackButtonTouchUp()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 56
    const-string v0, "hidden"

    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlaylist;->isHidden()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 82
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    .line 83
    invoke-virtual {v0, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setListener(Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;)V

    .line 89
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/voice/ui/VcPlaylist$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/voice/ui/VcPlaylist$1;-><init>(Lcom/metamoji/media/voice/ui/VcPlaylist;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    sget v0, Lcom/metamoji/noteanytime/R$id;->vc_playlist_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiTextView;

    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_playlistLabel:Lcom/metamoji/ui/common/UiTextView;

    .line 105
    sget v0, Lcom/metamoji/noteanytime/R$id;->vc_playlist_edit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_editButton:Lcom/metamoji/ui/common/UiButton;

    .line 109
    new-instance v1, Lcom/metamoji/media/voice/ui/VcPlaylist$2;

    invoke-direct {v1, p0}, Lcom/metamoji/media/voice/ui/VcPlaylist$2;-><init>(Lcom/metamoji/media/voice/ui/VcPlaylist;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    sget v0, Lcom/metamoji/noteanytime/R$id;->vc_playlist_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/common/UiButton;

    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    .line 118
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlaylist$3;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/ui/VcPlaylist$3;-><init>(Lcom/metamoji/media/voice/ui/VcPlaylist;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditing()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlaylist;->onChangedEditing(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 130
    const-string p1, "hidden"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v0, :cond_1

    .line 131
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->hidePlaylist()V

    .line 135
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_VC_ADD_INDEX:Lcom/metamoji/nt/NtCommand;

    sget-object v0, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    return-void
.end method

.method public setTopPadding(I)V
    .locals 4

    .line 205
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlaylist;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlaylist;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method
