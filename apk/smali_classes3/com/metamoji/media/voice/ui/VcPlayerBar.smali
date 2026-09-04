.class public Lcom/metamoji/media/voice/ui/VcPlayerBar;
.super Landroidx/fragment/app/Fragment;
.source "VcPlayerBar.java"

# interfaces
.implements Lcom/metamoji/media/voice/audio/VcPlayer$IVcPlayerListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/metamoji/nt/ICommandProcessor;
.implements Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/metamoji/ui/MenuEventListener;
.implements Lcom/metamoji/ui/MenuCloseEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;,
        Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;,
        Lcom/metamoji/media/voice/ui/VcPlayerBar$VcTrackType;
    }
.end annotation


# static fields
.field private static final KEY_CHECKED_POSITION:Ljava/lang/String; = "checkedPosition"

.field private static final KEY_EDITING:Ljava/lang/String; = "editing"

.field private static final KEY_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final KEY_SHOWING_REMOVE:Ljava/lang/String; = "showingRemove"

.field private static final KEY_SHOWING_RENAME:Ljava/lang/String; = "showingRename"

.field private static final KEY_SHOWING_WAVEVIEW:Ljava/lang/String; = "showingWaveView"

.field public static final VC_PLAYER_BACKWARD_STEP_TIME:D = 10.0

.field public static final VC_PLAYER_FORWARD_STEP_TIME:D = 30.0

.field public static final VC_PLAYER_TIMER_INTERVAL:J = 0xaL

.field public static final VC_PLAYER_TIMER_START_INTERVAL:J = 0x64L

.field public static final VC_TRACKPROP_VOICE_TAG:Ljava/lang/String; = "voiceTag"


# instance fields
.field private mShowing:Z

.field m_addIndexButton:Lcom/metamoji/ui/common/UiImageButton;

.field m_backwardButton:Lcom/metamoji/ui/common/UiImageButton;

.field m_backwardStepButton:Lcom/metamoji/ui/common/UiImageButton;

.field private m_checkedPosition:I

.field m_closeButton:Lcom/metamoji/ui/common/UiImageButton;

.field m_currentEndTime:D

.field m_currentStartTime:D

.field m_duration:D

.field m_elapsedTime:D

.field m_elapsedTimeLabel:Landroid/widget/TextView;

.field m_endTime:Ljava/lang/Number;

.field m_forwardButton:Lcom/metamoji/ui/common/UiImageButton;

.field m_forwardStepButton:Lcom/metamoji/ui/common/UiImageButton;

.field private m_isDraggingTrackTable:Z

.field private m_isEditing:Z

.field m_isPhone:Z

.field m_isTrackingSeekBar:Z

.field m_latestUpdateCurrentTime:D

.field m_listener:Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;

.field m_menuButton:Lcom/metamoji/ui/common/UiImageButton;

.field m_playButton:Lcom/metamoji/ui/common/UiImageButton;

.field m_playingRangeIndexId:Ljava/lang/String;

.field m_playlistDialog:Lcom/metamoji/media/voice/ui/VcPlaylistDialog;

.field m_recordNameLabel:Landroid/widget/TextView;

.field m_remainingTimeLabel:Landroid/widget/TextView;

.field private m_savedCheckedPosition:I

.field m_scrubbingLabel:Landroid/widget/TextView;

.field private m_showingMenu:Z

.field private m_showingRemoveTrackAlert:Z

.field private m_showingRenameTrackDialog:Z

.field m_showingWaveView:Z

.field m_slider:Landroid/widget/SeekBar;

.field m_trackButton:Lcom/metamoji/ui/common/UiImageButton;

.field m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

.field m_trackTable:Landroid/widget/ListView;

.field m_updateTimer:Lcom/metamoji/cm/UiTimer;

.field m_wavePaletteButton:Lcom/metamoji/ui/common/UiImageButton;

.field m_waveView:Landroid/view/View;

.field m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;


# direct methods
.method static bridge synthetic -$$Nest$fgetm_checkedPosition(Lcom/metamoji/media/voice/ui/VcPlayerBar;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_checkedPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetm_isEditing(Lcom/metamoji/media/voice/ui/VcPlayerBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isEditing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputm_checkedPosition(Lcom/metamoji/media/voice/ui/VcPlayerBar;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_checkedPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm_isDraggingTrackTable(Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isDraggingTrackTable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm_showingRemoveTrackAlert(Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingRemoveTrackAlert:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm_showingRenameTrackDialog(Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingRenameTrackDialog:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAddIndexButtonTouchUp(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleAddIndexButtonTouchUp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCloseButtonTouchUp(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleCloseButtonTouchUp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMenuButtonTouchUp(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleMenuButtonTouchUp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePlayBackwardButtonTouchUp(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handlePlayBackwardButtonTouchUp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePlayBackwardStepButtonTouchUp(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handlePlayBackwardStepButtonTouchUp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePlayForwardButtonTouchUp(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handlePlayForwardButtonTouchUp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePlayForwardStepButtonTouchUp(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handlePlayForwardStepButtonTouchUp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreloadTrackTableRow(Lcom/metamoji/media/voice/ui/VcPlayerBar;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->reloadTrackTableRow(Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrenameTitle(Lcom/metamoji/media/voice/ui/VcPlayerBar;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->renameTitle(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 183
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 599
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->mShowing:Z

    const-wide/16 v1, 0x0

    .line 184
    iput-wide v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_duration:D

    .line 185
    iput-wide v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_elapsedTime:D

    .line 186
    iput-wide v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_currentStartTime:D

    .line 187
    iput-wide v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_currentEndTime:D

    .line 188
    iput-wide v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_latestUpdateCurrentTime:D

    .line 189
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isPhone:Z

    .line 192
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isDraggingTrackTable:Z

    .line 193
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isEditing:Z

    .line 194
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingWaveView:Z

    .line 195
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingMenu:Z

    .line 196
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingRenameTrackDialog:Z

    .line 197
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingRemoveTrackAlert:Z

    const/4 v1, -0x1

    .line 198
    iput v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_checkedPosition:I

    .line 199
    iput v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_savedCheckedPosition:I

    .line 200
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isTrackingSeekBar:Z

    return-void
.end method

.method private handleAddIndexButtonTouchUp()V
    .locals 1

    .line 976
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_ADD_INDEX:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execCommand(Lcom/metamoji/nt/NtCommand;)V

    return-void
.end method

.method private handleCloseButtonTouchUp()V
    .locals 2

    .line 917
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    .line 918
    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PREPARED_TO_PLAY:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v1, :cond_1

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handlePlayButtonTouchUp()V

    .line 922
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 924
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->hidePlayerBar()V

    :cond_2
    return-void
.end method

.method private handleDetachLinkLongPressIndex(I)V
    .locals 7

    .line 2975
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2980
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v1, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2981
    const-string v2, "$ticket"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2982
    const-string v3, "$id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2983
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v4

    .line 2984
    invoke-static {v4}, Lcom/metamoji/media/voice/VcUtil;->getVoiceTagInstances(Lcom/metamoji/ctold/CtTagManager;)Ljava/util/List;

    move-result-object v4

    .line 2985
    invoke-static {v2, v4}, Lcom/metamoji/media/voice/VcUtil;->getTagInstances(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2987
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 2988
    const-string v5, "indexId"

    invoke-virtual {v4, v5}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ctold/property/CtProperty;->getStringValue()Ljava/lang/String;

    move-result-object v5

    .line 2989
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 2991
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v2, 0x0

    .line 2992
    invoke-static {v4, v0, v2}, Lcom/metamoji/media/voice/VcUtil;->detachVoiceTag(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/controller/EditContext;)V

    .line 2994
    const-string/jumbo v0, "voiceTag"

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2996
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->reloadTrackTableRow(Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleMenuButtonTouchUp()V
    .locals 12

    .line 933
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 937
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 939
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v1

    .line 940
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 941
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_VC_SHOW_PLAYLIST:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->Voice_ShowPlaylist:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->vc_player_playlist:I

    sget v8, Lcom/metamoji/noteanytime/R$drawable;->vc_player_playlist:I

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;III)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isShowWaveView()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 943
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_VC_SHOW_WAVE_VIEW:Lcom/metamoji/nt/NtCommand;

    sget v8, Lcom/metamoji/noteanytime/R$string;->Voice_HideWaveView:I

    sget v9, Lcom/metamoji/noteanytime/R$drawable;->vc_player_wave_palette:I

    sget v10, Lcom/metamoji/noteanytime/R$drawable;->vc_player_wave_palette:I

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;III)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 945
    :cond_1
    new-instance v6, Lcom/metamoji/ui/UiMenuItem;

    sget-object v7, Lcom/metamoji/nt/NtCommand;->CMD_VC_SHOW_WAVE_VIEW:Lcom/metamoji/nt/NtCommand;

    sget v9, Lcom/metamoji/noteanytime/R$string;->Voice_SshowWaveView:I

    sget v10, Lcom/metamoji/noteanytime/R$drawable;->vc_player_wave_palette:I

    sget v11, Lcom/metamoji/noteanytime/R$drawable;->vc_player_wave_palette:I

    const/4 v8, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;III)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_ADD_INDEX:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 948
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_VC_ADD_INDEX:Lcom/metamoji/nt/NtCommand;

    sget v8, Lcom/metamoji/noteanytime/R$string;->Voice_AddLabel:I

    sget v9, Lcom/metamoji/noteanytime/R$drawable;->vc_player_add_label:I

    sget v10, Lcom/metamoji/noteanytime/R$drawable;->vc_player_add_label:I

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/Object;III)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_2
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_menuButton:Lcom/metamoji/ui/common/UiImageButton;

    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_UP:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/metamoji/ui/flexible/FxManager;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private handlePlayBackwardButtonTouchUp()V
    .locals 15

    .line 743
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getCurrentTime()D

    move-result-wide v0

    .line 745
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 746
    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 747
    const-string v4, "$ticket"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 748
    const-string v5, "$id"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 750
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->resetAutoStopRange()V

    .line 752
    iget-object v7, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    .line 754
    const-string v7, "$startTime"

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_0

    .line 755
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 756
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    goto :goto_0

    :cond_0
    move-wide v11, v9

    :goto_0
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-double/2addr v13, v11

    cmpg-double v0, v13, v0

    if-gtz v0, :cond_1

    .line 759
    invoke-virtual {p0, v11, v12, v4}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execSeekToTime(DLjava/lang/String;)V

    return-void

    .line 761
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v6, :cond_4

    .line 764
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_4

    .line 765
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 766
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    cmpl-double v1, v9, v11

    if-nez v1, :cond_4

    .line 769
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 773
    :cond_2
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 774
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    cmpg-double v1, v1, v11

    if-gez v1, :cond_3

    goto :goto_2

    .line 764
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 781
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_5

    const/4 v0, 0x0

    .line 782
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 784
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execSeekToTrack(I)V

    return-void
.end method

.method private handlePlayBackwardStepButtonTouchUp()V
    .locals 14

    .line 816
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 825
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v0

    .line 826
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/voice/audio/VcPlayer;->getCurrentTime()D

    move-result-wide v2

    .line 828
    iget-object v4, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v4

    .line 831
    iget-object v5, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    const/4 v5, 0x0

    :goto_0
    if-ltz v4, :cond_9

    .line 834
    iget-object v7, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v7}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v7

    if-gt v7, v4, :cond_2

    goto :goto_3

    .line 837
    :cond_2
    iget-object v7, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v7, v4}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 838
    const-string v8, "$ticket"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    if-nez v5, :cond_5

    .line 840
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v12, v2

    if-gez v5, :cond_4

    cmpg-double v1, v2, v10

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    sub-double v8, v2, v10

    .line 844
    :goto_1
    invoke-virtual {p0, v8, v9, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execSeekToTime(DLjava/lang/String;)V

    return-void

    :cond_4
    move v5, v6

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_8

    .line 849
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_3

    .line 853
    :cond_6
    invoke-virtual {v1, v7}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getDuration(Ljava/lang/String;)D

    move-result-wide v0

    cmpg-double v2, v0, v10

    if-gez v2, :cond_7

    goto :goto_2

    :cond_7
    sub-double v8, v0, v10

    .line 855
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->resetAutoStopRange()V

    .line 856
    invoke-virtual {p0, v8, v9, v7}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execSeekToTime(DLjava/lang/String;)V

    return-void

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_9
    :goto_4
    return-void
.end method

.method private handlePlayForwardButtonTouchUp()V
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 803
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->resetAutoStopRange()V

    .line 805
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    iput-boolean v1, v2, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    .line 807
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execSeekToTrack(I)V

    return-void
.end method

.method private handlePlayForwardStepButtonTouchUp()V
    .locals 11

    .line 866
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 870
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 875
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v0

    .line 876
    invoke-virtual {v1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getDuration(Ljava/lang/String;)D

    move-result-wide v1

    .line 877
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/media/voice/audio/VcPlayer;->getCurrentTime()D

    move-result-wide v3

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    add-double/2addr v3, v5

    .line 880
    iget-object v5, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_5

    .line 885
    iget-object v5, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    .line 886
    iget-object v7, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v7}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v5, v7, :cond_5

    .line 889
    iget-object v9, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v9, v5}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 890
    const-string v10, "$ticket"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 892
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    .line 896
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->resetAutoStopRange()V

    const-wide/16 v0, 0x0

    .line 897
    invoke-virtual {p0, v0, v1, v9}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execSeekToTime(DLjava/lang/String;)V

    return-void

    :cond_3
    if-nez v8, :cond_4

    .line 899
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v8, v6

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    cmpl-double v5, v3, v1

    if-lez v5, :cond_6

    goto :goto_3

    :cond_6
    move-wide v1, v3

    .line 909
    :goto_3
    invoke-virtual {p0, v1, v2, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execSeekToTime(DLjava/lang/String;)V

    return-void
.end method

.method private handleSaveToFile(I)V
    .locals 1

    .line 3017
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 3018
    const-string v0, "$ticket"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3020
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_SAVE_TO_FILE:Lcom/metamoji/nt/NtCommand;

    invoke-static {v0, p1}, Lcom/metamoji/media/voice/VcUtil;->exportRecordingFile(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;)V

    return-void
.end method

.method private handleSendToApplication(I)V
    .locals 1

    .line 3009
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 3010
    const-string v0, "$ticket"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3012
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_SEND_TO_APPLICATION:Lcom/metamoji/nt/NtCommand;

    invoke-static {v0, p1}, Lcom/metamoji/media/voice/VcUtil;->exportRecordingFile(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;)V

    return-void
.end method

.method private post(Ljava/lang/Runnable;)V
    .locals 1

    .line 552
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private reloadTrackTableRow(Ljava/lang/Integer;)V
    .locals 3

    .line 1486
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->getListViewItem(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1490
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v1, p1, v0, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private renameTitle(ILjava/lang/String;)V
    .locals 5

    .line 2920
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2921
    const-string v1, "$ticket"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2922
    const-string v2, "$id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2925
    new-instance v3, Lcom/metamoji/cm/CmContext;

    invoke-direct {v3}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 2926
    const-string/jumbo v4, "ticket"

    invoke-virtual {v3, v4, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2928
    const-string v1, "$title"

    if-eqz v2, :cond_0

    .line 2929
    const-string v4, "indexId"

    invoke-virtual {v3, v4, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2930
    const-string v2, "indexTitle"

    invoke-virtual {v3, v2, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2931
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_VC_RENAME_INDEX_TITLE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    .line 2932
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2934
    :cond_0
    const-string v2, "recirdingTitle"

    invoke-virtual {v3, v2, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2935
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_VC_RENAME_RECORDING_TITLE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    .line 2936
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2939
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->reloadTrackTableRow(Ljava/lang/Integer;)V

    .line 2940
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectTrackTable(I)V

    const/4 p1, 0x0

    .line 2942
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTotalElapsedTimeAndTrackTableSelection(Ljava/lang/Number;)D

    .line 2943
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateRecordNameLabel()V

    return-void
.end method

.method private updateTrackButtonSelected()V
    .locals 1

    .line 1001
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackButton:Lcom/metamoji/ui/common/UiImageButton;

    if-nez v0, :cond_0

    return-void

    .line 1004
    :cond_0
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$16;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$16;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-direct {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateWavePaletteButtonSelected()V
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_wavePaletteButton:Lcom/metamoji/ui/common/UiImageButton;

    if-nez v0, :cond_0

    return-void

    .line 1022
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isShowWaveView()Z

    move-result v0

    .line 1023
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_wavePaletteButton:Lcom/metamoji/ui/common/UiImageButton;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiImageButton;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method canEdit()Z
    .locals 2

    .line 2273
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2275
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_START_RECORDING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method canUpdateTrackTableSelection()Z
    .locals 3

    .line 2288
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 2292
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingMenu:Z

    if-ne v0, v2, :cond_1

    return v1

    .line 2295
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingRemoveTrackAlert:Z

    if-ne v0, v2, :cond_2

    return v1

    .line 2298
    :cond_2
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingRenameTrackDialog:Z

    if-ne v0, v2, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public didAddTicket()V
    .locals 1

    .line 1213
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$22;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$22;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-direct {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public didChangeCurrentTrack(Ljava/lang/Number;)V
    .locals 1

    .line 1285
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$25;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$25;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public didDownloadCacheFileToPlay()V
    .locals 2

    .line 1319
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    if-eqz v0, :cond_0

    .line 1320
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->canEdit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcWaveView;->didDownloadCacheFileToPlay(Z)V

    :cond_0
    return-void
.end method

.method public didRemoveTicket(Ljava/lang/String;)V
    .locals 1

    .line 1228
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public didStopPlayerForce()V
    .locals 1

    .line 1268
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->stopUpdateTimer()V

    .line 1270
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$24;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$24;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-direct {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public didUpdateModel(Z)V
    .locals 1

    .line 1299
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$26;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$26;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V

    invoke-direct {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dragStart()V
    .locals 0

    return-void
.end method

.method enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)V
    .locals 1

    .line 1800
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1805
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    return-void
.end method

.method enabledPlayBackward(I)Z
    .locals 7

    .line 1890
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v0

    if-gt v0, p1, :cond_1

    return v1

    .line 1896
    :cond_1
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getCurrentTime()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v0, v5, v3

    if-gez v0, :cond_2

    return v2

    :cond_2
    move v0, v2

    :goto_0
    if-gt v0, p1, :cond_5

    .line 1901
    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v3, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1902
    const-string v4, "$id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3

    return v2

    .line 1906
    :cond_3
    const-string v4, "$startTime"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 1907
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpg-double v3, v5, v3

    if-gez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method enabledPlayForward(I)Z
    .locals 3

    .line 1925
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method execCommand(Lcom/metamoji/nt/NtCommand;)V
    .locals 1

    .line 1756
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1757
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 1769
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1774
    :cond_0
    const-string v1, "delegate"

    invoke-virtual {p2, v1, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1775
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtCommandManager;->execCommandOnBackground(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method execSeekToTime(D)V
    .locals 10

    .line 1688
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v5, v3

    move-wide v3, v1

    .line 1690
    :goto_0
    const-string v6, "$ticket"

    if-ge v5, v0, :cond_2

    .line 1692
    iget-object v7, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v7, v5}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 1693
    const-string v8, "$duration"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    if-nez v8, :cond_0

    goto :goto_1

    .line 1697
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    cmpg-double v8, v1, p1

    if-gtz v8, :cond_1

    add-double v8, v1, v3

    cmpg-double v8, p1, v8

    if-gez v8, :cond_1

    .line 1700
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_1
    add-double/2addr v1, v3

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_3

    .line 1708
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 1709
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_3
    sub-double v3, p1, v1

    .line 1714
    :goto_3
    iput-wide v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_elapsedTime:D

    .line 1716
    invoke-virtual {p0, v3, v4, v5}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execSeekToTime(DLjava/lang/String;)V

    return-void
.end method

.method execSeekToTime(DLjava/lang/String;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 1730
    :cond_0
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    .line 1731
    sget-object v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYING_STATUS:[I

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1741
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1742
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 1743
    const-string/jumbo p2, "ticket"

    invoke-virtual {v0, p2, p3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1744
    const-string/jumbo p2, "startTime"

    invoke-virtual {v0, p2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1745
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_VC_SEEK_TO_TIME:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 1735
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->stopUpdateTimer()V

    .line 1736
    invoke-static {p3, p1, p2, p1, p2}, Lcom/metamoji/media/voice/VcUtil;->playTicket(Ljava/lang/String;DD)V

    return-void
.end method

.method execSeekToTrack(I)V
    .locals 3

    if-ltz p1, :cond_2

    .line 1663
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_1

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 1668
    const-string v0, "$ticket"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1669
    const-string v1, "$id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1673
    const-string v1, "$startTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 1674
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    .line 1676
    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execSeekToTime(DLjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 2305
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    return-object v0
.end method

.method public getListViewItem(I)Landroid/view/View;
    .locals 2

    .line 2314
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2315
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public handleCheckButtonCheckedChanged(IZ)V
    .locals 3

    .line 2843
    iget v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_checkedPosition:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 2834
    iput p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_checkedPosition:I

    if-ltz v0, :cond_1

    .line 2837
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->getListViewItem(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2839
    sget p2, Lcom/metamoji/noteanytime/R$id;->vc_playlist_item_check:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    .line 2840
    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    .line 2844
    iput p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_checkedPosition:I

    .line 2846
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_listener:Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;

    if-eqz p1, :cond_3

    .line 2847
    iget p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_checkedPosition:I

    if-ltz p2, :cond_2

    move v1, v2

    :cond_2
    invoke-interface {p1, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;->onChangedChecked(Z)V

    :cond_3
    return-void
.end method

.method public handleDeleteTrackButtonTouchUp()V
    .locals 1

    .line 2823
    iget v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_checkedPosition:I

    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->removeRecordingForRowAtIndexPath(I)V

    return-void
.end method

.method handleEditTrackButtonTouchUp()V
    .locals 1

    .line 2792
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setEditing(Z)V

    return-void
.end method

.method public handlePlayButtonTouchUp()V
    .locals 1

    .line 793
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execCommand(Lcom/metamoji/nt/NtCommand;)V

    return-void
.end method

.method handlePlayRangeButtonTouchUp(I)V
    .locals 1

    .line 2858
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->playLabelFromRow(I)V

    .line 2860
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 2861
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->tagJump(Ljava/util/Map;)V

    return-void
.end method

.method handleRenameLongPressTrack(I)V
    .locals 3

    .line 2897
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2898
    const-string v1, "$title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2900
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 2902
    :cond_0
    new-instance v0, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;

    invoke-direct {v0}, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;-><init>()V

    .line 2903
    invoke-virtual {v0, v2}, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->init(Ljava/lang/String;)V

    .line 2904
    new-instance v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$35;

    invoke-direct {v1, p0, p1, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$35;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;ILcom/metamoji/media/voice/ui/VcRenameTitleDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    const/4 p1, 0x1

    .line 2914
    iput-boolean p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingRenameTrackDialog:Z

    .line 2915
    const-string p1, "VcRenameTitle"

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/ui/VcRenameTitleDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public handleResizeButtonTouchUp()V
    .locals 3

    .line 959
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 963
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveView:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 960
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 961
    iput-boolean v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingWaveView:Z

    goto :goto_0

    .line 963
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 964
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingWaveView:Z

    .line 966
    :goto_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_wavePaletteButton:Lcom/metamoji/ui/common/UiImageButton;

    if-eqz v0, :cond_1

    .line 967
    iget-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingWaveView:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiImageButton;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public handleTrackButtonTouchUp()V
    .locals 3

    .line 984
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isPhone:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->showPlaylistDialog()V

    return-void

    .line 987
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 989
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->isShowPlaylist()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 990
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->hidePlaylist()V

    goto :goto_0

    .line 992
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->showPlaylist()V

    .line 995
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTrackButtonSelected()V

    return-void
.end method

.method public isEditing()Z
    .locals 1

    .line 2247
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isEditing:Z

    return v0
.end method

.method public isEditingAndChecked()Z
    .locals 2

    .line 2254
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2257
    :cond_0
    iget v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_checkedPosition:I

    if-gez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isPlayingRange()Z
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_playingRangeIndexId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isShowWaveView()Z
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 229
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->getView()Landroid/view/View;

    move-result-object v0

    .line 234
    iget-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isPhone:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 236
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_menu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiImageButton;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_menuButton:Lcom/metamoji/ui/common/UiImageButton;

    .line 237
    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiImageButton;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_menuButton:Lcom/metamoji/ui/common/UiImageButton;

    new-instance v4, Lcom/metamoji/media/voice/ui/VcPlayerBar$1;

    invoke-direct {v4, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$1;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_editor_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 245
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_elapsed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 248
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_remaining:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 251
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 256
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_playlist:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiImageButton;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackButton:Lcom/metamoji/ui/common/UiImageButton;

    .line 257
    new-instance v4, Lcom/metamoji/media/voice/ui/VcPlayerBar$2;

    invoke-direct {v4, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$2;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_wave_palette:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiImageButton;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_wavePaletteButton:Lcom/metamoji/ui/common/UiImageButton;

    .line 264
    new-instance v4, Lcom/metamoji/media/voice/ui/VcPlayerBar$3;

    invoke-direct {v4, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$3;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_add_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiImageButton;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_addIndexButton:Lcom/metamoji/ui/common/UiImageButton;

    .line 275
    new-instance v4, Lcom/metamoji/media/voice/ui/VcPlayerBar$4;

    invoke-direct {v4, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$4;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_elapsed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_elapsedTimeLabel:Landroid/widget/TextView;

    .line 284
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_remaining:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_remainingTimeLabel:Landroid/widget/TextView;

    .line 289
    :goto_0
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_return:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiImageButton;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_backwardButton:Lcom/metamoji/ui/common/UiImageButton;

    .line 290
    new-instance v4, Lcom/metamoji/media/voice/ui/VcPlayerBar$5;

    invoke-direct {v4, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$5;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiImageButton;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_playButton:Lcom/metamoji/ui/common/UiImageButton;

    .line 297
    new-instance v4, Lcom/metamoji/media/voice/ui/VcPlayerBar$6;

    invoke-direct {v4, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$6;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_send:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiImageButton;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_forwardButton:Lcom/metamoji/ui/common/UiImageButton;

    .line 304
    new-instance v4, Lcom/metamoji/media/voice/ui/VcPlayerBar$7;

    invoke-direct {v4, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$7;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_backward_step:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiImageButton;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_backwardStepButton:Lcom/metamoji/ui/common/UiImageButton;

    .line 311
    new-instance v4, Lcom/metamoji/media/voice/ui/VcPlayerBar$8;

    invoke-direct {v4, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$8;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_forward_step:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiImageButton;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_forwardStepButton:Lcom/metamoji/ui/common/UiImageButton;

    .line 317
    new-instance v4, Lcom/metamoji/media/voice/ui/VcPlayerBar$9;

    invoke-direct {v4, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$9;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isPhone:Z

    .line 326
    iget-object v4, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_backwardStepButton:Lcom/metamoji/ui/common/UiImageButton;

    if-nez v1, :cond_1

    .line 323
    invoke-virtual {v4, v3}, Lcom/metamoji/ui/common/UiImageButton;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_forwardStepButton:Lcom/metamoji/ui/common/UiImageButton;

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiImageButton;->setVisibility(I)V

    goto :goto_1

    .line 326
    :cond_1
    invoke-virtual {v4, v2}, Lcom/metamoji/ui/common/UiImageButton;->setVisibility(I)V

    .line 327
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_forwardStepButton:Lcom/metamoji/ui/common/UiImageButton;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiImageButton;->setVisibility(I)V

    .line 331
    :goto_1
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_slider:Landroid/widget/SeekBar;

    .line 332
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 333
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_slider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 334
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_slider:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 336
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiImageButton;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_closeButton:Lcom/metamoji/ui/common/UiImageButton;

    .line 337
    new-instance v4, Lcom/metamoji/media/voice/ui/VcPlayerBar$10;

    invoke-direct {v4, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$10;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_player_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_recordNameLabel:Landroid/widget/TextView;

    const/16 v4, 0x11

    .line 344
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 347
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_wave_scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveView:Landroid/view/View;

    .line 348
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    sget v1, Lcom/metamoji/noteanytime/R$id;->vc_wave_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/voice/ui/VcWaveView;

    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    .line 351
    invoke-virtual {v0, p0}, Lcom/metamoji/media/voice/ui/VcWaveView;->setWaveListener(Lcom/metamoji/media/voice/ui/VcWaveView$WaveScrollViewListener;)V

    .line 354
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    .line 355
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 356
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 357
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isPhone:Z

    if-ne v0, v1, :cond_2

    .line 358
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    sget v2, Lcom/metamoji/noteanytime/R$drawable;->collabo_bar_list_frame:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    new-instance v2, Lcom/metamoji/media/voice/ui/VcPlayerBar$11;

    invoke-direct {v2, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$11;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    if-eqz p1, :cond_6

    .line 376
    const-string v0, "hidden"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 377
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 379
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->hidePlayerBar()V

    goto :goto_2

    .line 385
    :cond_3
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$12;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$12;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-direct {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    .line 391
    :cond_4
    :goto_2
    const-string v0, "editing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 392
    invoke-virtual {p0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setEditing(Z)V

    .line 394
    :cond_5
    const-string/jumbo v0, "showingWaveView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingWaveView:Z

    .line 395
    const-string/jumbo v0, "showingRename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingRenameTrackDialog:Z

    .line 396
    const-string/jumbo v0, "showingRemove"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingRemoveTrackAlert:Z

    .line 397
    const-string v0, "checkedPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_savedCheckedPosition:I

    .line 403
    :cond_6
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 405
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    .line 407
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateToolBar()V

    .line 410
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateSliderMax()V

    .line 413
    iget-boolean p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingWaveView:Z

    if-ne p1, v1, :cond_8

    .line 414
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :cond_8
    invoke-virtual {p0, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateWaveView(Z)V

    .line 419
    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTrackButtonSelected()V

    .line 420
    invoke-direct {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateWavePaletteButtonSelected()V

    .line 421
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updatePlayButtonImage()V

    return-void
.end method

.method public onClose()V
    .locals 2

    const/4 v0, 0x0

    .line 2708
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingMenu:Z

    .line 2709
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->canUpdateTrackTableSelection()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2710
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTotalElapsedTimeAndTrackTableSelection(Ljava/lang/Number;)D

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 205
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 206
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setRetainInstance(Z)V

    .line 207
    new-instance p1, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 224
    sget p3, Lcom/metamoji/noteanytime/R$layout;->vc_player:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->onShow()V

    return-void

    .line 574
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->onHide()V

    return-void
.end method

.method public onHide()V
    .locals 2

    .line 640
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->mShowing:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 643
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->mShowing:Z

    .line 645
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingWaveView:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 646
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleResizeButtonTouchUp()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2538
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isEditing()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2539
    invoke-virtual {p0, p3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleRenameLongPressTrack(I)V

    return-void

    .line 2543
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->stopUpdateTimer()V

    .line 2545
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->resetAutoStopRange()V

    .line 2547
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    iput-boolean p2, p1, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    .line 2550
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {p1, p3}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 2551
    const-string p2, "$ticket"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2552
    const-string p3, "$id"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 2554
    const-string p3, "$startTime"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    .line 2555
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    .line 2556
    invoke-static {p2, p3, p4, p3, p4}, Lcom/metamoji/media/voice/VcUtil;->playTicket(Ljava/lang/String;DD)V

    goto :goto_0

    .line 2558
    :cond_1
    const-string p3, "$startDate"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    .line 2559
    new-instance p4, Ljava/util/Date;

    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v0

    double-to-long v0, v2

    invoke-direct {p4, v0, v1}, Ljava/util/Date;-><init>(J)V

    const/4 p3, 0x0

    .line 2560
    invoke-static {p2, p4, p3}, Lcom/metamoji/media/voice/VcUtil;->playFromDate(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 2564
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->tagJump(Ljava/util/Map;)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 2572
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return p4

    .line 2576
    :cond_0
    iget-object p5, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_listener:Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;

    if-nez p5, :cond_1

    return p4

    .line 2579
    :cond_1
    invoke-interface {p5}, Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;->getCustumMenuView()Lcom/metamoji/ui/CustomMenuView;

    move-result-object p5

    if-nez p5, :cond_2

    return p4

    .line 2583
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    if-nez v0, :cond_3

    return p4

    .line 2588
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2589
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v2, p3}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2590
    const-string v3, "$ticket"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2591
    const-string v4, "$id"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2592
    invoke-virtual {v0, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasTicket(Ljava/lang/String;)Z

    move-result v0

    .line 2594
    invoke-virtual {p0, p3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectTrackTable(I)V

    .line 2603
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->canEdit()Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 2606
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v6, Lcom/metamoji/ui/PopupCommand;->VOICE_RENAME_TITLE:Lcom/metamoji/ui/PopupCommand;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/metamoji/noteanytime/R$string;->VOICE_RENAME_TITLE:I

    invoke-direct {v3, v6, v7, v8}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2608
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isPlayingRange()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2609
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v6, Lcom/metamoji/ui/PopupCommand;->VOICE_DELETE_TRACK:Lcom/metamoji/ui/PopupCommand;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/metamoji/noteanytime/R$string;->DELETE_TRACK:I

    invoke-direct {v3, v6, v7, v8}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v4, :cond_6

    .line 2615
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2631
    const-string/jumbo v6, "voiceTag"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 2632
    new-instance v6, Lcom/metamoji/ui/UiMenuItem;

    sget-object v7, Lcom/metamoji/ui/PopupCommand;->VOICE_DETACH_LINK:Lcom/metamoji/ui/PopupCommand;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/metamoji/noteanytime/R$string;->Voice_DetachLink:I

    invoke-direct {v6, v7, v8, v9}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2634
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2635
    new-instance v6, Lcom/metamoji/ui/UiMenuItem;

    sget v7, Lcom/metamoji/noteanytime/R$string;->Voice_LinkMenu:I

    invoke-direct {v6, v3, v7, p4, p4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    .line 2636
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v2, :cond_9

    if-nez v4, :cond_9

    if-ne v5, v0, :cond_9

    .line 2642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2646
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_VC_SEND_TO_APPLICATION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2647
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->VOICE_SEND_TO_APPLICATION:Lcom/metamoji/ui/PopupCommand;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v6, Lcom/metamoji/noteanytime/R$string;->SendWindow_Application:I

    invoke-direct {v2, v3, v4, v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2650
    :cond_7
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_VC_SAVE_TO_FILE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2651
    new-instance p1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->VOICE_SAVE_TO_FILE:Lcom/metamoji/ui/PopupCommand;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget v3, Lcom/metamoji/noteanytime/R$string;->Share_SaveToFile:I

    invoke-direct {p1, v2, p3, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2653
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 2654
    new-instance p1, Lcom/metamoji/ui/UiMenuItem;

    sget p3, Lcom/metamoji/noteanytime/R$string;->Menu_Send:I

    invoke-direct {p1, v0, p3, p4, p4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    .line 2655
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2659
    :cond_9
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p1, p4, p4, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p3, 0x0

    .line 2660
    invoke-static {p1, p2, p3}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    const/16 p2, 0xa

    .line 2661
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Rect;->inset(II)V

    .line 2662
    iput-boolean v5, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingMenu:Z

    .line 2663
    invoke-virtual {p5, v1, p0, p0, p1}, Lcom/metamoji/ui/CustomMenuView;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/graphics/Rect;)V

    return v5
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    const/4 p2, 0x0

    .line 1329
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateElapsedTimeAndRemainTimeLabel(Ljava/lang/Number;)V

    .line 1332
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateRecordNameWithSliderValue(I)V

    .line 1335
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateToolBar()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 212
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 214
    const-string v0, "hidden"

    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isHidden()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    const-string v0, "editing"

    iget-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isEditing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    const-string/jumbo v0, "showingWaveView"

    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isShowWaveView()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    const-string/jumbo v0, "showingRename"

    iget-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingRenameTrackDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    const-string/jumbo v0, "showingRemove"

    iget-boolean v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingRemoveTrackAlert:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    const-string v0, "checkedPosition"

    iget v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_savedCheckedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2673
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2675
    sget-object p3, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    check-cast p2, Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {p2}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_4

    const/4 p3, 0x2

    if-eq p2, p3, :cond_3

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    const/4 p3, 0x4

    if-eq p2, p3, :cond_1

    const/4 p3, 0x5

    if-eq p2, p3, :cond_0

    return-void

    .line 2696
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleSaveToFile(I)V

    return-void

    .line 2693
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleSendToApplication(I)V

    return-void

    .line 2689
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleDetachLinkLongPressIndex(I)V

    return-void

    .line 2680
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleRenameLongPressTrack(I)V

    return-void

    .line 2677
    :cond_4
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->removeRecordingForRowAtIndexPath(I)V

    return-void
.end method

.method public onShow()V
    .locals 4

    .line 605
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->mShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 608
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->mShowing:Z

    .line 610
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTrackTable()V

    .line 613
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    .line 614
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v1

    .line 615
    sget-object v2, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 616
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 617
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setFirstRecordingTicket()V

    .line 621
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTotalDuration()V

    .line 622
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updatePlayButtonImage()V

    const/4 v1, 0x0

    .line 623
    invoke-virtual {p0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V

    .line 626
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/media/voice/ui/VcPlayerBar$14;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$14;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Lcom/metamoji/media/voice/controller/VcRecordingsController;)V

    invoke-virtual {v2, v3, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 595
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 596
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->onShow()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 1340
    iput-boolean p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isTrackingSeekBar:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    const/4 p1, 0x0

    .line 1345
    iput-boolean p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isTrackingSeekBar:Z

    const/4 p1, 0x0

    .line 1348
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateElapsedTimeAndRemainTimeLabel(Ljava/lang/Number;)V

    .line 1350
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    .line 1352
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_slider:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    float-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 1353
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execSeekToTime(D)V

    return-void
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method performJump(Ljava/util/Map;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 3086
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3091
    :cond_0
    const-string v2, "$pageId"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    return v1

    .line 3095
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 3096
    invoke-virtual {p1, v4}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    move-result v1

    const/4 v11, 0x1

    if-gez v1, :cond_2

    return v11

    .line 3100
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 3101
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v2

    .line 3103
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v11, :cond_3

    return v11

    .line 3107
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocumentID()Ljava/lang/String;

    move-result-object v3

    .line 3108
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result v6

    .line 3109
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v1

    .line 3112
    new-instance v2, Lcom/metamoji/nt/NtJumpLocation;

    sget-object v5, Lcom/metamoji/nt/NtLinkJump$Type;->Generic:Lcom/metamoji/nt/NtLinkJump$Type;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/metamoji/nt/NtJumpLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtLinkJump$Type;FFFFF)V

    .line 3114
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/nt/NtJumpLocation;->performJump(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtCommandManager;)Z

    return v11
.end method

.method public playLabel(Ljava/lang/String;)V
    .locals 1

    .line 473
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$13;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$13;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method playLabelFromRow(I)V
    .locals 10

    .line 495
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 496
    const-string v1, "$ticket"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 497
    const-string v2, "$id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    return-void

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->stopUpdateTimer()V

    .line 504
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->resetAutoStopRange()V

    .line 507
    const-string v3, "$startTime"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 508
    const-string v4, "$endTime"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    .line 509
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 510
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    cmpg-double v3, v6, v8

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-gez v3, :cond_1

    .line 512
    iput-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_playingRangeIndexId:Ljava/lang/String;

    .line 513
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_addIndexButton:Lcom/metamoji/ui/common/UiImageButton;

    invoke-virtual {p0, v2, v5}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setEnabledAndGrayout(Landroid/view/View;Z)V

    .line 514
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_endTime:Ljava/lang/Number;

    .line 515
    invoke-virtual {p0, p1, v8}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateRangeButtonImage(IZ)V

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    iput-boolean v8, v0, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    .line 520
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 522
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectTrackTable(I)V

    .line 524
    :cond_2
    invoke-virtual {p0, v5}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateWaveView(Z)V

    .line 526
    invoke-static {v1, v6, v7, v6, v7}, Lcom/metamoji/media/voice/VcUtil;->playTicket(Ljava/lang/String;DD)V

    return-void
.end method

.method public playerDidFinishToPlay(Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V
    .locals 1

    .line 1123
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->stopUpdateTimer()V

    .line 1125
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$21;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYER_ERROR_STATUS;)V

    invoke-direct {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playerStartedToPlay()V
    .locals 1

    .line 1040
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$17;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$17;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-direct {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playerWasPaused()V
    .locals 1

    .line 1084
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->stopUpdateTimer()V

    .line 1085
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$19;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$19;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-direct {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playerWasReadyToPlay()V
    .locals 0

    return-void
.end method

.method public playerWasSeeked()V
    .locals 1

    .line 1098
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$20;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$20;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-direct {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public playerWillFinishToPlay()V
    .locals 0

    .line 1115
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->stopUpdateTimer()V

    return-void
.end method

.method public processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 2

    .line 1587
    sget-object v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1599
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_forwardButton:Lcom/metamoji/ui/common/UiImageButton;

    if-eqz p1, :cond_3

    .line 1600
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setEnabledAndGrayout(Landroid/view/View;Z)V

    return v1

    .line 1594
    :cond_1
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_playButton:Lcom/metamoji/ui/common/UiImageButton;

    if-eqz p1, :cond_3

    .line 1595
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setEnabledAndGrayout(Landroid/view/View;Z)V

    return v1

    .line 1589
    :cond_2
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_backwardButton:Lcom/metamoji/ui/common/UiImageButton;

    if-eqz p1, :cond_3

    .line 1590
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setEnabledAndGrayout(Landroid/view/View;Z)V

    :cond_3
    :goto_0
    return v1

    .line 1604
    :cond_4
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateEditable(Z)V

    return v1
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 0

    .line 1549
    sget-object p2, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1563
    :cond_0
    new-instance p1, Lcom/metamoji/media/voice/ui/VcPlayerBar$29;

    invoke-direct {p1, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$29;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-direct {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1554
    :cond_1
    new-instance p1, Lcom/metamoji/media/voice/ui/VcPlayerBar$28;

    invoke-direct {p1, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$28;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-direct {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->post(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method recordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;
    .locals 2

    .line 427
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 432
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 436
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getRecordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    return-object v0
.end method

.method recordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;
    .locals 2

    .line 440
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 445
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 449
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    return-object v0
.end method

.method public reloadTrackTable(Ljava/lang/String;)V
    .locals 2

    .line 1512
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$27;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$27;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method removeLabel(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 2771
    invoke-static {p2, p3, v0}, Lcom/metamoji/media/voice/VcUtil;->removeIndex(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2774
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {p2, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 2775
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {p2, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->remove(Ljava/lang/Object;)V

    .line 2776
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->notifyDataSetChanged()V

    const/4 p1, -0x1

    .line 2778
    iput p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_checkedPosition:I

    .line 2779
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_listener:Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2780
    invoke-interface {p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;->onChangedChecked(Z)V

    .line 2783
    :cond_0
    invoke-virtual {p0, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateWaveView(Z)V

    .line 2784
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateToolBar()V

    return-void
.end method

.method removeRecordingForRowAtIndexPath(I)V
    .locals 6

    if-ltz p1, :cond_2

    .line 2720
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 2723
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 2724
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2725
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v2, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2726
    const-string v3, "$ticket"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2727
    const-string v4, "$id"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2729
    sget v4, Lcom/metamoji/noteanytime/R$string;->VOICE_DELETE_LABEL:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 2731
    :cond_1
    sget v4, Lcom/metamoji/noteanytime/R$string;->VOICE_DELETE_RECORD:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2733
    :goto_0
    sget v4, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/metamoji/media/voice/ui/VcPlayerBar$32;

    invoke-direct {v5, p0, v2, p1, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar$32;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2745
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_NO:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$33;

    invoke-direct {v1, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$33;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2751
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 2752
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlayerBar$34;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$34;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x1

    .line 2758
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_showingRemoveTrackAlert:Z

    .line 2759
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method resetAutoStopRange()V
    .locals 5

    .line 2202
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isPlayingRange()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2205
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2208
    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 2209
    const-string v4, "$id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2210
    iget-object v4, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_playingRangeIndexId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 2214
    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_endTime:Ljava/lang/Number;

    .line 2215
    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_playingRangeIndexId:Ljava/lang/String;

    .line 2216
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_addIndexButton:Lcom/metamoji/ui/common/UiImageButton;

    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->canEdit()Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setEnabledAndGrayout(Landroid/view/View;Z)V

    .line 2218
    invoke-virtual {p0, v2, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateRangeButtonImage(IZ)V

    .line 2219
    invoke-virtual {p0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateWaveView(Z)V

    return-void
.end method

.method rowFromTicket(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    const/4 v0, -0x1

    .line 1494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1495
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1498
    iget-object v4, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v4, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1500
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1502
    const-string v5, "$ticket"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 1503
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method selectCommand(Lcom/metamoji/nt/NtCommand;I)V
    .locals 1

    .line 1785
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1790
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    return-void
.end method

.method selectTrackTable(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2494
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectTrackTable(IZ)V

    return-void
.end method

.method selectTrackTable(IZ)V
    .locals 2

    if-ltz p1, :cond_4

    .line 2505
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 2508
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-nez p2, :cond_1

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 2512
    :cond_1
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2516
    iget-boolean p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isDraggingTrackTable:Z

    if-ne p2, v1, :cond_2

    goto :goto_0

    .line 2519
    :cond_2
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    .line 2520
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    if-lt v0, p2, :cond_4

    if-ge v1, v0, :cond_3

    goto :goto_0

    .line 2524
    :cond_3
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2526
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object p2

    .line 2527
    sget-object v0, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne p2, v0, :cond_4

    .line 2529
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {p2, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 2530
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->tagJump(Ljava/util/Map;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setEditing(Z)V
    .locals 1

    .line 2800
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isEditing:Z

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2803
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isEditing:Z

    const/4 v0, -0x1

    .line 2804
    iput v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_checkedPosition:I

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 2807
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTotalElapsedTimeAndTrackTableSelection(Ljava/lang/Number;)D

    .line 2809
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateToolBar()V

    .line 2811
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->notifyDataSetChanged()V

    .line 2813
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_listener:Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;

    if-eqz v0, :cond_2

    .line 2814
    invoke-interface {v0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;->onChangedEditing(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method setEnabledAndGrayout(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1623
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$30;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar$30;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setListener(Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_listener:Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;

    return-void
.end method

.method setProgressToSeekBar(D)V
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 2139
    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_slider:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method showPlaylistDialog()V
    .locals 2

    .line 723
    :try_start_0
    new-instance v0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;

    invoke-direct {v0}, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_playlistDialog:Lcom/metamoji/media/voice/ui/VcPlaylistDialog;

    .line 724
    new-instance v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$15;

    invoke-direct {v1, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$15;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 729
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_playlistDialog:Lcom/metamoji/media/voice/ui/VcPlaylistDialog;

    const-string v1, "VcPlaylistDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->safeShow(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x0

    .line 731
    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_playlistDialog:Lcom/metamoji/media/voice/ui/VcPlaylistDialog;

    return-void
.end method

.method public startUpdateCurrentTimeTimer()V
    .locals 8

    .line 1053
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_updateTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 1056
    iput-wide v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_latestUpdateCurrentTime:D

    .line 1057
    new-instance v2, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v2}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_updateTimer:Lcom/metamoji/cm/UiTimer;

    .line 1058
    new-instance v3, Lcom/metamoji/media/voice/ui/VcPlayerBar$18;

    invoke-direct {v3, p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$18;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xa

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V

    return-void
.end method

.method stopUpdateTimer()V
    .locals 1

    .line 1072
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_updateTimer:Lcom/metamoji/cm/UiTimer;

    if-nez v0, :cond_0

    return-void

    .line 1075
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 1076
    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_updateTimer:Lcom/metamoji/cm/UiTimer;

    return-void
.end method

.method tagJump(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3030
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$36;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$36;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Ljava/util/Map;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public updateAll(Z)V
    .locals 0

    .line 1307
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTrackTable()V

    .line 1308
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateWaveView(Z)V

    .line 1309
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTotalDuration()V

    .line 1310
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateCurrentTime()V

    const/4 p1, 0x0

    .line 1311
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V

    return-void
.end method

.method updateCurrentTime()V
    .locals 1

    const/4 v0, 0x0

    .line 2042
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateCurrentTime(Ljava/lang/Number;)V

    return-void
.end method

.method updateCurrentTime(Ljava/lang/Number;)V
    .locals 6

    .line 2052
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateElapsedTimeAndRemainTimeLabel(Ljava/lang/Number;)V

    .line 2053
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateSlider()V

    .line 2054
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateToolBar()V

    .line 2056
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    iget-wide v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_elapsedTime:D

    iget-wide v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_currentStartTime:D

    sub-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/voice/ui/VcWaveView;->updateCurrentTime(D)V

    .line 2058
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isPlayingRange()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_endTime:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 2060
    iget-wide v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_elapsedTime:D

    iget-wide v4, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_currentStartTime:D

    sub-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 2061
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->resetAutoStopRange()V

    .line 2062
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execCommand(Lcom/metamoji/nt/NtCommand;)V

    .line 2063
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTotalElapsedTimeAndTrackTableSelection(Ljava/lang/Number;)D

    :cond_0
    return-void
.end method

.method updateEditable(Z)V
    .locals 2

    .line 1817
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$31;-><init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateElapsedTimeAndRemainTimeLabel(Ljava/lang/Number;)V
    .locals 7

    .line 2077
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    .line 2078
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_slider:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 2079
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    .line 2082
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTotalElapsedTimeAndTrackTableSelection(Ljava/lang/Number;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_elapsedTime:D

    .line 2084
    iget-boolean p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isTrackingSeekBar:Z

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    sget-object p1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PREPARED_TO_PLAY:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2087
    :cond_0
    iget-wide v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_elapsedTime:D

    double-to-int p1, v0

    goto :goto_1

    .line 2085
    :cond_1
    :goto_0
    div-int/lit16 p1, v1, 0x3e8

    .line 2089
    :goto_1
    div-int/lit16 v0, p1, 0xe10

    mul-int/lit16 v1, v0, 0xe10

    sub-int v1, p1, v1

    .line 2090
    div-int/lit8 v2, v1, 0x3c

    .line 2091
    rem-int/lit8 v1, v1, 0x3c

    .line 2093
    iget-wide v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_duration:D

    int-to-double v5, p1

    sub-double/2addr v3, v5

    double-to-int p1, v3

    .line 2094
    div-int/lit16 v3, p1, 0xe10

    mul-int/lit16 v4, v3, 0xe10

    sub-int/2addr p1, v4

    .line 2095
    div-int/lit8 v4, p1, 0x3c

    .line 2096
    rem-int/lit8 p1, p1, 0x3c

    .line 2098
    iget-object v5, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_elapsedTimeLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 2099
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, " %02d:%02d:%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2100
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_elapsedTimeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2102
    :cond_2
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_remainingTimeLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 2103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, " -%02d:%02d:%02d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2104
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_remainingTimeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method updatePlayButtonImage()V
    .locals 2

    .line 1939
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    .line 1940
    sget-object v1, Lcom/metamoji/media/voice/ui/VcPlayerBar$37;->$SwitchMap$com$metamoji$media$voice$audio$VcPlayer$VC_PLAYING_STATUS:[I

    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_playButton:Lcom/metamoji/ui/common/UiImageButton;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->vc_player_play:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiImageButton;->setImageResource(I)V

    return-void

    .line 1943
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_playButton:Lcom/metamoji/ui/common/UiImageButton;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->vc_player_pause:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiImageButton;->setImageResource(I)V

    return-void
.end method

.method updateRangeButtonImage(IZ)V
    .locals 1

    .line 2228
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->getListViewItem(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2232
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->vc_playlist_item_range:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 2236
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method updateRecordNameLabel()V
    .locals 2

    .line 2022
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_recordNameLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2025
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .line 2029
    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2033
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_recordNameLabel:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 2031
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2033
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateRecordNameWithSliderValue(I)V
    .locals 11

    int-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 2153
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result p1

    .line 2154
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_3

    .line 2161
    iget-object v6, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v6, v5}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 2162
    const-string v7, "$duration"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    if-nez v7, :cond_1

    goto :goto_1

    .line 2166
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    cmpg-double v9, v3, v0

    if-gtz v9, :cond_2

    add-double v9, v3, v7

    cmpg-double v9, v0, v9

    if-gez v9, :cond_2

    .line 2169
    const-string p1, "$ticket"

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2170
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_recordNameLabel:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    add-double/2addr v3, v7

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method updateSlider()V
    .locals 6

    .line 2114
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isTrackingSeekBar:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2118
    :cond_0
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    .line 2121
    iget-wide v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_duration:D

    cmpl-double v3, v3, v1

    if-lez v3, :cond_4

    .line 2122
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v0

    .line 2124
    sget-object v3, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PREPARED_TO_PLAY:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-eq v0, v3, :cond_1

    iget-wide v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_elapsedTime:D

    cmpl-double v5, v3, v1

    if-eqz v5, :cond_1

    .line 2125
    invoke-virtual {p0, v3, v4}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setProgressToSeekBar(D)V

    return-void

    .line 2126
    :cond_1
    sget-object v3, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PAUSED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v3, :cond_2

    .line 2127
    iget-wide v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_elapsedTime:D

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setProgressToSeekBar(D)V

    return-void

    .line 2128
    :cond_2
    sget-object v3, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->STOPPED:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    if-ne v0, v3, :cond_3

    .line 2129
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setProgressToSeekBar(D)V

    :cond_3
    :goto_0
    return-void

    .line 2132
    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setProgressToSeekBar(D)V

    return-void
.end method

.method updateSliderMax()V
    .locals 5

    .line 1972
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_slider:Landroid/widget/SeekBar;

    const-wide v1, 0x408f400000000000L    # 1000.0

    iget-wide v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_duration:D

    mul-double/2addr v3, v1

    double-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method updateStatusExistRecords()V
    .locals 2

    .line 2483
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_NAVIGATION:Lcom/metamoji/nt/NtCommand;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectCommand(Lcom/metamoji/nt/NtCommand;I)V

    .line 2484
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_ADD_INDEX:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)V

    return-void
.end method

.method updateTimeRange()V
    .locals 8

    .line 1980
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1985
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v0

    .line 1987
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v1

    const-wide/16 v2, 0x0

    .line 1989
    iput-wide v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_currentStartTime:D

    .line 1990
    iput-wide v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_currentEndTime:D

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 1994
    iget-object v5, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v5, v4}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1995
    const-string v6, "$duration"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    if-nez v6, :cond_1

    goto :goto_1

    .line 1999
    :cond_1
    const-string v7, "$ticket"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2000
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    .line 2001
    iput-wide v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_currentStartTime:D

    .line 2002
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_currentEndTime:D

    return-void

    .line 2005
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    add-double/2addr v2, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method updateToolBar()V
    .locals 5

    .line 1849
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 1850
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v1

    .line 1852
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->enabledPlayBackward(I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1853
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_BACKWARD:Lcom/metamoji/nt/NtCommand;

    sget-object v4, Lcom/metamoji/nt/NtCommandManager$Grayout;->ENABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p0, v2, v4}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)V

    goto :goto_0

    .line 1855
    :cond_0
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_BACKWARD:Lcom/metamoji/nt/NtCommand;

    sget-object v4, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p0, v2, v4}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)V

    .line 1857
    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->enabledPlayForward(I)Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1858
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FORWARD:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->ENABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)V

    goto :goto_1

    .line 1860
    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FORWARD:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)V

    :goto_1
    if-lez v1, :cond_2

    .line 1863
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->ENABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)V

    .line 1864
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_slider:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1866
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isPhone:Z

    if-nez v0, :cond_3

    .line 1867
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_backwardStepButton:Lcom/metamoji/ui/common/UiImageButton;

    invoke-virtual {p0, v0, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setEnabledAndGrayout(Landroid/view/View;Z)V

    .line 1868
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_forwardStepButton:Lcom/metamoji/ui/common/UiImageButton;

    invoke-virtual {p0, v0, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setEnabledAndGrayout(Landroid/view/View;Z)V

    return-void

    .line 1871
    :cond_2
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY:Lcom/metamoji/nt/NtCommand;

    sget-object v1, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)V

    .line 1872
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_slider:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1874
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_isPhone:Z

    if-nez v0, :cond_3

    .line 1875
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_backwardStepButton:Lcom/metamoji/ui/common/UiImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setEnabledAndGrayout(Landroid/view/View;Z)V

    .line 1876
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_forwardStepButton:Lcom/metamoji/ui/common/UiImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->setEnabledAndGrayout(Landroid/view/View;Z)V

    :cond_3
    return-void
.end method

.method updateTotalDuration()V
    .locals 6

    .line 1957
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1960
    iget-object v4, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v4, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1961
    const-string v5, "$duration"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    if-nez v4, :cond_0

    goto :goto_1

    .line 1965
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    add-double/2addr v1, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1967
    :cond_1
    iput-wide v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_duration:D

    .line 1968
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateSliderMax()V

    return-void
.end method

.method public updateTotalElapsedTimeAndTrackTableSelection(Ljava/lang/Number;)D
    .locals 21

    move-object/from16 v0, p0

    .line 2411
    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    .line 2416
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2418
    iget-object v1, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    return-wide v2

    :cond_1
    if-eqz p1, :cond_2

    .line 2423
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/media/voice/audio/VcPlayer;->getCurrentTime()D

    move-result-wide v4

    .line 2424
    :goto_0
    iget-object v6, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_updateTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v6, :cond_3

    if-nez p1, :cond_3

    cmpl-double v6, v4, v2

    if-lez v6, :cond_3

    iget-wide v6, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_latestUpdateCurrentTime:D

    cmpg-double v6, v4, v6

    if-gez v6, :cond_3

    .line 2425
    iget-wide v1, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_elapsedTime:D

    return-wide v1

    .line 2427
    :cond_3
    iput-wide v4, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_latestUpdateCurrentTime:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v8, v4, v6

    double-to-int v8, v8

    .line 2433
    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->canUpdateTrackTableSelection()Z

    move-result v9

    .line 2435
    iget-object v10, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v10}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v10

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    const/4 v13, 0x0

    move-wide/from16 v18, v6

    move-wide v15, v11

    move v14, v13

    move/from16 v17, v14

    :goto_1
    const/4 v6, 0x1

    if-ge v14, v10, :cond_8

    .line 2438
    iget-object v7, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v7, v14}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    cmpl-double v20, v11, v15

    if-nez v20, :cond_5

    .line 2442
    const-string v11, "$duration"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    if-eqz v11, :cond_7

    .line 2445
    const-string v12, "$ticket"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2446
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v6, :cond_4

    add-double v15, v2, v4

    goto :goto_2

    .line 2450
    :cond_4
    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    add-double/2addr v2, v6

    goto :goto_2

    :cond_5
    if-eqz v9, :cond_7

    .line 2458
    const-string v11, "$startTime"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    if-nez v7, :cond_6

    add-int/lit8 v1, v17, -0x1

    .line 2460
    invoke-virtual {v0, v1, v13}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectTrackTable(IZ)V

    return-wide v15

    .line 2464
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    mul-double v11, v11, v18

    double-to-int v7, v11

    if-ge v8, v7, :cond_7

    add-int/lit8 v1, v17, -0x1

    .line 2466
    invoke-virtual {v0, v1, v13}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectTrackTable(IZ)V

    return-wide v15

    :cond_7
    :goto_2
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v14, v14, 0x1

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    goto :goto_1

    :cond_8
    if-eqz v9, :cond_9

    add-int/lit8 v1, v17, -0x1

    .line 2473
    invoke-virtual {v0, v1, v13}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->selectTrackTable(IZ)V

    :cond_9
    return-wide v15
.end method

.method public updateTrackTable()V
    .locals 22

    move-object/from16 v0, p0

    .line 2321
    iget-object v1, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->clear()V

    .line 2324
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2329
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2333
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getSortedTicketData()Ljava/util/List;

    move-result-object v2

    .line 2334
    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_0
    return-void

    .line 2339
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2340
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x1

    .line 2341
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2342
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v1

    .line 2343
    invoke-static {v1}, Lcom/metamoji/media/voice/VcUtil;->getVoiceTagInstances(Lcom/metamoji/ctold/CtTagManager;)Ljava/util/List;

    move-result-object v1

    .line 2345
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 2347
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2348
    const-string v10, "$title"

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2349
    const-string v12, "$ticket"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2350
    const-string v14, "$duration"

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    .line 2351
    const-string v5, "$startDate"

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v8, v16

    check-cast v8, Ljava/lang/Number;

    move-object/from16 v16, v2

    .line 2352
    const-string v2, "$nickname"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    check-cast v4, Ljava/lang/String;

    move-object/from16 v18, v6

    .line 2353
    const-string v6, "$pageId"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v1

    move-object/from16 v1, v20

    check-cast v1, Ljava/lang/String;

    .line 2354
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2356
    invoke-interface {v9, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 2358
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 2359
    invoke-interface {v9, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v1, :cond_4

    .line 2361
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 2362
    invoke-interface {v9, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2364
    :cond_4
    iget-object v1, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v1, v9}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->add(Ljava/lang/Object;)V

    .line 2366
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_5

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v6, v19

    goto :goto_2

    :cond_5
    move-object/from16 v6, v18

    .line 2369
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2373
    const-string v2, "$indexes"

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v4, v21

    .line 2374
    invoke-static {v13, v4}, Lcom/metamoji/media/voice/VcUtil;->getTagInstances(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    if-eqz v2, :cond_8

    .line 2376
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 2377
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2378
    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    invoke-interface {v10, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    invoke-interface {v10, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2382
    const-string v11, "$id"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2383
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 2384
    const-string v15, "indexId"

    invoke-virtual {v14, v15}, Lcom/metamoji/ctold/tag/CtTagInstance;->getProperty(Ljava/lang/String;)Lcom/metamoji/ctold/property/CtProperty;

    move-result-object v14

    invoke-virtual {v14}, Lcom/metamoji/ctold/property/CtProperty;->getStringValue()Ljava/lang/String;

    move-result-object v14

    .line 2385
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move/from16 v15, v17

    if-ne v14, v15, :cond_6

    .line 2386
    const-string/jumbo v11, "voiceTag"

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    move/from16 v17, v15

    goto :goto_4

    :cond_7
    move/from16 v15, v17

    .line 2390
    :goto_5
    iget-object v9, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v9, v10}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->add(Ljava/lang/Object;)V

    .line 2391
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v17, 0x1

    goto :goto_3

    :cond_8
    move-object v2, v4

    move-object v4, v1

    move-object v1, v2

    move-object/from16 v2, v16

    const/4 v5, -0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v18, v6

    .line 2395
    iget v1, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_savedCheckedPosition:I

    iput v1, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_checkedPosition:I

    const/4 v1, -0x1

    .line 2396
    iput v1, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_savedCheckedPosition:I

    .line 2397
    iget-object v1, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->notifyDataSetChanged()V

    .line 2398
    iget-object v1, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v15, 0x1

    invoke-virtual {v1, v2, v15}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 2400
    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateStatusExistRecords()V

    return-void
.end method

.method updateWaveView(Z)V
    .locals 4

    .line 2182
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2188
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->canEdit()Z

    move-result v1

    .line 2189
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackTable:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    if-ltz v2, :cond_1

    .line 2190
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isPlayingRange()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 2191
    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 2192
    const-string v3, "$id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2194
    :goto_0
    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2, v1, p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->update(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    return-void
.end method

.method public waveScrollView(Lcom/metamoji/media/voice/ui/VcWaveView;D)V
    .locals 1

    .line 1370
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_waveViewCore:Lcom/metamoji/media/voice/ui/VcWaveView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/metamoji/media/voice/ui/VcWaveView;->autoScrollCurrentToCenter:Z

    .line 1377
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1382
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->getCurrentTicket()Ljava/lang/String;

    move-result-object p1

    .line 1383
    invoke-virtual {p0, p2, p3, p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->execSeekToTime(DLjava/lang/String;)V

    return-void
.end method

.method public waveScrollView(Ljava/lang/String;DD)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 1395
    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v8, -0x1

    .line 1401
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1402
    iget-object v4, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v4}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v9

    const/4 v4, 0x0

    .line 1404
    :goto_0
    const-string v11, "$ticket"

    const-string v12, "$id"

    const/4 v13, 0x0

    const-string v14, "$startTime"

    const/4 v15, 0x1

    if-ge v4, v9, :cond_6

    .line 1405
    iget-object v5, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v5, v4}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1407
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1409
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1410
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1414
    :cond_1
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-wide/from16 v6, p4

    move-object v10, v5

    move/from16 v17, v15

    move-object v15, v2

    move-object v2, v4

    move-wide/from16 v4, p2

    .line 1415
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->setIndexTime(Ljava/lang/String;Ljava/lang/String;DD)V

    .line 1416
    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 1417
    const-string v4, "$endTime"

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    .line 1418
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    cmpl-double v1, v6, v18

    if-nez v1, :cond_2

    move/from16 v1, v17

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    cmpl-double v5, p2, p4

    if-nez v5, :cond_3

    move/from16 v5, v17

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 1422
    :goto_2
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 1423
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 1424
    invoke-interface {v10, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    invoke-interface {v10, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isPlayingRange()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1429
    iput-object v7, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_endTime:Ljava/lang/Number;

    :cond_4
    if-eq v5, v1, :cond_5

    .line 1433
    invoke-direct {v0, v15}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->reloadTrackTableRow(Ljava/lang/Integer;)V

    :cond_5
    move-object v4, v2

    move-object v2, v15

    goto :goto_3

    :cond_6
    move/from16 v17, v15

    move-object v4, v13

    .line 1440
    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1441
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x0

    const/16 v16, 0x0

    :goto_4
    if-ge v10, v9, :cond_b

    .line 1444
    iget-object v6, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v6, v10}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1445
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v16, :cond_7

    .line 1447
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1448
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move/from16 v16, v17

    goto :goto_5

    .line 1453
    :cond_7
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 1454
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1455
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 1458
    :cond_8
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    if-eqz v6, :cond_a

    .line 1459
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpg-double v6, p2, v6

    if-gez v6, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    :goto_6
    move-object v5, v1

    .line 1464
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v8, v3, :cond_c

    .line 1465
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_c
    if-eq v2, v5, :cond_d

    .line 1470
    iget-object v1, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1471
    iget-object v2, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->remove(Ljava/lang/Object;)V

    .line 1472
    iget-object v2, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->insert(Ljava/lang/Object;I)V

    .line 1474
    :cond_d
    sget-object v1, Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;->PLAYING:Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    invoke-static {}, Lcom/metamoji/media/voice/audio/VcPlayer;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/media/voice/audio/VcPlayer;->getPlayingStatus()Lcom/metamoji/media/voice/audio/VcPlayer$VC_PLAYING_STATUS;

    move-result-object v2

    if-eq v1, v2, :cond_e

    .line 1475
    invoke-virtual {v0, v13}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTotalElapsedTimeAndTrackTableSelection(Ljava/lang/Number;)D

    :cond_e
    :goto_7
    return-void
.end method
