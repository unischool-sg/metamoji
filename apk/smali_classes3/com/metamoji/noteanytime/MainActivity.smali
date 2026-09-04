.class public final Lcom/metamoji/noteanytime/MainActivity;
.super Lcom/metamoji/lib/dialog/task/UtMortalActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/CabinetActivityInterface;
.implements Lcom/metamoji/ui/cabinet/FolderTreeViewFragment$OnFolderClickListener;
.implements Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;
.implements Lcom/metamoji/ui/MenuEventListener;
.implements Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;
.implements Lcom/metamoji/lib/dialog/broker/pickers/IUtFilePickerStoreProvider;
.implements Lcom/metamoji/ui/IPermissionBrokerSource;
.implements Lcom/metamoji/ui/ICameraBrokerSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;,
        Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;,
        Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;,
        Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;,
        Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;,
        Lcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;,
        Lcom/metamoji/noteanytime/MainActivity$FileSelectionAssistant;,
        Lcom/metamoji/noteanytime/MainActivity$CabinetViewMode;
    }
.end annotation


# static fields
.field static final KEY_FolderTreeVisible:Ljava/lang/String; = "FolderTreeVisible"

.field static final KEY_HintHelpVisibleList:Ljava/lang/String; = "HitHelpVisibleList"

.field static final KEY_ObjectForPermissionRequest:Ljava/lang/String; = "ObjectForPermissionRequest"

.field static final KEY_Resumed:Ljava/lang/String; = "IWillBeBack"

.field public static _IsShareViewMode:Z

.field static _boxInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final _docIdToSyncWay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static _reloadAllViewFlg:Z

.field private static _showSyncStatusTimer:Lcom/metamoji/cm/UiTimer;

.field private static m_autoSyncCancelling:Z

.field private static s_alreadySync:Z

.field private static s_future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private static s_logoutWaitView:Lcom/metamoji/nt/cabinet/cabinetWaitView;

.field private static s_service:Ljava/util/concurrent/ScheduledExecutorService;

.field public static static_SyncButtonMode:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

.field private static static_autoSyncCallBack:Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;

.field private static final static_calendarModel:Lcom/metamoji/ui/cabinet/ScCalendarModel;

.field private static static_needRemake_FolderTreeViewFragment:Z

.field private static static_needRemake_MainActivity:Z

.field private static static_needRemake_NoteListViewActivity:Z

.field private static static_needRemake_NoteListViewFragment:Z

.field private static static_needRemake_ShareViewActivity:Z

.field private static static_needRemake_ShareViewFragment:Z

.field private static static_needUpdate:Z

.field private static static_noteListAscending:Z

.field private static static_noteListSortKey:Ljava/lang/String;

.field private static static_searchNothing:Z

.field private static static_searchTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static static_searchTextString:Ljava/lang/String;

.field private static static_searchTitleString:Ljava/lang/String;

.field private static static_startSyncFlg:Z

.field private static static_syncInfoString:Ljava/lang/String;

.field private static static_syncStoppedFlg:Z


# instance fields
.field private ObjectForPermissionRequest:Landroid/os/Parcelable;

.field private _activity:Lcom/metamoji/noteanytime/MainActivity;

.field _attentionText:Landroidx/appcompat/widget/AppCompatTextView;

.field _cabinetCommandManager:Lcom/metamoji/noteanytime/CabinetCommandManager;

.field private _cabinetMenuButton:Landroid/view/View;

.field _commandManager:Lcom/metamoji/nt/NtCommandManager;

.field private final _filePickers:Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

.field private _fxmanager:Lcom/metamoji/ui/flexible/FxManager;

.field private final _multiPermissionsBroker:Lcom/metamoji/ui/UiMultiPermissionsBroker;

.field private final _permissionBroker:Lcom/metamoji/ui/UiPermissionBroker;

.field private _shareViewBtn:Landroid/widget/ImageButton;

.field private final _stillCameraBroker:Lcom/metamoji/ui/UiImageCameraBroker;

.field private final _videoCameraBroker:Lcom/metamoji/ui/UiVideoCameraBroker;

.field public isOpen:Z

.field m_connectivityActionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fget_fxmanager(Lcom/metamoji/noteanytime/MainActivity;)Lcom/metamoji/ui/flexible/FxManager;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdeleteAllTagsFromHiddenNotes(Lcom/metamoji/noteanytime/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->deleteAllTagsFromHiddenNotes(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mexistHiddenNotes(Lcom/metamoji/noteanytime/MainActivity;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->existHiddenNotes(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyFinishEditing(Lcom/metamoji/noteanytime/MainActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->notifyFinishEditing(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNoteListView(Lcom/metamoji/noteanytime/MainActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->showNoteListView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgets_alreadySync()Z
    .locals 1

    sget-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->s_alreadySync:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgets_logoutWaitView()Lcom/metamoji/nt/cabinet/cabinetWaitView;
    .locals 1

    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->s_logoutWaitView:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetstatic_startSyncFlg()Z
    .locals 1

    sget-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_startSyncFlg:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputs_alreadySync(Z)V
    .locals 0

    sput-boolean p0, Lcom/metamoji/noteanytime/MainActivity;->s_alreadySync:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputs_logoutWaitView(Lcom/metamoji/nt/cabinet/cabinetWaitView;)V
    .locals 0

    sput-object p0, Lcom/metamoji/noteanytime/MainActivity;->s_logoutWaitView:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    return-void
.end method

.method static bridge synthetic -$$Nest$smcallAutoSyncCallBack()V
    .locals 0

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->callAutoSyncCallBack()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smchangeBtnSyncCancelImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->changeBtnSyncCancelImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smchangeBtnSyncImageNormal(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->changeBtnSyncImageNormal(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smchangeSyncButtonImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->changeSyncButtonImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcopyFolder(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/noteanytime/MainActivity;->copyFolder(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcopyNote(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/noteanytime/MainActivity;->copyNote(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smcreateDriveCore(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->createDriveCore(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smdeleteFolderAndMoveToTrashNote(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->deleteFolderAndMoveToTrashNote(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smdeleteFolderSub(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;ZLcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/noteanytime/MainActivity;->deleteFolderSub(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;ZLcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smmoveNote(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/noteanytime/MainActivity;->moveNote(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsetAutoSyncCallBack(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V
    .locals 0

    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->setAutoSyncCallBack(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smupdateCabinetState(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->updateCabinetState(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 263
    new-instance v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;-><init>()V

    sput-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_calendarModel:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    const/4 v0, 0x0

    .line 267
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_noteListAscending:Z

    .line 271
    const-string/jumbo v1, "update"

    sput-object v1, Lcom/metamoji/noteanytime/MainActivity;->static_noteListSortKey:Ljava/lang/String;

    const/4 v1, 0x0

    .line 276
    sput-object v1, Lcom/metamoji/noteanytime/MainActivity;->static_searchTitleString:Ljava/lang/String;

    .line 277
    sput-object v1, Lcom/metamoji/noteanytime/MainActivity;->static_searchTextString:Ljava/lang/String;

    .line 278
    sput-object v1, Lcom/metamoji/noteanytime/MainActivity;->static_searchTags:Ljava/util/ArrayList;

    .line 279
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_searchNothing:Z

    .line 280
    sput-object v1, Lcom/metamoji/noteanytime/MainActivity;->static_syncInfoString:Ljava/lang/String;

    .line 281
    sput-object v1, Lcom/metamoji/noteanytime/MainActivity;->_showSyncStatusTimer:Lcom/metamoji/cm/UiTimer;

    .line 282
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_syncStoppedFlg:Z

    .line 283
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_startSyncFlg:Z

    .line 284
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needUpdate:Z

    .line 285
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_MainActivity:Z

    .line 286
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_NoteListViewActivity:Z

    .line 287
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_NoteListViewFragment:Z

    .line 288
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_FolderTreeViewFragment:Z

    .line 289
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_ShareViewActivity:Z

    .line 290
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_ShareViewFragment:Z

    .line 292
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->m_autoSyncCancelling:Z

    .line 329
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->_IsShareViewMode:Z

    .line 340
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    .line 345
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    sput-object v2, Lcom/metamoji/noteanytime/MainActivity;->s_service:Ljava/util/concurrent/ScheduledExecutorService;

    .line 346
    sput-object v1, Lcom/metamoji/noteanytime/MainActivity;->s_future:Ljava/util/concurrent/ScheduledFuture;

    .line 417
    sput-object v1, Lcom/metamoji/noteanytime/MainActivity;->static_autoSyncCallBack:Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;

    .line 441
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->s_alreadySync:Z

    .line 442
    sput-object v1, Lcom/metamoji/noteanytime/MainActivity;->s_logoutWaitView:Lcom/metamoji/nt/cabinet/cabinetWaitView;

    .line 1771
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/metamoji/noteanytime/MainActivity;->_docIdToSyncWay:Ljava/util/Map;

    .line 3700
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->_reloadAllViewFlg:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 215
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;-><init>()V

    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/MainActivity;->isOpen:Z

    const/4 v0, 0x0

    .line 5433
    iput-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    .line 6031
    new-instance v0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_filePickers:Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    .line 6035
    new-instance v0, Lcom/metamoji/ui/UiPermissionBroker;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/UiPermissionBroker;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_permissionBroker:Lcom/metamoji/ui/UiPermissionBroker;

    .line 6036
    new-instance v0, Lcom/metamoji/ui/UiMultiPermissionsBroker;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/UiMultiPermissionsBroker;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_multiPermissionsBroker:Lcom/metamoji/ui/UiMultiPermissionsBroker;

    .line 6041
    new-instance v0, Lcom/metamoji/ui/UiVideoCameraBroker;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/UiVideoCameraBroker;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_videoCameraBroker:Lcom/metamoji/ui/UiVideoCameraBroker;

    .line 6042
    new-instance v0, Lcom/metamoji/ui/UiImageCameraBroker;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/UiImageCameraBroker;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_stillCameraBroker:Lcom/metamoji/ui/UiImageCameraBroker;

    return-void
.end method

.method public static CancelSyncWithDelay()V
    .locals 1

    .line 4598
    invoke-static {}, Lcom/metamoji/sd/SdDriveUpdateChecker;->getInstance()Lcom/metamoji/sd/SdDriveUpdateChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveUpdateChecker;->cancel()V

    return-void
.end method

.method public static Logout(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 4793
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 4794
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$68;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$68;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method static LogoutBackThread(Landroidx/fragment/app/FragmentActivity;)V
    .locals 6

    .line 4804
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4805
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$69;

    invoke-direct {v0}, Lcom/metamoji/noteanytime/MainActivity$69;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 4814
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmUtil;->sendOperationLog()V

    .line 4817
    invoke-static {}, Lcom/metamoji/dvm/DvmUtil;->existsOperationLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4818
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$70;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$70;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 4828
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 4829
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4831
    invoke-static {v1}, Lcom/metamoji/noteanytime/MainActivity;->showDocumentListIfOfflineEditNoteExist(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4839
    :cond_2
    invoke-static {v1, p0}, Lcom/metamoji/noteanytime/MainActivity;->syncMediaUploadForLogout(ZLandroidx/fragment/app/FragmentActivity;)I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    if-eq v3, v0, :cond_3

    if-ne v2, v0, :cond_4

    .line 4844
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$71;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$71;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 4856
    :cond_3
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager2;->syncMediaUploadForLogout()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_5

    .line 4860
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/metamoji/noteanytime/R$string;->Cabinet_Logout_WithoutSync_For_Audio:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-static {p0, v0, v5}, Lcom/metamoji/cm/CmUtils;->modalYesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4862
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    move p0, v4

    :goto_0
    if-nez p0, :cond_5

    :cond_4
    :goto_1
    return-void

    .line 4870
    :cond_5
    invoke-static {}, Lcom/metamoji/media/video/VfVideoFileManager;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/media/video/VfVideoFileManager;->uploadBeforeLogout()Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;

    move-result-object p0

    .line 4871
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity$84;->$SwitchMap$com$metamoji$media$video$VfVideoFileManager$ForegroundUploadResult:[I

    invoke-virtual {p0}, Lcom/metamoji/media/video/VfVideoFileManager$ForegroundUploadResult;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v1, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_6

    goto :goto_2

    .line 4878
    :cond_6
    const-string/jumbo p0, "uploadBeforeLogout: passed."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 4883
    :goto_2
    invoke-static {v4}, Lcom/metamoji/noteanytime/MainActivity;->setKeepSyncCancel(Z)V

    .line 4885
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$72;

    invoke-direct {v0}, Lcom/metamoji/noteanytime/MainActivity$72;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 4874
    :cond_7
    const-string/jumbo p0, "uploadBeforeLogout: interrupted."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static adjustTags(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;)Z
    .locals 9

    .line 2503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2505
    invoke-virtual {p2, p0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getSubFolderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2506
    invoke-static {p0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2507
    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2509
    new-instance v4, Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    invoke-direct {v4}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;-><init>()V

    .line 2510
    sget-object p1, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Folders:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v4, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    const/4 p1, 0x1

    .line 2511
    invoke-virtual {v4, p1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setOnlyFolderTag(Z)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, p2

    .line 2512
    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/sd/SdDriveDocumentManager;->getDocumentIds(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;JJ)Ljava/util/List;

    move-result-object p2

    .line 2515
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2516
    invoke-virtual {v2, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 2517
    const-string v6, "beforeTags = %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2519
    new-instance v5, Lcom/metamoji/noteanytime/MainActivity$36;

    invoke-direct {v5, v2, v4, v0}, Lcom/metamoji/noteanytime/MainActivity$36;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Ljava/util/List;)V

    new-instance v6, Lcom/metamoji/noteanytime/MainActivity$37;

    invoke-direct {v6}, Lcom/metamoji/noteanytime/MainActivity$37;-><init>()V

    invoke-virtual {v2, v4, p0, v5, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->setTagToDocument(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    goto :goto_0

    .line 2536
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    .line 2537
    invoke-virtual {p2}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getAbsPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2538
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2539
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2540
    invoke-virtual {p2}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getAbsPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Lcom/metamoji/noteanytime/MainActivity;->adjustTags(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return p1
.end method

.method public static autoSyncAdditionalDrive(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V
    .locals 0

    .line 3173
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->setAutoSyncCallBack(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    .line 3174
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object p0

    .line 3175
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startAllSharedDriveSyncWithAdditionOnlyOption()Z

    return-void
.end method

.method public static autoSyncAllDrive(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V
    .locals 0

    .line 3151
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->setAutoSyncCallBack(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    .line 3152
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object p0

    .line 3153
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startFullSync()Z

    return-void
.end method

.method public static autoSyncNeedUpdate(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V
    .locals 1

    .line 3229
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->setAutoSyncCallBack(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    .line 3230
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 3231
    invoke-virtual {p0, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startAutoSyncForUpdates(Z)Z

    return-void
.end method

.method public static autoSyncWithDriveId(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V
    .locals 0

    .line 3160
    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->setAutoSyncCallBack(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    .line 3161
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 3163
    invoke-virtual {p1, p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSharedDriveAutoSync(Ljava/lang/String;)Z

    return-void

    .line 3165
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startLocalAutoSync()Z

    return-void
.end method

.method public static calendarMode(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 3

    .line 1120
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_calendarModel:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->isCalendarMode()Z

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_1

    .line 1122
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->setCalendarMode(Z)V

    .line 1123
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    if-eqz v1, :cond_2

    .line 1125
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 1126
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 1128
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 1131
    :cond_1
    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1133
    :goto_0
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 1135
    :cond_2
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_paging_button:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1136
    sget v2, Lcom/metamoji/noteanytime/R$id;->cabinet_calendar_view:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v2, 0x4

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1139
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    .line 1140
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->reloadCalenderData(Z)V

    .line 1141
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1143
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static callAutoSyncCallBack()V
    .locals 2

    .line 424
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_autoSyncCallBack:Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 425
    invoke-interface {v0, v1}, Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;->syncEnd(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 426
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->setAutoSyncCallBack(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    return-void

    .line 430
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 434
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->showDocumentListIfOfflineEditNoteExist(Z)Z

    :cond_1
    return-void
.end method

.method public static canMakeFolder()Z
    .locals 2

    .line 4544
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity$84;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static changeBtnSyncBeforeImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V
    .locals 6

    .line 3583
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->NotMember:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    sput-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_SyncButtonMode:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    .line 3584
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3585
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3586
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->syncbutton_normal_matginleft:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/metamoji/noteanytime/R$dimen;->syncbutton_normal_matgintop:I

    .line 3587
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/metamoji/noteanytime/R$dimen;->syncbutton_normal_matginright:I

    .line 3588
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/metamoji/noteanytime/R$dimen;->syncbutton_normal_matginbottom:I

    .line 3589
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3586
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x42580000    # 54.0f

    .line 3591
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3592
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3594
    invoke-virtual {p1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3595
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_icon_before:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 3597
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_icon_before_d:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static changeBtnSyncCancelImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V
    .locals 6

    .line 3603
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->Cancel:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    sput-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_SyncButtonMode:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    .line 3604
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3605
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3606
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->syncbutton_cancel_matginleft:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/metamoji/noteanytime/R$dimen;->syncbutton_normal_matgintop:I

    .line 3607
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/metamoji/noteanytime/R$dimen;->syncbutton_normal_matginright:I

    .line 3608
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/metamoji/noteanytime/R$dimen;->syncbutton_normal_matginbottom:I

    .line 3609
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3606
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x428a0000    # 69.0f

    .line 3611
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 3612
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3614
    invoke-virtual {p1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3615
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_icon_cancel:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 3617
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$drawable;->cabinet_icon_cancel_d:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static changeBtnSyncImageNormal(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V
    .locals 2

    .line 3530
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$52;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/MainActivity$52;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static changeBtnSyncWaitImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V
    .locals 2

    .line 3558
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$53;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/MainActivity$53;-><init>(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static changeCabinetViewMode(Z)V
    .locals 0

    return-void
.end method

.method public static changeCurrentDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4754
    invoke-static {v0, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromAbsPath(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    .line 4755
    invoke-static {p0, p1, v0}, Lcom/metamoji/noteanytime/MainActivity;->updateCabinetState(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void
.end method

.method private static changeSyncButtonImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V
    .locals 5

    .line 3495
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 3496
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 3498
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isUseSync()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3504
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->toDoSync(Z)Z

    move-result v0

    .line 3508
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    .line 3509
    invoke-virtual {v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveAll()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 3510
    invoke-virtual {v4}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3511
    invoke-virtual {v4, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->needSyncFlag(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_0

    .line 3520
    :cond_3
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->changeBtnSyncImageNormal(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    return-void

    .line 3518
    :cond_4
    :goto_0
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->changeBtnSyncWaitImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3523
    :catch_0
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->changeBtnSyncImageNormal(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    return-void

    .line 3499
    :cond_5
    :goto_1
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->changeBtnSyncBeforeImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static checkCurrentDriveUpdate(Ljava/lang/String;)V
    .locals 1

    .line 4588
    sget-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->_reloadAllViewFlg:Z

    if-eqz v0, :cond_0

    return-void

    .line 4591
    :cond_0
    invoke-static {}, Lcom/metamoji/sd/SdDriveUpdateChecker;->getInstance()Lcom/metamoji/sd/SdDriveUpdateChecker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/SdDriveUpdateChecker;->doCheck(Ljava/lang/String;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private static checkDriveStatus(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;)Z
    .locals 3

    .line 3983
    sget p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_EXPIRED:I

    and-int/2addr p0, p1

    const/4 v0, 0x1

    const-string v1, "%s"

    const-string v2, "%@"

    if-lez p0, :cond_0

    .line 3985
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Error_Message_DriveNoLongerValid_Text:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    return v0

    .line 3987
    :cond_0
    sget p0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_OUT_OF_SPACE:I

    and-int/2addr p0, p1

    if-lez p0, :cond_1

    .line 3989
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Error_Message_DiskQuotaExceed_Text:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static checkDriveUsage(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    .line 4227
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$60;

    invoke-direct {v1, p1, p0}, Lcom/metamoji/noteanytime/MainActivity$60;-><init>(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static checkMyDriveStatus(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 3977
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDriveStatus()I

    move-result v0

    .line 3978
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Sync_Private_Drive_Name:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->checkDriveStatus(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;)Z

    return-void
.end method

.method private static clearSyncStatusTimer()V
    .locals 1

    .line 1688
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_showSyncStatusTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 1689
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 1690
    sput-object v0, Lcom/metamoji/noteanytime/MainActivity;->_showSyncStatusTimer:Lcom/metamoji/cm/UiTimer;

    :cond_0
    return-void
.end method

.method public static clickSyncBtn(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 3241
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_SyncButtonMode:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    sget-object v1, Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;->Cancel:Lcom/metamoji/noteanytime/MainActivity$SyncButtonMode;

    if-ne v0, v1, :cond_0

    .line 3242
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->stopDCSync()V

    .line 3243
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->notifyCancelSync()V

    return-void

    .line 3245
    :cond_0
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_calendarModel:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->isCalendarMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3246
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->reloadCalenderData(Z)V

    .line 3248
    :cond_1
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->notifySyncButtonTouchUp()V

    .line 3249
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->hasShareDrive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3251
    invoke-static {p0, v2}, Lcom/metamoji/noteanytime/MainActivity;->startDCSync(Landroidx/fragment/app/FragmentActivity;Z)Z

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 3255
    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->startDCSync(Landroidx/fragment/app/FragmentActivity;Z)Z

    return-void
.end method

.method private collectHiddenDocumentIds(Lcom/metamoji/dvm/fw/bean/DvmFolderBean;Lcom/metamoji/dvm/fw/DvmDocumentManager;Ljava/util/HashSet;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dvm/fw/bean/DvmFolderBean;",
            "Lcom/metamoji/dvm/fw/DvmDocumentManager;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 1286
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getAbsPath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p2, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getSubFolderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 1290
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    .line 1291
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/metamoji/noteanytime/MainActivity;->collectHiddenDocumentIds(Lcom/metamoji/dvm/fw/bean/DvmFolderBean;Lcom/metamoji/dvm/fw/DvmDocumentManager;Ljava/util/HashSet;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_4
    if-nez p1, :cond_5

    .line 1297
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getAbsPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v1

    .line 1299
    :goto_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    new-instance p4, Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    invoke-direct {p4}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;-><init>()V

    .line 1303
    sget-object v1, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->Folders:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {p4, v1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    .line 1308
    :try_start_0
    invoke-virtual {p2, p1, p4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentCount(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)J

    move-result-wide v1

    .line 1309
    invoke-virtual {p2, p1, p4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    .line 1311
    invoke-virtual {p4, v4}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setOnlyFolderTag(Z)V

    .line 1312
    invoke-virtual {p2, p1, p4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentCount(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_6

    .line 1316
    invoke-virtual {p2, p1, p4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)Ljava/util/List;

    move-result-object p1

    .line 1318
    invoke-interface {v3, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1319
    invoke-virtual {p3, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return v4

    :catch_0
    return v0
.end method

.method public static contextClickSyncBtn(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 0

    .line 3295
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->syncMenu(Landroidx/fragment/app/FragmentActivity;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static copyFolder(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 8

    .line 2360
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    .line 2361
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_driveID:Ljava/lang/String;

    .line 2362
    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v1

    .line 2363
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2364
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 2365
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2367
    :cond_0
    iget-object p0, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_absPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v3

    new-instance v6, Lcom/metamoji/noteanytime/MainActivity$32;

    invoke-direct {v6, p2, p3, p4}, Lcom/metamoji/noteanytime/MainActivity$32;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    new-instance v7, Lcom/metamoji/noteanytime/MainActivity$33;

    invoke-direct {v7}, Lcom/metamoji/noteanytime/MainActivity$33;-><init>()V

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->copyFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method

.method private static copyNote(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 11

    .line 2568
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_driveID:Ljava/lang/String;

    .line 2569
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v4

    .line 2572
    iget-object v1, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_absPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/dvm/DvmUtil;->existsFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2573
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/metamoji/dvm/DvmUtil;->existsFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2579
    :cond_0
    new-instance v8, Lcom/metamoji/cm/mutable/MutableBoolean;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/metamoji/cm/mutable/MutableBoolean;-><init>(Z)V

    .line 2585
    new-instance v6, Lcom/metamoji/noteanytime/MainActivity$38;

    invoke-direct {v6}, Lcom/metamoji/noteanytime/MainActivity$38;-><init>()V

    .line 2592
    new-instance v7, Lcom/metamoji/noteanytime/MainActivity$39;

    invoke-direct {v7, v8}, Lcom/metamoji/noteanytime/MainActivity$39;-><init>(Lcom/metamoji/cm/mutable/MutableBoolean;)V

    .line 2602
    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v3

    .line 2603
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 2604
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 2607
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$40;

    move-object v2, p0

    move-object v5, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/metamoji/noteanytime/MainActivity$40;-><init>(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/cm/mutable/MutableBoolean;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void

    .line 2574
    :cond_1
    :goto_0
    new-instance p0, Lcom/metamoji/sd/SdError;

    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->ParentFolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p0, p1}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdErrorAnalize(Lcom/metamoji/sd/SdError;)V

    return-void
.end method

.method private static createCabinetNodeViewFragment(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;
    .locals 2

    .line 518
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->getCabinetNodeViewFragmentName(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 522
    :cond_0
    const-class v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 523
    new-instance p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;-><init>()V

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static createDrive(Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    .line 4077
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 4078
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4079
    iget v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4082
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->CreateSharedDrive:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4088
    invoke-static {}, Lcom/metamoji/ns/NsCollaboUtils;->jumpAddOnStoreToAnytimeService()V

    return-void

    .line 4090
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isUseSync()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4092
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4093
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 4094
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJID_IS_USED_CLOUD_DLG_TITLE:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4095
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJID_IS_USED_CLOUD_DLG_MSG:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4096
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJID_IS_USED_CLOUD_DLG_USED_BTN:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/metamoji/noteanytime/MainActivity$57;

    invoke-direct {v3, p0}, Lcom/metamoji/noteanytime/MainActivity$57;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4105
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJID_IS_USED_CLOUD_DLG_NONUSED_BTN:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 4106
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4108
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;)Z

    return-void

    .line 4111
    :cond_2
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->createDriveCore(Landroidx/fragment/app/FragmentActivity;)V

    return-void

    .line 4081
    :cond_3
    :goto_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJID_CABINET_SD_MSG_NOT_REGIST_USER_FOR_USE:I

    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showCabinetUserRegistrationMessage(I)V

    return-void
.end method

.method private static createDriveCore(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 3997
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;-><init>(Ljava/lang/String;)V

    .line 3998
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$55;

    invoke-direct {v1, v0}, Lcom/metamoji/noteanytime/MainActivity$55;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 4028
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "DriveNameDialog"

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static createNewFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 2

    .line 2022
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    .line 2023
    new-instance v0, Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/metamoji/ui/dialog/CreateFolder;-><init>(Ljava/util/List;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    .line 2024
    new-instance p1, Lcom/metamoji/noteanytime/MainActivity$25;

    invoke-direct {p1}, Lcom/metamoji/noteanytime/MainActivity$25;-><init>()V

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/CreateFolder;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 2037
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "CreateFolder"

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/dialog/CreateFolder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private deleteAllTagsFromHiddenNotes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1398
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 1399
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 1401
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity;->collectHiddenDocumentIds(Lcom/metamoji/dvm/fw/bean/DvmFolderBean;Lcom/metamoji/dvm/fw/DvmDocumentManager;Ljava/util/HashSet;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1406
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1409
    new-instance v6, Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1410
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 1413
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1414
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1415
    const-string v4, "beforeTags = %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1417
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5, v4}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->setTagToDocument(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object v4

    .line 1418
    invoke-virtual {v4}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1419
    invoke-virtual {v0, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1420
    const-string v5, "afterTags = %s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x1

    goto :goto_0

    .line 1424
    :cond_3
    invoke-static {v4}, Lcom/metamoji/ui/cabinet/CabinetUtils;->dvmErrorAnalize(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return-void

    :cond_4
    if-eqz v4, :cond_5

    .line 1433
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$23;

    invoke-direct {v1, p0, p2, v3, p1}, Lcom/metamoji/noteanytime/MainActivity$23;-><init>(Lcom/metamoji/noteanytime/MainActivity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public static deleteDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 2

    .line 4420
    sget v0, Lcom/metamoji/noteanytime/R$string;->CabinetSdMsg_DeleteDriveConfirm:I

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$63;

    invoke-direct {v1, p1, p0, p2}, Lcom/metamoji/noteanytime/MainActivity$63;-><init>(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1, p0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public static deleteFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 6

    .line 2096
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2097
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 2098
    new-array v2, v2, [Ljava/lang/CharSequence;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_DeleteNote_Trash:I

    .line 2099
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_Move_Parent_Folder:I

    .line 2100
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    .line 2101
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 2102
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDescendantNoteCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 2104
    sget v3, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Folder_Delete_Message:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2105
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/noteanytime/MainActivity$26;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 2131
    :cond_0
    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_Delete_Folder_Only:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2132
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/metamoji/noteanytime/MainActivity$27;

    invoke-direct {v3, p1, p0, p2}, Lcom/metamoji/noteanytime/MainActivity$27;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2146
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_NO:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2148
    :goto_0
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2149
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private static deleteFolderAndMoveToTrashNote(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 6

    .line 2156
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2157
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 2158
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v2

    .line 2159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2160
    invoke-static {p0, v3, p1}, Lcom/metamoji/noteanytime/MainActivity;->getDocIdInFolderTreeRecursive(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2161
    invoke-static {v4, v2, v3, v5}, Lcom/metamoji/ui/cabinet/CabinetUtils;->prepareDeleteNoteMessage(ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2162
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/metamoji/noteanytime/MainActivity$28;

    invoke-direct {v3, p1, p0, p2}, Lcom/metamoji/noteanytime/MainActivity$28;-><init>(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2176
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_NO:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 2177
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2178
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 2179
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private static deleteFolderSub(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;ZLcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 8

    .line 2185
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 2186
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    .line 2188
    invoke-virtual {p1, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2189
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setCurrentFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 2190
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    .line 2194
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2195
    invoke-static {p0, p2, p1}, Lcom/metamoji/noteanytime/MainActivity;->getDocIdInFolderTreeRecursive(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 2197
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/metamoji/dvm/DvmUtil;->moveDocumentsToTrash(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    .line 2201
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2202
    invoke-static {p0, p2, p1}, Lcom/metamoji/noteanytime/MainActivity;->getDocIdInFolderTreeRecursive(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 2203
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2204
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v3

    .line 2206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2207
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2208
    invoke-virtual {v3, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v6

    .line 2209
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 2210
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 2211
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2213
    :cond_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    invoke-virtual {v3, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2216
    const-string v7, "beforeTags = %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2218
    invoke-virtual {v3, v5, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->setTagToDocument(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object v6

    .line 2219
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2220
    invoke-virtual {v3, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 2221
    const-string v6, "afterTags = %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2224
    :cond_3
    invoke-static {v6}, Lcom/metamoji/ui/cabinet/CabinetUtils;->dvmErrorAnalize(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return-void

    .line 2229
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_5

    .line 2231
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p2

    .line 2232
    invoke-static {v2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 2233
    const-string v3, "[ %s ] : [ %s ] \u2192 [ %s ] : %s"

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v5, p2, v2, v4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x19c

    .line 2234
    invoke-static {v2, p2}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 2238
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/metamoji/dvm/DvmUtil;->deleteFolder(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 2239
    invoke-virtual {p2}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2240
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/CabinetUtils;->dvmErrorAnalize(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return-void

    .line 2245
    :cond_6
    const-string p2, "[ %s ] : %s"

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1a2

    .line 2246
    invoke-static {p2, p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 2250
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/noteanytime/MainActivity$29;

    invoke-direct {p2, p0, v1, p3}, Lcom/metamoji/noteanytime/MainActivity$29;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2263
    const-string p1, "[MainActivity] :: ERROR deleteFolderAndMoveToTrashNote:"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static disabledSyncButton(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 3471
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_refresh_button:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3477
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3478
    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->changeBtnSyncImageNormal(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    .line 3480
    sget-boolean p0, Lcom/metamoji/noteanytime/MainActivity;->_IsShareViewMode:Z

    if-eqz p0, :cond_3

    .line 3481
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object p0

    .line 3482
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3483
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_2
    const/16 p0, 0x8

    .line 3485
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static displayParticipationCode(Ljava/lang/String;)V
    .locals 1

    .line 5621
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$75;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/MainActivity$75;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->isAllowedToParticipateBox(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;)V

    return-void
.end method

.method static displayParticipationCodeInner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 5652
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$76;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/MainActivity$76;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static doAutoSyncDrive(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;)V
    .locals 1

    .line 3183
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$49;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/noteanytime/MainActivity$49;-><init>(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;)V

    .line 3217
    sget-boolean p0, Lcom/metamoji/noteanytime/MainActivity;->static_startSyncFlg:Z

    if-eqz p0, :cond_0

    .line 3219
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->setAutoSyncCallBack(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 3221
    invoke-interface {v0, p0}, Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;->syncEnd(Z)Z

    return-void
.end method

.method public static doImportFile(Landroidx/fragment/app/FragmentActivity;Ljava/io/File;)V
    .locals 2

    .line 3035
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/ui/ImportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3036
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3037
    invoke-static {p1, p0}, Lcom/metamoji/cm/CmUtils;->getUriFromFileForImport(Ljava/io/File;Landroidx/fragment/app/FragmentActivity;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3038
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static driveDisplaySettings(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 8

    .line 4473
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4474
    sget p0, Lcom/metamoji/noteanytime/R$string;->CABINET_VISIBLE_SELECT_TITLE:I

    invoke-static {p0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->showOfflineMsg(I)V

    return-void

    .line 4477
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4480
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 4481
    invoke-virtual {v1, p1, v2, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDrivesByGroupId(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v3

    .line 4482
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 4483
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v7

    .line 4484
    invoke-virtual {v7, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->needSyncFlag(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4486
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-eqz v5, :cond_3

    .line 4491
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 4493
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 4495
    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_Msg_NotSync_Of_DisplaySettings_Target:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4496
    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_NowSync_Btn:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/metamoji/noteanytime/MainActivity$64;

    invoke-direct {v3}, Lcom/metamoji/noteanytime/MainActivity$64;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4502
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4503
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 4504
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 4505
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "driveDisplaySettings"

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 4509
    :cond_3
    new-instance v1, Lcom/metamoji/cm/mutable/Mutable;

    invoke-direct {v1, p1}, Lcom/metamoji/cm/mutable/Mutable;-><init>(Ljava/lang/Object;)V

    .line 4510
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    .line 4511
    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 4512
    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$65;

    invoke-direct {v2, v1, p1, p0}, Lcom/metamoji/noteanytime/MainActivity$65;-><init>(Lcom/metamoji/cm/mutable/Mutable;Lcom/metamoji/cm/CmTaskManager;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p1, v2, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static dumpNoteForDebug(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteItemInfo;)V
    .locals 2

    .line 5424
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteItemInfo;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 5425
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteItemInfo;->getDocId()Ljava/lang/String;

    move-result-object v1

    .line 5426
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteItemInfo;->getDocTitle()Ljava/lang/String;

    move-result-object p1

    .line 5427
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5429
    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->dumpNoteForDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static endV2migrationSync()V
    .locals 1

    .line 450
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    return-void
.end method

.method private static execPendingIntent()V
    .locals 2

    .line 1599
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1600
    instance-of v1, v0, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v1, :cond_0

    .line 1601
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/EntryActivity;->execPendingIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private existHiddenNotes(Ljava/lang/String;)Z
    .locals 4

    .line 1339
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1344
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    .line 1345
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1347
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->collectHiddenDocumentIds(Lcom/metamoji/dvm/fw/bean/DvmFolderBean;Lcom/metamoji/dvm/fw/DvmDocumentManager;Ljava/util/HashSet;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1361
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1362
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {p1, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1363
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 1366
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public static exportAtDoc(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteItemInfo;)V
    .locals 2

    .line 5414
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteItemInfo;->getDriveId()Ljava/lang/String;

    move-result-object v0

    .line 5415
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteItemInfo;->getDocId()Ljava/lang/String;

    move-result-object v1

    .line 5416
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteItemInfo;->getDocTitle()Ljava/lang/String;

    move-result-object p1

    .line 5417
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5419
    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->exportNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static exportNotes(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0

    .line 5404
    invoke-static {p1}, Lcom/metamoji/ui/BulkImportActivity;->doExport(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method

.method public static exportNotes(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteItemsInfo;)V
    .locals 0

    .line 5408
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteItemsInfo;->getDriveId()Ljava/lang/String;

    move-result-object p0

    .line 5409
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/NoteItemsInfo;->getDocIds()Ljava/util/ArrayList;

    move-result-object p1

    .line 5410
    invoke-static {p1, p0}, Lcom/metamoji/ui/BulkImportActivity;->doExport(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static finishRemake(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1098
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1099
    sput-boolean v1, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_NoteListViewFragment:Z

    return-void

    .line 1100
    :cond_0
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    if-eqz v0, :cond_1

    .line 1101
    sput-boolean v1, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_FolderTreeViewFragment:Z

    return-void

    .line 1102
    :cond_1
    instance-of p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;

    if-eqz p0, :cond_2

    .line 1103
    sput-boolean v1, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_ShareViewFragment:Z

    :cond_2
    return-void
.end method

.method public static forceButtonChange(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 3626
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3630
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_refresh_button:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 3637
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3638
    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->changeSyncButtonImage(Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;)V

    .line 3640
    sget-boolean p0, Lcom/metamoji/noteanytime/MainActivity;->_IsShareViewMode:Z

    if-eqz p0, :cond_3

    .line 3641
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object p0

    .line 3642
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 3643
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_2
    const/16 p0, 0x8

    .line 3645
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static forceShowSyncStatusView(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 5

    .line 1635
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->clearSyncStatusTimer()V

    .line 1637
    sget v0, Lcom/metamoji/noteanytime/R$id;->progressIndicator:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1639
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1642
    :cond_0
    sput-object p1, Lcom/metamoji/noteanytime/MainActivity;->static_syncInfoString:Ljava/lang/String;

    .line 1643
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->showSyncStatusViewControl(Landroidx/fragment/app/FragmentActivity;)V

    .line 1645
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_syncstatus_text:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1647
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1648
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1649
    sget v3, Lcom/metamoji/noteanytime/R$dimen;->syncstatusview_normal_leftmargin:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/metamoji/noteanytime/R$dimen;->syncstatusview_normal_topmargin:I

    .line 1650
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1649
    invoke-virtual {v2, v3, p0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 p0, 0x10

    .line 1653
    iput p0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1654
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1656
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private static getCabinetNodeViewFragmentName(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 508
    :cond_0
    const-class p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDocIdInFolderTreeRecursive(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            ")V"
        }
    .end annotation

    .line 2270
    :try_start_0
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2271
    invoke-static {p2, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDocumentIDs(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2272
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 2273
    invoke-static {p0, p1, v0}, Lcom/metamoji/noteanytime/MainActivity;->getDocIdInFolderTreeRecursive(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    :try_end_0
    .catch Lcom/metamoji/cm/CmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 2276
    const-string p1, "[MainActivity] :: ERROR getDocIdInFolderTreeRecursive:"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static getHayabusaDocExt()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 2977
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ".atdoc"

    aput-object v3, v1, v2

    const-string v2, ".btshare"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2978
    new-array v2, v3, [Ljava/lang/String;

    const/4 v2, 0x3

    .line 2979
    new-array v2, v2, [Ljava/lang/String;

    .line 2980
    new-array v0, v0, [Ljava/lang/String;

    return-object v1
.end method

.method public static getNoteListAscending()Z
    .locals 1

    .line 350
    sget-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_noteListAscending:Z

    return v0
.end method

.method public static getNoteListSortKey()Ljava/lang/String;
    .locals 1

    .line 358
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_noteListSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;
    .locals 1

    .line 1833
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 1834
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-eqz v0, :cond_0

    .line 1835
    check-cast p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSearchNothings()Z
    .locals 1

    .line 378
    sget-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_searchNothing:Z

    return v0
.end method

.method public static getSearchTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 374
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_searchTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getSearchTextString()Ljava/lang/String;
    .locals 1

    .line 370
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_searchTextString:Ljava/lang/String;

    return-object v0
.end method

.method public static getSearchTitleString()Ljava/lang/String;
    .locals 1

    .line 366
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_searchTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public static getStartSyncFlg()Z
    .locals 1

    .line 408
    sget-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_startSyncFlg:Z

    return v0
.end method

.method public static getSyncInfoString()Ljava/lang/String;
    .locals 1

    .line 386
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_syncInfoString:Ljava/lang/String;

    return-object v0
.end method

.method public static getSyncStatusMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method static getVisibleDriveIdsForMediaUpload()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5378
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5379
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 5380
    invoke-virtual {v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 5381
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isHidden()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5382
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static handleInputParticipationCode(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 5679
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5681
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$77;

    invoke-direct {v0}, Lcom/metamoji/noteanytime/MainActivity$77;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 5690
    :cond_0
    new-instance p0, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;-><init>()V

    .line 5691
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$78;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/MainActivity$78;-><init>(Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 5720
    const-string v0, "CabinetInputBoxParticipationCodeDialog"

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/CabinetInputBoxParticipationCodeDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public static handleLogout(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 4777
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4778
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 4782
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Msg_Logout:I

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$67;

    invoke-direct {v2, p0}, Lcom/metamoji/noteanytime/MainActivity$67;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static hasDriveAllowToParticipateBoxCache(Ljava/lang/String;)Z
    .locals 1

    .line 5817
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5818
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 5819
    const-string v0, "joinCode"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "joinEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hideNoteListSyncInfo(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1820
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_docIdToSyncWay:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1824
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1828
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->hideNoteListSyncInfo(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static hideNoteListSyncInfo(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 1802
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1804
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1805
    invoke-static {p0, v2}, Lcom/metamoji/noteanytime/MainActivity;->hideNoteListSyncInfo(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static hideNoteListView(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1150
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 1153
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 1154
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1155
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public static hideSyncStatusView(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1708
    sget-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_syncStoppedFlg:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_syncInfoString:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1712
    sput-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_syncInfoString:Ljava/lang/String;

    .line 1714
    sget v0, Lcom/metamoji/noteanytime/R$id;->SyncStatusView:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1715
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p0

    const/4 v1, 0x4

    if-eqz p0, :cond_1

    if-eqz v0, :cond_2

    .line 1717
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 1721
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static importAudioFile(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 0

    .line 2942
    instance-of p0, p0, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz p0, :cond_0

    .line 2944
    new-instance p0, Lcom/metamoji/noteanytime/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/metamoji/noteanytime/MainActivity$$ExternalSyntheticLambda1;-><init>()V

    const-string p1, "audio/*"

    invoke-static {p1, p0}, Lcom/metamoji/ui/task/GetFileTask;->getReadOnlyFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    :cond_0
    return-void
.end method

.method public static importFromAlbum(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 5396
    invoke-static {}, Lcom/metamoji/un/image/direction/UnImageUnitExt;->importImageFromAlbum()V

    return-void
.end method

.method public static importFromCamera()V
    .locals 0

    .line 5392
    invoke-static {}, Lcom/metamoji/un/image/direction/UnImageUnitExt;->importImageFromCamera()V

    return-void
.end method

.method public static importHayabusaDoc(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 0

    .line 3002
    instance-of p0, p0, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz p0, :cond_0

    .line 3003
    invoke-static {}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getHayabusaDocExt()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/task/OpenTypedFileTask;->create([Ljava/lang/String;)Lcom/metamoji/ui/task/OpenTypedFileTask;

    move-result-object p0

    new-instance p1, Lcom/metamoji/noteanytime/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/metamoji/noteanytime/MainActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/task/OpenTypedFileTask;->openFile(Lkotlin/jvm/functions/Function2;)V

    :cond_0
    return-void
.end method

.method public static importNotes(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 0

    .line 5400
    invoke-static {p0, p1}, Lcom/metamoji/ui/BulkImportActivity;->doImport(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    return-void
.end method

.method public static importPdfFile(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 0

    .line 2903
    instance-of p0, p0, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz p0, :cond_0

    .line 2905
    new-instance p0, Lcom/metamoji/noteanytime/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/metamoji/noteanytime/MainActivity$$ExternalSyntheticLambda0;-><init>()V

    const-string p1, "application/pdf"

    invoke-static {p1, p0}, Lcom/metamoji/ui/task/GetFileTask;->getReadOnlyFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    :cond_0
    return-void
.end method

.method public static importShareSeedData(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 6

    .line 6048
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 6050
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$83;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/noteanytime/MainActivity$83;-><init>(Lcom/metamoji/cm/CmTaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    invoke-virtual {v1, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static importWebDAV(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 3046
    invoke-static {}, Lcom/metamoji/ex/webdav/WebDAVManager;->getWebDAVInfo()Lcom/metamoji/ex/webdav/WebDAVInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3047
    new-instance v0, Lcom/metamoji/ui/dialog/AddWebDav;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/AddWebDav;-><init>()V

    .line 3048
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$46;

    invoke-direct {v1}, Lcom/metamoji/noteanytime/MainActivity$46;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/AddWebDav;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 3059
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "AddWevDav"

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/ui/dialog/AddWebDav;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 3063
    :cond_0
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->selectWebDavServer(Landroidx/fragment/app/FragmentActivity;)Z

    return-void
.end method

.method public static isAllowedToParticipateBox(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;)V
    .locals 2

    .line 5751
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->hasDriveAllowToParticipateBoxCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 5753
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->joinEnabledFormCache(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;->onCompletion(Z)V

    :cond_0
    return-void

    .line 5757
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$80;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/MainActivity$80;-><init>(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IAllowedToParticipateBoxCompletionAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static isCalendarMode()Z
    .locals 1

    .line 1115
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_calendarModel:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->isCalendarMode()Z

    move-result v0

    return v0
.end method

.method public static isEnableInviteButton(Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;)V
    .locals 2

    .line 5549
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$74;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$74;-><init>(Lcom/metamoji/noteanytime/MainActivity$IEnableInvideButtonCompletionAction;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static isKeepSyncCancel()Z
    .locals 1

    .line 3669
    invoke-static {}, Lcom/metamoji/Config;->isKeepSyncCancelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3670
    sget-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->m_autoSyncCancelling:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isLocalDrive(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 2343
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isNeedRemake(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    .line 1087
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-eqz v0, :cond_0

    .line 1088
    sget-boolean p0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_NoteListViewFragment:Z

    return p0

    .line 1089
    :cond_0
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    if-eqz v0, :cond_1

    .line 1090
    sget-boolean p0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_FolderTreeViewFragment:Z

    return p0

    .line 1091
    :cond_1
    instance-of p0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment;

    if-eqz p0, :cond_2

    .line 1092
    sget-boolean p0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_ShareViewFragment:Z

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static isSameDrive(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2347
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->isLocalDrive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2348
    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->isLocalDrive(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2350
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static joinCodeFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5837
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5838
    const-string p0, ""

    return-object p0

    .line 5841
    :cond_0
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 5842
    const-string v0, "joinCode"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static joinEnabledFormCache(Ljava/lang/String;)Z
    .locals 1

    .line 5828
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 5832
    :cond_0
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 5833
    const-string v0, "joinEnabled"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$importAudioFile$1(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    .line 2946
    invoke-static {p0, p1}, Lcom/metamoji/ui/ImportActivity;->StartImport(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$importHayabusaDoc$2(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    .line 3004
    invoke-static {p0, p1}, Lcom/metamoji/ui/ImportActivity;->StartImport(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)V

    .line 3005
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic lambda$importPdfFile$0(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    .line 2907
    invoke-static {p0, p1}, Lcom/metamoji/ui/ImportActivity;->StartImport(Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static leaveDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 2

    .line 4178
    sget v0, Lcom/metamoji/noteanytime/R$string;->CabinetSdMsg_RemoveFromMemberConfirm:I

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$59;

    invoke-direct {v1, p1, p0, p2}, Lcom/metamoji/noteanytime/MainActivity$59;-><init>(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1, p0}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public static liftSearchCondition(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1108
    invoke-static {v1, v1, v1, v0}, Lcom/metamoji/noteanytime/MainActivity;->setSearchCondition(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1109
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 1110
    invoke-static {p0, v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->updateCabinetState(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void
.end method

.method public static longClickSyncBtn(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 0

    .line 3285
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->syncMenu(Landroidx/fragment/app/FragmentActivity;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static makeClassBox(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 4034
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4035
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CABINET_SD_MENU_MAKE_CLASS_BOX:I

    invoke-static {p0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->showOfflineMsg(I)V

    return-void

    .line 4040
    :cond_0
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;-><init>(Ljava/lang/String;)V

    .line 4041
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$56;

    invoke-direct {v1, v0}, Lcom/metamoji/noteanytime/MainActivity$56;-><init>(Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 4071
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "ClassBoxNameDialog"

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static moveFolder(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 2390
    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/noteanytime/MainActivity;->moveFolder(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;I)V

    return-void
.end method

.method public static moveFolder(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;I)V
    .locals 15

    move/from16 v0, p4

    .line 2398
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2404
    iget-object v1, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_driveID:Ljava/lang/String;

    .line 2405
    invoke-static {v1}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v6

    .line 2407
    iget-object v1, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_absPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 2408
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 2410
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2434
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v0

    .line 2435
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2436
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 2437
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v10, v0

    goto :goto_3

    .line 2414
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getParent()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    .line 2418
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v3

    .line 2419
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 2420
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-ne v0, v1, :cond_4

    .line 2422
    invoke-virtual {v8}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2423
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2425
    :cond_4
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2426
    invoke-virtual {v8}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2429
    :cond_5
    invoke-virtual {v8}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object v10, v3

    .line 2441
    :goto_3
    new-instance v13, Lcom/metamoji/noteanytime/MainActivity$34;

    move-object v8, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object v0, v13

    invoke-direct/range {v0 .. v8}, Lcom/metamoji/noteanytime/MainActivity$34;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdDriveDocumentManager;Landroid/content/res/Resources;Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;)V

    new-instance v14, Lcom/metamoji/noteanytime/MainActivity$35;

    invoke-direct {v14, v7}, Lcom/metamoji/noteanytime/MainActivity$35;-><init>(Landroid/content/res/Resources;)V

    const/4 v12, 0x0

    move-object v9, v5

    move-object v8, v6

    invoke-virtual/range {v8 .. v14}, Lcom/metamoji/sd/SdDriveDocumentManager;->moveFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    return-void
.end method

.method public static moveFolderForContextmenu(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 4

    .line 2282
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 2281
    invoke-static {v2, v3, v0, v1, p0}, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->setData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static moveNote(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 8

    .line 2666
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_driveID:Ljava/lang/String;

    .line 2667
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    .line 2670
    iget-object v2, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_absPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/metamoji/dvm/DvmUtil;->existsFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2671
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/dvm/DvmUtil;->existsFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 2676
    :cond_0
    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->isSameDrive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2681
    :cond_1
    invoke-static {v1}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    .line 2684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2685
    iget-object v3, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_objectIDs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2686
    invoke-virtual {v0, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 2687
    const-string v6, "beforeTags = %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2689
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/metamoji/noteanytime/MainActivity$41;

    invoke-direct {v6, v0, v4, v2}, Lcom/metamoji/noteanytime/MainActivity$41;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    new-instance v7, Lcom/metamoji/noteanytime/MainActivity$42;

    invoke-direct {v7}, Lcom/metamoji/noteanytime/MainActivity$42;-><init>()V

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->setTagToDocument(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V

    goto :goto_0

    .line 2712
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_absPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 2713
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getAbsPath()Ljava/lang/String;

    move-result-object p1

    .line 2714
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, p0, p1, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[ %s ] : [ %s ] \u2192 [ %s ] : %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x19c

    .line 2715
    invoke-static {p1, p0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->logOperation(ILjava/lang/String;)V

    .line 2718
    invoke-static {}, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->clearData()V

    .line 2719
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance p1, Lcom/metamoji/noteanytime/MainActivity$43;

    invoke-direct {p1, p2, p3}, Lcom/metamoji/noteanytime/MainActivity$43;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    .line 2672
    :cond_3
    :goto_1
    new-instance p0, Lcom/metamoji/sd/SdError;

    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->ParentFolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p0, p1}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->sdErrorAnalize(Lcom/metamoji/sd/SdError;)V

    return-void
.end method

.method static needsMediaUpload()Z
    .locals 3

    .line 5101
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->SharedInstance()Lcom/metamoji/media/MediaUploadManager;

    move-result-object v0

    .line 5102
    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 5105
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    .line 5109
    invoke-virtual {v0, v1}, Lcom/metamoji/media/MediaUploadManager;->tentativeRegistCompletedTickets(Z)Ljava/util/List;

    move-result-object v0

    .line 5110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static notifyCancelSync()V
    .locals 1

    .line 3659
    invoke-static {}, Lcom/metamoji/Config;->isKeepSyncCancelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3660
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->setKeepSyncCancel(Z)V

    :cond_0
    return-void
.end method

.method private notifyFinishEditing(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    .line 908
    :try_start_0
    const-string p1, "Logout"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 909
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 913
    :cond_0
    sget-object p1, Lcom/metamoji/noteanytime/MainActivity;->static_calendarModel:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->isCalendarMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 915
    const-string p1, "docId"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 916
    const-string v0, "driveId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    const-string v1, "docTags"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 918
    invoke-static {p0, v0, p1, p2, p0}, Lcom/metamoji/noteanytime/MainActivity;->openFolderContainsDocument(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    .line 922
    :cond_1
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->clearData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 926
    const-string p2, "Ignorable: notifyFinishEditing error"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static notifySyncButtonTouchUp()V
    .locals 1

    const/4 v0, 0x0

    .line 3654
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->setKeepSyncCancel(Z)V

    return-void
.end method

.method public static openFolderContainsDocument(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_d

    .line 4678
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 4681
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 4682
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    .line 4684
    invoke-static {p1, p2}, Lcom/metamoji/dvm/DvmUtil;->isCopiedShare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 4686
    invoke-static {p1}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_5

    .line 4691
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v4

    .line 4692
    const-string v5, "MMJCopiedShare"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v4

    if-nez p3, :cond_2

    .line 4696
    invoke-virtual {v3, p2}, Lcom/metamoji/sd/SdDriveDocumentManager;->getTagNameListForDocument(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    .line 4699
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/sd/SdUtils;->isSameDrive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    .line 4700
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ALL_NOTE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v1, v0, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v4, :cond_8

    .line 4706
    sget-object p2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->COPIED_SHARE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v1, p2, :cond_9

    goto :goto_2

    .line 4708
    :cond_4
    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->TEMPLATE:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v1, v0, :cond_5

    .line 4710
    invoke-static {p1, p2}, Lcom/metamoji/dvm/DvmUtil;->isTemplate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    :goto_0
    xor-int/lit8 v6, p2, 0x1

    goto :goto_3

    .line 4711
    :cond_5
    sget-object p2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->RECYCLE_BIN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v1, p2, :cond_8

    sget-object p2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v1, p2, :cond_8

    sget-object p2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v1, p2, :cond_8

    sget-object p2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v1, p2, :cond_8

    sget-object p2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v1, p2, :cond_6

    goto :goto_2

    .line 4718
    :cond_6
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getCurrentFolder()Ljava/util/List;

    move-result-object p2

    .line 4719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4720
    invoke-static {p2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getSubFolderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 4722
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    .line 4723
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getFolderName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4727
    :cond_7
    invoke-static {p2, v0, p3}, Lcom/metamoji/sd/SdUtils;->exsitsDocumentOnFolder(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    goto :goto_0

    :cond_8
    :goto_2
    move v6, v5

    :cond_9
    :goto_3
    if-eqz v6, :cond_c

    if-eqz v2, :cond_b

    if-eqz v4, :cond_a

    .line 4739
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsCopiedShare()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    goto :goto_4

    .line 4741
    :cond_a
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createAsLocalRoot()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    goto :goto_4

    .line 4744
    :cond_b
    invoke-virtual {v3, p3}, Lcom/metamoji/sd/SdDriveDocumentManager;->getAbsPathMatchTags(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->createFromTags(Ljava/util/List;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    goto :goto_4

    :cond_c
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_d

    .line 4748
    invoke-static {p0, p1, p4}, Lcom/metamoji/noteanytime/MainActivity;->updateCabinetState(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    :cond_d
    :goto_5
    return-void
.end method

.method public static pasteForContextmenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 3

    .line 2293
    invoke-static {}, Lcom/metamoji/nt/cabinet/NtCabinetClipboard;->getData()Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;

    move-result-object v0

    const/4 v1, 0x1

    .line 2295
    iget v2, v0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_type:I

    if-ne v1, v2, :cond_2

    .line 2297
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p2

    .line 2298
    iget-object v1, v0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_driveID:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/metamoji/noteanytime/MainActivity;->isSameDrive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2299
    invoke-static {p2}, Lcom/metamoji/noteanytime/MainActivity;->isLocalDrive(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    .line 2300
    sget p0, Lcom/metamoji/noteanytime/R$string;->CabinetSdFolderCopyAndMoveFromDrive_Msg:I

    invoke-static {p0, p2, p1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 2302
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->CabinetSdFolderCopyAndMoveToDrive_Msg:I

    invoke-static {p0, p2, p1}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 2307
    :cond_1
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$30;

    invoke-direct {v1, v0, p1, p0, p3}, Lcom/metamoji/noteanytime/MainActivity$30;-><init>(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    invoke-static {p2, v1}, Lcom/metamoji/noteanytime/MainActivity;->doAutoSyncDrive(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;)V

    return-void

    :cond_2
    const/4 p3, 0x2

    .line 2320
    iget v1, v0, Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;->_type:I

    if-ne p3, v1, :cond_3

    .line 2321
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$31;

    invoke-direct {v1, v0, p1, p0, p2}, Lcom/metamoji/noteanytime/MainActivity$31;-><init>(Lcom/metamoji/nt/cabinet/NtCabinetClipboard$Data;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-static {p3, v1}, Lcom/metamoji/noteanytime/MainActivity;->doAutoSyncDrive(Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IDoAutoSyncDriveBlock;)V

    :cond_3
    return-void
.end method

.method public static reOrderFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;",
            ")V"
        }
    .end annotation

    .line 2554
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 2555
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->reorderFolderIn(Ljava/util/List;Ljava/util/List;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object p1

    .line 2556
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2557
    invoke-static {p3, p0, p4}, Lcom/metamoji/noteanytime/MainActivity;->updateCabinetState(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    return-void

    .line 2559
    :cond_0
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->dvmErrorAnalize(Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;)V

    return-void
.end method

.method public static refinementString(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1028
    new-instance v0, Lcom/metamoji/ui/dialog/SearchString;

    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->isSharedDrive()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/SearchString;-><init>(Z)V

    .line 1029
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$18;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$18;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/SearchString;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 1039
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "SearchString"

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/ui/dialog/SearchString;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 3412
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$51;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$51;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static remakeIfNeeded(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 1062
    instance-of v0, p0, Lcom/metamoji/noteanytime/MainActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1063
    sget-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_MainActivity:Z

    if-eqz v0, :cond_1

    .line 1064
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$19;

    invoke-direct {v2, p0}, Lcom/metamoji/noteanytime/MainActivity$19;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1071
    sput-boolean v1, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_MainActivity:Z

    return-void

    .line 1073
    :cond_0
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;

    if-eqz v0, :cond_1

    .line 1074
    sget-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_ShareViewActivity:Z

    if-eqz v0, :cond_1

    .line 1075
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$20;

    invoke-direct {v2, p0}, Lcom/metamoji/noteanytime/MainActivity$20;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1081
    sput-boolean v1, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_ShareViewActivity:Z

    :cond_1
    return-void
.end method

.method public static renameClassBox(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 7

    .line 4280
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    .line 4281
    invoke-virtual {v4, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4282
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v2, v0

    .line 4284
    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;

    invoke-direct {v1, v2}, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;-><init>(Ljava/lang/String;)V

    .line 4285
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$61;

    move-object v5, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/noteanytime/MainActivity$61;-><init>(Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/dvm/DvmDriveManager;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 4344
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "ClassBoxNameDialog"

    invoke-virtual {v1, p0, p1}, Lcom/metamoji/ui/cabinet/user/management/ClassBoxNameDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static renameDrive(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 7

    .line 4351
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    .line 4352
    invoke-virtual {v4, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4353
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v2, v0

    .line 4355
    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;

    invoke-direct {v1, v2}, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;-><init>(Ljava/lang/String;)V

    .line 4356
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$62;

    move-object v5, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/noteanytime/MainActivity$62;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/dvm/DvmDriveManager;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 4414
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "DriveNameDialog"

    invoke-virtual {v1, p0, p1}, Lcom/metamoji/ui/cabinet/user/management/DriveNameDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static renameFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 2

    .line 2041
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    .line 2042
    new-instance v0, Lcom/metamoji/ui/dialog/CreateFolder;

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTags()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, v1}, Lcom/metamoji/ui/dialog/CreateFolder;-><init>(Ljava/util/List;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    .line 2043
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "RenameFolder"

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/dialog/CreateFolder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static requestRemake(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const/4 v0, 0x1

    .line 1049
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_MainActivity:Z

    .line 1050
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1051
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_NoteListViewActivity:Z

    .line 1053
    :cond_0
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_NoteListViewFragment:Z

    .line 1054
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_FolderTreeViewFragment:Z

    return-void
.end method

.method public static resetPagingButton()V
    .locals 1

    .line 398
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->resetPagingButton()V

    :cond_0
    return-void
.end method

.method static searchShareNote(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5257
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v1

    .line 5259
    invoke-virtual {v1, p1, p0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDsFromRoom(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 5260
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5262
    invoke-virtual {v1, p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5263
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->isTrashed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5264
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static selectNoteFromWebDav(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ex/webdav/WebDAVInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 3079
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/ImportActivity;->availableFileExtensions()Ljava/util/ArrayList;

    move-result-object v0

    .line 3081
    new-instance v1, Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sget v2, Lcom/metamoji/noteanytime/R$string;->Import_WebDAV:I

    const/4 v3, 0x1

    invoke-direct {v1, p1, v3, v0, v2}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;-><init>(Lcom/metamoji/ex/webdav/WebDAVInfo;I[Ljava/lang/String;I)V

    .line 3082
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$47;

    invoke-direct {v0, p1, v1}, Lcom/metamoji/noteanytime/MainActivity$47;-><init>(Lcom/metamoji/ex/webdav/WebDAVInfo;Lcom/metamoji/ui/dialog/WebDavSelectDoc;)V

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 3115
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "WebDavFolderSelect"

    invoke-virtual {v1, p0, p1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static selectWebDavServer(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 2

    .line 3122
    new-instance v0, Lcom/metamoji/ui/dialog/WebDavSelectServer;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/WebDavSelectServer;-><init>()V

    .line 3123
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$48;

    invoke-direct {v1, v0}, Lcom/metamoji/noteanytime/MainActivity$48;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectServer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 3143
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "WevDabServerSelect"

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setAllowToParticipateBox(Ljava/lang/String;Z)V
    .locals 2

    .line 5724
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$79;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/MainActivity$79;-><init>(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method private static setAutoSyncCallBack(Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;)V
    .locals 0

    .line 420
    sput-object p0, Lcom/metamoji/noteanytime/MainActivity;->static_autoSyncCallBack:Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;

    return-void
.end method

.method private setCabinetViewMode()V
    .locals 0

    return-void
.end method

.method public static setDeletedNoteCount(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 0

    .line 1737
    invoke-static {p1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->setDeletedNoteCount(I)V

    return-void
.end method

.method static setDriveAllowToParticipateBoxCache(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 5857
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    monitor-enter v0

    .line 5858
    :try_start_0
    sget-object v1, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5859
    sget-object v1, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 5860
    const-string v1, "joinCode"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5861
    const-string p1, "joinEnabled"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5863
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5864
    const-string v2, "joinCode"

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5865
    const-string p1, "joinEnabled"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5866
    sget-object p1, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5868
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static setJoinEnabledToCache(Ljava/lang/String;Z)V
    .locals 2

    .line 5846
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5847
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    monitor-enter v0

    .line 5848
    :try_start_0
    sget-object v1, Lcom/metamoji/noteanytime/MainActivity;->_boxInfoCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 5849
    const-string v1, "joinEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5850
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 5852
    :cond_0
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/metamoji/noteanytime/MainActivity;->setDriveAllowToParticipateBoxCache(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setKeepSyncCancel(Z)V
    .locals 0

    .line 3665
    sput-boolean p0, Lcom/metamoji/noteanytime/MainActivity;->m_autoSyncCancelling:Z

    return-void
.end method

.method public static setNoteListAscending(Z)V
    .locals 0

    .line 354
    sput-boolean p0, Lcom/metamoji/noteanytime/MainActivity;->static_noteListAscending:Z

    return-void
.end method

.method public static setNoteListSortKey(Ljava/lang/String;)V
    .locals 0

    .line 362
    sput-object p0, Lcom/metamoji/noteanytime/MainActivity;->static_noteListSortKey:Ljava/lang/String;

    return-void
.end method

.method public static setSearchCondition(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 390
    sput-object p1, Lcom/metamoji/noteanytime/MainActivity;->static_searchTitleString:Ljava/lang/String;

    .line 391
    sput-object p2, Lcom/metamoji/noteanytime/MainActivity;->static_searchTextString:Ljava/lang/String;

    .line 392
    sput-object p0, Lcom/metamoji/noteanytime/MainActivity;->static_searchTags:Ljava/util/ArrayList;

    .line 393
    sput-boolean p3, Lcom/metamoji/noteanytime/MainActivity;->static_searchNothing:Z

    .line 394
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->resetPagingButton()V

    return-void
.end method

.method public static setSyncInfoString(Ljava/lang/String;)V
    .locals 0

    .line 382
    sput-object p0, Lcom/metamoji/noteanytime/MainActivity;->static_syncInfoString:Ljava/lang/String;

    return-void
.end method

.method public static sharedDriveSyncStartWithToDisplayOnlyOption(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 3392
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    .line 3395
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startAllSharedDriveSyncWithToDisplayOnlyOption()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3399
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->disabledSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    .line 3401
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz v0, :cond_0

    .line 3402
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Sync_User:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->forceShowSyncStatusView(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showActionMenu(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 989
    sget v0, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/CustomMenuView;

    .line 990
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    .line 991
    invoke-static {v0, p3, v1}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 992
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 993
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 994
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 995
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 996
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 998
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method private showAlertIfHiddenNoteExist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1245
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1250
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$22;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/noteanytime/MainActivity$22;-><init>(Lcom/metamoji/noteanytime/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1271
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static showBoxParticipationCodeDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5671
    new-instance v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;-><init>()V

    .line 5672
    iput-object p0, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->participationCode:Ljava/lang/String;

    .line 5673
    iput-object p1, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->driveId:Ljava/lang/String;

    .line 5674
    iput-object p2, v0, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->driveName:Ljava/lang/String;

    .line 5675
    const-string p0, "CabinetBoxParticipationCodeDialog"

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/CabinetBoxParticipationCodeDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method static showDocumentListIfOfflineEditNoteExist(Z)Z
    .locals 9

    .line 5876
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5880
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5881
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    .line 5886
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/dialog/UiDialog;->Exists()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5891
    :cond_2
    new-instance v0, Lcom/metamoji/dvm/DvmDocumentSearchConditions;

    invoke-direct {v0}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;-><init>()V

    .line 5892
    sget-object v2, Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;->All:Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;

    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSearchDomainMask(Lcom/metamoji/dvm/DvmDocumentSearchConditions$SearchDomainMask;)V

    .line 5895
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5896
    const-string v3, "application/vnd.metamoji.model.atshare"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5897
    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setMimeType(Ljava/util/List;)V

    .line 5899
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5902
    new-instance v3, Lcom/metamoji/sd/SdSortCondition;

    sget-object v4, Lcom/metamoji/sd/SdSortCondition;->DOCUMENT_SEARCH_SORT_PRIORITY:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/metamoji/sd/SdSortCondition;-><init>(Ljava/lang/String;Z)V

    .line 5903
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5905
    new-instance v3, Lcom/metamoji/sd/SdSortCondition;

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListSortKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListAscending()Z

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/metamoji/sd/SdSortCondition;-><init>(Ljava/lang/String;Z)V

    .line 5906
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5907
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListSortKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5909
    new-instance v3, Lcom/metamoji/sd/SdSortCondition;

    const-string/jumbo v4, "update"

    invoke-direct {v3, v4, v1}, Lcom/metamoji/sd/SdSortCondition;-><init>(Ljava/lang/String;Z)V

    .line 5910
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5912
    :cond_3
    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setSort(Ljava/util/List;)V

    .line 5915
    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setOnlyFolderTag(Z)V

    const/4 v2, 0x1

    .line 5916
    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDocumentSearchConditions;->setHasOfflineLayer(Z)V

    .line 5919
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v3

    .line 5922
    :try_start_0
    invoke-virtual {v3, v4, v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIDs(Ljava/util/List;Lcom/metamoji/dvm/DvmDocumentSearchConditions;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_7

    .line 5928
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 5930
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5931
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5932
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 5933
    const-string v7, "driveId"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5934
    const-string v7, "documentId"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5935
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_5

    .line 5940
    new-instance v4, Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {v4, v1, v2}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    .line 5944
    :cond_5
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 5945
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v5, Lcom/metamoji/noteanytime/MainActivity$82;

    invoke-direct {v5, p0, v4, v3}, Lcom/metamoji/noteanytime/MainActivity$82;-><init>(ZLcom/metamoji/cm/ResetableEvent;Ljava/util/List;)V

    invoke-virtual {v0, v5}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    if-eqz p0, :cond_6

    .line 5974
    :try_start_1
    invoke-virtual {v4}, Lcom/metamoji/cm/ResetableEvent;->reset()V

    .line 5975
    invoke-virtual {v4}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 5977
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 5981
    :cond_6
    :goto_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    move v1, v2

    :cond_7
    return v1
.end method

.method public static showDriveMember(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4118
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 4119
    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v0

    .line 4121
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$58;

    invoke-direct {v2, p1, v0, p2, p0}, Lcom/metamoji/noteanytime/MainActivity$58;-><init>(Ljava/lang/String;Lcom/metamoji/dvm/fw/bean/DvmDriveBean;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    const/4 p0, 0x0

    invoke-virtual {v1, v2, p0, p0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public static showNoteListSyncInfo(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1779
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->_docIdToSyncWay:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-eqz p0, :cond_1

    .line 1784
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->showNoteListSyncInfo(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static showNoteListSyncInfo(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    .line 1754
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1756
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1757
    invoke-static {p0, v2, p2}, Lcom/metamoji/noteanytime/MainActivity;->showNoteListSyncInfo(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private showNoteListView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 5

    .line 937
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_tree_frame:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 938
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 939
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez v1, :cond_1

    .line 941
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->updateCabinetNodeViewFragment(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    .line 942
    sget-object p1, Lcom/metamoji/noteanytime/MainActivity;->static_calendarModel:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->isCalendarMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 943
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->hideNoteListView(Landroidx/fragment/app/FragmentActivity;)V

    :cond_1
    const/4 p1, 0x1

    if-ne v1, v3, :cond_2

    move v0, p1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 946
    :goto_1
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/MainActivity;->isOpen:Z

    .line 947
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_list_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-ne v1, v3, :cond_3

    goto :goto_2

    :cond_3
    move p1, v2

    .line 948
    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    .line 949
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 950
    sget p1, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 951
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    .line 952
    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public static showSortListDialog(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 2

    .line 1163
    new-instance v0, Lcom/metamoji/ui/dialog/SortList;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/SortList;-><init>()V

    .line 1164
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$21;

    invoke-direct {v1, p1, p2}, Lcom/metamoji/noteanytime/MainActivity$21;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/SortList;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 1178
    const-string p1, "SortList"

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/dialog/SortList;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showSyncStatusView(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1

    .line 1619
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    .line 1620
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessingAsAutomatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->hideSyncStatusView(Landroidx/fragment/app/FragmentActivity;)V

    return-void

    .line 1625
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->forceShowSyncStatusView(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method private static showSyncStatusViewControl(Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    .line 1666
    sget v0, Lcom/metamoji/noteanytime/R$id;->SyncStatusView:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1667
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_1

    .line 1668
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_1

    .line 1669
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 1672
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_1

    .line 1677
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xbb8

    .line 1678
    invoke-virtual {p0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1679
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static showSystemOption(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1190
    new-instance v0, Lcom/metamoji/ui/dialog/SystemOption;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/SystemOption;-><init>()V

    .line 1191
    const-string v1, "SystemOption"

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/ui/dialog/SystemOption;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static simpleAutoChangeSync()Z
    .locals 3

    .line 4625
    sget-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->_reloadAllViewFlg:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4629
    :cond_0
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_autoSyncCallBack:Lcom/metamoji/noteanytime/MainActivity$IAutoSyncCallBackBlock;

    if-eqz v0, :cond_1

    return v1

    .line 4632
    :cond_1
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    .line 4634
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4638
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startAutoSyncForChanges()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4639
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4640
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    .line 4641
    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4642
    invoke-static {v1}, Lcom/metamoji/noteanytime/MainActivity;->showDocumentListIfOfflineEditNoteExist(Z)Z

    :cond_3
    return v0
.end method

.method public static simpleChangedDriveAutoSyncWithDelay()V
    .locals 5

    .line 4606
    :try_start_0
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->s_future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4607
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 4609
    :cond_0
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->s_service:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$66;

    invoke-direct {v1}, Lcom/metamoji/noteanytime/MainActivity$66;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5dc

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/metamoji/noteanytime/MainActivity;->s_future:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4616
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static simpleDriveAutoSync(Ljava/lang/String;)Z
    .locals 2

    .line 4658
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    .line 4659
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->canSync()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4662
    :cond_0
    invoke-virtual {v0, p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSharedDriveAutoSync(Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static startDCSync(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 1

    const/4 v0, 0x1

    .line 3308
    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->startDCSync(Landroidx/fragment/app/FragmentActivity;Z)Z

    move-result p0

    return p0
.end method

.method public static startDCSync(Landroidx/fragment/app/FragmentActivity;Z)Z
    .locals 5

    .line 3315
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3319
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startFullSync()Z

    move-result p1

    goto/16 :goto_2

    .line 3321
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    .line 3322
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 3323
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v2, v3, :cond_1

    .line 3333
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3334
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startAllSharedDriveSyncWithGroupIdOption(Ljava/util/ArrayList;)Z

    move-result p1

    goto/16 :goto_2

    .line 3335
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v2, v3, :cond_8

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_YEAR:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 3340
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v2, v3, :cond_6

    const/4 p1, 0x1

    .line 3342
    invoke-virtual {v1, p1, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveGroupAllWithOrderAscending(ZZ)Ljava/util/List;

    move-result-object p1

    .line 3343
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_5

    .line 3344
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v1, :cond_5

    .line 3345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3346
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;

    .line 3348
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 3350
    :cond_3
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmDriveGroupBean;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3352
    :cond_4
    invoke-virtual {v0, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startAllSharedDriveSyncWithGroupIdOption(Ljava/util/ArrayList;)Z

    move-result p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    .line 3354
    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->isSharedDrive()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3357
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3358
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->sharedDriveSyncStartWithDrives(Ljava/util/ArrayList;)Z

    move-result p1

    goto :goto_2

    .line 3361
    :cond_7
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startLocalSync()Z

    move-result p1

    goto :goto_2

    .line 3337
    :cond_8
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3338
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3339
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startAllSharedDriveSyncWithGroupIdOption(Ljava/util/ArrayList;)Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_9

    .line 3366
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->disabledSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    .line 3368
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz v0, :cond_9

    .line 3369
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Sync_User:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->forceShowSyncStatusView(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    :cond_9
    return p1
.end method

.method public static startV2migrationSync()V
    .locals 1

    .line 446
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    return-void
.end method

.method public static stopDCSync()V
    .locals 1

    .line 3380
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    .line 3381
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->stopSync()V

    return-void
.end method

.method public static syncEventHandler_BeforeProcess(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 0

    .line 3817
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->disabledSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public static syncEventHandler_LibraryItemsEnd(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 0

    return-void
.end method

.method public static syncEventHandler_LibraryItemsStart(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 1

    .line 3802
    instance-of p1, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz p1, :cond_0

    .line 3803
    move-object p1, p0

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Sync_Library_Item:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5a

    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->getSyncStatusMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;->showSyncStatusView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static syncEventHandler_ProcessEnd(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 2

    .line 3740
    sget-object p1, Lcom/metamoji/noteanytime/MainActivity;->_docIdToSyncWay:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 3744
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->onMigration()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3746
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->onV2LocalDataDL()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3748
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->endV2LocalDataDL()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3751
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->cancelMigration()V

    move v1, v0

    .line 3754
    :goto_0
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->endV2migrationSync()V

    goto :goto_1

    .line 3757
    :cond_1
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->endMigration()V

    :cond_2
    move v1, v0

    .line 3761
    :goto_1
    sget-boolean p1, Lcom/metamoji/noteanytime/MainActivity;->_reloadAllViewFlg:Z

    if-eqz p1, :cond_3

    .line 3764
    :try_start_0
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->reloadAllView(Landroidx/fragment/app/FragmentActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3767
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 3771
    :cond_3
    :goto_2
    instance-of p1, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz p1, :cond_4

    .line 3772
    move-object p1, p0

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    invoke-interface {p1}, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;->hideSyncStatusView()V

    .line 3775
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->forceButtonChange(Landroidx/fragment/app/FragmentActivity;)V

    .line 3778
    :cond_4
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->CancelSyncWithDelay()V

    .line 3781
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->checkMyDriveStatus(Landroidx/fragment/app/FragmentActivity;)V

    .line 3784
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->callAutoSyncCallBack()V

    .line 3786
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->_reloadAllViewFlg:Z

    .line 3787
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_syncStoppedFlg:Z

    .line 3788
    sput-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_startSyncFlg:Z

    const/4 p0, 0x0

    .line 3789
    sput-object p0, Lcom/metamoji/noteanytime/MainActivity;->static_syncInfoString:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 3792
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startLocalAutoSync()Z

    .line 3794
    :cond_5
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->execPendingIntent()V

    return-void
.end method

.method public static syncEventHandler_ProcessNotStarted(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 0

    const/4 p0, 0x1

    .line 3824
    sput-boolean p0, Lcom/metamoji/noteanytime/MainActivity;->static_syncStoppedFlg:Z

    return-void
.end method

.method public static syncEventHandler_ProcessStart(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 1

    const/4 p1, 0x1

    .line 3706
    sput-boolean p1, Lcom/metamoji/noteanytime/MainActivity;->static_startSyncFlg:Z

    .line 3707
    sput-boolean p1, Lcom/metamoji/noteanytime/MainActivity;->_reloadAllViewFlg:Z

    .line 3710
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->onV2LocalDataDL()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3711
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->startV2migrationSync()V

    .line 3715
    :cond_0
    instance-of p1, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz p1, :cond_1

    .line 3717
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    .line 3719
    move-object p1, p0

    check-cast p1, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Sync_Start:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;->showSyncStatusView(Ljava/lang/String;)V

    .line 3723
    :cond_1
    sget-object p0, Lcom/metamoji/noteanytime/MainActivity;->_docIdToSyncWay:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 3726
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object p0

    new-instance p1, Lcom/metamoji/noteanytime/MainActivity$54;

    invoke-direct {p1}, Lcom/metamoji/noteanytime/MainActivity$54;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/media/MediaUploadManager2;->syncMediaUploadForSync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static syncEventHandler_Sd_DrivesEnd(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 2

    .line 3883
    instance-of p1, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz p1, :cond_1

    .line 3884
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p1

    .line 3885
    invoke-virtual {p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveAll()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 3886
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getStatus()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3887
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getStatus()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/metamoji/noteanytime/MainActivity;->checkDriveStatus(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method public static syncEventHandler_Sd_NotesEnd(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 0

    .line 3910
    instance-of p0, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    return-void
.end method

.method public static syncEventHandler_Sd_NotesStart(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 1

    .line 3899
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz v0, :cond_0

    .line 3901
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->getExParams()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v0, "entityIds"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 3902
    check-cast p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;->showNoteListSyncInfo(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method public static syncEventHandler_Sd_OneDriveEnd(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 2

    .line 3861
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz v0, :cond_0

    .line 3863
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->getExParams()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string/jumbo v1, "single"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3864
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->getExParams()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v1, "driveId"

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3867
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3868
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    .line 3869
    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3871
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3872
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/metamoji/noteanytime/MainActivity;->checkDriveStatus(Landroidx/fragment/app/FragmentActivity;ILjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static syncEventHandler_Sd_OneDriveStart(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 3

    .line 3851
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz v0, :cond_0

    .line 3853
    check-cast p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    sget v0, Lcom/metamoji/noteanytime/R$string;->CabinetSd_DriveSyincStart:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%@"

    const-string v2, "%s"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->getExParams()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v1, "driveName"

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;->showSyncStatusView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static syncEventHandler_Sd_OneNoteConflict(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 1

    .line 3949
    instance-of p0, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz p0, :cond_0

    .line 3950
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->getExParams()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    const-string v0, "driveId"

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3951
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->getExParams()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    const-string v0, "entityId"

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3952
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->getExParams()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    const-string p1, "newEntityId"

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static syncEventHandler_Sd_OneNoteEnd(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 1

    .line 3939
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz v0, :cond_0

    .line 3940
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->getExParams()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v0, "entityId"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3941
    check-cast p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    invoke-interface {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;->hideNoteListSyncInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static syncEventHandler_Sd_OneNoteStart(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 2

    .line 3918
    instance-of v0, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz v0, :cond_3

    .line 3919
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->getExParams()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3922
    const-string/jumbo v1, "upload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3923
    move-object v0, p0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Sync_Event_Upload_Note:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;->showSyncStatusView(Ljava/lang/String;)V

    goto :goto_0

    .line 3924
    :cond_0
    const-string v1, "download"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3925
    move-object v0, p0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Sync_Event_Download_Note:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;->showSyncStatusView(Ljava/lang/String;)V

    goto :goto_0

    .line 3926
    :cond_1
    const-string v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3927
    move-object v0, p0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_Sync_Note:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;->showSyncStatusView(Ljava/lang/String;)V

    .line 3930
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->getExParams()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v0, "entityId"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3931
    check-cast p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;->showNoteListSyncInfo(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public static syncEventHandler_Sd_TagOrderTooLong(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 2

    .line 3960
    instance-of p0, p0, Lcom/metamoji/ui/cabinet/CabinetActivityInterface;

    if-eqz p0, :cond_0

    .line 3961
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;->getExParams()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    const-string p1, "driveId"

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3962
    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getDriveName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3963
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_TAGFOLDER_NAME_TOO_LONG_ERROR_MSG:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%@"

    const-string v1, "%s"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static syncEventHandler_StopErrorPaymentRequired(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;)V
    .locals 0

    .line 3836
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Out_Of_Storage_Space:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Ljava/lang/String;)Z

    return-void
.end method

.method static syncMediaUpload(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .line 5125
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->SharedInstance()Lcom/metamoji/media/MediaUploadManager;

    move-result-object v0

    .line 5126
    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5127
    invoke-virtual {v0, v2}, Lcom/metamoji/media/MediaUploadManager;->uploadFiles(Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 5131
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5132
    invoke-virtual {v0, v2}, Lcom/metamoji/media/MediaUploadManager;->uploadTitles(Z)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    .line 5138
    invoke-virtual {v0, v1}, Lcom/metamoji/media/MediaUploadManager;->tentativeRegistCompletedTickets(Z)Ljava/util/List;

    move-result-object v3

    .line 5139
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 5141
    invoke-static {v3, p0}, Lcom/metamoji/noteanytime/MainActivity;->syncMediaUploadForShareNote(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 5147
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5148
    invoke-static {v3}, Lcom/metamoji/noteanytime/MainActivity;->syncMediaUploadForNote(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    .line 5154
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    const/4 p0, 0x2

    return p0

    .line 5159
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_7

    .line 5161
    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles()Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    .line 5164
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles()Z

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    const/4 p0, 0x3

    return p0

    .line 5172
    :cond_7
    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager;->needsUploadFiles()Z

    move-result p0

    if-eqz p0, :cond_8

    return v2

    .line 5175
    :cond_8
    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager;->needsUploadTitles()Z

    move-result p0

    if-eqz p0, :cond_9

    return v2

    :cond_9
    return v1
.end method

.method static syncMediaUploadForLogout(ZLandroidx/fragment/app/FragmentActivity;)I
    .locals 6

    .line 4982
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->needsMediaUpload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4996
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->syncMediaUpload(Ljava/util/List;)I

    move-result v2

    .line 5012
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-eqz p0, :cond_4

    .line 5023
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Logout_WithoutSync_For_Audio:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {p1, p0, v0}, Lcom/metamoji/cm/CmUtils;->modalYesNoDialog(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5025
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    move p0, v1

    :goto_0
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_1
    const/4 p1, 0x2

    if-ne v2, p1, :cond_4

    .line 5032
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 5033
    new-instance v4, Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {v4, v1, v3}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    .line 5034
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 5035
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v5, Lcom/metamoji/noteanytime/MainActivity$73;

    invoke-direct {v5, p0, p1, v4, v0}, Lcom/metamoji/noteanytime/MainActivity$73;-><init>(ZLcom/metamoji/cm/CmContext;Lcom/metamoji/cm/ResetableEvent;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 5078
    :try_start_1
    invoke-virtual {v4}, Lcom/metamoji/cm/ResetableEvent;->reset()V

    .line 5079
    invoke-virtual {v4}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 5081
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 5084
    :goto_1
    const-string/jumbo p0, "result"

    invoke-virtual {p1, p0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5085
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 5087
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    :cond_3
    move v1, v2

    :goto_2
    return v1

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method static syncMediaUploadForNote(Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 5277
    const-string/jumbo v1, "syncMediaUploadForNote : save error"

    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->SharedInstance()Lcom/metamoji/media/MediaUploadManager;

    move-result-object v2

    const/4 v3, 0x1

    .line 5278
    invoke-virtual {v2, v3}, Lcom/metamoji/media/MediaUploadManager;->tentativeRegistCompletedTickets(Z)Ljava/util/List;

    move-result-object v4

    .line 5279
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    return v3

    .line 5284
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5286
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 5287
    const-string/jumbo v9, "ticket"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 5288
    const-string/jumbo v10, "roomId"

    invoke-static {v8, v10}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_1

    goto :goto_0

    .line 5295
    :cond_1
    const-string v10, "docId"

    invoke-static {v8, v10}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_2

    goto :goto_0

    .line 5300
    :cond_2
    const-string v11, "driveId"

    invoke-static {v8, v11}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 5303
    invoke-static {v11, v10}, Lcom/metamoji/dvm/DvmUtil;->isInTrashOrDeleted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_0

    .line 5307
    :cond_3
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v11

    const/4 v12, 0x0

    .line 5310
    invoke-virtual {v11, v10, v12}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    move-result-object v12

    .line 5311
    invoke-virtual {v12}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->succeeded()Z

    move-result v12

    if-nez v12, :cond_4

    :goto_1
    move v7, v3

    goto :goto_0

    .line 5317
    :cond_4
    invoke-virtual {v11, v10}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->openEditorForQuickEdit(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object v12

    .line 5318
    invoke-virtual {v12}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_1

    .line 5322
    :cond_5
    invoke-virtual {v12}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v12

    .line 5323
    sget-object v13, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    .line 5326
    :try_start_0
    const-string/jumbo v14, "title"

    invoke-interface {v12, v14}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 5327
    invoke-interface {v12}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v14

    invoke-interface {v14}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v14

    .line 5328
    new-instance v15, Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    sget-object v3, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-direct {v15, v14, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;-><init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V

    .line 5330
    invoke-virtual {v15, v9}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasTicket(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5332
    const-string v3, "recordId"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5333
    const-string/jumbo v14, "url"

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5334
    invoke-virtual {v15, v9, v3, v6, v8}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->notifyUploadingFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5338
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5339
    sget-object v13, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    .line 5340
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5343
    :cond_6
    invoke-virtual {v2, v14, v8, v5}, Lcom/metamoji/media/MediaUploadManager;->notifyUploadingFileToSoundUnit(Lcom/metamoji/df/model/IModel;Ljava/util/Map;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5344
    sget-object v13, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    .line 5345
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5353
    :cond_7
    :goto_2
    invoke-virtual {v11, v12, v13}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object v3

    .line 5354
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result v3

    if-nez v3, :cond_9

    .line 5356
    :goto_3
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 5351
    :catch_0
    :try_start_1
    const-string/jumbo v3, "syncMediaUploadForNote : error"

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5353
    invoke-virtual {v11, v12, v13}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object v3

    .line 5354
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    const/4 v7, 0x1

    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 5353
    :goto_5
    invoke-virtual {v11, v12, v13}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-result-object v2

    .line 5354
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->succeeded()Z

    move-result v2

    if-nez v2, :cond_a

    .line 5356
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 5358
    :cond_a
    throw v0

    .line 5362
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5363
    invoke-virtual {v2, v1}, Lcom/metamoji/media/MediaUploadManager;->setRecordIdNotificationCompletedToUploadData(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const/4 v1, 0x1

    .line 5367
    invoke-virtual {v2, v1}, Lcom/metamoji/media/MediaUploadManager;->tentativeRegistCompletedTickets(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v7, :cond_e

    .line 5368
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    move v3, v6

    goto :goto_8

    :cond_e
    :goto_7
    move v3, v1

    :goto_8
    return v3
.end method

.method static syncMediaUploadForShareNote(Ljava/util/List;Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 5190
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->SharedInstance()Lcom/metamoji/media/MediaUploadManager;

    move-result-object v0

    .line 5191
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 5192
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 5193
    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 5197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5198
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 5199
    const-string/jumbo v8, "ticket"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5200
    const-string/jumbo v9, "roomId"

    invoke-static {v6, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    goto :goto_0

    .line 5206
    :cond_0
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5207
    invoke-static {v1, v6}, Lcom/metamoji/noteanytime/MainActivity;->searchShareNote(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 5208
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 5210
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v11

    .line 5212
    invoke-virtual {v11, v10, v12}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;

    move-result-object v12

    .line 5213
    invoke-virtual {v12}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;->succeeded()Z

    move-result v12

    if-nez v12, :cond_1

    :goto_2
    move v5, v7

    goto :goto_1

    .line 5219
    :cond_1
    invoke-virtual {v11, v10}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->openEditorForQuickEdit(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;

    move-result-object v12

    .line 5220
    invoke-virtual {v12}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->succeeded()Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_2

    .line 5224
    :cond_2
    invoke-virtual {v12}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithEditor;->getDocumentEditor()Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    move-result-object v12

    .line 5226
    :try_start_0
    invoke-interface {v12}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v13

    invoke-interface {v13}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v13

    .line 5227
    new-instance v14, Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    sget-object v15, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Edit:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    invoke-direct {v14, v13, v15}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;-><init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;)V

    .line 5228
    invoke-virtual {v14, v8}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasTicket(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 5229
    invoke-virtual {v0, v13, v8}, Lcom/metamoji/media/MediaUploadManager;->hasSoundUnit(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_3

    goto :goto_3

    .line 5243
    :cond_3
    sget-object v10, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-virtual {v11, v12, v10}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    move-object/from16 v10, p1

    goto :goto_1

    .line 5231
    :cond_4
    :goto_3
    :try_start_1
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 5232
    const-string v14, "driveId"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5233
    const-string v14, "documentId"

    invoke-interface {v13, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v10, p1

    .line 5234
    :try_start_2
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5235
    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5243
    sget-object v6, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-virtual {v11, v12, v6}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-object/from16 v10, p1

    .line 5241
    :catch_1
    :try_start_3
    const-string/jumbo v5, "syncMediaUploadForShareNote : error"

    invoke-static {v5}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5243
    sget-object v5, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-virtual {v11, v12, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    goto :goto_2

    :goto_4
    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Discard:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-virtual {v11, v12, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->closeDocument(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Lcom/metamoji/dm/DmDocumentManagerCloseMode;)Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;

    .line 5244
    throw v0

    :cond_5
    move-object/from16 v10, p1

    goto/16 :goto_0

    :cond_6
    if-eqz v5, :cond_7

    .line 5249
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v4, v7

    :cond_8
    return v4
.end method

.method static syncMenu(Landroidx/fragment/app/FragmentActivity;)V
    .locals 8

    .line 3263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3265
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    sget-object v2, Lcom/metamoji/ui/PopupCommand;->SYNC_ALL_DRIVE:Lcom/metamoji/ui/PopupCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->CabinetSdMenu_FullSync:I

    sget v5, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_sync_all:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_sync_all:I

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3266
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/PopupCommand;->SYNC_CURRENT_DRIVE:Lcom/metamoji/ui/PopupCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->CabinetSdMenu_CurrentSync:I

    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_sync_box:I

    sget v7, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_sync_box:I

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/PopupCommand;Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3271
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$50;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$50;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    sget v2, Lcom/metamoji/noteanytime/R$id;->cabinet_refresh_button:I

    .line 3279
    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3271
    invoke-static {p0, v0, v1, v2}, Lcom/metamoji/noteanytime/MainActivity;->showActionMenu(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;)V

    return-void
.end method

.method public static updateCabinetNodeViewFragment(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;
    .locals 3

    .line 462
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 464
    sget-boolean v2, Lcom/metamoji/noteanytime/MainActivity;->static_needRemake_NoteListViewFragment:Z

    if-eqz v2, :cond_0

    .line 465
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 466
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 467
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    move-object v0, v1

    :cond_0
    if-nez v0, :cond_1

    .line 472
    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->createCabinetNodeViewFragment(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    move-result-object p1

    goto :goto_1

    .line 475
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->getCabinetNodeViewFragmentName(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    .line 477
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_1

    .line 478
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->createCabinetNodeViewFragment(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    .line 484
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 486
    sget v2, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 487
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 489
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 490
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_calendarModel:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->isCalendarMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 491
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->hideNoteListView(Landroidx/fragment/app/FragmentActivity;)V

    :cond_4
    return-object p1

    :cond_5
    return-object v1
.end method

.method private static updateCabinetState(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V
    .locals 2

    .line 1011
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1013
    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    const/4 p0, 0x0

    .line 1014
    sput-boolean p0, Lcom/metamoji/noteanytime/MainActivity;->static_needUpdate:Z

    goto :goto_0

    .line 1016
    :cond_0
    sput-boolean v1, Lcom/metamoji/noteanytime/MainActivity;->static_needUpdate:Z

    .line 1018
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->refreshSyncButton(Landroidx/fragment/app/FragmentActivity;)V

    .line 1019
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->checkCurrentDriveUpdate(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_1

    .line 1022
    invoke-interface {p2}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderChanged()V

    .line 1023
    invoke-interface {p2, p1}, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;->onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    :cond_1
    return-void
.end method

.method public static updateDriveAllowToParticipateBoxCache(Ljava/lang/String;ZLcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;)V
    .locals 2

    .line 5787
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->EditClassBoxMember:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5791
    :cond_0
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetClassCodeParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetClassCodeParam;-><init>()V

    .line 5792
    iput-object p0, v0, Lcom/metamoji/cs/dc/params/CsGetClassCodeParam;->driveId:Ljava/lang/String;

    .line 5793
    iput-boolean p1, v0, Lcom/metamoji/cs/dc/params/CsGetClassCodeParam;->updateJoinCode:Z

    .line 5795
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;

    .line 5797
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$81;

    invoke-direct {v1, p1, p0, p2}, Lcom/metamoji/noteanytime/MainActivity$81;-><init>(Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;Ljava/lang/String;Lcom/metamoji/noteanytime/MainActivity$IUpdateDriveAllowToParticipateBoxCacheCompletionAction;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static updateIfNeeded(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 1043
    sget-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->static_needUpdate:Z

    if-eqz v0, :cond_0

    .line 1044
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->liftSearchCondition(Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    return-void
.end method

.method public static updateUserName(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    .line 825
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 826
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 827
    sget v1, Lcom/metamoji/noteanytime/R$id;->UserNameInNavibar:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public CloseContextMenu()V
    .locals 1

    .line 1555
    sget v0, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomMenuView;

    .line 1556
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    return-void
.end method

.method public ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 1550
    sget v0, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomMenuView;

    .line 1551
    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/ui/CustomMenuView;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method public closeFolderTree()V
    .locals 3

    .line 2008
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2011
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_tree_frame:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2012
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2013
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method closeMenu()Z
    .locals 1

    .line 250
    sget v0, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomMenuView;

    .line 251
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    move-result v0

    return v0
.end method

.method public getActionBarButtonsLayer()Landroid/view/ViewGroup;
    .locals 1

    .line 3688
    sget v0, Lcom/metamoji/noteanytime/R$id;->actionbar_button_layer:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    .line 4576
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_commandManager:Lcom/metamoji/nt/NtCommandManager;

    return-object v0
.end method

.method public getFilePickers()Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;
    .locals 1

    .line 6032
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_filePickers:Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    return-object v0
.end method

.method public getFxManager()Lcom/metamoji/ui/flexible/FxManager;
    .locals 1

    .line 4570
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    return-object v0
.end method

.method public getImageCameraBroker()Lcom/metamoji/ui/UiImageCameraBroker;
    .locals 1

    .line 6044
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_stillCameraBroker:Lcom/metamoji/ui/UiImageCameraBroker;

    return-object v0
.end method

.method public getMultiPermissionsBroker()Lcom/metamoji/ui/UiMultiPermissionsBroker;
    .locals 1

    .line 6038
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_multiPermissionsBroker:Lcom/metamoji/ui/UiMultiPermissionsBroker;

    return-object v0
.end method

.method public getPermissionBroker()Lcom/metamoji/ui/UiPermissionBroker;
    .locals 1

    .line 6037
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_permissionBroker:Lcom/metamoji/ui/UiPermissionBroker;

    return-object v0
.end method

.method public getVideoCameraBroker()Lcom/metamoji/ui/UiVideoCameraBroker;
    .locals 1

    .line 6043
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_videoCameraBroker:Lcom/metamoji/ui/UiVideoCameraBroker;

    return-object v0
.end method

.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 226
    invoke-super {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->closeMenu()Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    const/16 p2, 0x52

    if-eq p1, p2, :cond_2

    const/4 p1, 0x0

    return p1

    .line 235
    :cond_2
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 236
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity;->_cabinetMenuButton:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 238
    iget-object p1, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object p2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_COMMAND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity;->_cabinetMenuButton:Landroid/view/View;

    const/4 v2, 0x0

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->showSystemOption(Landroidx/fragment/app/FragmentActivity;)V

    :cond_4
    :goto_0
    return v0
.end method

.method public hideAttentionArea()V
    .locals 3

    .line 6018
    sget v0, Lcom/metamoji/noteanytime/R$id;->attentionArea:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 6019
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6023
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 6026
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6027
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public hideNoteListSyncInfo(Ljava/lang/String;)V
    .locals 0

    .line 1812
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->hideNoteListSyncInfo(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public hideNoteListSyncInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1791
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->hideNoteListSyncInfo(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public hideSyncStatusView()V
    .locals 0

    .line 1699
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->hideSyncStatusView(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 2048
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 2049
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity$84;->$SwitchMap$com$metamoji$noteanytime$EditorActivity$RequestCode:[I

    invoke-static {p1}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->valueOf(I)Lcom/metamoji/noteanytime/EditorActivity$RequestCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity$RequestCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2062
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 533
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 534
    sget-boolean v0, Lcom/metamoji/noteanytime/StartupActivity;->onLogin:Z

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_calendarModel:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->clear()V

    .line 537
    :cond_0
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    .line 539
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/noteanytime/EntryActivity;->restorePendingIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 542
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/MainActivity$1;-><init>(Lcom/metamoji/noteanytime/MainActivity;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->m_connectivityActionReceiver:Landroid/content/BroadcastReceiver;

    .line 552
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 554
    invoke-static {p0}, Lcom/metamoji/nt/NtStartup;->initialize(Landroidx/fragment/app/FragmentActivity;)V

    .line 556
    iput-object p0, p0, Lcom/metamoji/noteanytime/MainActivity;->_activity:Lcom/metamoji/noteanytime/MainActivity;

    .line 557
    new-instance v0, Lcom/metamoji/noteanytime/CabinetCommandManager;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/CabinetCommandManager;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_cabinetCommandManager:Lcom/metamoji/noteanytime/CabinetCommandManager;

    .line 558
    new-instance v0, Lcom/metamoji/nt/NtCommandManager;

    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity;->_cabinetCommandManager:Lcom/metamoji/noteanytime/CabinetCommandManager;

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtCommandManager;-><init>(Lcom/metamoji/nt/ICommandProcessor;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_commandManager:Lcom/metamoji/nt/NtCommandManager;

    .line 559
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 561
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 562
    sget v0, Lcom/metamoji/noteanytime/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->setContentView(I)V

    .line 564
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 565
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_root:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->setupWindowInsetsListener(Landroid/view/View;)V

    .line 567
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    const/4 v4, 0x1

    if-lt v0, v3, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 572
    :cond_1
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 573
    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->updateCabinetNodeViewFragment(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    .line 574
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 575
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 577
    :cond_2
    new-instance v0, Lcom/metamoji/ui/flexible/FxManager;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/flexible/FxManager;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    .line 594
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_list_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/high16 v3, 0x42200000    # 40.0f

    if-eqz v0, :cond_3

    .line 596
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v5

    float-to-int v5, v5

    const/high16 v6, 0x420c0000    # 35.0f

    .line 597
    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v6

    float-to-int v6, v6

    .line 598
    sget v7, Lcom/metamoji/noteanytime/R$drawable;->cabinet_icon_list_n:I

    invoke-static {v7}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 599
    invoke-static {v0, v7, v5, v6, v2}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setSelectBtn(Landroid/view/View;Landroid/graphics/Bitmap;IIZ)V

    .line 600
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 601
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 602
    new-instance v5, Lcom/metamoji/noteanytime/MainActivity$3;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/MainActivity$3;-><init>(Lcom/metamoji/noteanytime/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_synccancel_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 616
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    new-instance v5, Lcom/metamoji/noteanytime/MainActivity$4;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/MainActivity$4;-><init>(Lcom/metamoji/noteanytime/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_refresh_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 628
    new-instance v5, Lcom/metamoji/noteanytime/MainActivity$5;

    invoke-direct {v5, p0, p0}, Lcom/metamoji/noteanytime/MainActivity$5;-><init>(Lcom/metamoji/noteanytime/MainActivity;Lcom/metamoji/noteanytime/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    invoke-virtual {v0, v4}, Landroid/view/View;->setLongClickable(Z)V

    .line 635
    new-instance v5, Lcom/metamoji/noteanytime/MainActivity$6;

    invoke-direct {v5, p0, p0}, Lcom/metamoji/noteanytime/MainActivity$6;-><init>(Lcom/metamoji/noteanytime/MainActivity;Lcom/metamoji/noteanytime/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 642
    invoke-virtual {v0, v4}, Landroid/view/View;->setContextClickable(Z)V

    .line 643
    new-instance v5, Lcom/metamoji/noteanytime/MainActivity$7;

    invoke-direct {v5, p0, p0}, Lcom/metamoji/noteanytime/MainActivity$7;-><init>(Lcom/metamoji/noteanytime/MainActivity;Lcom/metamoji/noteanytime/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 652
    :cond_5
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_system_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 654
    new-instance v5, Lcom/metamoji/noteanytime/MainActivity$8;

    invoke-direct {v5, p0}, Lcom/metamoji/noteanytime/MainActivity$8;-><init>(Lcom/metamoji/noteanytime/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    :cond_6
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_anytime_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 666
    new-instance v5, Lcom/metamoji/noteanytime/MainActivity$9;

    invoke-direct {v5, p0, v0}, Lcom/metamoji/noteanytime/MainActivity$9;-><init>(Lcom/metamoji/noteanytime/MainActivity;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    :cond_7
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_commandbar_btn_addmenu:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 678
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v7, v0

    .line 679
    sget v6, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_addmenu:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v8, v7

    invoke-static/range {v5 .. v10}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setEtc(Landroid/view/View;IIIZZ)V

    .line 682
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$10;

    invoke-direct {v0, p0, v5}, Lcom/metamoji/noteanytime/MainActivity$10;-><init>(Lcom/metamoji/noteanytime/MainActivity;Landroid/view/View;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManager;->isEnabledCabinetAddMenu()Z

    move-result v0

    .line 689
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_8
    const/high16 v0, 0x3f000000    # 0.5f

    .line 690
    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    .line 693
    :cond_9
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_commandbar_btn_help:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 701
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 702
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 704
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$11;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/MainActivity$11;-><init>(Lcom/metamoji/noteanytime/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    :cond_a
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_commandbar_btn_about:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 714
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 715
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v7, v0

    .line 716
    sget v6, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_about:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v8, v7

    invoke-static/range {v5 .. v10}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setEtc(Landroid/view/View;IIIZZ)V

    .line 719
    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$12;

    invoke-direct {v0, p0, v5}, Lcom/metamoji/noteanytime/MainActivity$12;-><init>(Lcom/metamoji/noteanytime/MainActivity;Landroid/view/View;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    :cond_b
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_multiselect_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 730
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_EDIT_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    sget-object v6, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v1, v3, v0, v5, v6}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 733
    :cond_c
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_search_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 735
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCH_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    sget-object v6, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v1, v3, v0, v5, v6}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 739
    :cond_d
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->updateUserName(Landroidx/fragment/app/FragmentActivity;)V

    .line 742
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 743
    const-string v1, "fromEditorActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x1020002

    if-eqz v1, :cond_e

    .line 745
    invoke-virtual {p0, v3}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_e

    .line 747
    new-instance v6, Lcom/metamoji/noteanytime/MainActivity$13;

    invoke-direct {v6, p0, v0, v1}, Lcom/metamoji/noteanytime/MainActivity$13;-><init>(Lcom/metamoji/noteanytime/MainActivity;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 756
    :cond_e
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v1, :cond_f

    if-nez p1, :cond_10

    .line 757
    :cond_f
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v5, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_CABINET_BASE:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v1, v5}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    .line 758
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v5, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_CABINET_BACK:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v1, v5}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    .line 760
    :cond_10
    const-string v1, "fromShareViewActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 762
    invoke-virtual {p0, v3}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_11

    .line 764
    new-instance v3, Lcom/metamoji/noteanytime/MainActivity$14;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/noteanytime/MainActivity$14;-><init>(Lcom/metamoji/noteanytime/MainActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 779
    :cond_11
    sget v1, Lcom/metamoji/noteanytime/R$id;->attentionArea:I

    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 780
    new-instance v3, Lcom/metamoji/noteanytime/MainActivity$15;

    invoke-direct {v3, p0}, Lcom/metamoji/noteanytime/MainActivity$15;-><init>(Lcom/metamoji/noteanytime/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    sget v3, Lcom/metamoji/forSchool/ScSchoolConstants;->NB_ATTENTION_BG_COLOR:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 787
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 788
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v5, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/metamoji/noteanytime/MainActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 789
    sget v3, Lcom/metamoji/forSchool/ScSchoolConstants;->NB_ATTENTION_FONT_COLOR:I

    invoke-virtual {v5, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 790
    iget-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 791
    iget-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setMaxLines(I)V

    .line 792
    iget-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v5, 0xd

    invoke-static {v3, v4, v5, v4, v4}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 793
    iget-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v5, v2, v4, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 795
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41a00000    # 20.0f

    .line 797
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x10

    .line 798
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 799
    iget-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 801
    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_13

    .line 805
    const-string v1, "ObjectForPermissionRequest"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    .line 807
    const-string v1, "HitHelpVisibleList"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_12

    .line 809
    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/flexible/FxManager;->restoreHintHelpVisibleList([I)V

    .line 812
    :cond_12
    const-string v1, "FolderTreeVisible"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 813
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->showNoteListView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 816
    :cond_13
    sget-boolean p1, Lcom/metamoji/noteanytime/StartupActivity;->onLogin:Z

    if-nez p1, :cond_14

    .line 817
    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/EntryActivity;->execPendingIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_14
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1507
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$menu;->activity_main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 1918
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->m_connectivityActionReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1919
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1920
    iput-object v1, p0, Lcom/metamoji/noteanytime/MainActivity;->m_connectivityActionReceiver:Landroid/content/BroadcastReceiver;

    .line 1922
    :cond_0
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onDestroy()V

    .line 1923
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_activity:Lcom/metamoji/noteanytime/MainActivity;

    if-ne v0, p0, :cond_1

    .line 1924
    iput-object v1, p0, Lcom/metamoji/noteanytime/MainActivity;->_activity:Lcom/metamoji/noteanytime/MainActivity;

    :cond_1
    return-void
.end method

.method public onFolderChanged()V
    .locals 2

    .line 1953
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1954
    sget v1, Lcom/metamoji/noteanytime/R$id;->folder_tree_view_fragmnet:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    if-eqz v0, :cond_0

    .line 1957
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->reinitalize()V

    :cond_0
    return-void
.end method

.method public onFolderItemClick(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 1230
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/noteanytime/MainActivity;->onFolderItemClickEx(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    return-void
.end method

.method public onFolderItemClickEx(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V
    .locals 2

    .line 1196
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->updateCabinetNodeViewFragment(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1197
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1198
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    .line 1199
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1201
    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->update(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    :cond_0
    if-nez p2, :cond_1

    .line 1204
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1205
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_tree_frame:I

    invoke-virtual {p0, p2}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 1206
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 1208
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->showNoteListView(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    .line 1213
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->cabinet_commandbar_btn_addmenu:I

    invoke-virtual {p0, p2}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1215
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManager;->isEnabledCabinetAddMenu()Z

    move-result v0

    .line 1216
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    .line 1217
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1221
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p2

    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->LOCAL_ROOT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq p2, v0, :cond_5

    .line 1222
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p2

    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_CLASS:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq p2, v0, :cond_5

    .line 1223
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p2

    sget-object v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_OWN:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne p2, v0, :cond_4

    goto :goto_1

    :cond_4
    return-void

    .line 1224
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getLabelName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/metamoji/noteanytime/MainActivity;->showAlertIfHiddenNoteExist(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFolderOpened(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    .locals 3

    .line 1931
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1932
    sget v1, Lcom/metamoji/noteanytime/R$id;->folder_tree_view_fragmnet:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1935
    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->updateSelectedFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;Z)V

    .line 1938
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/noteanytime/MainActivity$24;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/MainActivity$24;-><init>(Lcom/metamoji/noteanytime/MainActivity;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 836
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->updateIfNeeded(Landroidx/fragment/app/FragmentActivity;)V

    .line 838
    const-string v0, "fromEditorActivity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x1020002

    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 842
    new-instance v3, Lcom/metamoji/noteanytime/MainActivity$16;

    invoke-direct {v3, p0, v0, p1}, Lcom/metamoji/noteanytime/MainActivity$16;-><init>(Lcom/metamoji/noteanytime/MainActivity;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 850
    :cond_0
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_CABINET_BASE:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    .line 852
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_CABINET_BACK:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    .line 854
    :cond_1
    const-string v0, "fromShareViewActivity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 856
    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 858
    new-instance v1, Lcom/metamoji/noteanytime/MainActivity$17;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/noteanytime/MainActivity$17;-><init>(Lcom/metamoji/noteanytime/MainActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 871
    :cond_2
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 872
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_commandbar_btn_addmenu:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 874
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v1}, Lcom/metamoji/ui/flexible/FxManager;->isEnabledCabinetAddMenu()Z

    move-result v1

    .line 875
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    .line 876
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 880
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_commandbar_btn_help:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    .line 891
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    .line 892
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 897
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/metamoji/noteanytime/EntryActivity;->handoverPendingIntent(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 898
    sget-boolean v0, Lcom/metamoji/noteanytime/StartupActivity;->onLogin:Z

    if-nez v0, :cond_6

    .line 899
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/EntryActivity;->execPendingIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 902
    :cond_6
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1903
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onPause()V

    .line 1904
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_calendarModel:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->notifyMainActivity(Lcom/metamoji/noteanytime/MainActivity;)V

    .line 1905
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 1908
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->unregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/4 v0, 0x6

    .line 5442
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7

    const/4 v0, 0x7

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_5

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 5526
    :pswitch_0
    :try_start_0
    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 5527
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    instance-of v1, v0, Lcom/metamoji/ui/cabinet/NoteItemInfo;

    if-eqz v1, :cond_0

    .line 5528
    check-cast v0, Lcom/metamoji/ui/cabinet/NoteItemInfo;

    .line 5529
    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->dumpNoteForDebug(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteItemInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5533
    :cond_0
    iput-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    iput-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    .line 5534
    throw p1

    .line 5514
    :pswitch_1
    :try_start_1
    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget v0, p3, v2

    if-nez v0, :cond_1

    .line 5515
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    instance-of v1, v0, Lcom/metamoji/ui/cabinet/NoteItemsInfo;

    if-eqz v1, :cond_1

    .line 5516
    check-cast v0, Lcom/metamoji/ui/cabinet/NoteItemsInfo;

    .line 5517
    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->exportNotes(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteItemsInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5521
    :cond_1
    iput-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    iput-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    .line 5522
    throw p1

    .line 5478
    :pswitch_2
    :try_start_2
    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget v0, p3, v2

    if-nez v0, :cond_2

    .line 5479
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    instance-of v1, v0, Lcom/metamoji/ui/cabinet/NoteItemInfo;

    if-eqz v1, :cond_2

    .line 5480
    check-cast v0, Lcom/metamoji/ui/cabinet/NoteItemInfo;

    .line 5481
    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->exportAtDoc(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/NoteItemInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5485
    :cond_2
    iput-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    goto/16 :goto_0

    :catchall_2
    move-exception p1

    iput-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    .line 5486
    throw p1

    .line 5502
    :pswitch_3
    :try_start_3
    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget v0, p3, v2

    if-nez v0, :cond_3

    .line 5503
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    instance-of v1, v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz v1, :cond_3

    .line 5504
    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 5505
    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->exportNotes(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 5509
    :cond_3
    iput-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    goto :goto_0

    :catchall_3
    move-exception p1

    iput-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    .line 5510
    throw p1

    .line 5490
    :pswitch_4
    :try_start_4
    aget-object v0, p2, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    aget v0, p3, v2

    if-nez v0, :cond_4

    .line 5491
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    instance-of v1, v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    if-eqz v1, :cond_4

    .line 5492
    check-cast v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    .line 5493
    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->importNotes(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 5497
    :cond_4
    iput-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    goto :goto_0

    :catchall_4
    move-exception p1

    iput-object v3, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    .line 5498
    throw p1

    .line 5472
    :cond_5
    aget-object v0, p2, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    aget v0, p3, v2

    if-nez v0, :cond_8

    .line 5473
    invoke-static {p0, v2}, Lcom/metamoji/noteanytime/MainActivity;->importAudioFile(Landroidx/fragment/app/FragmentActivity;Z)V

    goto :goto_0

    .line 5462
    :cond_6
    aget-object v0, p2, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    aget v0, p3, v2

    if-nez v0, :cond_8

    .line 5463
    invoke-static {p0, v2}, Lcom/metamoji/noteanytime/MainActivity;->importPdfFile(Landroidx/fragment/app/FragmentActivity;Z)V

    goto :goto_0

    .line 5457
    :cond_7
    aget-object v0, p2, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    aget v0, p3, v2

    if-nez v0, :cond_8

    .line 5458
    invoke-static {p0, v2}, Lcom/metamoji/noteanytime/MainActivity;->importHayabusaDoc(Landroidx/fragment/app/FragmentActivity;Z)V

    .line 5539
    :cond_8
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1965
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1854
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onResume()V

    .line 1855
    sget-object v0, Lcom/metamoji/noteanytime/MainActivity;->static_calendarModel:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->notifyMainActivity(Lcom/metamoji/noteanytime/MainActivity;)V

    .line 1856
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_calendar_view:I

    invoke-virtual {p0, v1}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/ScCabinetCalendarView;

    .line 1857
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/ScCabinetCalendarView;->notifyModel(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V

    .line 1858
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->isCalendarMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1859
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/ScCabinetCalendarView;->setVisibility(I)V

    .line 1862
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 1864
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1865
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1867
    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->updateCabinetNodeViewFragment(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    .line 1872
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_anytime_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1873
    instance-of v1, v0, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    if-eqz v1, :cond_2

    .line 1874
    check-cast v0, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    invoke-static {v0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync(Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V

    .line 1878
    :cond_2
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSyncInfoString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1879
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1880
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->showSyncStatusView(Ljava/lang/String;)V

    goto :goto_0

    .line 1882
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->hideSyncStatusView()V

    .line 1886
    :goto_0
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->remakeIfNeeded(Landroidx/fragment/app/FragmentActivity;)V

    .line 1889
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->updateAttentionArea()V

    .line 1892
    invoke-static {p0}, Lcom/metamoji/nt/NtSupportLog;->setLoggingView(Landroid/app/Activity;)V

    .line 1895
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->syncForLogin()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1970
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1972
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManager;->getHintHelpVisibleList()[I

    move-result-object v0

    .line 1973
    const-string v1, "HitHelpVisibleList"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1976
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1977
    const-string v1, "ObjectForPermissionRequest"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1980
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_tree_frame:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1981
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1982
    :goto_0
    const-string v1, "FolderTreeVisible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1984
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/noteanytime/EntryActivity;->savePendingIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1846
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onStart()V

    return-void
.end method

.method public openFolderTree()V
    .locals 5

    .line 1988
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1992
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->main_activity_layout:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 1993
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1994
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1995
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeWidth:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1997
    sget v2, Lcom/metamoji/noteanytime/R$id;->cabinet_folder_tree_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1998
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public openSearchMenu(Landroid/view/View;)V
    .locals 4

    .line 1003
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCH_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v2, 0x0

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    return-void
.end method

.method public reloadAllView()V
    .locals 3

    .line 1561
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1562
    sget-object v1, Lcom/metamoji/noteanytime/MainActivity;->static_calendarModel:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->isCalendarMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1563
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->reloadCalenderData(Z)V

    goto :goto_0

    .line 1565
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/metamoji/noteanytime/MainActivity;->updateCabinetNodeViewFragment(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1566
    sget v1, Lcom/metamoji/noteanytime/R$id;->cabinet_node_view:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;

    if-eqz v1, :cond_1

    .line 1568
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetNodeViewFragment;->reloadAllView()V

    .line 1572
    :cond_1
    :goto_0
    sget v1, Lcom/metamoji/noteanytime/R$id;->folder_tree_view_fragmnet:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;

    if-eqz v0, :cond_2

    .line 1574
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->reinitalize()V

    .line 1576
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1578
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->checkCurrentDriveUpdate(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setActionBarButtonPressed(Landroid/view/View;Landroid/graphics/PointF;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 3680
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_base_push:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 3682
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDeletedNoteCount(I)V
    .locals 0

    .line 1729
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->setDeletedNoteCount(Landroidx/fragment/app/FragmentActivity;I)V

    return-void
.end method

.method public setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V
    .locals 1

    .line 4566
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    return-void
.end method

.method public setObjectForPermissionRequest(Landroid/os/Parcelable;)V
    .locals 0

    .line 5437
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity;->ObjectForPermissionRequest:Landroid/os/Parcelable;

    return-void
.end method

.method public showActionMenu(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0
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

    .line 985
    invoke-static {p0, p1, p0, p2}, Lcom/metamoji/noteanytime/MainActivity;->showActionMenu(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;)V

    return-void
.end method

.method public showNoteListSyncInfo(Ljava/lang/String;Z)V
    .locals 0

    .line 1764
    invoke-static {p0, p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->showNoteListSyncInfo(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public showNoteListSyncInfo(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1743
    invoke-static {p0, p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->showNoteListSyncInfo(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public showSyncStatusView(Ljava/lang/String;)V
    .locals 0

    .line 1610
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->showSyncStatusView(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public syncForLogin()V
    .locals 2

    .line 1588
    sget-boolean v0, Lcom/metamoji/noteanytime/StartupActivity;->onLogin:Z

    if-eqz v0, :cond_1

    .line 1590
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1591
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity;->_activity:Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_READONLY_LOGIN_MESSAGE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 1593
    sput-boolean v0, Lcom/metamoji/noteanytime/StartupActivity;->onLogin:Z

    .line 1594
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startLoginSync()V

    :cond_1
    return-void
.end method

.method public updateAttentionArea()V
    .locals 6

    .line 5992
    sget v0, Lcom/metamoji/noteanytime/R$id;->attentionArea:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 5993
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v1, :cond_0

    goto :goto_1

    .line 5997
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    .line 5999
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->attentionUserInfoDic()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6003
    const-string/jumbo v3, "userName"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6004
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ATTENTION_GUIDANCE:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    .line 6006
    const-string v4, "%@"

    const-string v5, "%s"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 6007
    iget-object v4, p0, Lcom/metamoji/noteanytime/MainActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    goto :goto_0

    .line 6010
    :cond_1
    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity;->_attentionText:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    :goto_0
    if-eq v1, v2, :cond_2

    .line 6013
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
