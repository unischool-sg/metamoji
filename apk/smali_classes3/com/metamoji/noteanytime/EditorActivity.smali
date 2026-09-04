.class public final Lcom/metamoji/noteanytime/EditorActivity;
.super Lcom/metamoji/lib/dialog/task/UtMortalActivity;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;
.implements Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;
.implements Lcom/metamoji/nt/INtEditor;
.implements Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;
.implements Lcom/metamoji/lib/dialog/connector/IUtActivityConnectorStore;
.implements Lcom/metamoji/lib/dialog/broker/pickers/IUtFilePickerStoreProvider;
.implements Lcom/metamoji/ui/IPermissionBrokerSource;
.implements Lcom/metamoji/ui/ICameraBrokerSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;,
        Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;,
        Lcom/metamoji/noteanytime/EditorActivity$FirstJob;,
        Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;,
        Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;,
        Lcom/metamoji/noteanytime/EditorActivity$OnActivityResult;,
        Lcom/metamoji/noteanytime/EditorActivity$RetainData;,
        Lcom/metamoji/noteanytime/EditorActivity$MainViewport;,
        Lcom/metamoji/noteanytime/EditorActivity$RequestCode;,
        Lcom/metamoji/noteanytime/EditorActivity$Completion;,
        Lcom/metamoji/noteanytime/EditorActivity$OwnerView;,
        Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CMD_CopyFromTemplate:Ljava/lang/String; = "copyFromTemplate"

.field public static final CMD_CopyFromTemplateAsNew:Ljava/lang/String; = "copyFromTemplateAsNew"

.field public static final CMD_CopyNote:Ljava/lang/String; = "copyNote"

.field public static final CMD_DeliverCollaborize:Ljava/lang/String; = "deliverCollaborize"

.field public static final CMD_DeliverCollaborizeByDrop:Ljava/lang/String; = "deliverCollaborizeByDrop"

.field public static final CMD_DiscardActivity:Ljava/lang/String; = "discardActivity"

.field public static final CMD_EditImportedNote:Ljava/lang/String; = "editImportedNote"

.field public static final CMD_EditImportedNoteForAudio:Ljava/lang/String; = "editImportedNoteForAudio"

.field public static final CMD_EditNote:Ljava/lang/String; = "editNote"

.field public static final CMD_InsertNote:Ljava/lang/String; = "insertNote"

.field public static final CMD_MergeNotes:Ljava/lang/String; = "mergeNotes"

.field public static final CMD_NewNote:Ljava/lang/String; = "newNote"

.field public static final CMD_Restore:Ljava/lang/String; = "restore"

.field public static final CMD_SubmitByStudent:Ljava/lang/String; = "submitByStudent"

.field static final KEY_ActionBarShown:Ljava/lang/String; = "ActionBarShown"

.field static final KEY_BottomBarShown:Ljava/lang/String; = "BottomBarShown"

.field static final KEY_CopiedDocId:Ljava/lang/String; = "copiedDocId"

.field static final KEY_DirectionVelocityViewShown:Ljava/lang/String; = "DirectionVelocityViewShown"

.field static final KEY_DocumentId:Ljava/lang/String; = "docid"

.field static final KEY_DriveId:Ljava/lang/String; = "driveid"

.field static final KEY_EditLayerInfo:Ljava/lang/String; = "EditLayerInfo"

.field static final KEY_FullScreen:Ljava/lang/String; = "FullScreen"

.field static final KEY_HintHelpVisibleList:Ljava/lang/String; = "HitHelpVisibleList"

.field static final KEY_HistoryTabSelection:Ljava/lang/String; = "HistoryBarSelection"

.field static final KEY_HoverData:Ljava/lang/String; = "HoverData"

.field static final KEY_IsReadOnly:Ljava/lang/String; = "IsReadOnly"

.field static final KEY_JumpListPosition:Ljava/lang/String; = "JumpListPosition"

.field static final KEY_JumpListShown:Ljava/lang/String; = "JumpListShown"

.field static final KEY_ListMultiSelectionMode:Ljava/lang/String; = "ListMultiSelectionMode"

.field static final KEY_ListMultiSelections:Ljava/lang/String; = "ListMultiSelections"

.field static final KEY_OfflineEditModeInfo:Ljava/lang/String; = "OfflineEditModeInfo"

.field static final KEY_PageId:Ljava/lang/String; = "pageid"

.field static final KEY_PageListShown:Ljava/lang/String; = "PageListShown"

.field static final KEY_PersonalModeInfo:Ljava/lang/String; = "PersonalModeInfo"

.field static final KEY_Resumed:Ljava/lang/String; = "IWillBeBack"

.field static final KEY_SearchTextBarShown:Ljava/lang/String; = "SearchTextBarShown"

.field static final KEY_SetTextUnitLocationShown:Ljava/lang/String; = "SetTextUnitLocationShown"

.field static final KEY_ShowError:Ljava/lang/String; = "ShowError"

.field static final KEY_TextUnitInputStyleBarShown:Ljava/lang/String; = "TextUnitInputStyleBarShown"

.field static final KEY_UnTextEditUserInfoViewShown:Ljava/lang/String; = "UnTextEditUserInfoViewShown"

.field static final KEY_UnitEditUserInfoViewShown:Ljava/lang/String; = "UnitEditUserInfoViewShown"

.field static final KEY_VoicePalletShown:Ljava/lang/String; = "VoicePalletShown"

.field static final KEY_WristGuardShown:Ljava/lang/String; = "WristGuardShown"

.field public static final Key_CmdAfterSheareNoteOpenedInfo:Ljava/lang/String; = "cmdAfterSheareNoteOpenedInfo"

.field public static final Key_Command:Ljava/lang/String; = "command"

.field public static final Key_ContentsFile:Ljava/lang/String; = "contentsFile"

.field public static final Key_CopiedDocID:Ljava/lang/String; = "copiedDocId"

.field public static final Key_DocID:Ljava/lang/String; = "docid"

.field public static final Key_DocIDs:Ljava/lang/String; = "docIds"

.field public static final Key_DriveID:Ljava/lang/String; = "driveid"

.field public static final Key_EditorExternalCommand:Ljava/lang/String; = "editorExternalCommand"

.field public static final Key_FolderPath:Ljava/lang/String; = "folderPath"

.field public static final Key_GiveTags:Ljava/lang/String; = "giveTags"

.field public static final Key_IsReadOnly:Ljava/lang/String; = "IsReadOnly"

.field public static final Key_NewTitle:Ljava/lang/String; = "newTitle"

.field public static final Key_NoteTemplateDocID:Ljava/lang/String; = "noteTemplateDocId"

.field public static final Key_NoteTemplateDriveID:Ljava/lang/String; = "noteTemplateDriveId"

.field public static final Key_OrgCommand:Ljava/lang/String; = "orgCommand"

.field public static final Key_PBE:Ljava/lang/String; = "pbe"

.field public static final Key_PageID:Ljava/lang/String; = "pageid"

.field public static final Key_SrcInfo:Ljava/lang/String; = "srcInfo"

.field public static final Key_Tags:Ljava/lang/String; = "tags"

.field private static final MENU_BUTTON_WIDTH:F = 42.0f

.field static final MENU_ID_MAP:[Lcom/metamoji/ui/PopupCommand;

.field private static final MENU_TOP_MARGIN:F = 8.0f

.field static final SHOW_STATUSBAR_ALWAYS:Z = true

.field static final SUPPRESS_ROTATION_ON_LOADING:Z = false

.field private static final S_RETURN_TO_CABINET_ON_FINISHING_PAUSE:Z = false

.field private static final TAG_COMMAND_FLOATER:Ljava/lang/String; = "CommandFloater"

.field private static final TAG_DWINDOW:Ljava/lang/String; = "DetailWindow"

.field private static final TAG_PLAYERBAR:Ljava/lang/String; = "PlayerBar"

.field private static final TAG_PLAYLIST:Ljava/lang/String; = "Playlist"

.field private static final TAG_ZOOMBAR:Ljava/lang/String; = "ZoomBar"

.field static _hasGuidanceShown:Z

.field private static _instance:Lcom/metamoji/noteanytime/EditorActivity;

.field private static activityConnectorFactoryBank:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank;

.field private static directionVelocityBlackColor:I

.field private static directionVelocityBrownColor:I

.field private static directionVelocityOrangeColor:I

.field private static directionVelocityRedColor:I

.field private static final ownerView:Lcom/metamoji/nt/INtOwnerView;


# instance fields
.field private final SPACE_BETWEEN_COLLABOBAR_AND_DETAILWINBTN:I

.field _actionBarShown:Z

.field _attentionText:Landroidx/appcompat/widget/AppCompatTextView;

.field _cmdAfterSheareNoteOpenedInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field _copiedDocID:Ljava/lang/String;

.field _deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

.field _detailWindow:Lcom/metamoji/ui/DetailWindow;

.field _detectableSI:Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;

.field _documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

.field _documentID:Ljava/lang/String;

.field _driveID:Ljava/lang/String;

.field _dungeonMap:Lcom/metamoji/ui/UiDungeonMapView;

.field _editLayerInfoView:Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

.field _editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

.field _errorListener:Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;

.field _errorMessage:Ljava/lang/String;

.field private _featureChangedEventHandler:Lcom/metamoji/nt/NtFeatureManager$FeatureChangedEventHandler;

.field private final _filePickers:Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

.field _firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

.field _fragmentSaved:Z

.field _fragmentStateRequestById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field _fragmentStateRequestByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field _fullScreen:Z

.field _fxmanager:Lcom/metamoji/ui/flexible/FxManager;

.field _historyBarDriver:Lcom/metamoji/ui/HistoryBarDriver;

.field private _historyBarHeightChangedRunnable:Ljava/lang/Runnable;

.field _hover:Lcom/metamoji/ui/CustomHoverSelectorView;

.field private final _imageCameraBroker:Lcom/metamoji/ui/UiImageCameraBroker;

.field _isReadOnly:Z

.field _jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/nt/itemlist/NtJumpList<",
            "*>;"
        }
    .end annotation
.end field

.field _jumpListPosition:I

.field _jumpListShown:I

.field private _linkJumpChangeListener:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

.field _menu:Lcom/metamoji/ui/CustomMenuView;

.field _modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

.field private final _multiPermissionsBroker:Lcom/metamoji/ui/UiMultiPermissionsBroker;

.field _offlineEditModeInfoView:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

.field private _onActivityResults:Lcom/metamoji/noteanytime/EditorActivity$OnActivityResult;

.field private _onCommandButtonAlignmentChanged:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/nt/NtUserDefaults;",
            ">;"
        }
    .end annotation
.end field

.field private _onShowScrollButtonsChanged:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/nt/NtUserDefaults;",
            ">;"
        }
    .end annotation
.end field

.field private _onViewportSizeChangedHandler:Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;

.field _pageID:Ljava/lang/String;

.field _pageList:Lcom/metamoji/nt/itemlist/NtPageList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/nt/itemlist/NtPageList<",
            "*>;"
        }
    .end annotation
.end field

.field _pageListShown:I

.field private _paintResponseChangedListener:Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;

.field private final _permissionBroker:Lcom/metamoji/ui/UiPermissionBroker;

.field _personalModeInfoView:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

.field _playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field _playlist:Lcom/metamoji/media/voice/ui/VcPlaylist;

.field _rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

.field _scoreInfoView:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

.field _scrollButtonManager:Lcom/metamoji/ui/ScrollButtonManager;

.field _searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

.field _showError:I

.field _stopUpdateListLabel:Z

.field private _textCursors:Lcom/metamoji/un/text/TextCursors;

.field _textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

.field _titleGestureDetector:Landroid/view/GestureDetector;

.field private final _videoCameraBroker:Lcom/metamoji/ui/UiVideoCameraBroker;

.field private _viewForSoftInput:Landroid/view/View;

.field private activityConnectorStore:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStore;

.field private compatBackKeyDispatcher:Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

.field private final imagePickerForImageUnit:Lcom/metamoji/lib/dialog/broker/IUtActivityLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/dialog/broker/IUtActivityLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClosing:Z

.field private mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

.field private mCollaboModeBarWidthChanged:Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;

.field mWristGuard:Lcom/metamoji/ui/WristGuardFrame;

.field m_WristGuardButton:Landroid/view/View;

.field m_connectivityActionReceiver:Landroid/content/BroadcastReceiver;

.field m_onEditAreaView:Z


# direct methods
.method public static synthetic $r8$lambda$-V5JfqNruXmNkS-SrFx3n3iTOAU(Lcom/metamoji/noteanytime/EditorActivity;Landroidx/core/view/WindowInsetsCompat;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->lambda$onCreate$0(Landroidx/core/view/WindowInsetsCompat;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Cii4ZD1VjyQmrm3q8sfiC7N705w(Lcom/metamoji/noteanytime/EditorActivity;Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity;->lambda$parseConnectAfterAction$4(Ljava/util/Map;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YH2B5ljCK0-1ZUUUdILIM1Cy0-4(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->lambda$updateWristGuardVisible$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$gnFhkOQ3FEM2uO3wfSAAg2hn8Bg(Lcom/metamoji/noteanytime/EditorActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->lambda$new$6(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j6SMVaSrLi833Ec4liRDSj9aCok(Lcom/metamoji/noteanytime/EditorActivity;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->lambda$onCreate$1()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oSfTC7GdHjfQ0JCKrFx7XRH-e3M(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->lambda$parseConnectAfterAction$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddMainView(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/df/controller/DfNoteController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->addMainView(Lcom/metamoji/df/controller/DfNoteController;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustEditingArea(Lcom/metamoji/noteanytime/EditorActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->adjustEditingArea(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendToSrcApp(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtDocument;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity;->handleSendToSrcApp(Lcom/metamoji/nt/NtDocument;Ljava/util/Map;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCollaboModeBarWidthChanged(Lcom/metamoji/noteanytime/EditorActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->onCollaboModeBarWidthChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monFeatureConditionChanged(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtFeatureManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->onFeatureConditionChanged(Lcom/metamoji/nt/NtFeatureManager;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNoteLoadError(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->onNoteLoadError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTopAppBarHeightChanged(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->onTopAppBarHeightChanged(Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monViewportSizeChangedHandler(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->onViewportSizeChangedHandler()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreturnToCabinetInternal(Lcom/metamoji/noteanytime/EditorActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->returnToCabinetInternal(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScrollButtonsCondition(Lcom/metamoji/noteanytime/EditorActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowErrorAndBackToCabinet(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity;->showErrorAndBackToCabinet(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleJumpList(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->toggleJumpList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtogglePageList(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->togglePageList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtransitionToErrorView(Lcom/metamoji/noteanytime/EditorActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->transitionToErrorView(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtransitionToNormalView(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->transitionToNormalView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateJumpNavigationButtons(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateJumpNavigationButtons()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfget_instance()Lcom/metamoji/noteanytime/EditorActivity;
    .locals 1

    sget-object v0, Lcom/metamoji/noteanytime/EditorActivity;->_instance:Lcom/metamoji/noteanytime/EditorActivity;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetownerView()Lcom/metamoji/nt/INtOwnerView;
    .locals 1

    sget-object v0, Lcom/metamoji/noteanytime/EditorActivity;->ownerView:Lcom/metamoji/nt/INtOwnerView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 353
    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;

    new-instance v2, Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker$Factory;

    sget-object v3, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->TASK_NAME:Ljava/lang/String;

    sget-object v4, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->CONNECTOR_NAME:Ljava/lang/String;

    const-string/jumbo v5, "video.mp4"

    const-string/jumbo v6, "video/mp4"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/metamoji/lib/dialog/connector/UtFileCreatePicker$Factory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank;-><init>([Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank$ActivityConnectorFactory;)V

    sput-object v0, Lcom/metamoji/noteanytime/EditorActivity;->activityConnectorFactoryBank:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank;

    .line 385
    sput-boolean v3, Lcom/metamoji/noteanytime/EditorActivity;->_hasGuidanceShown:Z

    .line 495
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$OwnerView;

    invoke-direct {v0}, Lcom/metamoji/noteanytime/EditorActivity$OwnerView;-><init>()V

    sput-object v0, Lcom/metamoji/noteanytime/EditorActivity;->ownerView:Lcom/metamoji/nt/INtOwnerView;

    .line 3968
    invoke-static {}, Lcom/metamoji/ui/PopupCommand;->values()[Lcom/metamoji/ui/PopupCommand;

    move-result-object v0

    sput-object v0, Lcom/metamoji/noteanytime/EditorActivity;->MENU_ID_MAP:[Lcom/metamoji/ui/PopupCommand;

    .line 8961
    const-string v0, "#ff000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/metamoji/noteanytime/EditorActivity;->directionVelocityBlackColor:I

    .line 8962
    const-string v0, "#ff661a00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/metamoji/noteanytime/EditorActivity;->directionVelocityBrownColor:I

    .line 8963
    const-string v0, "#ffcc1a00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/metamoji/noteanytime/EditorActivity;->directionVelocityOrangeColor:I

    .line 8964
    const-string v0, "#ffff1a00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/metamoji/noteanytime/EditorActivity;->directionVelocityRedColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 267
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;-><init>()V

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    .line 285
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_driveID:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_copiedDocID:Ljava/lang/String;

    .line 287
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageID:Ljava/lang/String;

    const/4 v1, 0x0

    .line 288
    iput-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_isReadOnly:Z

    const/4 v2, 0x4

    .line 303
    iput v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageListShown:I

    const/16 v2, 0x8

    .line 305
    iput v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListShown:I

    .line 306
    iput v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListPosition:I

    .line 307
    iput-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_stopUpdateListLabel:Z

    const/4 v2, 0x1

    .line 308
    iput-boolean v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_actionBarShown:Z

    .line 313
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_menu:Lcom/metamoji/ui/CustomMenuView;

    .line 314
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    .line 317
    new-instance v3, Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;

    invoke-direct {v3}, Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;-><init>()V

    iput-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity;->_errorListener:Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;

    .line 323
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_cmdAfterSheareNoteOpenedInfo:Ljava/util/Map;

    .line 327
    new-instance v3, Lcom/metamoji/ui/UiPermissionBroker;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/UiPermissionBroker;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity;->_permissionBroker:Lcom/metamoji/ui/UiPermissionBroker;

    .line 328
    new-instance v3, Lcom/metamoji/ui/UiMultiPermissionsBroker;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/UiMultiPermissionsBroker;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity;->_multiPermissionsBroker:Lcom/metamoji/ui/UiMultiPermissionsBroker;

    .line 329
    new-instance v3, Lcom/metamoji/ui/UiVideoCameraBroker;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/UiVideoCameraBroker;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity;->_videoCameraBroker:Lcom/metamoji/ui/UiVideoCameraBroker;

    .line 330
    new-instance v3, Lcom/metamoji/ui/UiImageCameraBroker;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/UiImageCameraBroker;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity;->_imageCameraBroker:Lcom/metamoji/ui/UiImageCameraBroker;

    .line 357
    sget-object v3, Lcom/metamoji/noteanytime/EditorActivity;->activityConnectorFactoryBank:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank;

    new-instance v4, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-direct {v4, p0}, Lcom/metamoji/lib/dialog/UtDialogOwner;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorFactoryBank;->createConnectorStore(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStore;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity;->activityConnectorStore:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStore;

    .line 372
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onViewportSizeChangedHandler:Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;

    .line 378
    iput v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_showError:I

    .line 379
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_errorMessage:Ljava/lang/String;

    .line 384
    iput-boolean v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fullScreen:Z

    .line 386
    iput-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentSaved:Z

    .line 388
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentStateRequestByTag:Ljava/util/HashMap;

    .line 389
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentStateRequestById:Ljava/util/HashMap;

    .line 391
    iput-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->mClosing:Z

    .line 432
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    invoke-direct {v1}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;-><init>()V

    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    .line 491
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_featureChangedEventHandler:Lcom/metamoji/nt/NtFeatureManager$FeatureChangedEventHandler;

    .line 595
    new-instance v1, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

    invoke-direct {v1}, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;-><init>()V

    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->compatBackKeyDispatcher:Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

    .line 2301
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/noteanytime/EditorActivity-IA;)V

    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_paintResponseChangedListener:Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;

    .line 2817
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$36;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$36;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onCommandButtonAlignmentChanged:Lcom/metamoji/cm/ICmEventHandler;

    .line 2848
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$37;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$37;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onShowScrollButtonsChanged:Lcom/metamoji/cm/ICmEventHandler;

    .line 3847
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_linkJumpChangeListener:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

    .line 4422
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onActivityResults:Lcom/metamoji/noteanytime/EditorActivity$OnActivityResult;

    .line 4629
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-static {p0, v1}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;->launcher(Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultCallback;)Lcom/metamoji/lib/dialog/broker/IUtActivityLauncher;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->imagePickerForImageUnit:Lcom/metamoji/lib/dialog/broker/IUtActivityLauncher;

    .line 6583
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    .line 6584
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBarWidthChanged:Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;

    const/16 v1, 0x14

    .line 6585
    iput v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->SPACE_BETWEEN_COLLABOBAR_AND_DETAILWINBTN:I

    .line 7062
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_historyBarHeightChangedRunnable:Ljava/lang/Runnable;

    .line 9092
    new-instance v0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_filePickers:Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    return-void
.end method

.method private addMainView(Lcom/metamoji/df/controller/DfNoteController;)V
    .locals 2

    .line 3706
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->initItemList()V

    .line 3719
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$45;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$45;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/df/controller/DfNoteController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private adjustEditingArea(I)V
    .locals 2

    .line 6873
    sget v0, Lcom/metamoji/noteanytime/R$id;->editing_area_root:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6874
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int/lit8 p1, p1, -0x5

    .line 6875
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6876
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6878
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDetailWindow()Lcom/metamoji/ui/DetailWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6879
    invoke-virtual {p1}, Lcom/metamoji/ui/DetailWindow;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6880
    invoke-virtual {p1}, Lcom/metamoji/ui/DetailWindow;->updateMarginHandlePosition()V

    :cond_0
    return-void
.end method

.method private attachViewForSoftInput()V
    .locals 3

    .line 2206
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2210
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->main:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2211
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2212
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2213
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2214
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private checkExpirationDate()Z
    .locals 7

    .line 559
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x7dd

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 561
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 566
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 571
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 572
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 573
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 574
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_Error_Expired_Beta:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 575
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/metamoji/noteanytime/EditorActivity$1;

    invoke-direct {v2, p0}, Lcom/metamoji/noteanytime/EditorActivity$1;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 584
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 585
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private createEmptyViewport()V
    .locals 2

    .line 2160
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->startLoading()V

    .line 2165
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    .line 2166
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->initViewport()V

    return-void
.end method

.method private createTextCursorImageView(IIIFF)Landroid/widget/ImageView;
    .locals 2

    .line 2171
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2172
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2173
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float p2, p2

    .line 2174
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p3, p3

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2173
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2175
    invoke-static {p4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 2176
    invoke-static {p5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 2178
    invoke-static {p4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 2179
    invoke-static {p5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setPivotY(F)V

    const/4 p1, 0x4

    .line 2181
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v0
.end method

.method private createTextCursorView()V
    .locals 9

    .line 2186
    new-instance v0, Lcom/metamoji/un/text/TextCursors;

    invoke-direct {v0}, Lcom/metamoji/un/text/TextCursors;-><init>()V

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textCursors:Lcom/metamoji/un/text/TextCursors;

    .line 2187
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->text_ins_cur:I

    const/high16 v5, -0x3e580000    # -21.0f

    const/4 v6, 0x0

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/noteanytime/EditorActivity;->createTextCursorImageView(IIIFF)Landroid/widget/ImageView;

    move-result-object v2

    move-object v3, v1

    iput-object v2, v0, Lcom/metamoji/un/text/TextCursors;->_ins:Landroid/widget/ImageView;

    .line 2188
    iget-object v0, v3, Lcom/metamoji/noteanytime/EditorActivity;->_textCursors:Lcom/metamoji/un/text/TextCursors;

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->text_sel_cur_l:I

    const/high16 v7, -0x3e400000    # -24.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/16 v5, 0x1c

    const/16 v6, 0x23

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/noteanytime/EditorActivity;->createTextCursorImageView(IIIFF)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/TextCursors;->_selL:Landroid/widget/ImageView;

    .line 2189
    iget-object v0, v3, Lcom/metamoji/noteanytime/EditorActivity;->_textCursors:Lcom/metamoji/un/text/TextCursors;

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->text_sel_cur_r:I

    const/high16 v7, -0x3f600000    # -5.0f

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/noteanytime/EditorActivity;->createTextCursorImageView(IIIFF)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/TextCursors;->_selR:Landroid/widget/ImageView;

    .line 2190
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->initTextCursorView()V

    return-void
.end method

.method public static createUniqueFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 6

    .line 4661
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDateStringNow()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    .line 4664
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4665
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4666
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v3

    .line 4669
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private createViewport(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V
    .locals 2

    .line 2147
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->startLoading()V

    .line 2152
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;-><init>(Landroid/content/Context;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    .line 2153
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->initViewport()V

    return-void
.end method

.method private detachViewForSoftInput()V
    .locals 2

    .line 2222
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2225
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2227
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 2230
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    return-void
.end method

.method public static discardActivity(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 3489
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3490
    const-string v1, "command"

    const-string v2, "discardActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 3491
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3492
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private ensureEditMode()V
    .locals 3

    .line 5271
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5272
    const-string v1, "index"

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5273
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 5274
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_NAV_PENTOOL:Lcom/metamoji/nt/NtCommand;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method private execDestroy()V
    .locals 4

    .line 3180
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMazecImsManager;->onNAEditorActivityExecDestory()V

    .line 3183
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->Companion:Lcom/metamoji/video/AmvFullscreenActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion;->close()V

    .line 3187
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3189
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->clearPopupInfos()V

    .line 3193
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_featureChangedEventHandler:Lcom/metamoji/nt/NtFeatureManager$FeatureChangedEventHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3194
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_featureChangedEventHandler:Lcom/metamoji/nt/NtFeatureManager$FeatureChangedEventHandler;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtFeatureManager;->removeFeatureChangedEventListener(Ljava/lang/Object;)V

    .line 3195
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_featureChangedEventHandler:Lcom/metamoji/nt/NtFeatureManager$FeatureChangedEventHandler;

    .line 3202
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3204
    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onViewportSizeChangedHandler:Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 3205
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onViewportSizeChangedHandler:Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;

    .line 3208
    :cond_2
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 3209
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_menu:Lcom/metamoji/ui/CustomMenuView;

    .line 3210
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    .line 3211
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    .line 3212
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playlist:Lcom/metamoji/media/voice/ui/VcPlaylist;

    .line 3213
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->detachEditorWindowController()V

    .line 3215
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_historyBarDriver:Lcom/metamoji/ui/HistoryBarDriver;

    if-eqz v0, :cond_3

    .line 3216
    invoke-virtual {v0}, Lcom/metamoji/ui/HistoryBarDriver;->dispose()V

    .line 3217
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_historyBarDriver:Lcom/metamoji/ui/HistoryBarDriver;

    .line 3221
    :cond_3
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_dungeonMap:Lcom/metamoji/ui/UiDungeonMapView;

    if-eqz v0, :cond_4

    .line 3222
    invoke-virtual {v0}, Lcom/metamoji/ui/UiDungeonMapView;->unbind()V

    .line 3223
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_dungeonMap:Lcom/metamoji/ui/UiDungeonMapView;

    .line 3225
    :cond_4
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_scrollButtonManager:Lcom/metamoji/ui/ScrollButtonManager;

    if-eqz v0, :cond_5

    .line 3226
    invoke-virtual {v0}, Lcom/metamoji/ui/ScrollButtonManager;->unbind()V

    .line 3227
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_scrollButtonManager:Lcom/metamoji/ui/ScrollButtonManager;

    .line 3230
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->detachViewport()V

    .line 3231
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->detachTextCursorView()V

    .line 3232
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    invoke-static {v0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->setViewForSoftInput(Landroid/view/View;)V

    .line 3233
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->detachViewForSoftInput()V

    .line 3235
    sget-object v0, Lcom/metamoji/noteanytime/EditorActivity;->_instance:Lcom/metamoji/noteanytime/EditorActivity;

    if-ne v0, p0, :cond_6

    .line 3236
    sput-object v1, Lcom/metamoji/noteanytime/EditorActivity;->_instance:Lcom/metamoji/noteanytime/EditorActivity;

    .line 3241
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->resetBtnOnClickListeners()V

    .line 3243
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 3244
    const-string v2, "CommandButtons"

    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onCommandButtonAlignmentChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->removeOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 3245
    const-string v2, "OneTapScroller"

    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onShowScrollButtonsChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->removeOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 3247
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_errorListener:Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;->onDestroy()V

    .line 3249
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->removeCollaboModeBarListeners()V

    .line 3254
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->m_connectivityActionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 3255
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3256
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->m_connectivityActionReceiver:Landroid/content/BroadcastReceiver;

    :cond_7
    return-void
.end method

.method private static getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    .line 7579
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7583
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    return-object v0
.end method

.method private getMemoryInfo()Ljava/lang/String;
    .locals 5

    .line 5586
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 5587
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 5588
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 5589
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 5591
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-boolean v1, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 5592
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 5589
    const-string v2, "Memory Available=%d, threshold=%d (lowMemory=%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNextLinkJump()I
    .locals 1

    .line 6400
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getNextLinkJump()I

    move-result v0

    return v0
.end method

.method private getPrevLinkJump()I
    .locals 1

    .line 6417
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getPrevLinkJump()I

    move-result v0

    return v0
.end method

.method private getTags(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1473
    const-string/jumbo v0, "tags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 1476
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1478
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private handleEscapeKey()Z
    .locals 3

    .line 5531
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtSetTextLocation;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5532
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtSetTextLocation;->cancel()V

    return v1

    .line 5537
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->closeMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5540
    :cond_1
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5541
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    .line 5542
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->isShow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5543
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->onBackKeyDown()V

    return v1

    .line 5549
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isDetailWindowOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5550
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->closeDetailWindow()V

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private handleSendToSrcApp(Lcom/metamoji/nt/NtDocument;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3423
    const-string v0, "package"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3425
    const-string v1, "class"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3427
    const-string/jumbo v2, "sendbackformat"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3428
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/metamoji/noteanytime/EditorActivity;->handleSendToSrcApp(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private hideJumpNavigationButtons()V
    .locals 2

    .line 6320
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6321
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_prev:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6322
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_next:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6323
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_change_tab_layout:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hidePageNavigationButtons()V
    .locals 2

    .line 6049
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6050
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_prev:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6051
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_next:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6052
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_add:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6053
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_change_tab_layout:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initItemList()V
    .locals 4

    const/4 v0, 0x4

    .line 5817
    iput v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageListShown:I

    const/16 v1, 0x8

    .line 5818
    iput v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListShown:I

    const/4 v2, -0x1

    .line 5819
    iput v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListPosition:I

    .line 5821
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-virtual {v2}, Lcom/metamoji/nt/itemlist/NtPageList;->isVisible()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5822
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-virtual {p0, v2}, Lcom/metamoji/noteanytime/EditorActivity;->hideFragment(Landroidx/fragment/app/Fragment;)V

    .line 5823
    invoke-direct {p0, v0, v3}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    .line 5825
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5826
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->goneFragment(Landroidx/fragment/app/Fragment;)V

    .line 5827
    invoke-direct {p0, v1, v3}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    .line 5830
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowPlayerBar()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5831
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->hidePlayerBar()V

    .line 5833
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowPlaylist()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 5834
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->hidePlaylist()V

    :cond_3
    return-void
.end method

.method private initJumpList(Lcom/metamoji/nt/NtNoteController;Landroid/os/Bundle;)V
    .locals 2

    .line 3851
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_linkJumpChangeListener:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

    if-nez v0, :cond_0

    .line 3852
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_linkJumpChangeListener:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

    .line 3853
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getLinkJumpManager()Lcom/metamoji/nt/NtLinkJumpManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_linkJumpChangeListener:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtLinkJumpManager;->addListener(Lcom/metamoji/nt/NtLinkJumpManager$NtLinkJumpManagerChangeListener;)V

    .line 3855
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateJumpNavigationButtons()V

    .line 3856
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    iget v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListPosition:I

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/itemlist/NtJumpList;->initializeList(Lcom/metamoji/nt/NtNoteController;I)V

    .line 3857
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateJumpLabel()V

    .line 3859
    iget p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListShown:I

    if-nez p1, :cond_1

    .line 3860
    const-string p1, "ListMultiSelectionMode"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3862
    const-string p1, "ListMultiSelections"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3863
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/itemlist/NtJumpList;->setMultiselections(Ljava/util/ArrayList;)V

    .line 3868
    :cond_1
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtJumpList;->updateListMargin()V

    return-void
.end method

.method private initPageList(Lcom/metamoji/nt/NtNoteController;Landroid/os/Bundle;)V
    .locals 3

    .line 3771
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    .line 3772
    iget-object v1, p1, Lcom/metamoji/nt/NtNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getPageChangedEventListener()Lcom/metamoji/cm/ICmEventHandler;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 3775
    iget-object v0, p1, Lcom/metamoji/nt/NtNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$46;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$46;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 3787
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageNavigationButtons()V

    .line 3788
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/itemlist/NtPageList;->initializeList(Lcom/metamoji/nt/NtNoteController;I)V

    .line 3790
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageLabel()V

    .line 3792
    iget p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageListShown:I

    if-nez p1, :cond_0

    .line 3793
    const-string p1, "ListMultiSelectionMode"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3795
    const-string p1, "ListMultiSelections"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3796
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-virtual {p2, p1}, Lcom/metamoji/nt/itemlist/NtPageList;->setMultiselections(Ljava/util/ArrayList;)V

    .line 3801
    :cond_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-virtual {p1}, Lcom/metamoji/nt/itemlist/NtPageList;->updateListMargin()V

    .line 3804
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageListInfoIcon()V

    .line 3806
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageButtonInfoIcon()V

    .line 3815
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageListTagIcon()V

    .line 3818
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageListSchoolPageTypeIcon()V

    return-void
.end method

.method private initTextCursorView()V
    .locals 4

    .line 2321
    sget v0, Lcom/metamoji/noteanytime/R$id;->main:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2322
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2323
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2325
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textCursors:Lcom/metamoji/un/text/TextCursors;

    iget-object v2, v2, Lcom/metamoji/un/text/TextCursors;->_ins:Landroid/widget/ImageView;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2326
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textCursors:Lcom/metamoji/un/text/TextCursors;

    iget-object v2, v2, Lcom/metamoji/un/text/TextCursors;->_selL:Landroid/widget/ImageView;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2327
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textCursors:Lcom/metamoji/un/text/TextCursors;

    iget-object v2, v2, Lcom/metamoji/un/text/TextCursors;->_selR:Landroid/widget/ImageView;

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private initViewForSoftInput()V
    .locals 1

    .line 2194
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2196
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->attachViewForSoftInput()V

    return-void
.end method

.method public static isOneTapScrollerEnabled()Z
    .locals 1

    .line 2832
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/noteanytime/EditorActivity;->isOneTapScrollerEnabled(Lcom/metamoji/nt/NtUserDefaults;)Z

    move-result v0

    return v0
.end method

.method public static isOneTapScrollerEnabled(Lcom/metamoji/nt/NtUserDefaults;)Z
    .locals 1

    .line 2835
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p0

    sget-object v0, Lcom/metamoji/nt/NtFeature;->OneTapScroller:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    const/4 p0, 0x0

    return p0
.end method

.method private isShowWristGuard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$new$6(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 4631
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4632
    const-string v1, "imageSource"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4633
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_INTERNAL_ADD_IMAGE_UNIT:Lcom/metamoji/nt/NtCommand;

    .line 4634
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroidx/core/view/WindowInsetsCompat;)Ljava/lang/Boolean;
    .locals 5

    .line 687
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 688
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v1

    .line 689
    sget v2, Lcom/metamoji/noteanytime/R$id;->editor_core_root:I

    invoke-virtual {p0, v2}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 690
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 693
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 694
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr p1, v0

    iput p1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 697
    :cond_0
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 699
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$onCreate$1()Lkotlin/Unit;
    .locals 1

    .line 709
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->onBackKeyPressed()Z

    .line 710
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private synthetic lambda$parseConnectAfterAction$2()V
    .locals 2

    .line 1334
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$12;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$12;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$parseConnectAfterAction$3(Ljava/lang/Runnable;Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1352
    invoke-static {}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->getInstance()Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->stopSync(Z)V

    return-void

    .line 1358
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$parseConnectAfterAction$4(Ljava/util/Map;Z)V
    .locals 1

    .line 1326
    const-string v0, "driveId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1327
    const-string v0, "docId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1328
    const-string v0, "restoreDate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    .line 1331
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    if-eqz p2, :cond_0

    .line 1347
    new-instance p2, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda4;

    invoke-direct {p2, v0}, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    .line 1363
    invoke-static {p2, p1}, Lcom/metamoji/ns/NsCollaboCommand;->createRestoreDocumentFromCollaboDocument(Lcom/metamoji/ns/INsCollaboAction;Ljava/util/Date;)V

    return-void

    .line 1369
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$updateWristGuardVisible$5()V
    .locals 4

    .line 2789
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 2790
    const-string v1, "MMJWristGuardButtonVisible"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 v2, 0x8

    :cond_0
    if-nez v2, :cond_5

    .line 2795
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz v0, :cond_1

    .line 2796
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-eqz v0, :cond_2

    .line 2798
    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_WRIST_GUARD:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v2, v1

    .line 2801
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isDetailWindowOpen()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowEditorBars()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v2, v1

    .line 2805
    :cond_5
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->m_WristGuardButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_6

    .line 2806
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowWristGuard()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2807
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->wristGuardVisibleChange()V

    :cond_6
    return-void
.end method

.method private ntGetErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1655
    instance-of v0, p1, Lcom/metamoji/cm/CmException;

    if-eqz v0, :cond_1

    .line 1656
    check-cast p1, Lcom/metamoji/cm/CmException;

    invoke-virtual {p1}, Lcom/metamoji/cm/CmException;->getCode()I

    move-result v0

    sget-object v1, Lcom/metamoji/nt/NtErrorCode;->ERROR_MODEL_COMPATIBILITY:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1657
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_Error_UnsupportedVersion:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1658
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/CmException;->getCode()I

    move-result p1

    sget-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_MODEL_COMPATIBILITY_INVALID_COMPANYID:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1661
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_Error_Load_Note_Invalid_CompanyId:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1668
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_Error_Import_Note:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private onBackKeyPressed()Z
    .locals 2

    .line 5390
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->handleEscapeKey()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5394
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isUserViewOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 5397
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->returnToCabinet()V

    return v1
.end method

.method private onCollaboModeBarWidthChanged(I)V
    .locals 4

    .line 6678
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_linerLayout:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 6679
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41a00000    # 20.0f

    .line 6680
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, p1

    .line 6681
    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    if-eq v2, v3, :cond_0

    .line 6682
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 6683
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6684
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 6697
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    if-eqz v0, :cond_1

    .line 6698
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$72;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$72;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6709
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->main:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6710
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 6712
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_2
    if-eqz v0, :cond_3

    .line 6715
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 6719
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$id;->right_hitarea:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 6721
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_4

    .line 6723
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 6724
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 6728
    :cond_4
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    if-eqz v0, :cond_5

    .line 6729
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/CustomHoverSelectorView;->updatePaddingRight(I)V

    :cond_5
    return-void
.end method

.method private onDriveDocumentManagerError(Lcom/metamoji/sd/SdError;)V
    .locals 1

    const/4 v0, 0x2

    .line 1691
    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->transitionToErrorView(I)V

    .line 1692
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdGetErrorMessage(Lcom/metamoji/sd/SdError;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_Error_Load_Note_Title:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->showErrorAndBackToCabinet(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onFeatureConditionChanged(Lcom/metamoji/nt/NtFeatureManager;)V
    .locals 1

    .line 8386
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$78;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$78;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onNoteLoadError(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1676
    const-string v0, "EditorActivity.onNoteLoadError"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 1683
    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->transitionToErrorView(I)V

    .line 1684
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->ntGetErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_Error_Load_Note_Title:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->showErrorAndBackToCabinet(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onTopAppBarHeightChanged(Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;)V
    .locals 1

    .line 7032
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateSearchTextBarPosition()V

    .line 7033
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/ActionBar$StatusChangedEventArg;->getHeight()I

    move-result p1

    .line 7046
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getPlaylist()Lcom/metamoji/media/voice/ui/VcPlaylist;

    .line 7051
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->editLayerInfoResetMargin()V

    .line 7052
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->personalModeInfoResetMargin()V

    .line 7053
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateScoreInfoViewPosition()V

    .line 7055
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->offlineEditModeInfoResetMargin()V

    .line 7058
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManager;->updateHintHelp()V

    .line 7059
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->adjustEditingArea(I)V

    return-void
.end method

.method private onViewportSizeChangedHandler()V
    .locals 0

    .line 8915
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->editLayerInfoResetMargin()V

    .line 8916
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->personalModeInfoResetMargin()V

    .line 8917
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateScoreInfoViewPosition()V

    .line 8919
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->offlineEditModeInfoResetMargin()V

    return-void
.end method

.method private openDebugMenu()V
    .locals 0

    return-void
.end method

.method private openDebugMenu2()V
    .locals 0

    return-void
.end method

.method private parseConnectAfterAction(Ljava/util/Map;)Lcom/metamoji/ns/INsCollaboManagerConnectRoomAfterAction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/ns/INsCollaboManagerConnectRoomAfterAction;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1320
    :cond_0
    const-string v1, "connectRoomAfterCommand"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtCommand;

    .line 1322
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_RESTORE_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1325
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method private processFragmentStateRequests()V
    .locals 4

    const/4 v0, 0x0

    .line 7306
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentSaved:Z

    .line 7308
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentStateRequestByTag:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentStateRequestById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7312
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7313
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentStateRequestByTag:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7314
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7316
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/noteanytime/EditorActivity;->setFragmentState(Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    .line 7319
    :cond_2
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentStateRequestById:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7320
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 7322
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/metamoji/noteanytime/EditorActivity;->setFragmentState(Landroidx/fragment/app/Fragment;I)V

    goto :goto_1

    .line 7326
    :cond_4
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentStateRequestByTag:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 7327
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentStateRequestById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private reflectDetailWindowMode()V
    .locals 1

    .line 6556
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6557
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isDetailWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6558
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDetailWindow()Lcom/metamoji/ui/DetailWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6561
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detailWindow:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->goneFragment(Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    .line 6562
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detailWindow:Lcom/metamoji/ui/DetailWindow;

    :cond_1
    return-void
.end method

.method private removeCollaboModeBarListeners()V
    .locals 2

    .line 6754
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBarWidthChanged:Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;

    if-eqz v0, :cond_0

    .line 6755
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->removeStateChangedListener(Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;)V

    const/4 v0, 0x0

    .line 6756
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBarWidthChanged:Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;

    :cond_0
    return-void
.end method

.method private requestFragmentState(Landroidx/fragment/app/Fragment;I)V
    .locals 2

    .line 7294
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7295
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 7296
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentStateRequestByTag:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7298
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentStateRequestById:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private restoreEditingNote(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 5

    .line 1384
    const-string/jumbo v0, "restoring editing note..."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 1386
    :cond_0
    new-instance v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-direct {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 1387
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->createEmptyViewport()V

    .line 1388
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->createTextCursorView()V

    const/4 v0, 0x0

    .line 1389
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    .line 1390
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->initControls(Landroid/os/Bundle;)V

    .line 1399
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 1400
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    .line 1402
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/noteanytime/EditorActivity$13;

    invoke-direct {v4, p0, v1, p1}, Lcom/metamoji/noteanytime/EditorActivity$13;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/doceditor/NtDocumentEditor;Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    new-instance p1, Lcom/metamoji/noteanytime/EditorActivity$14;

    invoke-direct {p1, p0, v2}, Lcom/metamoji/noteanytime/EditorActivity$14;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/noteanytime/EditorActivity$MainViewport;)V

    invoke-virtual {v3, v4, v0, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method private returnToCabinetInternal(Z)V
    .locals 10

    .line 3541
    monitor-enter p0

    .line 3542
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mClosing:Z

    if-eqz v0, :cond_0

    .line 3543
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3545
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mClosing:Z

    .line 3546
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3549
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->Companion:Lcom/metamoji/video/AmvFullscreenActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion;->close()V

    .line 3553
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 3555
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    .line 3556
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-nez v0, :cond_2

    move-object v3, v1

    goto :goto_1

    .line 3557
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_2

    .line 3558
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTags()Ljava/util/List;

    move-result-object v0

    :goto_2
    const/high16 v4, 0x4000000

    .line 3560
    :try_start_1
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->saveOnClose(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3567
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    if-eq v5, p0, :cond_4

    .line 3568
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->finish()V

    return-void

    .line 3574
    :cond_4
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v5

    .line 3575
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->values()[Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;

    move-result-object v6

    .line 3576
    const-string v7, "MMJNtCabinetViewMode"

    sget-object v8, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->Normal:Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;

    invoke-virtual {v8}, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->ordinal()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    .line 3577
    aget-object v5, v6, v5

    .line 3578
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/metamoji/noteanytime/MainActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3579
    const-string v6, "Logout"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3580
    const-string p1, "fromEditorActivity"

    invoke-virtual {v5, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3583
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList;->getLastSelectedItem()Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    move-result-object p1

    if-nez p1, :cond_5

    .line 3585
    :goto_3
    const-string p1, "driveId"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3586
    const-string p1, "docId"

    invoke-virtual {v5, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 3588
    :cond_5
    const-string v6, "driveId"

    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3589
    const-string v6, "docId"

    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->docId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3591
    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->docId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    move-object v1, v0

    .line 3594
    :cond_7
    :goto_4
    const-string p1, "docTags"

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3596
    :goto_5
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3597
    invoke-virtual {p0, v5}, Lcom/metamoji/noteanytime/EditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 3599
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->finish()V

    .line 3600
    sget p1, Lcom/metamoji/noteanytime/R$anim;->slide_in_notelist_from_left:I

    sget v0, Lcom/metamoji/noteanytime/R$anim;->slide_out_editor:I

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->overridePendingTransition(II)V

    return-void

    :catchall_0
    move-exception v5

    .line 3562
    :try_start_2
    invoke-static {v5}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3567
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    if-eq v5, p0, :cond_8

    .line 3568
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->finish()V

    return-void

    .line 3574
    :cond_8
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v5

    .line 3575
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->values()[Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;

    move-result-object v6

    .line 3576
    const-string v7, "MMJNtCabinetViewMode"

    sget-object v8, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->Normal:Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;

    invoke-virtual {v8}, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->ordinal()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v5

    .line 3577
    aget-object v5, v6, v5

    .line 3578
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/metamoji/noteanytime/MainActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3579
    const-string v6, "Logout"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3580
    const-string p1, "fromEditorActivity"

    invoke-virtual {v5, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3583
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList;->getLastSelectedItem()Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    move-result-object p1

    if-nez p1, :cond_9

    goto/16 :goto_3

    .line 3588
    :cond_9
    const-string v6, "driveId"

    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3589
    const-string v6, "docId"

    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->docId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3591
    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->docId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_4

    :cond_a
    move-object v1, v0

    goto/16 :goto_4

    :catchall_1
    move-exception v5

    .line 3567
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    if-eq v6, p0, :cond_b

    .line 3568
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->finish()V

    return-void

    .line 3574
    :cond_b
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v6

    .line 3575
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->values()[Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;

    move-result-object v7

    .line 3576
    const-string v8, "MMJNtCabinetViewMode"

    sget-object v9, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->Normal:Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;

    invoke-virtual {v9}, Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;->ordinal()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v6

    .line 3577
    aget-object v6, v7, v6

    .line 3578
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/metamoji/noteanytime/MainActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3579
    const-string v7, "Logout"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3580
    const-string p1, "fromEditorActivity"

    invoke-virtual {v6, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3583
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtMRUDocList;->getLastSelectedItem()Lcom/metamoji/nt/NtMRUDocList$ItemBase;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 3588
    const-string v7, "driveId"

    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3589
    const-string v7, "docId"

    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->docId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3591
    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->driveId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p1}, Lcom/metamoji/nt/NtMRUDocList$ItemBase;->docId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    move-object v1, v0

    .line 3594
    :cond_d
    :goto_6
    const-string p1, "docTags"

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v6, p1, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_7

    .line 3585
    :cond_e
    const-string p1, "driveId"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3586
    const-string p1, "docId"

    invoke-virtual {v6, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3596
    :goto_7
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3597
    invoke-virtual {p0, v6}, Lcom/metamoji/noteanytime/EditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 3599
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->finish()V

    .line 3600
    sget p1, Lcom/metamoji/noteanytime/R$anim;->slide_in_notelist_from_left:I

    sget v0, Lcom/metamoji/noteanytime/R$anim;->slide_out_editor:I

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->overridePendingTransition(II)V

    .line 3601
    throw v5

    :catchall_2
    move-exception p1

    .line 3546
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method private saveOnClose(Z)V
    .locals 11

    .line 3342
    const-string/jumbo v2, "saving %s"

    .line 3343
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 3346
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->shutdownViewport()V

    .line 3349
    const-string/jumbo v3, "srcInfo"

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtNoteController;->getEditValueAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v6

    :goto_0
    const/4 v4, 0x1

    .line 3355
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const-string v5, "RestoringPage"

    new-instance v7, Lcom/metamoji/noteanytime/EditorActivity$40;

    invoke-direct {v7, p0}, Lcom/metamoji/noteanytime/EditorActivity$40;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v5, v7}, Lcom/metamoji/cm/CmTaskManager;->cancelAndRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3365
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz v0, :cond_1

    .line 3368
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocumentID()Ljava/lang/String;

    move-result-object v5

    .line 3369
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDriveID()Ljava/lang/String;

    move-result-object v7

    .line 3371
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3372
    sput-boolean v4, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->CLOSING:Z

    .line 3373
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->detachEditorWindowController()V

    .line 3374
    iput-object v6, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 3375
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v8

    new-instance v9, Lcom/metamoji/noteanytime/EditorActivity$41;

    invoke-direct {v9, p0, v3, v0}, Lcom/metamoji/noteanytime/EditorActivity$41;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/util/Map;Lcom/metamoji/nt/NtEditorWindowController;)V

    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$42;

    move-object v2, v5

    move-object v5, p0

    move-object v1, p0

    move v4, p1

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/noteanytime/EditorActivity$42;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/noteanytime/EditorActivity;)V

    :goto_1
    invoke-virtual {v8, v9, v6, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 3363
    :try_start_1
    const-string v5, "Negligible exception."

    invoke-static {v0, v5}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3365
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz v0, :cond_1

    .line 3368
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocumentID()Ljava/lang/String;

    move-result-object v5

    .line 3369
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDriveID()Ljava/lang/String;

    move-result-object v7

    .line 3371
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3372
    sput-boolean v4, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->CLOSING:Z

    .line 3373
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->detachEditorWindowController()V

    .line 3374
    iput-object v6, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 3375
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v8

    new-instance v9, Lcom/metamoji/noteanytime/EditorActivity$41;

    invoke-direct {v9, p0, v3, v0}, Lcom/metamoji/noteanytime/EditorActivity$41;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/util/Map;Lcom/metamoji/nt/NtEditorWindowController;)V

    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$42;

    move-object v2, v5

    move-object v5, p0

    move-object v1, p0

    move v4, p1

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/noteanytime/EditorActivity$42;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/noteanytime/EditorActivity;)V

    goto :goto_1

    .line 3418
    :cond_1
    :goto_2
    iput-object v6, p0, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    .line 3419
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->clearData()V

    return-void

    .line 3365
    :goto_3
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz v0, :cond_2

    .line 3368
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocumentID()Ljava/lang/String;

    move-result-object v5

    .line 3369
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDriveID()Ljava/lang/String;

    move-result-object v8

    .line 3371
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3372
    sput-boolean v4, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->CLOSING:Z

    .line 3373
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->detachEditorWindowController()V

    .line 3374
    iput-object v6, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 3375
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v9

    new-instance v10, Lcom/metamoji/noteanytime/EditorActivity$41;

    invoke-direct {v10, p0, v3, v0}, Lcom/metamoji/noteanytime/EditorActivity$41;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/util/Map;Lcom/metamoji/nt/NtEditorWindowController;)V

    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$42;

    move-object v2, v5

    move-object v5, p0

    move-object v1, p0

    move v4, p1

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/noteanytime/EditorActivity$42;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v9, v10, v6, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 3416
    :cond_2
    throw v7
.end method

.method private setCollaboModeBarListeners()V
    .locals 2

    .line 6737
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6738
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBarWidthChanged:Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;

    if-nez v0, :cond_0

    .line 6739
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$73;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$73;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBarWidthChanged:Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;

    .line 6745
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->addStateChangedListener(Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;)V

    :cond_0
    return-void
.end method

.method private setInsertImportedDocJob(Landroid/content/Intent;)V
    .locals 2

    .line 4580
    const-string v0, "importedDocId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4582
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 4583
    invoke-static {v1}, Lcom/metamoji/nt/NtDocument;->popTemporaryDocument(Ljava/lang/String;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4585
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4586
    const-string v1, "insDoc"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4587
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_INTERNAL_INSERT_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    :cond_0
    return-void
.end method

.method private setPasteObjectJob(Landroid/content/Intent;)V
    .locals 3

    .line 5283
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5285
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getContent(Landroid/content/Intent;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/metamoji/noteanytime/cm/IntentContent;

    move-result-object v0

    .line 5286
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/cm/IntentContent;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 5290
    :cond_0
    invoke-static {v0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5292
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5294
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5295
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$60;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$60;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 5306
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->ensureEditMode()V

    .line 5311
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getContent(Landroid/content/Intent;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/metamoji/noteanytime/cm/IntentContent;

    move-result-object p1

    .line 5312
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5314
    const-string v1, "imageSource"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5316
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_INTERNAL_ADD_IMAGE_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 5318
    :cond_2
    invoke-static {v0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5319
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->ensureEditMode()V

    .line 5320
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getContent(Landroid/content/Intent;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/metamoji/noteanytime/cm/IntentContent;

    move-result-object p1

    .line 5321
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    .line 5325
    :cond_3
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5326
    const-string/jumbo v1, "videoRawSource"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5327
    const-string/jumbo p1, "videoAddSub"

    const-string/jumbo v1, "trimming"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5328
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_ADD_VIDEO_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 5330
    :cond_4
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5332
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 5334
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getContent(Landroid/content/Intent;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/metamoji/noteanytime/cm/IntentContent;

    move-result-object p1

    .line 5336
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    .line 5347
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    return-void

    .line 5340
    :cond_5
    :try_start_1
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_6

    .line 5347
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    .line 5348
    throw v0

    .line 5347
    :catch_0
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->dispose()V

    return-void

    .line 5352
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->ensureEditMode()V

    .line 5355
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5356
    const-string v1, "insText"

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5357
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_INTERNAL_ADD_TEXT_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 5359
    :cond_8
    const-string v2, "application/vnd.metamoji.atdoc.page"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5361
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_9

    :goto_1
    return-void

    .line 5367
    :cond_9
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->ensureEditMode()V

    .line 5370
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5371
    const-string v1, "insPage"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5372
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_INTERNAL_ADD_PAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 5374
    :cond_a
    invoke-static {v0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 5376
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->ensureEditMode()V

    .line 5378
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getContent(Landroid/content/Intent;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/metamoji/noteanytime/cm/IntentContent;

    move-result-object p1

    .line 5379
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5380
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/cm/IntentContent;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "importFilePath"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5382
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SOUND_UNIT_ADD_FROM_FILE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 5384
    :cond_b
    invoke-static {v0}, Lcom/metamoji/noteanytime/cm/CmMimeType;->isVideo(Ljava/lang/String;)Z

    return-void
.end method

.method private setScrollButtonsCondition(IZ)V
    .locals 1

    .line 7787
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_scrollButtonManager:Lcom/metamoji/ui/ScrollButtonManager;

    if-eqz v0, :cond_0

    .line 7788
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/ScrollButtonManager;->setHideCondition(IZ)V

    :cond_0
    return-void
.end method

.method private setShareMenu(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 7531
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->canCreatePdf()Z

    move-result v0

    .line 7532
    invoke-static {}, Lcom/metamoji/nt/NtPrintPDF;->canPrint()Z

    move-result v1

    .line 7536
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_APPLICATION:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SendWindow_Application:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_appli_n:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_appli_n:I

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7542
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_FILE:Lcom/metamoji/ui/PopupCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->Share_SaveToFile:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_file_n:I

    sget v8, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_file_n:I

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7548
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_ALBUM:Lcom/metamoji/ui/PopupCommand;

    sget v7, Lcom/metamoji/noteanytime/R$string;->Save_To_Album:I

    sget v8, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_file_n:I

    sget v9, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_file_n:I

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 7565
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v0}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 7566
    sget-object v1, Lcom/metamoji/ui/PopupCommand;->SENDWINDOW_PRINT:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 7567
    sget v1, Lcom/metamoji/noteanytime/R$string;->SendWindow_Print:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 7568
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_printer_n:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 7570
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private showErrorAndBackToCabinet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1632
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 1633
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1634
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$16;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    .line 1643
    :cond_0
    invoke-static {p1, p2}, Lcom/metamoji/cm/CmUtils;->modalConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->returnToCabinet()V

    return-void
.end method

.method private storeFragmentState(Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 1

    .line 3695
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3696
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private toggleJumpList()V
    .locals 2

    .line 6328
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6331
    :cond_0
    iget v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListShown:I

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 6342
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateJumpNavigationButtons()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6337
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setJumpListViewStatus(I)V

    .line 6338
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->closeDetailWindow()V

    goto :goto_0

    .line 6333
    :cond_3
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setJumpListViewStatus(I)V

    .line 6334
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->closeDetailWindow()V

    .line 6345
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateDetailAndViewModeButton()V

    return-void
.end method

.method private togglePageList()V
    .locals 2

    .line 6058
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6061
    :cond_0
    iget v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageListShown:I

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    .line 6072
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageNavigationButtons()V

    .line 6073
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateDetailAndViewModeButton()V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 6067
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setPageListViewStatus(I)V

    .line 6068
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->closeDetailWindow()V

    return-void

    .line 6063
    :cond_3
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setPageListViewStatus(I)V

    .line 6064
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->closeDetailWindow()V

    return-void
.end method

.method private transitionToErrorView(I)V
    .locals 3

    .line 1742
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 1743
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1744
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$18;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$18;-><init>(Lcom/metamoji/noteanytime/EditorActivity;I)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1751
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->returnToCabinet()V

    return-void

    .line 1756
    :cond_0
    iput p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_showError:I

    .line 1759
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1762
    sget v1, Lcom/metamoji/noteanytime/R$id;->editing_area_root:I

    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    .line 1763
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1766
    sget v1, Lcom/metamoji/noteanytime/R$id;->setTextUnitLocation:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 1767
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/noteanytime/EditorActivity;->setFragmentState(Landroidx/fragment/app/Fragment;I)V

    .line 1770
    sget v1, Lcom/metamoji/noteanytime/R$id;->bottombar:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1771
    invoke-virtual {p0, v0, v2}, Lcom/metamoji/noteanytime/EditorActivity;->setFragmentState(Landroidx/fragment/app/Fragment;I)V

    .line 1774
    sget v0, Lcom/metamoji/noteanytime/R$id;->inputViewForTLE:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1775
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1779
    sget v0, Lcom/metamoji/noteanytime/R$id;->actionbar_left_sep:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1780
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1783
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_modebar:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1784
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1787
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_offline_edit_status_view:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1788
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1792
    sget v0, Lcom/metamoji/noteanytime/R$id;->mode2infoview:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1793
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1796
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_newdoc:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1797
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1800
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_title_text:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1802
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1807
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1809
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->hide()V

    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eq p1, v0, :cond_4

    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    .line 1829
    sget p1, Lcom/metamoji/noteanytime/R$string;->App_DocumentNotAvailable:I

    .line 1830
    sget v0, Lcom/metamoji/noteanytime/R$string;->App_Retry:I

    goto :goto_1

    .line 1825
    :cond_5
    sget p1, Lcom/metamoji/noteanytime/R$string;->App_Secure_Room_Password_Protected:I

    .line 1826
    sget v0, Lcom/metamoji/noteanytime/R$string;->SomethingWrong_Open:I

    goto :goto_1

    .line 1821
    :cond_6
    sget p1, Lcom/metamoji/noteanytime/R$string;->App_Document_Password_Protected:I

    .line 1822
    sget v0, Lcom/metamoji/noteanytime/R$string;->SomethingWrong_Open:I

    .line 1834
    :goto_1
    sget v1, Lcom/metamoji/noteanytime/R$id;->error_info:I

    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 1835
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1838
    sget v2, Lcom/metamoji/noteanytime/R$id;->open_error_title:I

    invoke-virtual {p0, v2}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1839
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1842
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_retry:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1843
    check-cast p1, Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$19;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$19;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1853
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private transitionToNormalView()V
    .locals 4

    .line 1861
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 1862
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1863
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$20;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$20;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1871
    iput v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_showError:I

    .line 1873
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 1878
    sget v2, Lcom/metamoji/noteanytime/R$id;->editing_area_root:I

    invoke-virtual {p0, v2}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1879
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1882
    sget v2, Lcom/metamoji/noteanytime/R$id;->bottombar:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 1883
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setFragmentState(Landroidx/fragment/app/Fragment;I)V

    .line 1886
    sget v1, Lcom/metamoji/noteanytime/R$id;->inputViewForTLE:I

    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1887
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1889
    sget v1, Lcom/metamoji/noteanytime/R$id;->actionbar_left_sep:I

    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1890
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1892
    sget v1, Lcom/metamoji/noteanytime/R$id;->editor_modebar:I

    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1893
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    invoke-virtual {v2}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1894
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1897
    :cond_1
    sget v1, Lcom/metamoji/noteanytime/R$id;->editor_offline_edit_status_view:I

    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    .line 1898
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1902
    sget v1, Lcom/metamoji/noteanytime/R$id;->mode2infoview:I

    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1903
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1905
    sget v1, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_newdoc:I

    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1906
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1907
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1909
    :cond_2
    sget v1, Lcom/metamoji/noteanytime/R$id;->editor_title_text:I

    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1911
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1915
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1917
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->show()V

    .line 1923
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$id;->error_info:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1924
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateDetailAndViewModeButton(Z)V
    .locals 2

    .line 6781
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz v0, :cond_0

    .line 6782
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-nez p1, :cond_1

    goto :goto_1

    .line 6788
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isDetailWindowOpen()Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v0, :cond_2

    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_DETAIL_WINDOW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 6793
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 6794
    const-string v0, "MMJDetailWindowButtonVisible"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x8

    .line 6806
    :cond_4
    :goto_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_dwindow:I

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6808
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6810
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateWristGuardVisible()V

    return-void
.end method

.method private updateJumpBackButtons()V
    .locals 2

    .line 6308
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6310
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 6311
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_BACK:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6313
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getJumpList()Lcom/metamoji/nt/itemlist/NtJumpList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->setJumpBackButtonEnabled(Z)V

    return-void
.end method

.method private updateJumpNavigationButtons()V
    .locals 7

    .line 6253
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 6254
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6255
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$71;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$71;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 6264
    :cond_0
    iget v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListShown:I

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    goto/16 :goto_2

    .line 6267
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6268
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_change_tab_layout:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 6282
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowEditorBars()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 6287
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6290
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 6292
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 6293
    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_BACKW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-virtual {v4}, Lcom/metamoji/nt/itemlist/NtJumpList;->havePrev()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    move v4, v3

    .line 6294
    :goto_0
    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_FORW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->haveNext()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v5, v3

    .line 6296
    :goto_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_prev:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v4, :cond_6

    move v1, v3

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6297
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_next:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v5, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6298
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_change_tab_layout:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void

    .line 6271
    :cond_9
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6274
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_prev:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6275
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_next:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6276
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_change_tab_layout:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public GetJumpLocationView()Landroid/widget/RelativeLayout;
    .locals 1

    .line 8717
    sget v0, Lcom/metamoji/noteanytime/R$id;->JumpLocationView:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public Logout()V
    .locals 1

    const/4 v0, 0x1

    .line 3509
    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->returnToCabinetInternal(Z)V

    return-void
.end method

.method protected _onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 4458
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 4459
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onActivityResults:Lcom/metamoji/noteanytime/EditorActivity$OnActivityResult;

    if-eqz v0, :cond_0

    .line 4460
    invoke-static {p1}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->valueOf(I)Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/noteanytime/EditorActivity$OnActivityResult;->onActivityResult(Lcom/metamoji/noteanytime/EditorActivity$RequestCode;ILandroid/content/Intent;)V

    const/4 p1, 0x0

    .line 4461
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onActivityResults:Lcom/metamoji/noteanytime/EditorActivity$OnActivityResult;

    :cond_0
    return-void
.end method

.method public addPartsFromLibrary(Lcom/metamoji/cm/CmContext;)V
    .locals 5

    .line 5128
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 5130
    const-string v1, "NtEditorWindowController#handlePutInParts"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    .line 5135
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->closeDetailWindowAndEnsurePenMode()V

    .line 5138
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v2

    .line 5139
    const-string v3, "LibraryItemVersion"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    .line 5140
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 5141
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 5142
    sget v3, Lcom/metamoji/noteanytime/R$string;->Library_Title:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 5143
    sget v3, Lcom/metamoji/noteanytime/R$string;->Library_Msg_Initializing:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 5144
    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 5145
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v2}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 5146
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 5149
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/noteanytime/EditorActivity$56;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/noteanytime/EditorActivity$56;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/cm/CmContext;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v2, v4, v4}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public addShape(Lcom/metamoji/cm/CmContext;)V
    .locals 16

    move-object/from16 v0, p0

    .line 5171
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 5173
    const-string v2, "NtEditorWindowController#handlePutInShape"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    return-void

    .line 5178
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->closeDetailWindowAndEnsurePenMode()V

    .line 5180
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v3

    .line 5185
    const-string v4, "ShapeLineDash"

    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 5188
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v5

    .line 5189
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 5190
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 5193
    :cond_2
    const-string v4, "ShapeLineColors"

    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5194
    const-string v7, "ShapeLineAlpha"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7, v8}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v7

    .line 5195
    const-string v9, "ShapeLineWidth"

    invoke-virtual {v3, v9, v8}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v9

    .line 5196
    const-string v10, "ShapeFillType"

    invoke-virtual {v3, v10}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5197
    const-string v11, "ShapeFillColors"

    invoke-virtual {v3, v11}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 5198
    const-string v12, "ShapeFillAlpha"

    invoke-virtual {v3, v12, v8}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v12

    .line 5199
    const-string v13, "ShapeArrowType"

    invoke-virtual {v3, v13}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5200
    const-string v14, "ShapeArrowKinds"

    invoke-virtual {v3, v14}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v6, :cond_3

    .line 5201
    const-string v14, "com.metamoji.pen.builtin.standard1"

    goto :goto_1

    :cond_3
    const-string v14, "com.metamoji.pen.builtin.standard2"

    .line 5202
    :goto_1
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v15

    const-string v8, "MMJNtSystemPenSettings"

    invoke-virtual {v15, v8}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v8

    check-cast v8, Lcom/metamoji/nt/NtSystemPenSettings;

    .line 5203
    invoke-virtual {v8, v14}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateById(Ljava/lang/String;)Lcom/metamoji/nt/NtPenTemplate;

    move-result-object v8

    .line 5204
    invoke-virtual {v8}, Lcom/metamoji/nt/NtPenTemplate;->getDefaultStyle()Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v8

    if-nez v4, :cond_4

    .line 5213
    new-instance v4, Lcom/metamoji/noteanytime/EditorActivity$57;

    invoke-direct {v4, v0}, Lcom/metamoji/noteanytime/EditorActivity$57;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 5217
    :cond_4
    const-string/jumbo v14, "standard"

    if-eqz v4, :cond_5

    .line 5218
    invoke-virtual {v8, v4}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    .line 5219
    invoke-virtual {v8}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/metamoji/nt/share/NtPenStyle;->setLineColor(I)V

    .line 5220
    iput-object v14, v8, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    .line 5221
    iput v7, v8, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    .line 5222
    iput v9, v8, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    .line 5223
    iput-object v6, v8, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    .line 5226
    :cond_5
    const-string v4, "none"

    if-nez v11, :cond_6

    .line 5229
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$58;

    invoke-direct {v5, v0}, Lcom/metamoji/noteanytime/EditorActivity$58;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    .line 5234
    iput-object v4, v8, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    .line 5235
    invoke-virtual {v8, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setFillColors(Ljava/util/List;)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 5236
    iput v6, v8, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    .line 5239
    const-string v6, "ShapeFillColorHistory"

    invoke-static {v5, v6}, Lcom/metamoji/nt/NtInkManager;->saveColorHistory(Ljava/util/List;Ljava/lang/String;)V

    :cond_6
    const/4 v5, 0x1

    if-eqz v11, :cond_9

    if-nez v10, :cond_8

    .line 5243
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_7

    const-string v14, "gradation"

    :cond_7
    iput-object v14, v8, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    goto :goto_2

    .line 5246
    :cond_8
    iput-object v10, v8, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    .line 5248
    :goto_2
    invoke-virtual {v8, v11}, Lcom/metamoji/nt/share/NtPenStyle;->setFillColors(Ljava/util/List;)V

    .line 5249
    iput v12, v8, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    .line 5251
    :cond_9
    iput-boolean v5, v8, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    if-nez v13, :cond_a

    .line 5254
    const-string v3, "default"

    move-object v13, v4

    :cond_a
    if-eqz v13, :cond_b

    .line 5257
    iput-object v13, v8, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    .line 5258
    iput-object v3, v8, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    .line 5261
    :cond_b
    new-instance v3, Lcom/metamoji/ui/dialog/ShapeList;

    invoke-direct {v3, v8}, Lcom/metamoji/ui/dialog/ShapeList;-><init>(Lcom/metamoji/nt/share/NtPenStyle;)V

    move-object/from16 v4, p1

    .line 5262
    invoke-virtual {v3, v4}, Lcom/metamoji/ui/dialog/ShapeList;->setCmContext(Lcom/metamoji/cm/CmContext;)V

    .line 5263
    invoke-virtual {v3, v1, v2}, Lcom/metamoji/ui/dialog/ShapeList;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public addWebPage()V
    .locals 2

    .line 5057
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->closeDetailWindowAndEnsurePenMode()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5058
    invoke-virtual {p0, v0, v0, v1, v1}, Lcom/metamoji/noteanytime/EditorActivity;->prepareWebPage(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method appendDebugMenu(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 7600
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v0, :cond_0

    .line 7603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7606
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->SELECT_DC_SERVER:Lcom/metamoji/ui/PopupCommand;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "\uff0a\u63a5\u7d9a\u5148\u30eb\u30fc\u30c8\u30b5\u30fc\u30d0\u30fc\u9078\u629e"

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7609
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->UPDATE_SYSINFO:Lcom/metamoji/ui/PopupCommand;

    const/4 v7, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "\uff0aSysInfo\u53d6\u5f97\u5f8c\u300124\u6642\u9593\u7d4c\u904e..."

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7610
    new-instance v3, Lcom/metamoji/ui/UiMenuItem;

    sget-object v4, Lcom/metamoji/ui/PopupCommand;->CLEAR_PROXY_AUTH_INFO:Lcom/metamoji/ui/PopupCommand;

    const/4 v8, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "\uff0a\u30d7\u30ed\u30ad\u30b7\u8a8d\u8a3c\u60c5\u5831\u306e\u524a\u9664"

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7611
    new-instance v4, Lcom/metamoji/ui/UiMenuItem;

    sget-object v5, Lcom/metamoji/ui/PopupCommand;->DBG_UNINSTALL_MAZEC_DIC:Lcom/metamoji/ui/PopupCommand;

    const/4 v9, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "\uff0aMazec\u8f9e\u66f8\u3092\u30a2\u30f3\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb"

    invoke-direct/range {v4 .. v9}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7612
    new-instance v5, Lcom/metamoji/ui/UiMenuItem;

    sget-object v6, Lcom/metamoji/ui/PopupCommand;->DBG_UNINSTALL_FONT:Lcom/metamoji/ui/PopupCommand;

    const/4 v10, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "\uff0a\u30d5\u30a9\u30f3\u30c8\u3092\u30a2\u30f3\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb"

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7613
    new-instance v6, Lcom/metamoji/ui/UiMenuItem;

    sget-object v7, Lcom/metamoji/ui/PopupCommand;->DBG_DOWNLOAD_SP_TEST_MODE:Lcom/metamoji/ui/PopupCommand;

    invoke-static {}, Lcom/metamoji/nt/dl/NtDLEnv;->getSpecialDebugModeMenuText()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;Ljava/lang/String;II)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7614
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    const-string/jumbo v2, "\u30b5\u30fc\u30d0\u30fc\u7cfb"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public attachViewForSoftInput(Landroid/view/View;)V
    .locals 1

    .line 2201
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->detachViewForSoftInput(Landroid/view/View;)V

    .line 2202
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    .line 2203
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->attachViewForSoftInput()V

    return-void
.end method

.method bindUIToDocument(Lcom/metamoji/nt/NtNoteController;Landroid/os/Bundle;)V
    .locals 1

    .line 2898
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_dungeonMap:Lcom/metamoji/ui/UiDungeonMapView;

    if-eqz v0, :cond_0

    .line 2899
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/UiDungeonMapView;->bind(Lcom/metamoji/nt/NtNoteController;)V

    .line 2901
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_scrollButtonManager:Lcom/metamoji/ui/ScrollButtonManager;

    if-eqz v0, :cond_1

    .line 2902
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->bind(Lcom/metamoji/nt/NtNoteController;)V

    .line 2905
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity;->initPageList(Lcom/metamoji/nt/NtNoteController;Landroid/os/Bundle;)V

    .line 2906
    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity;->initJumpList(Lcom/metamoji/nt/NtNoteController;Landroid/os/Bundle;)V

    .line 2908
    sget p2, Lcom/metamoji/noteanytime/R$id;->editor_title_text:I

    invoke-virtual {p0, p2}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 2910
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForUi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2915
    :cond_2
    new-instance p2, Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/noteanytime/EditorActivity-IA;)V

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onViewportSizeChangedHandler:Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;

    .line 2916
    iget-object p1, p1, Lcom/metamoji/nt/NtNoteController;->onViewportSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onViewportSizeChangedHandler:Lcom/metamoji/noteanytime/EditorActivity$OnViewportSizeChangedHandler;

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public canPerformLinkJumpBackward()Z
    .locals 1

    .line 6421
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getPrevLinkJump()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canPerformLinkJumpForward()Z
    .locals 1

    .line 6404
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getNextLinkJump()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancelSetTextUnitLocationView()V
    .locals 1

    .line 7844
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    if-eqz v0, :cond_0

    .line 7845
    invoke-virtual {v0}, Lcom/metamoji/nt/NtSetTextLocation;->cancel()V

    :cond_0
    return-void
.end method

.method public changeToJumpList()V
    .locals 1

    const/16 v0, 0x8

    .line 6359
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setPageListViewStatus(I)V

    const/4 v0, 0x0

    .line 6360
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setJumpListViewStatus(I)V

    .line 6361
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->closeDetailWindow()V

    return-void
.end method

.method public changeToPageList()V
    .locals 1

    const/16 v0, 0x8

    .line 6085
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setJumpListViewStatus(I)V

    const/4 v0, 0x0

    .line 6086
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setPageListViewStatus(I)V

    .line 6087
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->closeDetailWindow()V

    return-void
.end method

.method public checkCollaboModeBar()Z
    .locals 4

    .line 6646
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 6647
    const-string v1, "CollaboModeBar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    if-eqz v1, :cond_1

    .line 6650
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 6651
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6652
    instance-of v3, v1, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 6657
    :cond_0
    instance-of v3, v1, Lcom/metamoji/ns/ui/NsCollaboModeBar;

    if-eqz v3, :cond_1

    .line 6664
    :goto_0
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 6665
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public closeCollaboModeBar()V
    .locals 1

    .line 6765
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6766
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6767
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->hide()V

    .line 6768
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->hideFragment(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public closeDetailWindow()V
    .locals 2

    .line 6519
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDetailWindow()Lcom/metamoji/ui/DetailWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detailWindow:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailWindow;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6520
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6524
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setDetailWindowMode(Z)V

    .line 6526
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detailWindow:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->hideFragment(Landroidx/fragment/app/Fragment;)V

    const/16 v0, 0x10

    .line 6527
    invoke-direct {p0, v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    :cond_1
    return-void
.end method

.method public closeDetailWindowAndEnsurePenMode()V
    .locals 3

    .line 4609
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->closeDetailWindow()V

    .line 4611
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4619
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v1

    .line 4620
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->requestForEditMode()Z

    .line 4621
    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/metamoji/nt/NtNoteController$NoteMode;->SELECT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v0, :cond_0

    .line 4622
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4623
    const-string v1, "index"

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->PEN:Lcom/metamoji/nt/NtNoteController$NoteMode;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4624
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    return-void
.end method

.method public closeDocument()V
    .locals 0

    .line 3515
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->returnToCabinet()V

    return-void
.end method

.method public closeSetTextUnitLocationView()V
    .locals 2

    .line 7883
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSetTextLocation;->setTextLocationListener(Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;)V

    .line 7886
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setFragmentState(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public collaboModeChanged(Z)V
    .locals 2

    .line 8209
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->collaboModeChanged()V

    .line 8210
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/CustomHoverSelectorView;->updateSharePallet(Z)V

    .line 8211
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_historyBarDriver:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/HistoryBarDriver;->onCollaboModeChanged(Z)V

    .line 8212
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/flexible/FxManager;->updateNaviBarRightBtns(Z)V

    return-void
.end method

.method public containsInCollaboModeBar(Landroid/graphics/PointF;)Z
    .locals 5

    .line 6853
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6855
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6856
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    .line 6857
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    .line 6858
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsInEditorBars(Landroid/graphics/PointF;)Z
    .locals 6

    .line 6835
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6836
    sget v2, Lcom/metamoji/noteanytime/R$id;->actionbar:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/ActionBar;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 6838
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/ActionBar;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6839
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/ActionBar;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/ActionBar;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6840
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/ActionBar;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    .line 6841
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public createCommandFloater()Lcom/metamoji/ui/CommandFloater;
    .locals 4

    .line 7206
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7207
    const-string v1, "CommandFloater"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/CommandFloater;

    if-nez v2, :cond_0

    .line 7209
    new-instance v2, Lcom/metamoji/ui/CommandFloater;

    invoke-direct {v2}, Lcom/metamoji/ui/CommandFloater;-><init>()V

    .line 7210
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v3, Lcom/metamoji/noteanytime/R$id;->main:I

    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-object v2
.end method

.method public createZoomBar()Lcom/metamoji/ui/ZoomBar;
    .locals 4

    .line 7168
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7169
    const-string v1, "ZoomBar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/ZoomBar;

    if-nez v2, :cond_0

    .line 7171
    new-instance v2, Lcom/metamoji/ui/ZoomBar;

    invoke-direct {v2}, Lcom/metamoji/ui/ZoomBar;-><init>()V

    .line 7172
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v3, Lcom/metamoji/noteanytime/R$id;->main:I

    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-object v2
.end method

.method public destroyCommandFloater()V
    .locals 2

    .line 7216
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7217
    const-string v1, "CommandFloater"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7219
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public destroyZoomBar()V
    .locals 2

    .line 7178
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7179
    const-string v1, "ZoomBar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7181
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method detachEditorWindowController()V
    .locals 4

    .line 3278
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz v0, :cond_4

    .line 3279
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3282
    iget-object v2, v0, Lcom/metamoji/nt/NtNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 3285
    iget-object v2, v0, Lcom/metamoji/nt/NtNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v2, p0}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 3286
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_linkJumpChangeListener:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

    if-eqz v2, :cond_0

    .line 3287
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getLinkJumpManager()Lcom/metamoji/nt/NtLinkJumpManager;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_linkJumpChangeListener:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtLinkJumpManager;->removeListener(Lcom/metamoji/nt/NtLinkJumpManager$NtLinkJumpManagerChangeListener;)V

    .line 3288
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_linkJumpChangeListener:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;->dispose()V

    .line 3289
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_linkJumpChangeListener:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

    .line 3293
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_linkJumpChangeListener:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

    if-eqz v0, :cond_1

    .line 3294
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;->dispose()V

    .line 3295
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_linkJumpChangeListener:Lcom/metamoji/noteanytime/EditorActivity$LinkJumpChangeListener;

    .line 3299
    :cond_1
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    if-eqz v0, :cond_2

    .line 3300
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtPageList;->destroy()V

    .line 3301
    :cond_2
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    if-eqz v0, :cond_3

    .line 3302
    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->destroy()V

    .line 3306
    :cond_3
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtEditorWindowController;->detachView(Lcom/metamoji/noteanytime/EditorActivity;)V

    .line 3307
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    :cond_4
    return-void
.end method

.method detachTextCursorView()V
    .locals 2

    .line 3329
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textCursors:Lcom/metamoji/un/text/TextCursors;

    if-eqz v0, :cond_0

    .line 3330
    iget-object v0, v0, Lcom/metamoji/un/text/TextCursors;->_ins:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3331
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textCursors:Lcom/metamoji/un/text/TextCursors;

    iget-object v1, v1, Lcom/metamoji/un/text/TextCursors;->_ins:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3332
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textCursors:Lcom/metamoji/un/text/TextCursors;

    iget-object v1, v1, Lcom/metamoji/un/text/TextCursors;->_selL:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3333
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textCursors:Lcom/metamoji/un/text/TextCursors;

    iget-object v1, v1, Lcom/metamoji/un/text/TextCursors;->_selR:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3334
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textCursors:Lcom/metamoji/un/text/TextCursors;

    :cond_0
    return-void
.end method

.method public detachViewForSoftInput(Landroid/view/View;)V
    .locals 1

    .line 2217
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    if-eq v0, p1, :cond_0

    return-void

    .line 2219
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->detachViewForSoftInput()V

    return-void
.end method

.method detachViewport()V
    .locals 3

    .line 3315
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    if-eqz v0, :cond_1

    .line 3316
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 3317
    const-string v1, "PaintResponse"

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_paintResponseChangedListener:Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->removeOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 3319
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3321
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3323
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->setTurnOverMediator(Lcom/metamoji/df/sprite/TurnOverMediator;)V

    .line 3324
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    :cond_1
    return-void
.end method

.method doAtFirst()V
    .locals 1

    .line 2237
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->noteLoaded()V

    return-void
.end method

.method public doCommand(Lcom/metamoji/ui/PopupCommand;)Z
    .locals 4

    .line 3982
    sget-object v0, Lcom/metamoji/noteanytime/EditorActivity$87;->$SwitchMap$com$metamoji$ui$PopupCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/PopupCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 4319
    :pswitch_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$51;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$51;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$52;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$52;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {p1, v0, v2, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return v3

    .line 4305
    :pswitch_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$49;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$49;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$50;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$50;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {p1, v0, v2, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return v3

    .line 4291
    :pswitch_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$47;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$47;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$48;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$48;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {p1, v0, v2, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return v3

    .line 4288
    :pswitch_3
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->cleanupDownloadSheetTemplate()V

    return v3

    .line 4285
    :pswitch_4
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/lb/LbLibraryItemManager;->cleanupDownloadItem()V

    return v3

    .line 4275
    :pswitch_5
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 4277
    const-string v0, "PoisonousMushroomCreatorDialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4278
    new-instance v1, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;

    invoke-direct {v1}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;-><init>()V

    .line 4279
    invoke-virtual {v1, p1, v0}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v3

    .line 4266
    :pswitch_6
    invoke-static {}, Lcom/metamoji/nt/dl/NtDLEnv;->toggleSpecialDebugMode()V

    .line 4267
    invoke-static {}, Lcom/metamoji/nt/dl/NtDLEnv;->getSpecialDebugMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4268
    invoke-static {}, Lcom/metamoji/nt/dl/NtMazecDownloader;->uninstall()V

    .line 4269
    invoke-static {}, Lcom/metamoji/nt/dl/NtFontDownloader;->uninstall()V

    return v3

    .line 4263
    :pswitch_7
    invoke-static {}, Lcom/metamoji/nt/dl/NtFontDownloader;->uninstall()V

    return v3

    .line 4260
    :pswitch_8
    invoke-static {}, Lcom/metamoji/nt/dl/NtMazecDownloader;->uninstall()V

    return v3

    .line 4257
    :pswitch_9
    invoke-static {}, Lcom/metamoji/network/NwProxyAuthManager;->clearProxyAuthInfo()V

    return v3

    .line 4253
    :pswitch_a
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateSysInfo()V

    return v3

    .line 4243
    :pswitch_b
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 4245
    const-string v0, "EditItServerSelectDialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4246
    new-instance v1, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    sget-object v2, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_EDITIT_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    invoke-direct {v1, v2}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;-><init>(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;)V

    .line 4247
    invoke-virtual {v1, p1, v0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v3

    .line 4232
    :pswitch_c
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 4234
    const-string v0, "LobbyServerSelectDialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4235
    new-instance v1, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    sget-object v2, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_LOBBY_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    invoke-direct {v1, v2}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;-><init>(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;)V

    .line 4236
    invoke-virtual {v1, p1, v0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v3

    .line 4221
    :pswitch_d
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 4223
    const-string v0, "StoreServerSelectDialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4224
    new-instance v1, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    sget-object v2, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_STORE_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    invoke-direct {v1, v2}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;-><init>(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;)V

    .line 4225
    invoke-virtual {v1, p1, v0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v3

    .line 4210
    :pswitch_e
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 4212
    const-string v0, "DCServerSelectDialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4213
    new-instance v1, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;

    sget-object v2, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;->FOR_DC_SERVER:Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;

    invoke-direct {v1, v2}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;-><init>(Lcom/metamoji/ui/library/develop/StoreServerSelectDialog$ServerType;)V

    .line 4214
    invoke-virtual {v1, p1, v0}, Lcom/metamoji/ui/library/develop/StoreServerSelectDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v3

    .line 4185
    :pswitch_f
    const-string p1, "PMVLOGMR"

    invoke-static {p1}, Lcom/metamoji/nt/pm/PmCentre;->detox(Ljava/lang/String;)V

    .line 4186
    invoke-static {}, Lcom/metamoji/cm/CmLog;->stopFileLog()V

    return v3

    .line 4182
    :pswitch_10
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->openDebugMenu2()V

    return v3

    .line 4179
    :pswitch_11
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->openDebugMenu()V

    return v3

    .line 4176
    :pswitch_12
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_NOTETEMPLATE_SETTING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4173
    :pswitch_13
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_DOCUMENT_SETTING2:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4170
    :pswitch_14
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_DOCUMENT_SETTING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4165
    :pswitch_15
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4166
    const-string v0, "EditorActivity"

    invoke-virtual {p1, v0, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4167
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PDF_LOCATION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4162
    :pswitch_16
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_COVER_SELECT_AND_INSERT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4159
    :pswitch_17
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_BACKGROUND:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4156
    :pswitch_18
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_SIZE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4153
    :pswitch_19
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_CHANGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4150
    :pswitch_1a
    invoke-virtual {p0, p1, v3}, Lcom/metamoji/noteanytime/EditorActivity;->showSendDialog(Lcom/metamoji/ui/PopupCommand;Z)V

    return v3

    .line 4147
    :pswitch_1b
    invoke-virtual {p0, p1, v3}, Lcom/metamoji/noteanytime/EditorActivity;->showSendDialog(Lcom/metamoji/ui/PopupCommand;Z)V

    return v3

    .line 4144
    :pswitch_1c
    invoke-virtual {p0, p1, v3}, Lcom/metamoji/noteanytime/EditorActivity;->showSendDialog(Lcom/metamoji/ui/PopupCommand;Z)V

    return v3

    .line 4141
    :pswitch_1d
    invoke-virtual {p0, p1, v3}, Lcom/metamoji/noteanytime/EditorActivity;->showSendDialog(Lcom/metamoji/ui/PopupCommand;Z)V

    return v3

    .line 4137
    :pswitch_1e
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_ALBUM_ALLPAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4134
    :pswitch_1f
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_ALBUM_THISPAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4131
    :pswitch_20
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_ALBUM_SELECTION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4124
    :pswitch_21
    invoke-virtual {p0, p1, v3}, Lcom/metamoji/noteanytime/EditorActivity;->showSendDialog(Lcom/metamoji/ui/PopupCommand;Z)V

    return v3

    .line 4119
    :pswitch_22
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    sget-object v0, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    invoke-static {p1, v0, v2}, Lcom/metamoji/nt/NtShare;->shareAsAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/lang/String;)V

    return v3

    .line 4115
    :pswitch_23
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-static {p1, v2, v2}, Lcom/metamoji/nt/NtShare;->shareAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;)V

    return v3

    .line 4111
    :pswitch_24
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/metamoji/nt/NtShare;->shareCurrentPageAsImage(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;)V

    return v3

    .line 4107
    :pswitch_25
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_SEARCH_TEXT_BAR:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4104
    :pswitch_26
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_ZOOM_FIT_PAPER_WIDTH:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4101
    :pswitch_27
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_ZOOM_ENTIRE_PAPER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4098
    :pswitch_28
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SELECTDOC_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4095
    :pswitch_29
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SELECTFORM_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4092
    :pswitch_2a
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4085
    :pswitch_2b
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_COLLABO_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4081
    :pswitch_2c
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_NEW_NORMAL_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4076
    :pswitch_2d
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_NEW_DOCTEMPLATE_FROM_CURRENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4072
    :pswitch_2e
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_NEW_DOCUMENT_SELECT_PAPER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4068
    :pswitch_2f
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_COPY_CURRENT_DOC:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4064
    :pswitch_30
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_NEW_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4046
    :pswitch_31
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtSystemSettings;->resetAllSettings()V

    .line 4049
    invoke-static {}, Lcom/metamoji/ctold/template/CtTemplateManager;->instance()Lcom/metamoji/ctold/template/CtTemplateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ctold/template/CtTemplateManager;->resetAllSettings()V

    .line 4053
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 4054
    const-string/jumbo v0, "\u30ea\u30bb\u30c3\u30c8\u3057\u307e\u3057\u305f\u3002"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4055
    const-string/jumbo v0, "\u30b7\u30b9\u30c6\u30e0\u8a2d\u5b9a\u306e\u521d\u671f\u5316"

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4056
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4057
    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4058
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 4059
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return v3

    .line 4038
    :pswitch_32
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    .line 4039
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getChildren()Ljava/util/List;

    move-result-object p1

    .line 4040
    sget-object v0, Lcom/metamoji/nt/NtLayerController$LayerIndex;->FORM:Lcom/metamoji/nt/NtLayerController$LayerIndex;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController$LayerIndex;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/controller/DfController;

    .line 4041
    invoke-virtual {p1, v1}, Lcom/metamoji/df/controller/DfController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/form/UnBGFormUnit;

    .line 4042
    invoke-virtual {p1}, Lcom/metamoji/un/form/UnBGFormUnit;->sampling()V

    return v3

    .line 4035
    :pswitch_33
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->entanglement()V

    return v3

    .line 4031
    :pswitch_34
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_PASTE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4028
    :pswitch_35
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_COPY:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    :pswitch_36
    return v3

    .line 4020
    :pswitch_37
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->dump()V

    return v3

    .line 4017
    :pswitch_38
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_ADD_TEXT_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4013
    :pswitch_39
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_READ_WEBPAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4007
    :pswitch_3a
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_TAKE_A_PICTURE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 4001
    :pswitch_3b
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SELECT_PHOTOLIBRARY:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 3995
    :pswitch_3c
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PUTIN_SHAPE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 3990
    :pswitch_3d
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PUTIN_PARTS:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    .line 3984
    :pswitch_3e
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_ADD_DUMMY_UNIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public editDocument(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cm/PBE;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/PBE;",
            "Lcom/metamoji/nt/NtEditorWindowController$EditOperation;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1591
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_driveID:Ljava/lang/String;

    .line 1592
    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    .line 1594
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    sget-object p2, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtEditorWindowController;->closeDocument(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;)V

    .line 1596
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 1597
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_driveID:Ljava/lang/String;

    invoke-static {p1}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object p1

    .line 1598
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$15;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$15;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->editDocument(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    .line 1606
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-static {p1}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->setDocumentEditor(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    if-eqz p3, :cond_0

    .line 1608
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {p1, p3}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setEncryptor(Lcom/metamoji/cm/PBE;)V

    .line 1610
    :cond_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {p0, p1, p5}, Lcom/metamoji/noteanytime/EditorActivity;->setSrcInfo(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Ljava/util/Map;)V

    .line 1611
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    invoke-virtual {p1, p4, v2}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->documentEditorPrepared(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V

    return-void
.end method

.method public editLayerInfoResetMargin()V
    .locals 2

    .line 8804
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editLayerInfoView:Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->getTopMargin()I

    move-result v0

    if-eqz v0, :cond_0

    .line 8805
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editLayerInfoView:Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setTopMargin(I)V

    :cond_0
    return-void
.end method

.method enableButton(IZZ)V
    .locals 0

    .line 5716
    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 5720
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f000000    # 0.5f

    .line 5722
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method enableButtonOnUIThread(IZ)V
    .locals 2

    .line 5728
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$62;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$62;-><init>(Lcom/metamoji/noteanytime/EditorActivity;IZ)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method enableUndoRedo(Lcom/metamoji/nt/NtCommand;Z)V
    .locals 2

    .line 5754
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$64;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$64;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtCommand;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public errorInLoadingNote(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x3

    .line 1933
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->errorInLoadingNote(Ljava/lang/Throwable;I)V

    return-void
.end method

.method public errorInLoadingNote(Ljava/lang/Throwable;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1938
    const-string v0, "EditorActivity.errorInLoadingNote"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1940
    instance-of v0, p1, Lcom/metamoji/cm/CmException;

    if-eqz v0, :cond_0

    .line 1941
    check-cast p1, Lcom/metamoji/cm/CmException;

    invoke-virtual {p1}, Lcom/metamoji/cm/CmException;->getCode()I

    move-result p1

    .line 1942
    sget-object v0, Lcom/metamoji/nt/NtErrorCode;->ERROR_CANCEL_PASSWORD_AUTHENTICATION:Lcom/metamoji/nt/NtErrorCode;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtErrorCode;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p2, 0x4

    .line 1947
    :cond_0
    invoke-direct {p0, p2}, Lcom/metamoji/noteanytime/EditorActivity;->transitionToErrorView(I)V

    return-void
.end method

.method public getActionBarButtonsLayer()Landroid/view/ViewGroup;
    .locals 1

    .line 3955
    sget v0, Lcom/metamoji/noteanytime/R$id;->actionbar_button_layer:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 0

    return-object p0
.end method

.method public getActivityConnector(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/lib/dialog/connector/UtActivityConnector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
            "**>;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->activityConnectorStore:Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStore;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStore;->getActivityConnector(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/lib/dialog/connector/UtActivityConnector;

    move-result-object p1

    return-object p1
.end method

.method public getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;
    .locals 2

    .line 6594
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    if-nez v0, :cond_1

    .line 6596
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    const-string v1, "CollaboModeBar"

    if-eqz v0, :cond_0

    .line 6597
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 6598
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/ui/NsCollaboModeBar;

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    goto :goto_0

    .line 6601
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 6602
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    if-eqz v0, :cond_1

    .line 6604
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->initializeSchoolUserList()V

    .line 6609
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    return-object v0
.end method

.method public getDeadlineInfoView()Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;
    .locals 1

    .line 8988
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    return-object v0
.end method

.method public getDetailWindow()Lcom/metamoji/ui/DetailWindow;
    .locals 2

    .line 6475
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detailWindow:Lcom/metamoji/ui/DetailWindow;

    if-nez v0, :cond_0

    .line 6476
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 6477
    const-string v1, "DetailWindow"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/DetailWindow;

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detailWindow:Lcom/metamoji/ui/DetailWindow;

    .line 6479
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detailWindow:Lcom/metamoji/ui/DetailWindow;

    return-object v0
.end method

.method public getDisplaySize()Lcom/metamoji/cm/SizeF;
    .locals 3

    .line 2947
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2948
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2949
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2950
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2951
    new-instance v0, Lcom/metamoji/cm/SizeF;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public getDocument()Lcom/metamoji/nt/NtDocument;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditLayerInfoView()Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;
    .locals 1

    .line 8753
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editLayerInfoView:Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

    return-object v0
.end method

.method public getFilePickers()Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;
    .locals 1

    .line 9097
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_filePickers:Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    return-object v0
.end method

.method public getFxmanager()Lcom/metamoji/ui/flexible/FxManager;
    .locals 1

    .line 8713
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    return-object v0
.end method

.method public getHover()Lcom/metamoji/ui/CustomHoverSelectorView;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    return-object v0
.end method

.method public getImageCameraBroker()Lcom/metamoji/ui/UiImageCameraBroker;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_imageCameraBroker:Lcom/metamoji/ui/UiImageCameraBroker;

    return-object v0
.end method

.method protected getImmortalTaskNameList()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 346
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;->TASK_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/metamoji/un/image/UnImageSaveTask;->TASK_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getInputViewForTLE()Landroid/view/View;
    .locals 1

    .line 7891
    sget v0, Lcom/metamoji/noteanytime/R$id;->inputViewForTLE:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getJumpList()Lcom/metamoji/nt/itemlist/NtJumpList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/nt/itemlist/NtJumpList<",
            "*>;"
        }
    .end annotation

    .line 8378
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    return-object v0
.end method

.method public getJumpListViewStatus()I
    .locals 1

    .line 6366
    iget v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListShown:I

    return v0
.end method

.method public getMainSheet()Lcom/metamoji/nt/NtNoteController;
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 525
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 529
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Lcom/metamoji/ui/CustomMenuView;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_menu:Lcom/metamoji/ui/CustomMenuView;

    return-object v0
.end method

.method public getModeBarController()Lcom/metamoji/noteanytime/EditorActivityModeBarController;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    return-object v0
.end method

.method public getMruItemMenu()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;"
        }
    .end annotation

    .line 8722
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_historyBarDriver:Lcom/metamoji/ui/HistoryBarDriver;

    if-nez v0, :cond_0

    goto :goto_0

    .line 8725
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/HistoryBarDriver;->getMenuItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiPermissionsBroker()Lcom/metamoji/ui/UiMultiPermissionsBroker;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_multiPermissionsBroker:Lcom/metamoji/ui/UiMultiPermissionsBroker;

    return-object v0
.end method

.method public getMultiSelectedPageIndexs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectedItemIndexes()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNameTipInfoView()Lcom/metamoji/nt/NtNameTipInfoView;
    .locals 1

    .line 8261
    sget v0, Lcom/metamoji/noteanytime/R$id;->nameTipInfoView:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtNameTipInfoView;

    return-object v0
.end method

.method public getOfflineEditModeInfoView()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;
    .locals 1

    .line 8751
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_offlineEditModeInfoView:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    return-object v0
.end method

.method public getOwnerView()Lcom/metamoji/nt/INtOwnerView;
    .locals 1

    .line 499
    sget-object v0, Lcom/metamoji/noteanytime/EditorActivity;->ownerView:Lcom/metamoji/nt/INtOwnerView;

    return-object v0
.end method

.method public getPageListViewStatus()I
    .locals 1

    .line 6093
    iget v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageListShown:I

    return v0
.end method

.method public getPermissionBroker()Lcom/metamoji/ui/UiPermissionBroker;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_permissionBroker:Lcom/metamoji/ui/UiPermissionBroker;

    return-object v0
.end method

.method public getPersonalModeInfoView()Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;
    .locals 1

    .line 8755
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_personalModeInfoView:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    return-object v0
.end method

.method public getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;
    .locals 1

    const/4 v0, 0x1

    .line 8277
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->getPlayerBar(Z)Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerBar(Z)Lcom/metamoji/media/voice/ui/VcPlayerBar;
    .locals 3

    .line 8280
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    if-nez v0, :cond_0

    .line 8281
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 8282
    const-string v1, "PlayerBar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 8286
    new-instance p1, Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-direct {p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;-><init>()V

    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    .line 8287
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->playerbar_layer:I

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {p1, v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 8290
    :cond_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    return-object p1
.end method

.method public getPlaylist()Lcom/metamoji/media/voice/ui/VcPlaylist;
    .locals 2

    .line 8294
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playlist:Lcom/metamoji/media/voice/ui/VcPlaylist;

    if-nez v0, :cond_0

    .line 8295
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 8296
    const-string v1, "Playlist"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/voice/ui/VcPlaylist;

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playlist:Lcom/metamoji/media/voice/ui/VcPlaylist;

    .line 8298
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playlist:Lcom/metamoji/media/voice/ui/VcPlaylist;

    return-object v0
.end method

.method public getScoreInfoView()Lcom/metamoji/forSchool/ui/ScScoreInfoView;
    .locals 1

    .line 8989
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_scoreInfoView:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    return-object v0
.end method

.method public getSearchTextBar()Lcom/metamoji/nt/NtSearchTextBar;
    .locals 1

    .line 3735
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

    return-object v0
.end method

.method public getShowDetailWindowButton()Landroid/view/View;
    .locals 1

    .line 6484
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_dwindow:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTextUnitInputStyleBar()Lcom/metamoji/nt/NtTextUnitInputStyleBar;
    .locals 1

    .line 3747
    sget v0, Lcom/metamoji/noteanytime/R$id;->textunit_input_style_bar:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    return-object v0
.end method

.method public getTextUnitInputStyleBarVisible()Z
    .locals 2

    .line 3752
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getTextUnitInputStyleBar()Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3753
    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public getTopAppBar()Lcom/metamoji/noteanytime/ActionBar;
    .locals 2

    .line 3909
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3910
    sget v1, Lcom/metamoji/noteanytime/R$id;->actionbar:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/ActionBar;

    return-object v0
.end method

.method public getTopAppBarHeight()I
    .locals 1

    .line 3887
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_actionBarShown:Z

    if-eqz v0, :cond_0

    .line 3888
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getTopAppBar()Lcom/metamoji/noteanytime/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3890
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/ActionBar;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3892
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;
    .locals 1

    .line 8233
    sget v0, Lcom/metamoji/noteanytime/R$id;->unTextEditUserInfoView:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/UnTextEditUserInfoView;

    return-object v0
.end method

.method public final getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;
    .locals 1

    .line 8248
    sget v0, Lcom/metamoji/noteanytime/R$id;->unitEditUserInfoView:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtUnitEditUserInfoView;

    return-object v0
.end method

.method public getVideoCameraBroker()Lcom/metamoji/ui/UiVideoCameraBroker;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_videoCameraBroker:Lcom/metamoji/ui/UiVideoCameraBroker;

    return-object v0
.end method

.method public getVideoPlayerLayer()Lcom/metamoji/un/video/UnVideoPlayerLayer;
    .locals 1

    .line 8951
    sget v0, Lcom/metamoji/noteanytime/R$id;->videoPlayerLayer:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/video/UnVideoPlayerLayer;

    return-object v0
.end method

.method public getViewport()Lcom/metamoji/df/sprite/Viewport;
    .locals 1

    .line 3877
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    return-object v0
.end method

.method goneFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 7277
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentSaved:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 7278
    invoke-direct {p0, p1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->requestFragmentState(Landroidx/fragment/app/Fragment;I)V

    return-void

    .line 7282
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 7283
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 7284
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 7285
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 5403
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5404
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 5407
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5411
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/16 p2, 0x1d

    if-eq p1, p2, :cond_4

    const/16 p2, 0x1f

    if-eq p1, p2, :cond_3

    const/16 p2, 0x32

    if-eq p1, p2, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5415
    :pswitch_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_UNDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v1

    .line 5418
    :pswitch_1
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v1

    .line 5427
    :pswitch_2
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_CUT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v1

    .line 5424
    :cond_2
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_PASTE:Lcom/metamoji/nt/NtCommand;

    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v1

    .line 5421
    :cond_3
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_COPY:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v1

    .line 5430
    :cond_4
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SELECT_ALL:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return v1

    :cond_5
    :goto_0
    const/4 p2, 0x4

    if-eq p1, p2, :cond_9

    const/16 p2, 0x52

    if-eq p1, p2, :cond_7

    const/16 p2, 0x6f

    if-eq p1, p2, :cond_6

    goto :goto_1

    .line 5437
    :cond_6
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->handleEscapeKey()Z

    return v1

    .line 5449
    :cond_7
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 5450
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    .line 5451
    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->isShow()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    .line 5457
    :cond_8
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->closeMenu()Z

    move-result p1

    if-nez p1, :cond_a

    .line 5459
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->openMainMenu(Landroid/view/View;)V

    goto :goto_1

    .line 5443
    :cond_9
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->onBackKeyPressed()Z

    move-result p1

    if-eqz p1, :cond_a

    return v1

    :cond_a
    :goto_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleSendToSrcApp(Lcom/metamoji/nt/NtDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3433
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$43;

    invoke-direct {v0, p0, p2, p3}, Lcom/metamoji/noteanytime/EditorActivity$43;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3467
    const-string p2, "atdoc"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 3468
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3470
    invoke-static {p1, p3, p3, v0}, Lcom/metamoji/nt/NtShare;->shareAsAtshare(Lcom/metamoji/nt/NtDocument;[Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void

    .line 3475
    :cond_0
    sget-object p2, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->INCLUDED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/nt/NtShare;->shareAsAtdoc(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    return-void

    .line 3477
    :cond_1
    const-string p2, "pdf"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3479
    invoke-static {p1, p3, p3, v0}, Lcom/metamoji/nt/NtShare;->shareAsPdf(Lcom/metamoji/nt/NtDocument;[ILjava/lang/String;Lcom/metamoji/nt/NtShare$ISendAction;)V

    :cond_2
    return-void
.end method

.method public hasMultiSelectPages()Z
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtPageList;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectedItemIndexes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public hideAttentionArea()V
    .locals 3

    .line 9079
    sget v0, Lcom/metamoji/noteanytime/R$id;->attentionArea:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 9080
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 9084
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 9087
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x0

    .line 9088
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 9089
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public hideBottomBar()V
    .locals 2

    .line 7118
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7119
    sget v1, Lcom/metamoji/noteanytime/R$id;->bottombar:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 7120
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->hideFragment(Landroidx/fragment/app/Fragment;)V

    .line 7124
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    if-eqz v0, :cond_0

    .line 7125
    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->updatePosition(Lcom/metamoji/noteanytime/EditorActivity;)V

    :cond_0
    return-void
.end method

.method public hideCommandFloater()V
    .locals 2

    .line 7198
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7199
    const-string v1, "CommandFloater"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7201
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->hideFragment(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public hideEditLayerInfo()V
    .locals 2

    .line 8768
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$80;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$80;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideEditorBars()V
    .locals 3

    .line 6889
    sget v0, Lcom/metamoji/noteanytime/R$id;->editing_area_root:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6890
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 6894
    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->adjustEditingArea(I)V

    const/4 v1, 0x2

    .line 6896
    invoke-direct {p0, v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    .line 6899
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6900
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 6902
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->hideStatusBar()V

    .line 6907
    :goto_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomHoverSelectorView;->showShowBarBtn()V

    .line 6909
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 6910
    sget v2, Lcom/metamoji/noteanytime/R$id;->actionbar:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/metamoji/noteanytime/ActionBar;

    .line 6911
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->hideFragment(Landroidx/fragment/app/Fragment;)V

    .line 6912
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_actionBarShown:Z

    .line 6913
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->mWristGuard:Lcom/metamoji/ui/WristGuardFrame;

    if-eqz v1, :cond_2

    .line 6914
    invoke-virtual {v1}, Lcom/metamoji/ui/WristGuardFrame;->wgClose()V

    .line 6926
    :cond_2
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setVisiblePageListTab(Z)V

    .line 6928
    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->updateDetailAndViewModeButton(Z)V

    .line 6930
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

    invoke-virtual {v1, v0, v0}, Lcom/metamoji/nt/NtSearchTextBar;->updatePosition(ZI)V

    .line 6932
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    if-eqz v0, :cond_3

    .line 6935
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->hide()V

    .line 6944
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePersonalModeInfoPosition()V

    .line 6946
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateEditLayerInfoPosition()V

    .line 6947
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateScoreInfoViewPosition()V

    .line 6949
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateOfflineEditModeInfoPosition()V

    .line 6956
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    if-eqz v0, :cond_4

    .line 6957
    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->updatePosition(Lcom/metamoji/noteanytime/EditorActivity;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public hideFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 7263
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentSaved:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 7264
    invoke-direct {p0, p1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->requestFragmentState(Landroidx/fragment/app/Fragment;I)V

    return-void

    .line 7268
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 7270
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 7272
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 7273
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public hideOfflineEditModeInfo()V
    .locals 2

    .line 8869
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$85;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$85;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hidePersonalModeInfo()V
    .locals 2

    .line 8814
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$82;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$82;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hidePlayerBar()V
    .locals 1

    .line 8351
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowPlayerBar()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8354
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->goneFragment(Landroidx/fragment/app/Fragment;)V

    .line 8356
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->hidePlaylist()V

    return-void
.end method

.method public hidePlaylist()V
    .locals 1

    .line 8360
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowPlaylist()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8363
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playlist:Lcom/metamoji/media/voice/ui/VcPlaylist;

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->goneFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public hideSoftImput()V
    .locals 2

    .line 7382
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7383
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 7384
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 7385
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    .line 7386
    :cond_2
    instance-of v0, v1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v0, :cond_3

    .line 7387
    check-cast v1, Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object v0

    .line 7388
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;)Z

    :cond_3
    return-void
.end method

.method public hideStatusBar()V
    .locals 0

    return-void
.end method

.method public hideWristGuard()V
    .locals 1

    .line 9139
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mWristGuard:Lcom/metamoji/ui/WristGuardFrame;

    if-eqz v0, :cond_0

    .line 9140
    invoke-virtual {v0}, Lcom/metamoji/ui/WristGuardFrame;->wgClose()V

    :cond_0
    return-void
.end method

.method public hideZoomBar()V
    .locals 2

    .line 7159
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7160
    const-string v1, "ZoomBar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7162
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->hideFragment(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method initControls(Landroid/os/Bundle;)V
    .locals 9

    .line 2338
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2340
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 2350
    const-string v3, "ActionBarShown"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 2352
    sget v5, Lcom/metamoji/noteanytime/R$id;->actionbar:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 2353
    invoke-virtual {p0, v5}, Lcom/metamoji/noteanytime/EditorActivity;->hideFragment(Landroidx/fragment/app/Fragment;)V

    .line 2354
    iput-boolean v4, p0, Lcom/metamoji/noteanytime/EditorActivity;->_actionBarShown:Z

    :cond_1
    if-eqz p1, :cond_2

    .line 2362
    const-string v5, "BottomBarShown"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    if-nez v5, :cond_3

    .line 2364
    sget v5, Lcom/metamoji/noteanytime/R$id;->bottombar:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 2365
    invoke-virtual {p0, v5}, Lcom/metamoji/noteanytime/EditorActivity;->hideFragment(Landroidx/fragment/app/Fragment;)V

    .line 2369
    :cond_3
    iget-object v5, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onCommandButtonAlignmentChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {v5, v1}, Lcom/metamoji/cm/ICmEventHandler;->invoke(Ljava/lang/Object;)V

    .line 2370
    const-string v5, "CommandButtons"

    iget-object v6, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onCommandButtonAlignmentChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v1, v5, v6}, Lcom/metamoji/nt/NtUserDefaults;->addOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 2372
    sget v5, Lcom/metamoji/noteanytime/R$id;->pagelist:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/metamoji/nt/itemlist/NtPageList;

    iput-object v5, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    .line 2373
    iget v6, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageListShown:I

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-eqz v6, :cond_6

    if-eq v6, v7, :cond_5

    if-eq v6, v8, :cond_4

    goto :goto_2

    .line 2382
    :cond_4
    invoke-virtual {p0, v5}, Lcom/metamoji/noteanytime/EditorActivity;->goneFragment(Landroidx/fragment/app/Fragment;)V

    .line 2383
    invoke-direct {p0, v7, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    goto :goto_2

    .line 2378
    :cond_5
    invoke-virtual {p0, v5}, Lcom/metamoji/noteanytime/EditorActivity;->hideFragment(Landroidx/fragment/app/Fragment;)V

    .line 2379
    invoke-direct {p0, v7, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    goto :goto_2

    .line 2375
    :cond_6
    invoke-virtual {v5}, Lcom/metamoji/nt/itemlist/NtPageList;->updateListMargin()V

    .line 2387
    :goto_2
    sget v5, Lcom/metamoji/noteanytime/R$id;->jumplist:I

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v5

    check-cast v5, Lcom/metamoji/nt/itemlist/NtJumpList;

    iput-object v5, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    .line 2388
    iget v6, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListShown:I

    if-eqz v6, :cond_9

    if-eq v6, v7, :cond_8

    if-eq v6, v8, :cond_7

    goto :goto_3

    .line 2398
    :cond_7
    invoke-virtual {p0, v5}, Lcom/metamoji/noteanytime/EditorActivity;->goneFragment(Landroidx/fragment/app/Fragment;)V

    .line 2399
    invoke-direct {p0, v8, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    goto :goto_3

    .line 2394
    :cond_8
    invoke-virtual {p0, v5}, Lcom/metamoji/noteanytime/EditorActivity;->hideFragment(Landroidx/fragment/app/Fragment;)V

    .line 2395
    invoke-direct {p0, v8, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    goto :goto_3

    .line 2390
    :cond_9
    iget-object v5, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-virtual {v5}, Lcom/metamoji/nt/itemlist/NtPageList;->updateListMargin()V

    .line 2391
    iget-object v5, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    iget v6, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListPosition:I

    invoke-virtual {v5, v6, v2, v2}, Lcom/metamoji/nt/itemlist/NtJumpList;->selectItem(IZZ)V

    .line 2402
    :goto_3
    iget-boolean v5, p0, Lcom/metamoji/noteanytime/EditorActivity;->_actionBarShown:Z

    if-nez v5, :cond_a

    .line 2405
    invoke-virtual {p0, v4}, Lcom/metamoji/noteanytime/EditorActivity;->setVisiblePageListTab(Z)V

    :cond_a
    if-eqz p1, :cond_b

    .line 2410
    const-string v5, "SetTextUnitLocationShown"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto :goto_4

    :cond_b
    move v5, v4

    .line 2411
    :goto_4
    sget v6, Lcom/metamoji/noteanytime/R$id;->setTextUnitLocation:I

    invoke-virtual {v0, v6}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtSetTextLocation;

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    .line 2412
    invoke-virtual {p0, v0, v8}, Lcom/metamoji/noteanytime/EditorActivity;->setFragmentState(Landroidx/fragment/app/Fragment;I)V

    if-eqz v5, :cond_c

    .line 2413
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2414
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->showSetTextUnitLocationView(Lcom/metamoji/nt/NtNoteController;)V

    :cond_c
    if-eqz p1, :cond_d

    .line 2420
    const-string v0, "UnTextEditUserInfoViewShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    :cond_d
    move v0, v4

    .line 2421
    :goto_5
    invoke-virtual {p0, v8}, Lcom/metamoji/noteanytime/EditorActivity;->setTextEditUserInfoViewVisibility(I)V

    if-eqz v0, :cond_e

    .line 2422
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2423
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->checkRestoreEditUserInfo()V

    :cond_e
    if-eqz p1, :cond_f

    .line 2430
    const-string v0, "UnitEditUserInfoViewShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :cond_f
    move v0, v4

    .line 2431
    :goto_6
    invoke-virtual {p0, v8}, Lcom/metamoji/noteanytime/EditorActivity;->setUnitEditUserInfoViewVisibility(I)V

    if-eqz v0, :cond_10

    .line 2432
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2433
    invoke-static {}, Lcom/metamoji/nt/NtUnitStateManager;->sharedInstance()Lcom/metamoji/nt/NtUnitStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitStateManager;->checkRestoreEditUserInfo()V

    .line 2439
    :cond_10
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->checkCollaboModeBar()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2442
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->returnToCabinet()V

    return-void

    :cond_11
    if-eqz p1, :cond_12

    .line 2447
    const-string v0, "SearchTextBarShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7

    :cond_12
    move v0, v4

    .line 2448
    :goto_7
    iget-object v5, p0, Lcom/metamoji/noteanytime/EditorActivity;->_searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

    if-eqz v0, :cond_13

    move v0, v4

    goto :goto_8

    :cond_13
    move v0, v7

    :goto_8
    invoke-virtual {v5, v0}, Lcom/metamoji/nt/NtSearchTextBar;->setVisibility(I)V

    if-eqz p1, :cond_14

    .line 2450
    const-string v0, "TextUnitInputStyleBarShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_9

    :cond_14
    move v0, v4

    .line 2451
    :goto_9
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setTextUnitInputStyleBarVisible(Z)V

    if-eqz p1, :cond_15

    .line 2453
    const-string v0, "VoicePalletShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    :cond_15
    move v0, v4

    .line 2454
    :goto_a
    iget-object v5, p0, Lcom/metamoji/noteanytime/EditorActivity;->_modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    invoke-virtual {v5, v3, v0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->resumeEtc(ZZ)V

    .line 2456
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->collaboModeChanged()V

    .line 2457
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->updateButtonState()V

    .line 2461
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_done:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2462
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$21;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/EditorActivity$21;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2470
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_newdoc:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2471
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$22;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/EditorActivity$22;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2482
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2483
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2486
    :cond_16
    sget v0, Lcom/metamoji/noteanytime/R$id;->actionbar_left_sep:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2487
    iget-object v5, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v5, v0}, Lcom/metamoji/ui/flexible/FxManager;->makeNaviBarRightBtns(Landroid/widget/LinearLayout;)V

    .line 2490
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_tab:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2491
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$23;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/EditorActivity$23;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2499
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_prev:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2500
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$24;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/EditorActivity$24;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2508
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_next:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2509
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$25;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/EditorActivity$25;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2517
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_add:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2518
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$26;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/EditorActivity$26;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2527
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    .line 2528
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_change_tab:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2529
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$27;

    invoke-direct {v5, p0, v0}, Lcom/metamoji/noteanytime/EditorActivity$27;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2537
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2541
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_tab:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2542
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$28;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/EditorActivity$28;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2550
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_prev:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2551
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$29;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/EditorActivity$29;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2558
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_next:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2559
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$30;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/EditorActivity$30;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2566
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_change_tab:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2567
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$31;

    invoke-direct {v5, p0, v0}, Lcom/metamoji/noteanytime/EditorActivity$31;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2577
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_wristguard:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2578
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$32;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/EditorActivity$32;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2585
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->m_WristGuardButton:Landroid/view/View;

    .line 2586
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateWristGuardVisible()V

    .line 2589
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_dwindow:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2590
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$33;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/EditorActivity$33;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2603
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v5

    .line 2604
    const-string v6, "MMJDetailWindowButtonVisible"

    invoke-virtual {v5, v6, v4}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2605
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 2607
    :cond_17
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2612
    :goto_b
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_title_text:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2621
    new-instance v5, Landroid/view/GestureDetector;

    new-instance v6, Lcom/metamoji/noteanytime/EditorActivity$34;

    invoke-direct {v6, p0}, Lcom/metamoji/noteanytime/EditorActivity$34;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-direct {v5, p0, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/metamoji/noteanytime/EditorActivity;->_titleGestureDetector:Landroid/view/GestureDetector;

    .line 2691
    new-instance v5, Lcom/metamoji/noteanytime/EditorActivity$35;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/EditorActivity$35;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_18
    if-eqz p1, :cond_1a

    .line 2702
    const-string v0, "HoverData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2704
    sget v5, Lcom/metamoji/noteanytime/R$id;->CustomHoverSelectorView:I

    invoke-virtual {p0, v5}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ui/CustomHoverSelectorView;

    .line 2705
    invoke-virtual {v5, v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->resume_restorData([I)V

    .line 2709
    :cond_19
    const-string v0, "HitHelpVisibleList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 2710
    iget-object v5, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v5, v0}, Lcom/metamoji/ui/flexible/FxManager;->restoreHintHelpVisibleList([I)V

    .line 2714
    :cond_1a
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onShowScrollButtonsChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {v0, v1}, Lcom/metamoji/cm/ICmEventHandler;->invoke(Ljava/lang/Object;)V

    .line 2715
    const-string v0, "OneTapScroller"

    iget-object v5, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onShowScrollButtonsChanged:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v1, v0, v5}, Lcom/metamoji/nt/NtUserDefaults;->addOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 2718
    invoke-direct {p0, v3}, Lcom/metamoji/noteanytime/EditorActivity;->updateDetailAndViewModeButton(Z)V

    .line 2722
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->setCollaboModeBarListeners()V

    .line 2726
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

    invoke-virtual {v0, v3, v4}, Lcom/metamoji/nt/NtSearchTextBar;->updatePosition(ZI)V

    if-eqz p1, :cond_1b

    .line 2730
    const-string v0, "HistoryBarSelection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2732
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v1

    .line 2733
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtMRUDocList;->setCurentSelection(Ljava/lang/String;)V

    .line 2737
    :cond_1b
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2739
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 2740
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v3

    sget-object v5, Lcom/metamoji/nt/NtNoteController$NoteMode;->JUMP_SETTING:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v3, v5, :cond_1c

    .line 2741
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->resumeJumpSettingMode()V

    :cond_1c
    if-eqz p1, :cond_1d

    .line 2745
    const-string v1, "WristGuardShown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2746
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->wristGuardVisibleChange()V

    :cond_1d
    if-eqz p1, :cond_21

    .line 2753
    const-string v1, "EditLayerInfo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2754
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2756
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->updateEditLayerInfo()V

    .line 2759
    :cond_1e
    const-string v0, "PersonalModeInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2761
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    .line 2764
    :cond_1f
    const-string v0, "OfflineEditModeInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2765
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 2766
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v0

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v0, v3, :cond_20

    goto :goto_c

    :cond_20
    move v2, v4

    :goto_c
    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->updateOfflineEditModeInfo(Z)V

    .line 2772
    :cond_21
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    if-eqz v0, :cond_22

    .line 2773
    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->updatePosition(Lcom/metamoji/noteanytime/EditorActivity;)V

    :cond_22
    if-eqz p1, :cond_24

    .line 2778
    const-string v0, "DirectionVelocityViewShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 2779
    sget v0, Lcom/metamoji/noteanytime/R$id;->direction_velocity_view:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_23

    goto :goto_d

    :cond_23
    move v4, v8

    :goto_d
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    return-void
.end method

.method initViewport()V
    .locals 7

    .line 2242
    sget v0, Lcom/metamoji/noteanytime/R$id;->main:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2243
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2244
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2245
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    int-to-float v1, v1

    const v3, 0x3df06026

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->setDragThreshold(F)V

    .line 2246
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    const v3, 0x3ef06026

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->setPanThreshold(F)V

    .line 2247
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDisplaySize()Lcom/metamoji/cm/SizeF;

    move-result-object v1

    .line 2248
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    iget v3, v1, Lcom/metamoji/cm/SizeF;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, v1, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v5, v4

    iget v6, v1, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v6, v4

    iget v1, v1, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v1, v4

    invoke-virtual {v2, v3, v5, v6, v1}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->setScrollableMargin(FFFF)V

    .line 2249
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    new-instance v2, Lcom/metamoji/noteanytime/EditorTurnPage;

    invoke-direct {v2, p0}, Lcom/metamoji/noteanytime/EditorTurnPage;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->setTurnOverMediator(Lcom/metamoji/df/sprite/TurnOverMediator;)V

    .line 2251
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 2254
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_paintResponseChangedListener:Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;

    invoke-virtual {v2, v1}, Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;->invoke(Lcom/metamoji/nt/NtUserDefaults;)V

    .line 2255
    const-string v2, "PaintResponse"

    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity;->_paintResponseChangedListener:Lcom/metamoji/noteanytime/EditorActivity$PaintResponseChangedEventListener;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->addOnChangeListener(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 2258
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    if-eqz v1, :cond_0

    .line 2259
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2261
    :cond_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_scoreInfoView:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    if-eqz v1, :cond_1

    .line 2262
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2265
    :cond_1
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editLayerInfoView:Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

    if-eqz v1, :cond_2

    .line 2266
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2269
    :cond_2
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_personalModeInfoView:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    if-eqz v1, :cond_3

    .line 2270
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2274
    :cond_3
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_offlineEditModeInfoView:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    if-eqz v1, :cond_4

    .line 2275
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2280
    :cond_4
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_dungeonMap:Lcom/metamoji/ui/UiDungeonMapView;

    if-eqz v1, :cond_5

    .line 2281
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2283
    :cond_5
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

    if-eqz v1, :cond_6

    .line 2284
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_6
    return-void
.end method

.method public isClosing()Z
    .locals 1

    .line 3501
    monitor-enter p0

    .line 3502
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mClosing:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 3503
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDetailWindowOpen()Z
    .locals 1

    .line 6536
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDetailWindow()Lcom/metamoji/ui/DetailWindow;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6539
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detailWindow:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailWindow;->isHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 0

    .line 8373
    instance-of p1, p1, Lcom/metamoji/noteanytime/EditorActivity;

    return p1
.end method

.method public isJumpListActive()Z
    .locals 1

    .line 6434
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6435
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPageListActive()Z
    .locals 1

    .line 6136
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isJumpListActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPageMode()Z
    .locals 1

    .line 5841
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5842
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowEditorBars()Z
    .locals 1

    .line 6869
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_actionBarShown:Z

    return v0
.end method

.method public isShowPlayerBar()Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 8303
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 8302
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->getPlayerBar(Z)Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 8304
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->isHidden()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return-object v1

    .line 8307
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isShowPlaylist()Ljava/lang/Boolean;
    .locals 3

    .line 8312
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getPlaylist()Lcom/metamoji/media/voice/ui/VcPlaylist;

    move-result-object v0

    const/4 v1, 0x0

    .line 8313
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    .line 8314
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playlist:Lcom/metamoji/media/voice/ui/VcPlaylist;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlaylist;->isHidden()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return-object v1

    .line 8317
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isShowTextUnitLocationView()Z
    .locals 1

    .line 7833
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    if-eqz v0, :cond_0

    .line 7834
    invoke-virtual {v0}, Lcom/metamoji/nt/NtSetTextLocation;->isVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSoftInputVisible()Z
    .locals 1

    .line 5626
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detectableSI:Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->isSoftInputVisible()Z

    move-result v0

    return v0
.end method

.method public isTopAppBarVisible()Z
    .locals 1

    .line 3900
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_actionBarShown:Z

    return v0
.end method

.method public isUserViewOpen()Z
    .locals 2

    .line 6572
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 6573
    const-string v1, "UserView"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public moveDeadlineInfoView(ZZ)V
    .locals 2

    .line 8995
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9020
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->m_onEditAreaView:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    if-nez v1, :cond_1

    .line 9003
    sget p2, Lcom/metamoji/noteanytime/R$id;->deadlineInfoArea:I

    invoke-virtual {p0, p2}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 9004
    sget v0, Lcom/metamoji/noteanytime/R$id;->main:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 9006
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 9007
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/16 v0, 0x8

    .line 9008
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9009
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->m_onEditAreaView:Z

    .line 9010
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    invoke-virtual {p2, p1, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setLayoutParams(ZLcom/metamoji/noteanytime/EditorActivity;)V

    return-void

    :cond_1
    if-eqz p2, :cond_4

    .line 9014
    invoke-virtual {v0, p1, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setLayoutParams(ZLcom/metamoji/noteanytime/EditorActivity;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    if-eqz v1, :cond_3

    .line 9021
    sget p2, Lcom/metamoji/noteanytime/R$id;->main:I

    invoke-virtual {p0, p2}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 9022
    sget v0, Lcom/metamoji/noteanytime/R$id;->deadlineInfoArea:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 9024
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 9025
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 9026
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9027
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->m_onEditAreaView:Z

    .line 9028
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    invoke-virtual {p2, p1, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setLayoutParams(ZLcom/metamoji/noteanytime/EditorActivity;)V

    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 9032
    invoke-virtual {v0, p1, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->setLayoutParams(ZLcom/metamoji/noteanytime/EditorActivity;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public notifyEditModeChanged(Lcom/metamoji/nt/NtDocument$EditMode;)V
    .locals 2

    .line 5782
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$65;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$65;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtDocument$EditMode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
    .locals 3

    .line 5645
    sget-object v0, Lcom/metamoji/noteanytime/EditorActivity$87;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5685
    :pswitch_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateWristGuardVisible()V

    goto :goto_0

    .line 5676
    :pswitch_1
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 5677
    const-string v1, "MMJDetailWindowButtonVisible"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5678
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_dwindow:I

    invoke-virtual {p0, v0, p2}, Lcom/metamoji/noteanytime/EditorActivity;->showHideButtonOnUIThread(IZ)V

    goto :goto_0

    .line 5671
    :pswitch_2
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateJumpBackButtons()V

    goto :goto_0

    .line 5665
    :pswitch_3
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateJumpNavigationButtons()V

    goto :goto_0

    .line 5661
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/metamoji/noteanytime/EditorActivity;->pageAddButtonSetting(Z)V

    goto :goto_0

    .line 5658
    :pswitch_5
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageNavigationButtons()V

    goto :goto_0

    .line 5654
    :pswitch_6
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-virtual {v0, p2}, Lcom/metamoji/nt/itemlist/NtPageList;->enableView(Z)V

    goto :goto_0

    .line 5651
    :pswitch_7
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_share:I

    invoke-virtual {p0, v0, p2}, Lcom/metamoji/noteanytime/EditorActivity;->enableButtonOnUIThread(IZ)V

    goto :goto_0

    .line 5648
    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity;->enableUndoRedo(Lcom/metamoji/nt/NtCommand;Z)V

    .line 5690
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    if-eqz v0, :cond_1

    .line 5691
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V

    .line 5693
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$61;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$61;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtCommand;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 5704
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_menu:Lcom/metamoji/ui/CustomMenuView;

    if-eqz v0, :cond_2

    .line 5705
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/CustomMenuView;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V

    .line 5707
    :cond_2
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    if-eqz v0, :cond_3

    .line 5708
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    .line 5710
    :cond_3
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_scrollButtonManager:Lcom/metamoji/ui/ScrollButtonManager;

    if-eqz v0, :cond_4

    .line 5711
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/ScrollButtonManager;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 5

    .line 7795
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    if-eqz v0, :cond_0

    .line 7796
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)V

    .line 7798
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7799
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/CustomHoverSelectorView;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result v0

    .line 7802
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-virtual {v2}, Lcom/metamoji/ui/CustomHoverSelectorView;->getTinyPallet()Lcom/metamoji/ui/UiTinyPalletViewGroup;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7804
    invoke-virtual {v2, p1, p2}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7807
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDetailWindow()Lcom/metamoji/ui/DetailWindow;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 7808
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detailWindow:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {v2, p1, p2}, Lcom/metamoji/ui/DetailWindow;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    .line 7812
    :cond_3
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    if-ne p1, v2, :cond_5

    .line 7813
    invoke-static {p2}, Lcom/metamoji/nt/NtNoteController$NoteMode;->valueOf(I)Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v2

    .line 7814
    sget-object v4, Lcom/metamoji/nt/NtNoteController$NoteMode;->TEXT:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v2, v4, :cond_4

    move v1, v3

    :cond_4
    const/16 v2, 0x20

    invoke-direct {p0, v2, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    .line 7817
    :cond_5
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    if-eqz v1, :cond_6

    .line 7818
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/ui/flexible/FxManager;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)V

    .line 7821
    :cond_6
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    if-eqz v1, :cond_7

    .line 7822
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    :cond_7
    return v0
.end method

.method public notifyTitleUpdated(Ljava/lang/String;)V
    .locals 2

    .line 5800
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$66;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$66;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public offlineEditModeInfoResetMargin()V
    .locals 2

    .line 8905
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_offlineEditModeInfoView:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->getTopMargin()I

    move-result v0

    if-eqz v0, :cond_0

    .line 8906
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_offlineEditModeInfoView:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setTopMargin(I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 4476
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 4478
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    goto/16 :goto_2

    .line 4487
    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    .line 4488
    invoke-static {p1}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->valueOf(I)Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    const-string v3, "imageSource"

    const-string/jumbo v4, "url"

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 4562
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/noteanytime/EditorActivity;->_onActivityResult(IILandroid/content/Intent;)V

    return-void

    .line 4534
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object p2, Lcom/metamoji/ui/dialog/DocumentThumbnail;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/DocumentThumbnail;

    if-eqz p1, :cond_6

    .line 4536
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/DocumentThumbnail;->setSelectImage(Landroid/net/Uri;)V

    goto :goto_0

    .line 4497
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 4500
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4501
    const-string/jumbo p2, "unitId"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4502
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4503
    sget-object p2, Lcom/metamoji/ui/WebPageActivity;->capturedBlob:Lcom/metamoji/cm/Blob;

    invoke-virtual {p1, v3, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4504
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_INTERNAL_UPDATE_WEB_PAGE:Lcom/metamoji/nt/NtCommand;

    goto :goto_1

    .line 4490
    :cond_4
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4491
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4492
    sget-object p2, Lcom/metamoji/ui/WebPageActivity;->capturedBlob:Lcom/metamoji/cm/Blob;

    invoke-virtual {p1, v3, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4493
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_ADD_WEB_UNIT:Lcom/metamoji/nt/NtCommand;

    goto :goto_1

    .line 4526
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "PaperBackground"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/PaperBackground;

    if-eqz p1, :cond_6

    .line 4528
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/dialog/PaperBackground;->setSelectImage(Landroid/net/Uri;)V

    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 4566
    :goto_1
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    if-eq p2, v0, :cond_7

    .line 4567
    iget-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 601
    const-string v2, "driveid"

    invoke-super/range {p0 .. p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 602
    invoke-static {v1}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    .line 604
    const-string v3, "EditorActivity.onCreate"

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/noteanytime/EntryActivity;->restorePendingIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 606
    invoke-static {v1}, Lcom/metamoji/nt/NtStartup;->initialize(Landroidx/fragment/app/FragmentActivity;)V

    .line 607
    sget-object v3, Lcom/metamoji/noteanytime/EditorActivity;->_instance:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v3, :cond_0

    if-eq v1, v3, :cond_0

    .line 608
    const-string v3, "2nd EditorActivity is created before destroying 1st EditorActivity."

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 610
    sget-object v3, Lcom/metamoji/noteanytime/EditorActivity;->_instance:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {v3}, Lcom/metamoji/noteanytime/EditorActivity;->execDestroy()V

    .line 612
    :cond_0
    sput-object v1, Lcom/metamoji/noteanytime/EditorActivity;->_instance:Lcom/metamoji/noteanytime/EditorActivity;

    .line 614
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 615
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    .line 616
    :cond_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 637
    :goto_1
    const-string v5, "newNote"

    const-string v6, "restore"

    const/4 v7, 0x0

    if-nez v0, :cond_8

    if-eqz v4, :cond_4

    .line 641
    const-string v8, "command"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    move-object v9, v8

    goto :goto_2

    .line 642
    :cond_3
    const-string v9, "(null)"

    :goto_2
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "EditorActivity.onCreate: savedInstanceState=null, command=%s"

    invoke-static {v10, v9}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 644
    :cond_4
    const-string v8, "EditorActivity.onCreate: savedInstanceState=null, no extras"

    invoke-static {v8}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    move-object v8, v7

    :goto_3
    if-nez v8, :cond_6

    .line 648
    invoke-static {}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->isExistRestoreData()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v6

    goto :goto_4

    :cond_5
    move-object v8, v5

    .line 650
    :cond_6
    :goto_4
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 653
    const-string v10, "EditorActivity: has RetainData with valid document editor, maybe it is chromebook."

    invoke-static {v10}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 655
    :cond_7
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->clearData()V

    goto :goto_5

    .line 659
    :cond_8
    const-string v8, "EditorActivity.onCreate: savedInstanceState!=null, set CMD_Restore"

    invoke-static {v8}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    move-object v8, v6

    move-object v9, v7

    .line 662
    :goto_5
    iget-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_errorListener:Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;

    invoke-virtual {v10}, Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;->onCreate()V

    .line 677
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 679
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 680
    sget-object v11, Lcom/metamoji/noteanytime/BuildConfig;->EMBEDDING_MAZEC:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_9

    sget v11, Lcom/metamoji/noteanytime/R$layout;->activity_editor_kindle:I

    goto :goto_6

    :cond_9
    sget v11, Lcom/metamoji/noteanytime/R$layout;->activity_editor:I

    .line 679
    :goto_6
    invoke-virtual {v10, v11, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 683
    invoke-virtual {v1, v10}, Lcom/metamoji/noteanytime/EditorActivity;->setContentView(Landroid/view/View;)V

    .line 685
    sget v11, Lcom/metamoji/lib/dialog/UtDialogConfig$SystemZone;->NORMAL:I

    new-instance v12, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1}, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v1, v10, v11, v12}, Lcom/metamoji/noteanytime/EditorActivity;->setupWindowInsetsListener(Landroid/view/View;ILkotlin/jvm/functions/Function1;)V

    .line 703
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x22

    const/4 v12, 0x1

    if-lt v10, v11, :cond_a

    .line 704
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 705
    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 708
    :cond_a
    iget-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->compatBackKeyDispatcher:Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;

    new-instance v11, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v11, v1}, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v10, v1, v11}, Lcom/metamoji/lib/utils/CompatBackKeyDispatcher;->register(Landroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function0;)V

    .line 713
    new-instance v10, Lcom/metamoji/ui/HistoryBarDriver;

    invoke-direct {v10, v1, v1}, Lcom/metamoji/ui/HistoryBarDriver;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/HistoryBarDriver$OnHistoryBarHeightChangeListener;)V

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_historyBarDriver:Lcom/metamoji/ui/HistoryBarDriver;

    .line 715
    new-instance v10, Lcom/metamoji/ui/flexible/FxManager;

    invoke-direct {v10, v1}, Lcom/metamoji/ui/flexible/FxManager;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    .line 717
    sget v10, Lcom/metamoji/noteanytime/R$id;->detectable_soft_input:I

    invoke-virtual {v1, v10}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_detectableSI:Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;

    .line 719
    invoke-static {v1}, Lcom/metamoji/nt/NtEditorWindowController;->createInstance(Lcom/metamoji/noteanytime/EditorActivity;)Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v10

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    .line 721
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/metamoji/nt/NtMazecImsManager;->onCreateEditorActivity(Lcom/metamoji/noteanytime/EditorActivity;)V

    .line 725
    new-instance v10, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    invoke-direct {v10, v1}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    .line 726
    iput-boolean v12, v1, Lcom/metamoji/noteanytime/EditorActivity;->m_onEditAreaView:Z

    .line 727
    new-instance v10, Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    invoke-direct {v10, v1}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_scoreInfoView:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    .line 728
    new-instance v10, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

    invoke-direct {v10, v1}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_editLayerInfoView:Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

    .line 729
    new-instance v10, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    invoke-direct {v10, v1}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_personalModeInfoView:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    .line 731
    new-instance v10, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    invoke-direct {v10, v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_offlineEditModeInfoView:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    .line 734
    iget-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_editLayerInfoView:Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

    new-instance v11, Lcom/metamoji/noteanytime/EditorActivity$2;

    invoke-direct {v11, v1}, Lcom/metamoji/noteanytime/EditorActivity$2;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v10, v11}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 740
    iget-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_personalModeInfoView:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    new-instance v11, Lcom/metamoji/noteanytime/EditorActivity$3;

    invoke-direct {v11, v1}, Lcom/metamoji/noteanytime/EditorActivity$3;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v10, v11}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 746
    iget-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_offlineEditModeInfoView:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    new-instance v11, Lcom/metamoji/noteanytime/EditorActivity$4;

    invoke-direct {v11, v1}, Lcom/metamoji/noteanytime/EditorActivity$4;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v10, v11}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 754
    new-instance v10, Lcom/metamoji/ui/UiDungeonMapView;

    invoke-direct {v10, v1}, Lcom/metamoji/ui/UiDungeonMapView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_dungeonMap:Lcom/metamoji/ui/UiDungeonMapView;

    .line 755
    new-instance v10, Lcom/metamoji/nt/NtSearchTextBar;

    invoke-direct {v10, v1}, Lcom/metamoji/nt/NtSearchTextBar;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

    .line 756
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->getTopAppBar()Lcom/metamoji/noteanytime/ActionBar;

    move-result-object v10

    iget-object v10, v10, Lcom/metamoji/noteanytime/ActionBar;->onStatusChangedListener:Lcom/metamoji/cm/CmEventListener;

    new-instance v11, Lcom/metamoji/noteanytime/EditorActivity$5;

    invoke-direct {v11, v1}, Lcom/metamoji/noteanytime/EditorActivity$5;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v10, v1, v11}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 762
    sget v10, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {v1, v10}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/metamoji/ui/CustomMenuView;

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_menu:Lcom/metamoji/ui/CustomMenuView;

    .line 763
    sget v10, Lcom/metamoji/noteanytime/R$id;->CustomHoverSelectorView:I

    invoke-virtual {v1, v10}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/metamoji/ui/CustomHoverSelectorView;

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    .line 764
    iget-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v11, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FULLSCREEN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v13, v1, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-virtual {v13}, Lcom/metamoji/ui/CustomHoverSelectorView;->getShowBarBtn()Landroid/view/View;

    move-result-object v13

    sget-object v14, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v10, v11, v13, v7, v14}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 766
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v10

    const-string v11, "HoverSelectorEnable"

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v10

    .line 768
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v11

    if-eqz v11, :cond_b

    if-nez v10, :cond_c

    .line 769
    :cond_b
    iget-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-virtual {v10}, Lcom/metamoji/ui/CustomHoverSelectorView;->hide()V

    .line 771
    :cond_c
    new-instance v10, Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    invoke-direct {v10, v1}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    .line 774
    sget v10, Lcom/metamoji/noteanytime/R$id;->attentionArea:I

    invoke-virtual {v1, v10}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 775
    new-instance v11, Lcom/metamoji/noteanytime/EditorActivity$6;

    invoke-direct {v11, v1}, Lcom/metamoji/noteanytime/EditorActivity$6;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 786
    new-instance v14, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v14, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v14, v1, Lcom/metamoji/noteanytime/EditorActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 787
    sget v11, Lcom/metamoji/forSchool/ScSchoolConstants;->NB_ATTENTION_FONT_COLOR:I

    invoke-virtual {v14, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 788
    iget-object v11, v1, Lcom/metamoji/noteanytime/EditorActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v14, 0x11

    invoke-virtual {v11, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 789
    iget-object v11, v1, Lcom/metamoji/noteanytime/EditorActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    .line 790
    iget-object v11, v1, Lcom/metamoji/noteanytime/EditorActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v14, 0xd

    invoke-static {v11, v12, v14, v12, v12}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 791
    iget-object v11, v1, Lcom/metamoji/noteanytime/EditorActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v14, 0x40a00000    # 5.0f

    invoke-static {v14}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v15

    float-to-int v15, v15

    invoke-static {v14}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v11, v15, v13, v14, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 793
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x41a00000    # 20.0f

    .line 795
    invoke-static {v14}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v14

    float-to-int v14, v14

    const/4 v15, -0x1

    invoke-direct {v11, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x10

    .line 796
    iput v14, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 797
    iget-object v14, v1, Lcom/metamoji/noteanytime/EditorActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v14, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    iget-object v11, v1, Lcom/metamoji/noteanytime/EditorActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 801
    invoke-direct {v1}, Lcom/metamoji/noteanytime/EditorActivity;->processFragmentStateRequests()V

    .line 803
    invoke-direct {v1}, Lcom/metamoji/noteanytime/EditorActivity;->reflectDetailWindowMode()V

    .line 806
    iget-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_featureChangedEventHandler:Lcom/metamoji/nt/NtFeatureManager$FeatureChangedEventHandler;

    if-nez v10, :cond_d

    .line 807
    new-instance v10, Lcom/metamoji/noteanytime/EditorActivity$7;

    invoke-direct {v10, v1}, Lcom/metamoji/noteanytime/EditorActivity$7;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    iput-object v10, v1, Lcom/metamoji/noteanytime/EditorActivity;->_featureChangedEventHandler:Lcom/metamoji/nt/NtFeatureManager$FeatureChangedEventHandler;

    .line 815
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v10

    iget-object v11, v1, Lcom/metamoji/noteanytime/EditorActivity;->_featureChangedEventHandler:Lcom/metamoji/nt/NtFeatureManager$FeatureChangedEventHandler;

    invoke-virtual {v10, v11}, Lcom/metamoji/nt/NtFeatureManager;->addFeatureChangedEventListener(Lcom/metamoji/nt/NtFeatureManager$FeatureChangedEventHandler;)V

    :cond_d
    if-eqz v0, :cond_e

    .line 827
    :try_start_0
    const-string v10, "ShowError"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    :cond_e
    move v10, v13

    .line 828
    :goto_7
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "mergeNotes"

    const-string v15, "copyFromTemplateAsNew"

    const-string v13, "copyFromTemplate"

    const-string v12, "copyNote"

    const-string v7, "editNote"

    move-object/from16 v16, v11

    const-string v11, "editImportedNoteForAudio"

    move/from16 v17, v10

    const-string v10, "editImportedNote"

    if-nez v16, :cond_30

    if-eqz v17, :cond_f

    goto/16 :goto_13

    .line 878
    :cond_f
    :try_start_1
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "insertNote"

    move/from16 p1, v0

    const-string v0, "discardActivity"

    if-nez p1, :cond_2d

    :try_start_2
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2d

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    goto/16 :goto_11

    .line 891
    :cond_10
    const-string v0, "docid"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    .line 892
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_driveID:Ljava/lang/String;

    .line 893
    const-string v0, "pageid"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_pageID:Ljava/lang/String;

    .line 894
    const-string v0, "IsReadOnly"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_isReadOnly:Z

    .line 895
    const-string v0, "cmdAfterSheareNoteOpenedInfo"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_cmdAfterSheareNoteOpenedInfo:Ljava/util/Map;

    .line 897
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 899
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 901
    invoke-direct {v1, v4}, Lcom/metamoji/noteanytime/EditorActivity;->getTags(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    .line 905
    const-string v2, "com.metamoji.noteanytime.sheet.system001.001"

    .line 906
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v6

    .line 907
    invoke-virtual {v6, v2, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->copyDocumentFromSheetTemplate(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 908
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 909
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    iput-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    const/4 v2, 0x1

    .line 910
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setSaveOnEnd(Z)V

    .line 911
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Template:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    move-object/from16 v18, v13

    move-object/from16 v16, v14

    goto/16 :goto_10

    .line 913
    :cond_11
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->GetErrorInfo()Lcom/metamoji/sd/SdError;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->onDriveDocumentManagerError(Lcom/metamoji/sd/SdError;)V

    return-void

    .line 916
    :cond_12
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 918
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_f

    .line 931
    :cond_13
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 933
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    const-string v2, "noteTemplateDriveId"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 935
    const-string v6, "noteTemplateDocId"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 936
    invoke-direct {v1, v4}, Lcom/metamoji/noteanytime/EditorActivity;->getTags(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v9

    move-object/from16 v16, v14

    .line 939
    const-string v14, "orgCommand"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/nt/NtCommand;

    if-nez v6, :cond_15

    .line 944
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_driveID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 945
    iget-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    invoke-virtual {v0, v2, v9}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->copyDocumentFromSheetTemplate(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object v0

    .line 946
    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Template:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-eqz v14, :cond_14

    .line 947
    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_DELIVER_BLANK_PAPER:Lcom/metamoji/nt/NtCommand;

    if-ne v14, v6, :cond_14

    .line 948
    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->TemplateForBlankPaper:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    :cond_14
    move-object/from16 v18, v13

    goto :goto_8

    :cond_15
    move-object/from16 v18, v13

    .line 952
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v2

    .line 953
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v13

    invoke-virtual {v13, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 954
    invoke-virtual {v2, v6, v9, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->copyDocumentAsNew(Ljava/lang/String;Ljava/util/ArrayList;Lcom/metamoji/dvm/fw/IDvmDocumentManagerProtocol;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object v0

    .line 955
    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Copy:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    if-eqz v14, :cond_16

    .line 956
    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_DELIVER_BLANK_PAPER:Lcom/metamoji/nt/NtCommand;

    if-ne v14, v6, :cond_16

    .line 957
    sget-object v2, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->CopyForBlankPaper:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    :cond_16
    :goto_8
    if-eqz v0, :cond_17

    .line 960
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 961
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    iput-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    const/4 v6, 0x1

    .line 962
    invoke-virtual {v0, v6}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setSaveOnEnd(Z)V

    move-object v0, v2

    goto/16 :goto_10

    .line 964
    :cond_17
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->GetErrorInfo()Lcom/metamoji/sd/SdError;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->onDriveDocumentManagerError(Lcom/metamoji/sd/SdError;)V

    return-void

    :cond_18
    move-object/from16 v18, v13

    move-object/from16 v16, v14

    .line 967
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 969
    const-string v0, "giveTags"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 970
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    iget-object v6, v1, Lcom/metamoji/noteanytime/EditorActivity;->_driveID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v2

    .line 971
    iget-object v6, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->copyDocumentAsNew(Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object v0

    .line 972
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 973
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    iput-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 974
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Copy:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    goto/16 :goto_10

    .line 976
    :cond_19
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->GetErrorInfo()Lcom/metamoji/sd/SdError;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->onDriveDocumentManagerError(Lcom/metamoji/sd/SdError;)V

    return-void

    .line 980
    :cond_1a
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 981
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    goto :goto_9

    .line 982
    :cond_1b
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 983
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Import:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    goto :goto_9

    .line 984
    :cond_1c
    const-string v0, "deliverCollaborize"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 985
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->DeliverCollaborize:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    goto :goto_9

    .line 986
    :cond_1d
    const-string v0, "deliverCollaborizeByDrop"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 987
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->DeliverCollaborizeByDrop:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    goto :goto_9

    .line 988
    :cond_1e
    const-string/jumbo v0, "submitByStudent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 989
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->SubmitByStudent:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    goto :goto_9

    .line 990
    :cond_1f
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 991
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->ImportAudioNew:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 998
    :goto_9
    iget-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_cmdAfterSheareNoteOpenedInfo:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/metamoji/noteanytime/EditorActivity;->parseConnectAfterAction(Ljava/util/Map;)Lcom/metamoji/ns/INsCollaboManagerConnectRoomAfterAction;

    move-result-object v2

    .line 1002
    const-string v6, "copiedDocId"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_20

    .line 1003
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_20

    .line 1005
    iput-object v6, v1, Lcom/metamoji/noteanytime/EditorActivity;->_copiedDocID:Ljava/lang/String;

    const/4 v6, 0x1

    goto :goto_a

    :cond_20
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_21

    .line 1008
    iget-object v9, v1, Lcom/metamoji/noteanytime/EditorActivity;->_copiedDocID:Ljava/lang/String;

    invoke-static {v9}, Lcom/metamoji/nt/NtDocument;->popTemporaryDocument(Ljava/lang/String;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v9

    iput-object v9, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    goto :goto_b

    .line 1010
    :cond_21
    iget-object v9, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    invoke-static {v9}, Lcom/metamoji/nt/NtDocument;->popTemporaryDocument(Ljava/lang/String;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v9

    iput-object v9, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 1012
    :goto_b
    iget-object v9, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    if-nez v9, :cond_26

    if-eqz v6, :cond_22

    const/4 v9, 0x0

    goto :goto_c

    .line 1013
    :cond_22
    iget-object v9, v1, Lcom/metamoji/noteanytime/EditorActivity;->_driveID:Ljava/lang/String;

    :goto_c
    if-eqz v6, :cond_23

    .line 1014
    iget-object v6, v1, Lcom/metamoji/noteanytime/EditorActivity;->_copiedDocID:Ljava/lang/String;

    goto :goto_d

    :cond_23
    iget-object v6, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    .line 1015
    :goto_d
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v9

    .line 1016
    iget-boolean v13, v1, Lcom/metamoji/noteanytime/EditorActivity;->_isReadOnly:Z

    invoke-virtual {v9, v6, v13}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->editDocument(Ljava/lang/String;Z)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object v6

    .line 1017
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1018
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v6

    check-cast v6, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    iput-object v6, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 1021
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/metamoji/ns/NsCollaboManager;->setConnectRoomAfterAction(Lcom/metamoji/ns/INsCollaboManagerConnectRoomAfterAction;)V

    goto :goto_e

    :cond_24
    if-eqz v2, :cond_25

    const/4 v0, 0x2

    .line 1028
    invoke-direct {v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->transitionToErrorView(I)V

    const/4 v0, 0x0

    .line 1029
    invoke-interface {v2, v0}, Lcom/metamoji/ns/INsCollaboManagerConnectRoomAfterAction;->action(Z)V

    return-void

    .line 1033
    :cond_25
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->GetErrorInfo()Lcom/metamoji/sd/SdError;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->onDriveDocumentManagerError(Lcom/metamoji/sd/SdError;)V

    return-void

    .line 1037
    :cond_26
    :goto_e
    const-string v2, "pbe"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/metamoji/cm/PBE;

    if-eqz v2, :cond_27

    .line 1039
    iget-object v6, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v6, v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->setEncryptor(Lcom/metamoji/cm/PBE;)V

    .line 1043
    :cond_27
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1044
    iget-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Lcom/metamoji/df/model/IModelManager;Z)V

    .line 1048
    :cond_28
    const-string/jumbo v2, "srcInfo"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_2b

    .line 1050
    iget-object v6, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v1, v6, v2}, Lcom/metamoji/noteanytime/EditorActivity;->setSrcInfo(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Ljava/util/Map;)V

    goto :goto_10

    .line 993
    :cond_29
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v2, "EA003"

    const-string/jumbo v3, "unknown command."

    invoke-direct {v0, v2, v3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_f
    move-object/from16 v18, v13

    move-object/from16 v16, v14

    .line 922
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_driveID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 923
    iget-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->editCopiedDocument(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object v0

    .line 924
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 925
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    iput-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 926
    sget-object v0, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Copy:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    .line 1053
    :cond_2b
    :goto_10
    invoke-direct {v1, v0, v4}, Lcom/metamoji/noteanytime/EditorActivity;->createViewport(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V

    .line 1054
    invoke-direct {v1}, Lcom/metamoji/noteanytime/EditorActivity;->createTextCursorView()V

    const/4 v9, 0x0

    .line 1055
    iput-object v9, v1, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    .line 1056
    invoke-virtual {v1, v9}, Lcom/metamoji/noteanytime/EditorActivity;->initControls(Landroid/os/Bundle;)V

    .line 1060
    const-string v0, "editorExternalCommand"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1061
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1063
    new-instance v2, Lcom/metamoji/noteanytime/EditorExternalCommand;

    invoke-direct {v2, v0}, Lcom/metamoji/noteanytime/EditorExternalCommand;-><init>(Landroid/os/Bundle;)V

    .line 1064
    iget-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    invoke-virtual {v2}, Lcom/metamoji/noteanytime/EditorExternalCommand;->getCommand()Lcom/metamoji/nt/NtCommand;

    move-result-object v4

    invoke-virtual {v2}, Lcom/metamoji/noteanytime/EditorExternalCommand;->getContext()Lcom/metamoji/cm/CmContext;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_15

    .line 928
    :cond_2c
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->GetErrorInfo()Lcom/metamoji/sd/SdError;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->onDriveDocumentManagerError(Lcom/metamoji/sd/SdError;)V

    return-void

    :cond_2d
    :goto_11
    move-object/from16 v18, v13

    move-object/from16 v16, v14

    .line 880
    const-string v2, "EditorActivity#onCreate: CMD_Restore (%s)"

    if-eqz v9, :cond_2e

    const-string/jumbo v4, "reusing DocEditor"

    goto :goto_12

    :cond_2e
    const-string v4, "normal flow"

    :goto_12
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    invoke-direct {v1, v9}, Lcom/metamoji/noteanytime/EditorActivity;->restoreEditingNote(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    .line 883
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 884
    iget-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_CLOSE_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v9}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_15

    .line 886
    :cond_2f
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 887
    invoke-direct {v1, v3}, Lcom/metamoji/noteanytime/EditorActivity;->setInsertImportedDocJob(Landroid/content/Intent;)V

    goto/16 :goto_15

    :cond_30
    :goto_13
    move-object/from16 v18, v13

    move-object/from16 v16, v14

    .line 831
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    if-eqz v2, :cond_31

    .line 833
    invoke-virtual {v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    .line 834
    iget-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-virtual {v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_driveID:Ljava/lang/String;

    .line 836
    :cond_31
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getViewport()Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    .line 837
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getTextCursors()Lcom/metamoji/un/text/TextCursors;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_textCursors:Lcom/metamoji/un/text/TextCursors;

    .line 838
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getFirstJob()Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    .line 839
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->getViewForSoftInput()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_viewForSoftInput:Landroid/view/View;

    if-eqz v0, :cond_32

    .line 841
    const-string v2, "PageListShown"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_pageListShown:I

    .line 842
    const-string v2, "JumpListShown"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListShown:I

    .line 843
    const-string v2, "JumpListPosition"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListPosition:I

    :cond_32
    if-eqz v0, :cond_33

    .line 845
    const-string v2, "FullScreen"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_14

    :cond_33
    const/4 v2, 0x0

    :goto_14
    iput-boolean v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_fullScreen:Z

    .line 846
    iget-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    if-eqz v2, :cond_34

    .line 847
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->initViewport()V

    .line 848
    invoke-direct {v1}, Lcom/metamoji/noteanytime/EditorActivity;->initTextCursorView()V

    .line 849
    invoke-direct {v1}, Lcom/metamoji/noteanytime/EditorActivity;->initViewForSoftInput()V

    .line 850
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/noteanytime/EditorActivity;->initControls(Landroid/os/Bundle;)V

    .line 853
    :cond_34
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 855
    invoke-virtual {v1, v2, v0}, Lcom/metamoji/noteanytime/EditorActivity;->bindUIToDocument(Lcom/metamoji/nt/NtNoteController;Landroid/os/Bundle;)V

    .line 856
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v0

    .line 857
    iget-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Lcom/metamoji/ui/CustomHoverSelectorView;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    .line 858
    iget-object v2, v1, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    if-eqz v2, :cond_35

    .line 859
    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController$NoteMode;->intValue()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Lcom/metamoji/ui/flexible/FxManager;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)V

    .line 862
    :cond_35
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->restoreControlStates()V

    .line 865
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 866
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->canShowEditAreaView()Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v0, 0x0

    .line 867
    invoke-virtual {v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setEditAreaVisibility(Z)V

    .line 870
    :cond_36
    iget-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->updateStatus()V

    .line 871
    iget-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_scoreInfoView:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->updateStatus()V

    if-eqz v17, :cond_37

    move/from16 v13, v17

    .line 875
    invoke-direct {v1, v13}, Lcom/metamoji/noteanytime/EditorActivity;->transitionToErrorView(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 1074
    :cond_37
    :goto_15
    iget-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    invoke-static {v0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->setDocumentEditor(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    .line 1075
    iget-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    invoke-static {v0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->setViewport(Lcom/metamoji/noteanytime/EditorActivity$MainViewport;)V

    .line 1076
    iget-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_textCursors:Lcom/metamoji/un/text/TextCursors;

    invoke-static {v0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->setTextCursors(Lcom/metamoji/un/text/TextCursors;)V

    .line 1077
    iget-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    invoke-static {v0}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->setFirstJob(Lcom/metamoji/noteanytime/EditorActivity$FirstJob;)V

    .line 1081
    :try_start_3
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1082
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1083
    :cond_38
    invoke-direct {v1, v3}, Lcom/metamoji/noteanytime/EditorActivity;->setPasteObjectJob(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_16

    :catch_0
    move-exception v0

    .line 1086
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 1092
    :cond_39
    :goto_16
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$8;

    invoke-direct {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity$8;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    iput-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->m_connectivityActionReceiver:Landroid/content/BroadcastReceiver;

    .line 1111
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/noteanytime/EditorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1114
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 1115
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->updateIdleTimerDisabled()V

    .line 1136
    :cond_3a
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    move-object/from16 v2, v18

    .line 1137
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    move-object/from16 v2, v16

    .line 1139
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1141
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1142
    :cond_3b
    iget-object v0, v1, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_BASE:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    .line 1147
    :cond_3c
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->updateEditLayerInfoPosition()V

    .line 1148
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->updatePersonalModeInfoPosition()V

    .line 1149
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->updateScoreInfoViewPosition()V

    .line 1151
    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->updateOfflineEditModeInfoPosition()V

    return-void

    .line 1068
    :goto_17
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 1069
    invoke-direct {v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->onNoteLoadError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 3266
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mWristGuard:Lcom/metamoji/ui/WristGuardFrame;

    if-eqz v0, :cond_0

    .line 3267
    invoke-virtual {v0}, Lcom/metamoji/ui/WristGuardFrame;->wgClose()V

    .line 3268
    :cond_0
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onDestroy()V

    .line 3269
    const-string v0, "EditorActivity.onDestroy"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 3270
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtMazecImsManager;->onDestroyEditorActivity(Lcom/metamoji/noteanytime/EditorActivity;)V

    .line 3271
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->execDestroy()V

    return-void
.end method

.method public onHistoryBarHeightChanged()V
    .locals 4

    .line 7068
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_historyBarHeightChangedRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 7069
    new-instance v0, Lcom/metamoji/noteanytime/EditorActivity$74;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/EditorActivity$74;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_historyBarHeightChangedRunnable:Ljava/lang/Runnable;

    .line 7113
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_historyBarHeightChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 5559
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5560
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 5563
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "onLowMemory..."

    .line 5597
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onLowMemory()V

    .line 5599
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMemoryInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 5600
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5602
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->onMemoryWarning()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 5605
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .line 1501
    const-string/jumbo v0, "srcInfo"

    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1514
    const-string v1, "EditorActivity.onNewIntent"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1516
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 1518
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1519
    const-string v2, "command"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1520
    const-string v3, "editNote"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "entityId"

    const-string v5, "editImportedNoteForAudio"

    const-string v6, "editImportedNote"

    const-string v7, "docid"

    if-nez v3, :cond_4

    .line 1521
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1522
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1552
    :cond_0
    const-string v0, "copyFromTemplate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1553
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 1558
    :cond_1
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1559
    invoke-virtual {v0, v4, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1560
    const-string p1, "contentsFile"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 1561
    const-string/jumbo v2, "storageFile"

    invoke-virtual {v0, v2, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1562
    invoke-direct {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->getTags(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1563
    const-string/jumbo v1, "tags"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1564
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CREATE_DOCUMENT_FROM_DOCUMENTTEMPLATE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 1565
    :cond_2
    const-string v0, "discardActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1566
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_CLOSE_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 1567
    :cond_3
    const-string v0, "insertNote"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1568
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->setInsertImportedDocJob(Landroid/content/Intent;)V

    return-void

    .line 1524
    :cond_4
    :goto_0
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto/16 :goto_2

    .line 1529
    :cond_5
    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    .line 1532
    :cond_6
    new-instance v3, Lcom/metamoji/cm/CmContext;

    invoke-direct {v3}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1533
    invoke-virtual {v3, v4, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1535
    const-string p1, "driveid"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1536
    const-string v4, "driveId"

    invoke-virtual {v3, v4, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1537
    const-string p1, "pbe"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/PBE;

    if-eqz p1, :cond_7

    .line 1539
    const-string v4, "encryptor"

    invoke-virtual {v3, v4, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1541
    :cond_7
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "editOperation"

    if-eqz p1, :cond_8

    .line 1542
    :try_start_2
    sget-object p1, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Import:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-virtual {v3, v4, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 1543
    :cond_8
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1544
    sget-object p1, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->ImportAudioNew:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-virtual {v3, v4, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1547
    :cond_9
    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_a

    .line 1549
    invoke-virtual {v3, v0, p1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1551
    :cond_a
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_firstJob:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_OPEN_DOCID:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v3}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    .line 1570
    :cond_b
    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "android.intent.action.VIEW"

    .line 1571
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_c
    :goto_2
    return-void

    .line 1573
    :cond_d
    :goto_3
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->setPasteObjectJob(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1576
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 3973
    sget-object v0, Lcom/metamoji/noteanytime/EditorActivity;->MENU_ID_MAP:[Lcom/metamoji/ui/PopupCommand;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    aget-object v0, v0, v1

    .line 3974
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->doCommand(Lcom/metamoji/ui/PopupCommand;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3977
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 2964
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onPause()V

    .line 2965
    const-string v0, "EditorActivity.onPause"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 3026
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3027
    const-string v0, "EditorActivity.onPause ... finishing."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 3029
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3031
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3033
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getRecordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3035
    invoke-virtual {v1}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->handleCloseDocument()Z

    .line 3041
    :cond_0
    invoke-static {}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->handleCloseDocument()V

    .line 3046
    :cond_1
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3048
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->requestSuspendProcess()V

    :cond_2
    if-eqz v0, :cond_3

    .line 3052
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3053
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$39;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$39;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 3061
    :cond_3
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 3064
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3066
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->onSuspend()V

    .line 3071
    :cond_5
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/metamoji/nt/NtSetTextLocation;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3072
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtSetTextLocation;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3073
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3074
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtSetTextLocation;->cancel()V

    .line 3078
    :cond_6
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->unregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 3079
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_errorListener:Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    .line 4858
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x17

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 5038
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5040
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5042
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getRecordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5044
    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    goto/16 :goto_0

    .line 5017
    :pswitch_0
    aget-object v0, p2, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 5018
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5019
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_ALBUM_ALLPAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    goto/16 :goto_0

    .line 5010
    :pswitch_1
    aget-object v0, p2, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 5011
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5012
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_ALBUM_THISPAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    goto/16 :goto_0

    .line 5003
    :pswitch_2
    aget-object v0, p2, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 5004
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5005
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SAVE_ALBUM_SELECTION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    goto/16 :goto_0

    .line 4971
    :pswitch_3
    aget-object v0, p2, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 4972
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 4974
    const-string v1, "PoisonousMushroomCreatorDialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_7

    .line 4975
    new-instance v2, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;

    invoke-direct {v2}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;-><init>()V

    .line 4976
    invoke-virtual {v2, v0, v1}, Lcom/metamoji/ui/dialog/PoisonousMushroomCreatorDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4959
    :pswitch_4
    aget-object v0, p2, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 4961
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/noteanytime/EditorActivity$55;

    invoke-direct {v2, p0}, Lcom/metamoji/noteanytime/EditorActivity$55;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v2, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    goto/16 :goto_0

    .line 4953
    :pswitch_5
    aget-object v0, p2, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 4954
    sget-object v0, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_ALBUM:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/noteanytime/EditorActivity;->showSendDialog(Lcom/metamoji/ui/PopupCommand;Z)V

    goto/16 :goto_0

    .line 4947
    :pswitch_6
    aget-object v0, p2, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 4948
    sget-object v0, Lcom/metamoji/ui/PopupCommand;->SEND_TARGET_SERVICE_FILE:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/noteanytime/EditorActivity;->showSendDialog(Lcom/metamoji/ui/PopupCommand;Z)V

    goto/16 :goto_0

    .line 4861
    :cond_0
    const-string v0, "android.permission.CAMERA"

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 4863
    invoke-virtual {p0, v2}, Lcom/metamoji/noteanytime/EditorActivity;->qrCodeReader(Z)V

    goto/16 :goto_0

    .line 4996
    :cond_1
    aget-object v0, p2, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 4997
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4998
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_IMPORT_AUDIO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    goto/16 :goto_0

    .line 5024
    :cond_2
    aget-object v0, p2, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 5025
    invoke-static {}, Lcom/metamoji/nt/NtShare;->getSaveToFile()Ljava/io/File;

    move-result-object v0

    .line 5026
    invoke-static {}, Lcom/metamoji/nt/NtShare;->getSaveFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 5028
    invoke-static {v0, v1}, Lcom/metamoji/nt/NtShare;->saveAsM4a(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 4989
    :cond_3
    aget-object v0, p2, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 4990
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4991
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_IMPORT_PDF:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    goto :goto_0

    .line 4982
    :cond_4
    aget-object v0, p2, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget v0, p3, v2

    if-nez v0, :cond_7

    .line 4983
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 4984
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_IMPORT_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    goto :goto_0

    .line 4909
    :cond_5
    invoke-static {}, Lcom/metamoji/un/sound/UnSoundUnit;->getPermissionCheckUnit()Lcom/metamoji/un/sound/UnSoundUnit;

    move-result-object v0

    .line 4910
    invoke-static {v1}, Lcom/metamoji/un/sound/UnSoundUnit;->setPermissionCheckUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V

    .line 4912
    const-string v3, "android.permission.RECORD_AUDIO"

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    aget v2, p3, v2

    if-nez v2, :cond_6

    .line 4914
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/noteanytime/EditorActivity$53;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/noteanytime/EditorActivity$53;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/un/sound/UnSoundUnit;)V

    invoke-virtual {v2, v3, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    goto :goto_0

    .line 4924
    :cond_6
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$54;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$54;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 5050
    :cond_7
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 1

    .line 3169
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onRestart()V

    .line 3170
    const-string v0, "EditorActivity.onRestart"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 3171
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_rootView:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    if-eqz v0, :cond_0

    .line 3172
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->setNeedsDisplay()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 3606
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 3607
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->processFragmentStateRequests()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 3095
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onResume()V

    .line 3096
    const-string v0, "EditorActivity.onResume"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 3098
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_errorListener:Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;->onResume()V

    .line 3099
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 3101
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3106
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateAttentionArea()V

    .line 3109
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManager;->updateNotify()V

    .line 3119
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateDetailAndViewModeButton()V

    .line 3122
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->processFragmentStateRequests()V

    .line 3125
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3127
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3129
    sget-object v1, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPageController;->updateSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    .line 3134
    :cond_1
    invoke-static {p0}, Lcom/metamoji/nt/NtSupportLog;->setLoggingView(Landroid/app/Activity;)V

    .line 3136
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3138
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3140
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3141
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3142
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 3144
    :goto_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/NsCollaboManager;->didChangeConnectionMode(Z)V

    .line 3146
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->SharedInstance()Lcom/metamoji/media/MediaUploadManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3149
    invoke-virtual {v1, v0}, Lcom/metamoji/media/MediaUploadManager;->didChangeConnectionMode(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .line 3612
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3613
    const-string v0, "EditorActivity.onSaveInstanceState"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 3614
    const-string v0, "IWillBeBack"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3615
    const-string v0, "ShowError"

    iget v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_showError:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3617
    const-string v0, "PageListShown"

    iget v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageListShown:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3618
    const-string v0, "JumpListShown"

    iget v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListShown:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3619
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-string v2, "JumpListPosition"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3620
    iget v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageListShown:I

    const-string v2, "ListMultiSelections"

    const-string v3, "ListMultiSelectionMode"

    const/4 v4, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtPageList;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3621
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtPageList;->getSelectedItemIndexes()Ljava/util/ArrayList;

    move-result-object v0

    .line 3622
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3623
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 3624
    :cond_1
    iget v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListShown:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3625
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-virtual {v0}, Lcom/metamoji/nt/itemlist/NtJumpList;->getSelectedItemIndexes()Ljava/util/ArrayList;

    move-result-object v0

    .line 3626
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3627
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 3629
    :cond_2
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3633
    :goto_1
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/metamoji/nt/NtSetTextLocation;->isVisible()Z

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    const-string v2, "SetTextUnitLocationShown"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3635
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3636
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v4

    :goto_3
    const-string v2, "UnTextEditUserInfoViewShown"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3638
    const-string v0, "FullScreen"

    iget-boolean v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fullScreen:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3639
    const-string v0, "docid"

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3640
    const-string v0, "driveid"

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_driveID:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3641
    const-string v0, "IsReadOnly"

    iget-boolean v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_isReadOnly:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3642
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_cmdAfterSheareNoteOpenedInfo:Ljava/util/Map;

    check-cast v0, Ljava/io/Serializable;

    const-string v2, "cmdAfterSheareNoteOpenedInfo"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3644
    sget v0, Lcom/metamoji/noteanytime/R$id;->CustomHoverSelectorView:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomHoverSelectorView;

    if-eqz v0, :cond_5

    .line 3646
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->get_restorData()[I

    move-result-object v0

    .line 3647
    const-string v2, "HoverData"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 3651
    :cond_5
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

    if-eqz v0, :cond_7

    .line 3652
    invoke-virtual {v0}, Lcom/metamoji/nt/NtSearchTextBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v4

    :goto_4
    const-string v2, "SearchTextBarShown"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3655
    :cond_7
    const-string v0, "TextUnitInputStyleBarShown"

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getTextUnitInputStyleBarVisible()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3657
    invoke-static {}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getPallet()Lcom/metamoji/ui/UiTinyPalletViewGroup;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3659
    const-string v2, "VoicePalletShown"

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->getVoicePalletShown()Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3663
    :cond_8
    iput-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentSaved:Z

    .line 3664
    sget v0, Lcom/metamoji/noteanytime/R$id;->actionbar:I

    const-string v2, "ActionBarShown"

    invoke-direct {p0, p1, v0, v2}, Lcom/metamoji/noteanytime/EditorActivity;->storeFragmentState(Landroid/os/Bundle;ILjava/lang/String;)V

    .line 3665
    sget v0, Lcom/metamoji/noteanytime/R$id;->bottombar:I

    const-string v2, "BottomBarShown"

    invoke-direct {p0, p1, v0, v2}, Lcom/metamoji/noteanytime/EditorActivity;->storeFragmentState(Landroid/os/Bundle;ILjava/lang/String;)V

    .line 3668
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    .line 3669
    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->getCurrentSelection()Lcom/metamoji/nt/NtMRUDocList$Item;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3671
    const-string v2, "HistoryBarSelection"

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList$Item;->docId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3674
    :cond_9
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManager;->getHintHelpVisibleList()[I

    move-result-object v0

    .line 3675
    const-string v2, "HitHelpVisibleList"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 3677
    const-string v0, "WristGuardShown"

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowWristGuard()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3680
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editLayerInfoView:Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_5

    :cond_a
    move v0, v4

    :goto_5
    const-string v2, "EditLayerInfo"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3682
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_personalModeInfoView:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_6

    :cond_b
    move v0, v4

    :goto_6
    const-string v2, "PersonalModeInfo"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3685
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_offlineEditModeInfoView:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_7

    :cond_c
    move v0, v4

    :goto_7
    const-string v2, "OfflineEditModeInfo"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3689
    sget v0, Lcom/metamoji/noteanytime/R$id;->direction_velocity_view:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_8

    :cond_d
    move v1, v4

    :goto_8
    const-string v0, "DirectionVelocityViewShown"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3691
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/noteanytime/EntryActivity;->savePendingIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 7743
    instance-of p1, p2, Lcom/metamoji/nt/NtCommand;

    if-eqz p1, :cond_0

    .line 7744
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    if-eqz p1, :cond_1

    .line 7745
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    check-cast p2, Lcom/metamoji/nt/NtCommand;

    check-cast p3, Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void

    .line 7747
    :cond_0
    instance-of p1, p2, Lcom/metamoji/ui/PopupCommand;

    if-eqz p1, :cond_1

    .line 7748
    check-cast p2, Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {p0, p2}, Lcom/metamoji/noteanytime/EditorActivity;->doCommand(Lcom/metamoji/ui/PopupCommand;)Z

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 3087
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 3160
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onStop()V

    .line 3161
    const-string v0, "EditorActivity.onStop"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 5611
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onTrimMemory(I)V

    .line 5612
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTrimMemory(%d)...before"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMemoryInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5613
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5615
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->onMemoryWarning()V

    .line 5617
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTrimMemory(%d)...after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMemoryInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 7759
    invoke-static {}, Lcom/metamoji/ui/dialog/UiDialog;->Exists()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 7764
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7765
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->stb_keyword:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 7777
    :cond_1
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getFocusedTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7779
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->focusToViewForSoftInputAndShowSoftInput()V

    .line 7783
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public openActivity(Lcom/metamoji/noteanytime/EditorActivity$RequestCode;Landroid/app/PendingIntent;Lcom/metamoji/noteanytime/EditorActivity$OnActivityResult;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4442
    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onActivityResults:Lcom/metamoji/noteanytime/EditorActivity$OnActivityResult;

    .line 4443
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 4444
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->intValue()I

    move-result v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 p1, 0x0

    .line 4445
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4446
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p0

    .line 4443
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/noteanytime/EditorActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public openActivity(Lcom/metamoji/noteanytime/EditorActivity$RequestCode;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 4413
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onActivityResults:Lcom/metamoji/noteanytime/EditorActivity$OnActivityResult;

    .line 4415
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/noteanytime/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4417
    const-string p2, "cannot start activity."

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public openActivity(Lcom/metamoji/noteanytime/EditorActivity$RequestCode;Landroid/content/Intent;Lcom/metamoji/noteanytime/EditorActivity$OnActivityResult;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4431
    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity;->_onActivityResults:Lcom/metamoji/noteanytime/EditorActivity$OnActivityResult;

    .line 4432
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/noteanytime/EditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public openCollaboModeBar()V
    .locals 5

    .line 6617
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6618
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    const-string v1, "CollaboModeBar"

    if-eqz v0, :cond_0

    .line 6619
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;-><init>()V

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    .line 6620
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 6621
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$id;->collabobar_layer:I

    iget-object v3, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 6622
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->setCollaboModeBarListeners()V

    goto :goto_0

    .line 6624
    :cond_0
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;

    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;-><init>()V

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    .line 6625
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 6626
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 6627
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v3, Lcom/metamoji/noteanytime/R$id;->collabo_mode_dialog_layer:I

    iget-object v4, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-virtual {v0, v3, v4, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 6629
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 6630
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 6635
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6636
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 6637
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->show()V

    :cond_2
    return-void
.end method

.method openDetailWindow()V
    .locals 4

    .line 6488
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6492
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDetailWindow()Lcom/metamoji/ui/DetailWindow;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6493
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 6494
    new-instance v1, Lcom/metamoji/ui/DetailWindow;

    invoke-direct {v1}, Lcom/metamoji/ui/DetailWindow;-><init>()V

    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detailWindow:Lcom/metamoji/ui/DetailWindow;

    .line 6495
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->gadget_layer:I

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detailWindow:Lcom/metamoji/ui/DetailWindow;

    const-string v3, "DetailWindow"

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 6502
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getPageListViewStatus()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 6503
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setPageListViewStatus(I)V

    .line 6504
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getJumpListViewStatus()I

    move-result v0

    if-nez v0, :cond_3

    .line 6505
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setJumpListViewStatus(I)V

    .line 6507
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 6511
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setDetailWindowMode(Z)V

    .line 6513
    :cond_4
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detailWindow:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    const/16 v0, 0x10

    .line 6514
    invoke-direct {p0, v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    return-void
.end method

.method public openMainMenu(Landroid/view/View;)V
    .locals 4

    .line 7499
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 7504
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/flexible/FxManager;->getView(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Landroid/view/View;

    move-result-object p1

    .line 7506
    :cond_1
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v2, 0x0

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    return-void
.end method

.method public openShareMenu(Landroid/view/View;)V
    .locals 1

    .line 7513
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7519
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7527
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public pageAddButtonSetting(Lcom/metamoji/nt/NtDocument$EditMode;)V
    .locals 1

    .line 5873
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    .line 5874
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->pageAddButtonSetting(Z)V

    return-void
.end method

.method public pageAddButtonSetting(Z)V
    .locals 3

    .line 5878
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 5879
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5880
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$68;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$68;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    .line 5890
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 5892
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v2, Lcom/metamoji/nt/NtFeature;->NewPageToLast:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5893
    iget v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageListShown:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 5923
    :cond_2
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_add:I

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5924
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method pastePageFromDocuments(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1162
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v5

    .line 1163
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    new-instance p3, Lcom/metamoji/noteanytime/EditorActivity$10;

    invoke-direct {p3, p0}, Lcom/metamoji/noteanytime/EditorActivity$10;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    .line 1172
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p3

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$11;

    move-object v2, p0

    move-object v7, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/noteanytime/EditorActivity$11;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/util/List;Ljava/util/List;Lcom/metamoji/dvm/fw/DvmDocumentManager;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performLinkJumpBackward()V
    .locals 4

    .line 6427
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getPrevLinkJump()I

    move-result v0

    if-ltz v0, :cond_0

    .line 6429
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/metamoji/nt/itemlist/NtJumpList;->selectItem(IZZ)V

    :cond_0
    return-void
.end method

.method public performLinkJumpForward()V
    .locals 4

    .line 6410
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getNextLinkJump()I

    move-result v0

    if-ltz v0, :cond_0

    .line 6412
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/metamoji/nt/itemlist/NtJumpList;->selectItem(IZZ)V

    :cond_0
    return-void
.end method

.method public personalModeInfoResetMargin()V
    .locals 2

    .line 8858
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_personalModeInfoView:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->getTopMargin()I

    move-result v0

    if-eqz v0, :cond_0

    .line 8859
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_personalModeInfoView:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setTopMargin(I)V

    :cond_0
    return-void
.end method

.method public prepareWebPage(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    const/4 v0, 0x0

    .line 5067
    sput-object v0, Lcom/metamoji/ui/WebPageActivity;->capturedBlob:Lcom/metamoji/cm/Blob;

    .line 5068
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/metamoji/ui/WebPageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5069
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-nez p2, :cond_1

    .line 5073
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p2

    .line 5074
    sget-object v2, Lcom/metamoji/nt/NtFeature;->AppWebUnitDefaultUrl:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p2, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p2

    const-string v2, "https://www.google.com"

    if-eqz p2, :cond_0

    .line 5075
    const-string p2, "MMJAppWebUnitDefaultUrl"

    invoke-static {p2, v0}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5076
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object p2, v2

    .line 5086
    :cond_1
    sget-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->AddWebPage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    .line 5087
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    .line 5089
    const-string/jumbo p2, "unitId"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5090
    sget-object v0, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->UpdateWebPage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    .line 5093
    :cond_2
    const-string p1, "isReplace"

    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5094
    const-string p1, "readOnly"

    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5097
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->openActivity(Lcom/metamoji/noteanytime/EditorActivity$RequestCode;Landroid/content/Intent;)V

    return-void
.end method

.method public prevNextButtonEnabled(Z)V
    .locals 2

    .line 8833
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$84;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$84;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public qrCodeReader(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 4677
    const-string p1, "android.permission.CAMERA"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmUtils;->hasPermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4678
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 v1, 0x1c

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 4682
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/cm/CmUtils;->hasPermission(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 4687
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/qrcode/ScQRCodeCommand;->handleQRCodeReader()V

    return-void
.end method

.method public refreshDetailWindow()V
    .locals 1

    .line 6546
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDetailWindow()Lcom/metamoji/ui/DetailWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6547
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detailWindow:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailWindow;->refresh()V

    :cond_0
    return-void
.end method

.method resetBtnOnClickListeners()V
    .locals 17

    .line 2863
    sget v1, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_done:I

    sget v2, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_newdoc:I

    sget v3, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_undo:I

    sget v4, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_redo:I

    sget v5, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_share:I

    sget v6, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_anytime:I

    sget v7, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_tab:I

    sget v8, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_prev:I

    sget v9, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_next:I

    sget v10, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_change_tab:I

    sget v11, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_tab:I

    sget v12, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_prev:I

    sget v13, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_next:I

    sget v14, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_change_tab:I

    sget v15, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_wristguard:I

    sget v16, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_dwindow:I

    filled-new-array/range {v1 .. v16}, [I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 2884
    aget v2, v0, v1

    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    .line 2886
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p0

    return-void
.end method

.method public resetNoteLoadingError()V
    .locals 0

    .line 1955
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->transitionToNormalView()V

    return-void
.end method

.method restoreControlStates()V
    .locals 3

    .line 2930
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2932
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->updateUndoRedoCommandState()V

    .line 2934
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2935
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SEND:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->DISABLE:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    :cond_1
    return-void
.end method

.method public returnToCabinet()V
    .locals 3

    .line 3522
    monitor-enter p0

    .line 3523
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mClosing:Z

    if-eqz v0, :cond_0

    .line 3524
    monitor-exit p0

    return-void

    .line 3526
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3528
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3529
    sget v0, Lcom/metamoji/noteanytime/R$string;->Trial_Msg_Ask_Finish_Trial_Mode:I

    new-instance v2, Lcom/metamoji/noteanytime/EditorActivity$44;

    invoke-direct {v2, p0}, Lcom/metamoji/noteanytime/EditorActivity$44;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 3536
    :cond_1
    invoke-direct {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->returnToCabinetInternal(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 3526
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public selectDocThumbnailImage()V
    .locals 4

    .line 5105
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    .line 5106
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5107
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5108
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$string;->Documentsetting_Thumbnail:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5109
    sget-object v3, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->DocThumbnailImage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/noteanytime/EditorActivity;->openActivity(Lcom/metamoji/noteanytime/EditorActivity$RequestCode;Landroid/content/Intent;)V

    return-void
.end method

.method public selectImageForPaperBackground()V
    .locals 3

    .line 5117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5118
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5119
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->SheetBackGround_Image:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5120
    sget-object v2, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->GetImage:Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/metamoji/noteanytime/EditorActivity;->openActivity(Lcom/metamoji/noteanytime/EditorActivity$RequestCode;Landroid/content/Intent;)V

    return-void
.end method

.method public setActionBarButtonPressed(Landroid/view/View;Landroid/graphics/PointF;Z)V
    .locals 0

    .line 3934
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->isShare()Z

    move-result p2

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 3937
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_base_push_share:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 3939
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_base_push:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 3942
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    .line 3944
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_base_push_share:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 3946
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_base_push:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_3
    const/4 p2, 0x0

    .line 3948
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDirectionVelocity(D)V
    .locals 3

    .line 8967
    sget v0, Lcom/metamoji/noteanytime/R$id;->direction_velocity_text:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 8969
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8970
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    cmpg-double v1, p1, v1

    if-gez v1, :cond_0

    .line 8974
    sget p1, Lcom/metamoji/noteanytime/EditorActivity;->directionVelocityBlackColor:I

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    cmpg-double v1, p1, v1

    if-gez v1, :cond_1

    .line 8976
    sget p1, Lcom/metamoji/noteanytime/EditorActivity;->directionVelocityBrownColor:I

    goto :goto_0

    :cond_1
    const-wide/high16 v1, 0x4044000000000000L    # 40.0

    cmpg-double p1, p1, v1

    if-gez p1, :cond_2

    .line 8978
    sget p1, Lcom/metamoji/noteanytime/EditorActivity;->directionVelocityOrangeColor:I

    goto :goto_0

    .line 8980
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/EditorActivity;->directionVelocityRedColor:I

    .line 8983
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public setDirectionVelocityEnabled(Z)V
    .locals 1

    .line 8955
    sget v0, Lcom/metamoji/noteanytime/R$id;->direction_velocity_view:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 8957
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setEditAreaVisibility(Z)V
    .locals 2

    .line 1699
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$17;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$17;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setFragmentState(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    return-void

    .line 7257
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->goneFragment(Landroidx/fragment/app/Fragment;)V

    return-void

    .line 7254
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->hideFragment(Landroidx/fragment/app/Fragment;)V

    return-void

    .line 7251
    :cond_2
    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V
    .locals 1

    .line 8710
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    return-void
.end method

.method public setJumpListViewStatus(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 6379
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6380
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_OPEN_JUMPLIST:Lcom/metamoji/nt/NtCommand;

    .line 6381
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6386
    :cond_0
    iput p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpListShown:I

    .line 6387
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->setFragmentState(Landroidx/fragment/app/Fragment;I)V

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x8

    .line 6388
    invoke-direct {p0, v0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    .line 6389
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateJumpLabel()V

    .line 6390
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateJumpNavigationButtons()V

    .line 6391
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateDetailAndViewModeButton()V

    .line 6394
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    if-eqz p1, :cond_2

    .line 6395
    invoke-virtual {p1, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->updatePosition(Lcom/metamoji/noteanytime/EditorActivity;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setMainMenu(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 7398
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 7403
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7405
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_DOCUMENT_SETTING2:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7408
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v1}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 7409
    sget-object v2, Lcom/metamoji/ui/PopupCommand;->DOCUMENT_SETTING2:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 7410
    sget v2, Lcom/metamoji/noteanytime/R$string;->DocumentSetting_Note_Setting:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 7411
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->menuicon_doc_setting_n:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 7412
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->menuicon_doc_setting_n:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 7413
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7415
    :cond_1
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_NOTETEMPLATE_SETTING:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7416
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v0}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 7417
    sget-object v1, Lcom/metamoji/ui/PopupCommand;->NOTETEMPLATE_SETTING:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 7418
    sget v1, Lcom/metamoji/noteanytime/R$string;->Editor_NoteTemplate_Setting:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 7419
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->menuicon_doc_setting_n:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 7420
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->menuicon_doc_setting_n:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 7421
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7429
    :cond_2
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 7430
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->canSetBackgroundImage()Z

    .line 7432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7433
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_CHANGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7434
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v2}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 7435
    sget-object v3, Lcom/metamoji/ui/PopupCommand;->PAPER_CHANGE:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 7436
    sget v3, Lcom/metamoji/noteanytime/R$string;->Menu_Paper_Prop:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 7437
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->menuicon_paper_change_n:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 7439
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7441
    :cond_3
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_SIZE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7442
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v2}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 7443
    sget-object v3, Lcom/metamoji/ui/PopupCommand;->PAPER_SIZE:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 7444
    sget v3, Lcom/metamoji/noteanytime/R$string;->Menu_Paper_Size_Prop:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 7445
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->menuicon_paper_size_n:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 7446
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7448
    :cond_4
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_PAPER_BACKGROUND:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7449
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v2}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 7450
    sget-object v3, Lcom/metamoji/ui/PopupCommand;->PAPER_BACKGROUND:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 7451
    sget v3, Lcom/metamoji/noteanytime/R$string;->Menu_Background_Prop:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 7452
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->menuicon_paper_bg_n:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 7453
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7455
    :cond_5
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COVER_SELECT_AND_INSERT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7456
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v2}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 7457
    sget-object v3, Lcom/metamoji/ui/PopupCommand;->COVER_SELECT_AND_INSERT:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 7458
    sget v3, Lcom/metamoji/noteanytime/R$string;->SelectCoverAndInsertMenu:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 7459
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->menuicon_front_cover:I

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 7460
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7463
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 7464
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Menu_PaperOrBackground_Prop:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->menuicon_paper_setting_n:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->menuicon_paper_setting_n:I

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7468
    :cond_7
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->isBackgroundPDF()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    .line 7469
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PDF_LOCATION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7470
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v0}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 7471
    sget-object v1, Lcom/metamoji/ui/PopupCommand;->PDF_LOCATION:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 7472
    sget v1, Lcom/metamoji/noteanytime/R$string;->Menu_Pdf_Location:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 7473
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_pdf_location_n:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 7474
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_pdf_location_n:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiMenuItem;->set_PushIcon_resid(I)V

    .line 7475
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7480
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7481
    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setShareMenu(Ljava/util/ArrayList;)V

    .line 7482
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Menu_Send:I

    sget v3, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_appli_n:I

    sget v4, Lcom/metamoji/noteanytime/R$drawable;->menuicon_send_appli_n:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7487
    invoke-static {}, Lcom/metamoji/cm/CmLog;->isFileLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7488
    new-instance v0, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v0}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 7489
    sget-object v1, Lcom/metamoji/ui/PopupCommand;->STOP_FILELOG:Lcom/metamoji/ui/PopupCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 7490
    const-string v1, "Stop Log"

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 7491
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_0
    return-void
.end method

.method public setMinPaintInterval(Lcom/metamoji/nt/NtUserDefaults;Lcom/metamoji/df/sprite/Viewport;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 2307
    const-string v0, "PaintResponse"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    :goto_0
    int-to-long v0, v1

    .line 2315
    invoke-virtual {p2, v0, v1}, Lcom/metamoji/df/sprite/Viewport;->setMinPaintInterval(J)V

    :cond_2
    return-void
.end method

.method public setNameTipInfoViewVisibility(I)V
    .locals 1

    .line 8264
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getNameTipInfoView()Lcom/metamoji/nt/NtNameTipInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8266
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtNameTipInfoView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setOnShowHideSoftInputListener(Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$OnShowHideSoftInputListener;)V
    .locals 1

    .line 5621
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detectableSI:Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;

    invoke-virtual {v0, p1}, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->setOnShowHideSoftInputListener(Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput$OnShowHideSoftInputListener;)V

    return-void
.end method

.method public setPageListViewStatus(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 6106
    invoke-static {}, Lcom/metamoji/noteanytime/EditorActivity;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6107
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_OPEN_PAGELIST:Lcom/metamoji/nt/NtCommand;

    .line 6108
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6113
    :cond_0
    iput p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageListShown:I

    .line 6114
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->setFragmentState(Landroidx/fragment/app/Fragment;I)V

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x4

    .line 6115
    invoke-direct {p0, v0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    .line 6116
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageLabel()V

    .line 6117
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageNavigationButtons()V

    .line 6118
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateDetailAndViewModeButton()V

    .line 6121
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageButtonInfoIcon()V

    .line 6125
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageListSchoolPageTypeIcon()V

    .line 6128
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    if-eqz p1, :cond_2

    .line 6129
    invoke-virtual {p1, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->updatePosition(Lcom/metamoji/noteanytime/EditorActivity;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setSoftInputDetectable(Z)V
    .locals 1

    .line 5630
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_detectableSI:Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;

    invoke-virtual {v0, p1}, Lcom/metamoji/noteanytime/FrameLayoutDetectableSoftInput;->setDetectable(Z)V

    return-void
.end method

.method public setSrcInfo(Lcom/metamoji/nt/doceditor/NtDocumentEditor;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/doceditor/NtDocumentEditor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1487
    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    .line 1488
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 1489
    const-string v0, "?editstatus"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1491
    const-string/jumbo v0, "srcInfo"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setStopUpdateListLabel(Z)V
    .locals 0

    .line 3730
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_stopUpdateListLabel:Z

    return-void
.end method

.method public setTextEditUserInfoViewVisibility(I)V
    .locals 1

    .line 8237
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8239
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTextUnitInputStyleBarVisible(Z)V
    .locals 1

    .line 3758
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3761
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->beTextUnitInputStyleBarShown(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    if-nez p1, :cond_4

    .line 3762
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getTextUnitInputStyleBar()Lcom/metamoji/nt/NtTextUnitInputStyleBar;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtTextUnitInputStyleBar;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setUnitEditUserInfoViewVisibility(I)V
    .locals 1

    .line 8251
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8253
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setVisiblePageListTab(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 6220
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageNavigationButtons()V

    .line 6221
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateJumpNavigationButtons()V

    return-void

    .line 6223
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->hidePageNavigationButtons()V

    .line 6224
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->hideJumpNavigationButtons()V

    return-void
.end method

.method public showActionMenu(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 7341
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->hideSoftImput()V

    .line 7342
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_menu:Lcom/metamoji/ui/CustomMenuView;

    .line 7343
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    .line 7344
    invoke-static {v1, p2, v2}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 7345
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7346
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 7347
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 7348
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 7349
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 7351
    invoke-virtual {v0, p1, p0, v1}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method public showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;ZLcom/metamoji/noteanytime/EditorActivity$Completion;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Landroid/view/View;",
            "Lcom/metamoji/ui/CustomMenuView$MenuDirection;",
            "Z",
            "Lcom/metamoji/noteanytime/EditorActivity$Completion;",
            ")V"
        }
    .end annotation

    .line 7354
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_menu:Lcom/metamoji/ui/CustomMenuView;

    .line 7355
    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p4, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    .line 7356
    invoke-static {p4, p2, v1}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 7357
    new-instance p4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 7358
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 7359
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 7360
    move-object p4, v1

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7362
    :cond_0
    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/graphics/Rect;->left:I

    .line 7363
    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 7364
    iget v1, v5, Landroid/graphics/Rect;->right:I

    iget v2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iput v1, v5, Landroid/graphics/Rect;->right:I

    .line 7365
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p4

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 7367
    new-instance v2, Lcom/metamoji/noteanytime/EditorActivity$75;

    invoke-direct {v2, p0, p5}, Lcom/metamoji/noteanytime/EditorActivity$75;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/noteanytime/EditorActivity$Completion;)V

    new-instance v3, Lcom/metamoji/noteanytime/EditorActivity$76;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/noteanytime/EditorActivity$76;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/ui/CustomMenuView;)V

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;)V

    return-void
.end method

.method public showBottomBar()V
    .locals 2

    .line 7131
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7132
    sget v1, Lcom/metamoji/noteanytime/R$id;->bottombar:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 7133
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 7137
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    if-eqz v0, :cond_0

    .line 7138
    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->updatePosition(Lcom/metamoji/noteanytime/EditorActivity;)V

    :cond_0
    return-void
.end method

.method public showCommandFloater(Z)V
    .locals 2

    .line 7190
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7191
    const-string v1, "CommandFloater"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x1003

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7193
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->showFragment(Landroidx/fragment/app/Fragment;I)V

    :cond_1
    return-void
.end method

.method public showDebugMenu()V
    .locals 2

    .line 7591
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/flexible/FxManager;->getView(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Landroid/view/View;

    move-result-object v0

    .line 7592
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7593
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->appendDebugMenu(Ljava/util/ArrayList;)V

    .line 7594
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public showEditLayerInfo(Ljava/lang/String;I)V
    .locals 2

    .line 8778
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$81;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$81;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showEditorBars()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 6967
    invoke-direct {p0, v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setScrollButtonsCondition(IZ)V

    .line 6968
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->showStatusBar()V

    .line 6971
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->hideShowBarBtn()V

    .line 6973
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 6974
    sget v2, Lcom/metamoji/noteanytime/R$id;->actionbar:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/ActionBar;

    .line 6975
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 6976
    iput-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_actionBarShown:Z

    .line 6978
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getTopAppBarHeight()I

    move-result v0

    .line 6989
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setVisiblePageListTab(Z)V

    .line 6991
    invoke-direct {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->updateDetailAndViewModeButton(Z)V

    .line 6993
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/nt/NtSearchTextBar;->updatePosition(ZI)V

    .line 6995
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->mCollaboModeBar:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    if-eqz v1, :cond_0

    .line 6998
    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->show()V

    .line 7003
    :cond_0
    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->adjustEditingArea(I)V

    .line 7007
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePersonalModeInfoPosition()V

    .line 7009
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateEditLayerInfoPosition()V

    .line 7010
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateScoreInfoViewPosition()V

    .line 7012
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updateOfflineEditModeInfoPosition()V

    .line 7019
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_deadlineInfoView:Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    if-eqz v0, :cond_1

    .line 7020
    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;->updatePosition(Lcom/metamoji/noteanytime/EditorActivity;)V

    :cond_1
    return-void
.end method

.method public showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 7227
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->showFragment(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method showFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    .line 7231
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_fragmentSaved:Z

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 7232
    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity;->requestFragmentState(Landroidx/fragment/app/Fragment;I)V

    return-void

    .line 7236
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 7238
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 7239
    invoke-virtual {v0, p2}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    .line 7240
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method showHideButton(IZ)V
    .locals 0

    .line 5737
    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    .line 5741
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method showHideButtonOnUIThread(IZ)V
    .locals 2

    .line 5745
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$63;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$63;-><init>(Lcom/metamoji/noteanytime/EditorActivity;IZ)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showOfflineEditModeInfo(Ljava/lang/String;)V
    .locals 3

    .line 8879
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_modeBarController:Lcom/metamoji/noteanytime/EditorActivityModeBarController;

    .line 8880
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/noteanytime/EditorActivity$86;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/noteanytime/EditorActivity$86;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;Lcom/metamoji/noteanytime/EditorActivityModeBarController;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showPersonalModeInfo(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 8824
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$83;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/noteanytime/EditorActivity$83;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showPlayerBar(Z)V
    .locals 2

    .line 8322
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowPlayerBar()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 8325
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getPlayerBar()Lcom/metamoji/media/voice/ui/VcPlayerBar;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 8328
    :cond_1
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    if-ne p1, v1, :cond_2

    .line 8331
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->showPlaylist()V

    :cond_2
    :goto_0
    return-void
.end method

.method public showPlaylist()V
    .locals 4

    .line 8336
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8339
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowPlaylist()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    .line 8342
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getPlaylist()Lcom/metamoji/media/voice/ui/VcPlaylist;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8343
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 8344
    new-instance v1, Lcom/metamoji/media/voice/ui/VcPlaylist;

    invoke-direct {v1}, Lcom/metamoji/media/voice/ui/VcPlaylist;-><init>()V

    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playlist:Lcom/metamoji/media/voice/ui/VcPlaylist;

    .line 8345
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->playlist_layer:I

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playlist:Lcom/metamoji/media/voice/ui/VcPlaylist;

    const-string v3, "Playlist"

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playlist:Lcom/metamoji/media/voice/ui/VcPlaylist;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 8347
    :cond_2
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_playlist:Lcom/metamoji/media/voice/ui/VcPlaylist;

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public showSendDialog(Lcom/metamoji/ui/PopupCommand;Z)V
    .locals 0

    .line 8430
    new-instance p2, Lcom/metamoji/noteanytime/EditorActivity$79;

    invoke-direct {p2, p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$79;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/ui/PopupCommand;)V

    .line 8702
    invoke-static {p2}, Lcom/metamoji/ns/NsCollaboCommand;->execActionAterReceiveAllData(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method

.method public showSetTextUnitLocationView(Lcom/metamoji/nt/NtNoteController;)V
    .locals 1

    const/4 v0, 0x0

    .line 7851
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/noteanytime/EditorActivity;->showSetTextUnitLocationView(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;)V

    return-void
.end method

.method public showSetTextUnitLocationView(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;)V
    .locals 1

    if-nez p2, :cond_0

    .line 7857
    new-instance p2, Lcom/metamoji/noteanytime/EditorActivity$77;

    invoke-direct {p2, p0}, Lcom/metamoji/noteanytime/EditorActivity$77;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    .line 7874
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->setSetTextLocationViewSettings(Lcom/metamoji/nt/NtSetTextLocation;)V

    .line 7875
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtSetTextLocation;->setTextLocationListener(Lcom/metamoji/nt/NtSetTextLocation$NtSetTextLocationListener;)V

    .line 7878
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_textUnitLocation:Lcom/metamoji/nt/NtSetTextLocation;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity;->setFragmentState(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public showStatusBar()V
    .locals 0

    return-void
.end method

.method public showZoomBar(Z)V
    .locals 0

    return-void
.end method

.method public updateAttentionArea()V
    .locals 7

    .line 9043
    sget v0, Lcom/metamoji/noteanytime/R$id;->attentionArea:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 9044
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v1, :cond_0

    goto :goto_2

    .line 9048
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    .line 9050
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->attentionUserInfoDicForEditor()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 9054
    const-string/jumbo v4, "userName"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9055
    const-string v5, "dcUserId"

    invoke-static {v2, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 9057
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBelongClassStudentWithUserId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9058
    sget v2, Lcom/metamoji/forSchool/ScSchoolConstants;->NB_ATTENTION_BG_COLOR_NOT_BELONG:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 9059
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ATTENTION_GUIDANCE_NOT_BELONG:I

    goto :goto_0

    .line 9061
    :cond_1
    sget v2, Lcom/metamoji/forSchool/ScSchoolConstants;->NB_ATTENTION_BG_COLOR:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 9062
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ATTENTION_GUIDANCE:I

    .line 9064
    :goto_0
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    .line 9066
    const-string v5, "%@"

    const-string v6, "%s"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 9067
    iget-object v5, p0, Lcom/metamoji/noteanytime/EditorActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 9070
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 9071
    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x8

    :goto_1
    if-eq v1, v3, :cond_3

    .line 9074
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public updateButtonStatus()V
    .locals 1

    .line 8219
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->getTinyPallet()Lcom/metamoji/ui/UiTinyPalletViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiTinyPalletViewGroup;->updateDetailView()V

    .line 8220
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHoverSelectorView;->updateBandButtonImage()V

    return-void
.end method

.method public updateDetailAndViewModeButton()V
    .locals 1

    .line 6814
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowEditorBars()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->updateDetailAndViewModeButton(Z)V

    return-void
.end method

.method public updateDocumentEditor(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V
    .locals 1

    .line 1461
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    if-eq v0, p1, :cond_0

    .line 1462
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentEditor:Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    .line 1463
    invoke-static {p1}, Lcom/metamoji/noteanytime/EditorActivity$RetainData;->setDocumentEditor(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    .line 1466
    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_documentID:Ljava/lang/String;

    .line 1467
    invoke-virtual {p1}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->getDriveID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_driveID:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public updateEditLayerInfoPosition()V
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    .line 8790
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 8791
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowEditorBars()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v0, 0x435e0000    # 222.0f

    .line 8792
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 8794
    :cond_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editLayerInfoView:Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/ui/ScEditLayerInfoView;->setRightMargin(I)V

    .line 8795
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->editLayerInfoResetMargin()V

    return-void
.end method

.method public updateJumpLabel()V
    .locals 3

    .line 6230
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_stopUpdateListLabel:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6232
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6236
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6238
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_tab_label:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6239
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 6240
    new-instance v2, Lcom/metamoji/noteanytime/EditorActivity$70;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/noteanytime/EditorActivity$70;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateOfflineEditModeInfoPosition()V
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    .line 8891
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 8892
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowEditorBars()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v0, 0x435e0000    # 222.0f

    .line 8893
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 8895
    :cond_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_offlineEditModeInfoView:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditModeInfoView;->setRightMargin(I)V

    .line 8896
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->offlineEditModeInfoResetMargin()V

    return-void
.end method

.method public updatePageButtonInfoIcon()V
    .locals 2

    .line 6143
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6144
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 6151
    :cond_0
    iget v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageListShown:I

    if-eqz v1, :cond_1

    .line 6152
    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz v0, :cond_1

    .line 6157
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->existUpdatedBooth(Lcom/metamoji/ns/NsCollaboSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 6166
    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageButtonInfoIcon(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updatePageButtonInfoIcon(I)V
    .locals 1

    .line 6171
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_infoIcon:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6175
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updatePageLabel()V
    .locals 4

    .line 5850
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_stopUpdateListLabel:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5852
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5856
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5858
    sget v1, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_tab_label:I

    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5859
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    .line 5860
    new-instance v3, Lcom/metamoji/noteanytime/EditorActivity$67;

    invoke-direct {v3, p0, v0, v1}, Lcom/metamoji/noteanytime/EditorActivity$67;-><init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtNoteController;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updatePageListInfoIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 6182
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageListInfoIcon(Ljava/lang/String;)V

    return-void
.end method

.method public updatePageListInfoIcon(Ljava/lang/String;)V
    .locals 1

    .line 6185
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    if-eqz v0, :cond_0

    .line 6186
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtPageList;->updateInfoIcon(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updatePageListSchoolPageTypeIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 8929
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageListSchoolPageTypeIcon(Ljava/lang/String;)V

    return-void
.end method

.method public updatePageListSchoolPageTypeIcon(Ljava/lang/String;)V
    .locals 1

    .line 8938
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    if-eqz v0, :cond_0

    .line 8939
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtPageList;->updateSchoolPageTypeIcon(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updatePageListTagIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 6206
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageListTagIcon(Ljava/lang/String;)V

    return-void
.end method

.method public updatePageListTagIcon(Ljava/lang/String;)V
    .locals 1

    .line 6209
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    if-eqz v0, :cond_0

    .line 6210
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtPageList;->updateTagIcon(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updatePageNavigationButtons()V
    .locals 6

    .line 5931
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 5932
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5933
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$69;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$69;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    .line 5942
    :cond_0
    iget v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageListShown:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 5944
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5946
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5948
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_change_tab_layout:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 5950
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 5991
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowEditorBars()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_2

    .line 5995
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5997
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6003
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 6005
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 6006
    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v4

    .line 6007
    sget-object v5, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v5}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    .line 6016
    sget v5, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_prev:I

    invoke-virtual {p0, v5}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    if-eqz v4, :cond_6

    move v3, v2

    .line 6018
    :cond_6
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6020
    :cond_7
    sget v3, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_next:I

    invoke-virtual {p0, v3}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_9

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v1

    .line 6022
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6024
    :cond_9
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_add:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 6026
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6028
    :cond_a
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_change_tab_layout:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 6030
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6032
    :cond_b
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_change_tab:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 6034
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 5956
    :cond_c
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 5958
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5962
    :cond_d
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_prev:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 5964
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5966
    :cond_e
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_next:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 5968
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5970
    :cond_f
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_add:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 5972
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5977
    :cond_10
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_jumplist_change_tab_layout:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 5979
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6039
    :cond_11
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 6041
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->pageAddButtonSetting(Lcom/metamoji/nt/NtDocument$EditMode;)V

    :cond_12
    :goto_2
    return-void
.end method

.method public updatePageNavigationButtonsByShowSoftInput(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 8736
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageNavigationButtons()V

    return-void

    .line 8742
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isSoftInputVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8743
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorActivity;->hidePageNavigationButtons()V

    :cond_1
    return-void
.end method

.method public updatePersonalModeInfoPosition()V
    .locals 2

    const/high16 v0, 0x41200000    # 10.0f

    .line 8843
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 8844
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->isShowEditorBars()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v0, 0x434e0000    # 206.0f

    .line 8845
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 8847
    :cond_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_personalModeInfoView:Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    invoke-virtual {v1, v0}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->setRightMargin(I)V

    .line 8848
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->personalModeInfoResetMargin()V

    return-void
.end method

.method public updatePresenterViewingPageIcon()V
    .locals 1

    const/4 v0, 0x0

    .line 6196
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePresenterViewingPageIcon(Ljava/lang/String;)V

    return-void
.end method

.method public updatePresenterViewingPageIcon(Ljava/lang/String;)V
    .locals 1

    .line 6199
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    if-eqz v0, :cond_0

    .line 6200
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/itemlist/NtPageList;->updatePresenterViewingPageIcon(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateScoreInfoViewPosition()V
    .locals 1

    .line 8758
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_scoreInfoView:Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    if-eqz v0, :cond_0

    .line 8759
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScScoreInfoView;->updatePosition()V

    :cond_0
    return-void
.end method

.method public updateSearchTextBarPosition()V
    .locals 3

    .line 3740
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_searchTextBar:Lcom/metamoji/nt/NtSearchTextBar;

    if-eqz v0, :cond_0

    .line 3741
    iget-boolean v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->_actionBarShown:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtSearchTextBar;->updatePosition(ZI)V

    :cond_0
    return-void
.end method

.method public updateSharePallet(Z)V
    .locals 1

    .line 8225
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_hover:Lcom/metamoji/ui/CustomHoverSelectorView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/CustomHoverSelectorView;->updateSharePallet(Z)V

    return-void
.end method

.method public updateWristGuardVisible()V
    .locals 2

    .line 2785
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->m_WristGuardButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2787
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/EditorActivity$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/noteanytime/EditorActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public wristGuardVisibleChange()V
    .locals 2

    .line 6442
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mWristGuard:Lcom/metamoji/ui/WristGuardFrame;

    if-nez v0, :cond_0

    .line 6443
    new-instance v0, Lcom/metamoji/ui/WristGuardFrame;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/WristGuardFrame;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mWristGuard:Lcom/metamoji/ui/WristGuardFrame;

    .line 6444
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/WristGuardFrame;->first(Lcom/metamoji/noteanytime/EditorActivity;)V

    .line 6446
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->mWristGuard:Lcom/metamoji/ui/WristGuardFrame;

    invoke-virtual {v0}, Lcom/metamoji/ui/WristGuardFrame;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6447
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity;->_editorWindow:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->changeToPenModeIfViewModeOrLaserMode()Z

    .line 6449
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->detectable_soft_input:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6451
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity;->mWristGuard:Lcom/metamoji/ui/WristGuardFrame;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/WristGuardFrame;->visibleChange(Landroid/view/View;)V

    return-void
.end method

.method zoomAt(FLandroid/graphics/PointF;)V
    .locals 7

    .line 5566
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5568
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v1

    .line 5569
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v2

    mul-float/2addr v2, p1

    .line 5570
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getMaxZoomScale()F

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 5571
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getMinZoomScale()F

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 5572
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getZoom()F

    move-result v2

    div-float v2, p1, v2

    .line 5573
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v3

    .line 5574
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v4

    .line 5575
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getContentOffset()Landroid/graphics/PointF;

    move-result-object v1

    .line 5576
    invoke-virtual {v3, v1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 5577
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v2

    add-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 5578
    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, p2

    div-float/2addr v5, v2

    add-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/PointF;->y:F

    const/4 p2, 0x1

    .line 5580
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtNoteController;->setZoom(FZ)V

    const/4 p1, 0x0

    .line 5581
    invoke-virtual {v4, v1, p1}, Lcom/metamoji/nt/NtPageController;->setViewportOffset(Landroid/graphics/PointF;Z)V

    :cond_0
    return-void
.end method
