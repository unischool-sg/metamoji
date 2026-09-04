.class public Lcom/metamoji/media/ui/MediaUploadedListDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;,
        Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;,
        Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;,
        Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;,
        Lcom/metamoji/media/ui/MediaUploadedListDialog$Header;,
        Lcom/metamoji/media/ui/MediaUploadedListDialog$ValueComparator;,
        Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;,
        Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;,
        Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;,
        Lcom/metamoji/media/ui/MediaUploadedListDialog$HeaderViewHolder;,
        Lcom/metamoji/media/ui/MediaUploadedListDialog$ViewHolder;,
        Lcom/metamoji/media/ui/MediaUploadedListDialog$OrderByStartTime;
    }
.end annotation


# static fields
.field private static final KEY_CURRENTINDEX:Ljava/lang/String; = "currentIndex"

.field private static final KEY_FROMDOCUMENT:Ljava/lang/String; = "fromDocument"

.field private static final KEY_MEDIALIST:Ljava/lang/String; = "mediaList"

.field private static final MEDIA_DATA_KEY_DRIVE_ID:Ljava/lang/String; = "driveId"

.field private static final MEDIA_DATA_KEY_FILE_SIZE:Ljava/lang/String; = "fileSize"

.field private static final MEDIA_DATA_KEY_MEDIA_ID:Ljava/lang/String; = "clientMediaId"

.field private static final MEDIA_DATA_KEY_ORIGINAL_NAME:Ljava/lang/String; = "originalName"

.field private static final MEDIA_DATA_KEY_RECORD_ID:Ljava/lang/String; = "recordId"

.field private static final MEDIA_DATA_KEY_REGIST_NAME:Ljava/lang/String; = "registUserName"

.field private static final MEDIA_DATA_KEY_START_DATE:Ljava/lang/String; = "createMediaTime"

.field private static final MEDIA_DATA_KEY_TITLE:Ljava/lang/String; = "title"

.field private static final MEDIA_DATA_KEY_URL:Ljava/lang/String; = "url"

.field private static final SEEK_TO_PREV:I = 0x3e8

.field private static final SLIDER_UPDATE_SPAN:I = 0x28

.field static final SORTKEY_CLASSBOX:Ljava/lang/String; = "2"

.field static final SORTKEY_DELETED:Ljava/lang/String; = "4"

.field static final SORTKEY_LOCAL:Ljava/lang/String; = "0"

.field static final SORTKEY_PAST_CLASSBOX:Ljava/lang/String; = "3"

.field static final SORTKEY_SHARED:Ljava/lang/String; = "1"


# instance fields
.field private _audio:Landroid/media/MediaPlayer;

.field private _audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

.field private _checked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;",
            ">;"
        }
    .end annotation
.end field

.field _delayDownload:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

.field private _deleteButton:Lcom/metamoji/ui/common/UiButton;

.field private _isEditable:Z

.field private _items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

.field private _list:Landroid/widget/ListView;

.field private _mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _nextButton:Landroid/view/View;

.field private _pauseButton:Landroid/view/View;

.field private _playButton:Landroid/view/View;

.field private _prevButton:Landroid/view/View;

.field private _recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

.field private _rightButton:Lcom/metamoji/ui/common/UiButtonHeader;

.field private _slider:Landroid/widget/SeekBar;

.field _tempCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private _timer:Lcom/metamoji/cm/UiTimer;

.field private _timerJob:Ljava/lang/Runnable;

.field private _tracking:Z


# direct methods
.method static bridge synthetic -$$Nest$fget_audio(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_checked(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_checked:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_isEditable(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_isEditable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_items(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_list(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_mediaList(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_mediaList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_audioState(Lcom/metamoji/media/ui/MediaUploadedListDialog;Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteItems(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->deleteItems()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdownload(Lcom/metamoji/media/ui/MediaUploadedListDialog;Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->download(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitButtonStates(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->initButtonStates()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnextTrack(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->nextTrack()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpause(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->pause()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayWithDownload(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->playWithDownload()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprepareToPlay(Lcom/metamoji/media/ui/MediaUploadedListDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->prepareToPlay(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprevTrack(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->prevTrack()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveRecordFromRecordingsManager(Lcom/metamoji/media/ui/MediaUploadedListDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->removeRecordFromRecordingsManager(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectItem(Lcom/metamoji/media/ui/MediaUploadedListDialog;Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->selectItem(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDataSource(Lcom/metamoji/media/ui/MediaUploadedListDialog;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->setDataSource(Ljava/io/File;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEditable(Lcom/metamoji/media/ui/MediaUploadedListDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->setEditable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPlaying(Lcom/metamoji/media/ui/MediaUploadedListDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->setPlaying(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePosition(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->updatePosition()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 416
    sget-object v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->RESET:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_tracking:Z

    .line 422
    iput-boolean v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_isEditable:Z

    .line 423
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_checked:Ljava/util/Set;

    const/4 v0, 0x0

    .line 425
    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_delayDownload:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_tempCache:Ljava/util/Map;

    return-void
.end method

.method private deleteItems()V
    .locals 2

    .line 873
    new-instance v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_checked:Ljava/util/Set;

    invoke-direct {v0, p0, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;Ljava/util/Set;)V

    return-void
.end method

.method private download(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;)V
    .locals 9

    .line 892
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getRecordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v1

    .line 894
    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getRecordId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getRecordId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getMediaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getMediaId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 895
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getMediaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v4, v0

    if-eqz v4, :cond_3

    .line 898
    invoke-static {v3}, Lcom/metamoji/media/service/MediaGetMediaFile;->urlForGetMediaFileForMediaId(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 900
    :cond_3
    invoke-static {v3}, Lcom/metamoji/media/service/MediaGetMediaFile;->urlForGetMediaFileForRecordId(Ljava/lang/String;)Ljava/lang/String;

    .line 902
    :goto_3
    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getTicket()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getStartTime()Ljava/util/Date;

    move-result-object v7

    new-instance v8, Lcom/metamoji/media/ui/MediaUploadedListDialog$8;

    invoke-direct {v8, p0, p1, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$8;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;)V

    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->importRecordingFromServer(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcImportFromServerCompletionAction;)V

    return-void
.end method

.method private static enableButton(Landroid/view/View;Z)V
    .locals 1

    .line 1200
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1201
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 1202
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_tempCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    .line 926
    :cond_0
    const-string v0, ".m4a"

    invoke-static {p1, v0}, Lcom/metamoji/media/MediaUtil;->createCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 927
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object v0
.end method

.method private getData(Landroid/os/Bundle;)V
    .locals 1

    .line 445
    const-string v0, "mediaList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 446
    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_mediaList:Ljava/util/List;

    .line 448
    const-string v0, "fromDocument"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 450
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    return-void
.end method

.method private initButtonStates()V
    .locals 9

    .line 993
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 994
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 995
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    sget-object v3, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PAUSED:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    sget-object v3, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PLAYING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 996
    :goto_1
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    sget-object v6, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PLAYING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    if-ne v3, v6, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    .line 998
    :goto_2
    iget-object v6, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_playButton:Landroid/view/View;

    const/16 v7, 0x8

    if-eqz v3, :cond_3

    move v8, v7

    goto :goto_3

    :cond_3
    move v8, v5

    :goto_3
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 999
    iget-object v6, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_pauseButton:Landroid/view/View;

    if-eqz v3, :cond_4

    move v7, v5

    :cond_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_7

    .line 1003
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    .line 1008
    iget-object v6, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    if-nez v3, :cond_5

    .line 1005
    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1006
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_5

    .line 1008
    :cond_5
    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1009
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    if-lez v3, :cond_6

    move v6, v4

    goto :goto_4

    :cond_6
    move v6, v5

    .line 1013
    :goto_4
    iget-object v7, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    invoke-virtual {v7, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1014
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_6

    .line 1017
    :cond_7
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1018
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :goto_5
    move v6, v5

    .line 1021
    :goto_6
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_prevButton:Landroid/view/View;

    if-nez v6, :cond_9

    if-le v1, v4, :cond_8

    goto :goto_7

    :cond_8
    move v6, v5

    goto :goto_8

    :cond_9
    :goto_7
    move v6, v4

    :goto_8
    invoke-static {v3, v6}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->enableButton(Landroid/view/View;Z)V

    .line 1022
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_nextButton:Landroid/view/View;

    sub-int/2addr v0, v4

    if-ge v1, v0, :cond_a

    goto :goto_9

    :cond_a
    move v4, v5

    :goto_9
    invoke-static {v3, v4}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->enableButton(Landroid/view/View;Z)V

    .line 1023
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_playButton:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->enableButton(Landroid/view/View;Z)V

    return-void
.end method

.method private initSectionsForSchool(Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 698
    new-instance v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;

    const-string v2, "0"

    const-string v3, "-1"

    invoke-direct {v1, v3, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget v1, Lcom/metamoji/noteanytime/R$string;->UI_Cabinet_ClassBox:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 706
    sget v2, Lcom/metamoji/noteanytime/R$string;->UI_Cabinet_PastClassBox:I

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    .line 708
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v3

    .line 709
    invoke-virtual {v3}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    .line 710
    iget-object v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->currentGroupId:Ljava/lang/String;

    .line 712
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 713
    invoke-virtual {v4, v5, v6}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveGroupAllWithOrderAscending(ZZ)Ljava/util/List;

    move-result-object v7

    .line 715
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v6

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    .line 716
    invoke-virtual {v9}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v10

    .line 717
    invoke-virtual {v4, v10, v5, v6}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v11

    .line 718
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 721
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "%s%04d"

    if-eqz v13, :cond_1

    .line 723
    invoke-virtual {v12}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v15, "%s > %s"

    invoke-static {v15, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v15, v8, 0x1

    .line 724
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v5, "2"

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move v8, v15

    goto :goto_1

    .line 727
    :cond_1
    invoke-virtual {v9}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v2, v5, v13}, [Ljava/lang/Object;

    move-result-object v5

    const-string v13, "%s > %s > %s"

    invoke-static {v13, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v5, v8, 0x1

    .line 728
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v15, "3"

    filled-new-array {v15, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v14, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v8

    move v8, v5

    move-object/from16 v5, v16

    .line 730
    :goto_1
    invoke-virtual {v12}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;

    invoke-virtual {v12}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v15, v12, v13, v5}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isPlaying()Z
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_pauseButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private nextTrack()V
    .locals 3

    .line 948
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 949
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-lt v1, v0, :cond_0

    return-void

    .line 953
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;->isHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 958
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 959
    invoke-direct {p0, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->prepareToPlay(I)V

    return-void
.end method

.method private pause()V
    .locals 3

    .line 1153
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    sget-object v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PREPARING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1155
    invoke-direct {p0, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->setPlaying(Z)V

    return-void

    .line 1158
    :cond_0
    const-string v0, "medialist : pause"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1160
    sget-object v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PAUSED:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    .line 1161
    invoke-direct {p0, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->setPlaying(Z)V

    return-void
.end method

.method private playWithDownload()V
    .locals 4

    .line 1094
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_delayDownload:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    if-nez v0, :cond_0

    return-void

    .line 1097
    :cond_0
    new-instance v0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;

    sget-object v1, Lcom/metamoji/media/service/MediaBgTask$IMediaAction;->NOP:Lcom/metamoji/media/service/MediaBgTask$IMediaAction;

    new-instance v2, Lcom/metamoji/media/ui/MediaUploadedListDialog$9;

    invoke-direct {v2, p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$9;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile$IMediaBgTaskForGetMediaFileCompleteAction;)V

    .line 1122
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_delayDownload:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-static {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->-$$Nest$fget_recordId(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)Ljava/lang/String;

    move-result-object v1

    .line 1123
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_delayDownload:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-static {v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->-$$Nest$fget_mediaId(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)Ljava/lang/String;

    move-result-object v2

    .line 1124
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_delayDownload:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-static {v3}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->-$$Nest$fget_url(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v1, v2

    .line 1125
    :cond_1
    iput-object v1, v0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->targetId:Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1126
    :goto_0
    iput-boolean v1, v0, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->isMediaId:Z

    .line 1128
    invoke-virtual {v0}, Lcom/metamoji/media/service/MediaBgTaskForGetMediaFile;->doInBackground()V

    return-void
.end method

.method private prepareToPlay(I)V
    .locals 3

    .line 1027
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "medialist : prepareToPlay %d"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;

    .line 1029
    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;->isHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1033
    :cond_0
    instance-of v0, p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    if-eqz v0, :cond_2

    .line 1034
    check-cast p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    .line 1039
    sget-object v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->RESET:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    const/4 v0, 0x0

    .line 1040
    invoke-direct {p0, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->setPlaying(Z)V

    .line 1041
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1042
    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->initButtonStates()V

    const/4 v0, 0x0

    .line 1043
    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_delayDownload:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    .line 1045
    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getTicket()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "medialist : cache exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1048
    sget-object p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PREPARING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    .line 1049
    invoke-direct {p0, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->setDataSource(Ljava/io/File;)V

    return-void

    .line 1054
    :cond_1
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_delayDownload:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    .line 1055
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_playButton:Landroid/view/View;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->enableButton(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private prevTrack()V
    .locals 5

    .line 963
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 965
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    sget-object v3, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PAUSED:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    sget-object v3, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PLAYING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    if-ne v2, v3, :cond_3

    .line 967
    :cond_0
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    .line 969
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 970
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    :cond_1
    if-gtz v0, :cond_3

    if-lez v2, :cond_2

    .line 976
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 977
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void

    .line 983
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    invoke-virtual {v2, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;

    invoke-virtual {v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;->isHeader()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 987
    :cond_4
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 988
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 989
    invoke-direct {p0, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->prepareToPlay(I)V

    return-void
.end method

.method private removeRecordFromRecordingsManager(Ljava/lang/String;)V
    .locals 1

    .line 852
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 857
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 862
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 863
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 868
    :cond_2
    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil;->removeRecording(Ljava/lang/String;)V

    return-void
.end method

.method private selectItem(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;Z)V
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_checked:Ljava/util/Set;

    if-eqz p2, :cond_1

    .line 879
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 880
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_deleteButton:Lcom/metamoji/ui/common/UiButton;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 882
    :cond_0
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_checked:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 884
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 885
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_checked:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 886
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_deleteButton:Lcom/metamoji/ui/common/UiButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private setDataSource(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    .line 1074
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1075
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1076
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1083
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1085
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1078
    :goto_0
    :try_start_3
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 1083
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_0
    return-void

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1089
    :cond_1
    throw p1
.end method

.method private setEditable(Z)V
    .locals 0

    .line 748
    iput-boolean p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_isEditable:Z

    .line 751
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_checked:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 752
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->notifyDataSetChanged()V

    .line 754
    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->updateEditable()V

    return-void
.end method

.method private setMediaList(Ljava/util/List;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 631
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 633
    new-instance v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;

    invoke-direct {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;-><init>()V

    .line 637
    invoke-direct {p0, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->initSectionsForSchool(Ljava/util/Map;)V

    .line 641
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 642
    new-instance v3, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-direct {v3, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;-><init>(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 643
    invoke-virtual {v3}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getTicket()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 644
    invoke-virtual {v3, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->setDownloadable(Z)V

    .line 647
    :cond_0
    invoke-virtual {v3}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getDriveId()Ljava/lang/String;

    move-result-object v2

    .line 648
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;

    if-nez v4, :cond_2

    .line 650
    const-string v4, "1"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 651
    new-instance v5, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;

    invoke-direct {v5, v2, v4}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {v5}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 655
    :goto_1
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_2
    invoke-virtual {v4, v3}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->add(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)V

    goto :goto_0

    .line 661
    :cond_3
    invoke-virtual {p0, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->sortSections(Ljava/util/Map;)Ljava/util/TreeMap;

    move-result-object p1

    .line 664
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 665
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;

    .line 666
    invoke-virtual {p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 670
    :cond_5
    invoke-virtual {p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->items()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 674
    :cond_6
    invoke-virtual {p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->sort()V

    .line 675
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    new-instance v2, Lcom/metamoji/media/ui/MediaUploadedListDialog$Header;

    invoke-virtual {p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Header;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->add(Ljava/lang/Object;)V

    .line 676
    invoke-virtual {p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->items()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    .line 677
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    invoke-virtual {v2, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 682
    :cond_7
    invoke-virtual {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->items()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 683
    invoke-virtual {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->sort()V

    .line 684
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    new-instance p2, Lcom/metamoji/media/ui/MediaUploadedListDialog$Header;

    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_DeletedShareDrive:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Header;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->add(Ljava/lang/Object;)V

    .line 685
    invoke-virtual {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->items()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    .line 686
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    invoke-virtual {v0, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 690
    :cond_8
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_playButton:Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->enableButton(Landroid/view/View;Z)V

    return-void
.end method

.method private setPlaying(Z)V
    .locals 8

    .line 936
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_playButton:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_pauseButton:Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 942
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_timer:Lcom/metamoji/cm/UiTimer;

    if-eqz p1, :cond_2

    .line 940
    iget-object v3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_timerJob:Ljava/lang/Runnable;

    const-wide/16 v4, 0x28

    const-wide/16 v6, 0x28

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V

    return-void

    .line 942
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 943
    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->updatePosition()V

    return-void
.end method

.method public static ticketForMediaData(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 100
    const-string v0, "originalName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 101
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateEditable()V
    .locals 3

    .line 758
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_deleteButton:Lcom/metamoji/ui/common/UiButton;

    iget-boolean v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_isEditable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_checked:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_deleteButton:Lcom/metamoji/ui/common/UiButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    goto :goto_1

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_deleteButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 764
    :goto_1
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_rightButton:Lcom/metamoji/ui/common/UiButtonHeader;

    iget-boolean v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_isEditable:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/metamoji/noteanytime/R$string;->Button_Done_J:I

    goto :goto_2

    :cond_2
    sget v1, Lcom/metamoji/noteanytime/R$string;->Button_Edit:I

    :goto_2
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 765
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_rightButton:Lcom/metamoji/ui/common/UiButtonHeader;

    iget-boolean v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_isEditable:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_purple:I

    goto :goto_3

    :cond_3
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_blue:I

    :goto_3
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    return-void
.end method

.method private updatePosition()V
    .locals 2

    .line 1133
    iget-boolean v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_tracking:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    sget-object v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->RESET:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    sget-object v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PREPARING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    if-eq v0, v1, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1142
    :goto_0
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    if-lez v0, :cond_2

    .line 1144
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_prevButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->enableButton(Landroid/view/View;Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public init(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 429
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 430
    const-string v1, "fromDocument"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 432
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 433
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 435
    check-cast v1, Ljava/util/Map;

    .line 436
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :cond_0
    const-string p1, "mediaList"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 440
    invoke-virtual {p0, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1220
    const-string p1, "medialist : completion"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1221
    sget-object p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PAUSED:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    const/4 p1, 0x0

    .line 1222
    invoke-direct {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->setPlaying(Z)V

    .line 1223
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 456
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_media_uploaded_list:I

    iput v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->mViewId:I

    .line 457
    sget v0, Lcom/metamoji/noteanytime/R$string;->Voice_UploadedFiles_Title:I

    iput v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->mTitleId:I

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->mClose:Z

    .line 460
    iput-boolean v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->mDone:Z

    const/4 v1, 0x1

    .line 461
    iput-boolean v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->mBack:Z

    .line 464
    invoke-virtual {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->getData(Landroid/os/Bundle;)V

    .line 466
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 471
    iput-boolean v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->mCancel:Z

    move v4, v0

    goto :goto_0

    .line 475
    :cond_0
    iput-boolean v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->mCancel:Z

    .line 478
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v4

    .line 479
    invoke-virtual {v4}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v4

    sget-object v5, Lcom/metamoji/nt/NtCommand;->CMD_VC_START_RECORDING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v1

    move-object v2, v3

    goto :goto_0

    :cond_1
    move v4, v1

    .line 484
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 486
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    if-nez p2, :cond_2

    .line 487
    new-instance p2, Landroid/media/MediaPlayer;

    invoke-direct {p2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    .line 488
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 489
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 490
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 491
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 492
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 493
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 494
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p2, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 497
    :cond_2
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_timer:Lcom/metamoji/cm/UiTimer;

    if-nez p2, :cond_3

    .line 498
    new-instance p2, Lcom/metamoji/cm/UiTimer;

    invoke-direct {p2}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_timer:Lcom/metamoji/cm/UiTimer;

    .line 499
    new-instance p2, Lcom/metamoji/media/ui/MediaUploadedListDialog$1;

    invoke-direct {p2, p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$1;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_timerJob:Ljava/lang/Runnable;

    .line 507
    :cond_3
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_rightButton:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 508
    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 509
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_rightButton:Lcom/metamoji/ui/common/UiButtonHeader;

    new-instance v5, Lcom/metamoji/media/ui/MediaUploadedListDialog$2;

    invoke-direct {v5, p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$2;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    invoke-virtual {p2, v5}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v4, :cond_4

    .line 517
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_left_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    .line 518
    sget v4, Lcom/metamoji/noteanytime/R$string;->Msg_CLOSE:I

    invoke-virtual {p2, v4}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 521
    :cond_4
    sget p2, Lcom/metamoji/noteanytime/R$id;->medialist_delete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_deleteButton:Lcom/metamoji/ui/common/UiButton;

    .line 522
    new-instance v4, Lcom/metamoji/media/ui/MediaUploadedListDialog$3;

    invoke-direct {v4, p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$3;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    invoke-virtual {p2, v4}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->updateEditable()V

    .line 540
    sget p2, Lcom/metamoji/noteanytime/R$id;->medialist_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    .line 541
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 542
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 556
    sget p2, Lcom/metamoji/noteanytime/R$id;->medialist_play:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_playButton:Landroid/view/View;

    .line 557
    new-instance v4, Lcom/metamoji/media/ui/MediaUploadedListDialog$4;

    invoke-direct {v4, p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$4;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    sget p2, Lcom/metamoji/noteanytime/R$id;->medialist_pause:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_pauseButton:Landroid/view/View;

    .line 572
    new-instance v4, Lcom/metamoji/media/ui/MediaUploadedListDialog$5;

    invoke-direct {v4, p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$5;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    sget p2, Lcom/metamoji/noteanytime/R$id;->medialist_prev:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_prevButton:Landroid/view/View;

    .line 580
    new-instance v4, Lcom/metamoji/media/ui/MediaUploadedListDialog$6;

    invoke-direct {v4, p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$6;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    sget p2, Lcom/metamoji/noteanytime/R$id;->medialist_next:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_nextButton:Landroid/view/View;

    .line 588
    new-instance v4, Lcom/metamoji/media/ui/MediaUploadedListDialog$7;

    invoke-direct {v4, p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$7;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    sget p2, Lcom/metamoji/noteanytime/R$id;->medialist_slider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    .line 596
    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 597
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 599
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    if-nez p2, :cond_6

    .line 600
    new-instance p2, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    invoke-virtual {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, p0, v0, v4}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    if-eqz v2, :cond_5

    .line 604
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->getAllTickets()Ljava/util/List;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 606
    :cond_5
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_mediaList:Ljava/util/List;

    invoke-direct {p0, p2, v3}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->setMediaList(Ljava/util/List;Ljava/util/Set;)V

    .line 608
    :cond_6
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 610
    invoke-virtual {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    .line 612
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_items:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    invoke-virtual {p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getCount()I

    move-result p2

    const/4 v0, 0x2

    if-lt p2, v0, :cond_a

    .line 613
    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_mediaList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    if-nez p3, :cond_8

    move p2, v1

    goto :goto_1

    .line 618
    :cond_8
    const-string p2, "currentIndex"

    invoke-virtual {p3, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 619
    :goto_1
    iget-object p3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    sget-object v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->RESET:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    if-ne p3, v0, :cond_9

    .line 620
    iget-object p3, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {p3, p2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 621
    invoke-direct {p0, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->prepareToPlay(I)V

    return-object p1

    .line 623
    :cond_9
    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->initButtonStates()V

    return-object p1

    .line 615
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->initButtonStates()V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1179
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1182
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_timer:Lcom/metamoji/cm/UiTimer;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1183
    invoke-virtual {p1}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 1184
    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_timer:Lcom/metamoji/cm/UiTimer;

    .line 1186
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    .line 1187
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 1188
    iput-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    .line 1189
    sget-object p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->RESET:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    .line 1192
    :cond_1
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_tempCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1193
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1195
    :cond_2
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_tempCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1262
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "medialist : error %d %d"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1263
    sget-object p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->RESET:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    .line 1264
    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->initButtonStates()V

    const/4 p1, 0x0

    .line 1265
    invoke-direct {p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->setPlaying(Z)V

    return p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1211
    invoke-direct {p0, p3}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->prepareToPlay(I)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1236
    const-string p1, "medialist : prepared"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1237
    sget-object p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PAUSED:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    .line 1238
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_playButton:Landroid/view/View;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->enableButton(Landroid/view/View;Z)V

    .line 1239
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_0

    .line 1241
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1242
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1245
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1247
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1248
    sget-object p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PLAYING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audioState:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1167
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1168
    sget-object v0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1169
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1170
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1172
    const-string v1, "currentIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 1284
    iput-boolean p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_tracking:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/4 p1, 0x0

    .line 1289
    iput-boolean p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_tracking:Z

    .line 1291
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_slider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1292
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_audio:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 1294
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_prevButton:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->enableButton(Landroid/view/View;Z)V

    return-void

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 1297
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_prevButton:Landroid/view/View;

    if-le v0, v1, :cond_1

    move p1, v1

    :cond_1
    invoke-static {v2, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->enableButton(Landroid/view/View;Z)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method

.method sortSections(Ljava/util/Map;)Ljava/util/TreeMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;",
            ">;)",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;",
            ">;"
        }
    .end annotation

    .line 741
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$ValueComparator;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$ValueComparator;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 742
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
