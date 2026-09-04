.class public final Lcom/metamoji/ui/cabinet/ShareViewActivity;
.super Lcom/metamoji/lib/dialog/task/UtMortalActivity;
.source "ShareViewActivity.java"

# interfaces
.implements Lcom/metamoji/ui/cabinet/CabinetActivityInterface;
.implements Lcom/metamoji/ui/MenuEventListener;
.implements Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;
.implements Lcom/metamoji/lib/dialog/broker/pickers/IUtFilePickerStoreProvider;


# static fields
.field static final KEY_HintHelpVisibleList:Ljava/lang/String; = "HitHelpVisibleList"


# instance fields
.field private _activity:Landroidx/fragment/app/FragmentActivity;

.field _cabinetCommandManager:Lcom/metamoji/noteanytime/CabinetCommandManager;

.field private _cabinetMenuButton:Landroid/view/View;

.field _commandManager:Lcom/metamoji/nt/NtCommandManager;

.field private _docId:Ljava/lang/String;

.field private _driveId:Ljava/lang/String;

.field private final _filePickers:Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

.field private _fromEditor:Ljava/lang/String;

.field private _fromMain:Ljava/lang/String;

.field private _fromNoteList:Ljava/lang/String;

.field private _fxmanager:Lcom/metamoji/ui/flexible/FxManager;

.field private _normalViewBtn:Landroid/widget/ImageButton;

.field private _shareViewFragment:Lcom/metamoji/ui/cabinet/ShareViewFragment;

.field private _updateBtn:Landroid/widget/ImageButton;


# direct methods
.method static bridge synthetic -$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_activity:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_docId(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_docId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_driveId(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_driveId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_fromEditor(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fromEditor:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_fxmanager(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Lcom/metamoji/ui/flexible/FxManager;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_shareViewFragment(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Lcom/metamoji/ui/cabinet/ShareViewFragment;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_shareViewFragment:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_updateBtn(Lcom/metamoji/ui/cabinet/ShareViewActivity;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_updateBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyFinishEditing(Lcom/metamoji/ui/cabinet/ShareViewActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->notifyFinishEditing(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreturnToMainActivity(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->returnToMainActivity()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;-><init>()V

    .line 721
    new-instance v0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-direct {v0, p0}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_filePickers:Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    return-void
.end method

.method private _returnToMainActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 369
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->changeCabinetViewMode(Z)V

    .line 372
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fromMain:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_activity:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/metamoji/noteanytime/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 376
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/noteanytime/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    :goto_0
    const-string v1, "fromShareViewActivity"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string v1, "docId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string p2, "driveId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 381
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 383
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    .line 384
    new-instance p2, Lcom/metamoji/ui/cabinet/ShareViewActivity$10;

    invoke-direct {p2, p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity$10;-><init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;Landroid/content/Intent;)V

    new-instance v0, Lcom/metamoji/ui/cabinet/ShareViewActivity$11;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity$11;-><init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method private notifyFinishEditing(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private openSystemOptionMenu(Landroid/view/View;)V
    .locals 1

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->setMainMenu(Ljava/util/ArrayList;)V

    .line 459
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method private returnToMainActivity()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_driveId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_docId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_returnToMainActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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

    .line 533
    sget v0, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomMenuView;

    .line 534
    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/ui/CustomMenuView;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method closeMenu()Z
    .locals 1

    .line 623
    sget v0, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomMenuView;

    .line 624
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomMenuView;->CloseMenu()Z

    move-result v0

    return v0
.end method

.method public getActionBarButtonsLayer()Landroid/view/ViewGroup;
    .locals 1

    .line 640
    sget v0, Lcom/metamoji/noteanytime/R$id;->actionbar_button_layer:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_commandManager:Lcom/metamoji/nt/NtCommandManager;

    return-object v0
.end method

.method public getFilePickers()Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_filePickers:Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    return-object v0
.end method

.method public getFxManager()Lcom/metamoji/ui/flexible/FxManager;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    return-object v0
.end method

.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 595
    invoke-super {p0, p1, p2}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->handleKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->closeMenu()Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    const/4 p2, 0x4

    if-eq p1, p2, :cond_4

    const/16 p2, 0x52

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 604
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_cabinetMenuButton:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 605
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->openSystemOptionMenu(Landroid/view/View;)V

    :cond_3
    return v0

    .line 612
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "UserView"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_5

    .line 613
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->returnToMainActivity()V

    return v0

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hideNoteListSyncInfo(Ljava/lang/String;)V
    .locals 0

    .line 590
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

    .line 584
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->hideNoteListSyncInfo(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public hideSyncStatusView()V
    .locals 0

    .line 560
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->hideSyncStatusView(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public notifyShareViewWaiting(Z)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_updateBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 411
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 96
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    .line 98
    invoke-static {p0}, Lcom/metamoji/nt/NtStartup;->initialize(Landroidx/fragment/app/FragmentActivity;)V

    .line 99
    sget v0, Lcom/metamoji/noteanytime/R$layout;->activity_share_view:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->setContentView(I)V

    .line 101
    sget v0, Lcom/metamoji/noteanytime/R$id;->root:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->setupWindowInsetsListener(Landroid/view/View;)V

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 108
    :cond_0
    iput-object p0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_activity:Landroidx/fragment/app/FragmentActivity;

    .line 109
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 111
    new-instance v0, Lcom/metamoji/noteanytime/CabinetCommandManager;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/CabinetCommandManager;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_cabinetCommandManager:Lcom/metamoji/noteanytime/CabinetCommandManager;

    .line 112
    new-instance v0, Lcom/metamoji/nt/NtCommandManager;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_cabinetCommandManager:Lcom/metamoji/noteanytime/CabinetCommandManager;

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtCommandManager;-><init>(Lcom/metamoji/nt/ICommandProcessor;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_commandManager:Lcom/metamoji/nt/NtCommandManager;

    .line 115
    new-instance v0, Lcom/metamoji/ui/flexible/FxManager;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/flexible/FxManager;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    .line 116
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 118
    sget v1, Lcom/metamoji/noteanytime/R$id;->share_view_fragment:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/ShareViewFragment;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_shareViewFragment:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    .line 121
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_normalview_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_normalViewBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_normalViewBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/metamoji/ui/cabinet/ShareViewActivity$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity$1;-><init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_VIEW_CHANGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_normalViewBtn:Landroid/widget/ImageButton;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    sget-object v5, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 140
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_list_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 145
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_system_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_synccancel_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 153
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_refresh_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/ActionBarButton;

    if-eqz v0, :cond_5

    .line 161
    new-instance v3, Lcom/metamoji/ui/cabinet/ShareViewActivity$2;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity$2;-><init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_5
    sget v0, Lcom/metamoji/noteanytime/R$id;->shareview_update_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_updateBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_updateBtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/metamoji/ui/cabinet/ShareViewActivity$3;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity$3;-><init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_updateBtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/metamoji/ui/cabinet/ShareViewActivity$4;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity$4;-><init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    :cond_6
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_anytime_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 216
    new-instance v3, Lcom/metamoji/ui/cabinet/ShareViewActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity$5;-><init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_7
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_commandbar_btn_about:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 229
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x42200000    # 40.0f

    .line 230
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v5, v0

    .line 231
    sget v4, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_about:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v6, v5

    invoke-static/range {v3 .. v8}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setEtc(Landroid/view/View;IIIZZ)V

    .line 234
    new-instance v0, Lcom/metamoji/ui/cabinet/ShareViewActivity$6;

    invoke-direct {v0, p0, v3}, Lcom/metamoji/ui/cabinet/ShareViewActivity$6;-><init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :cond_8
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_commandbar_btn_addmenu:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 245
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :cond_9
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_commandbar_btn_help:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 259
    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewActivity$7;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity$7;-><init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    :cond_a
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->updateUserName(Landroidx/fragment/app/FragmentActivity;)V

    .line 271
    sget v0, Lcom/metamoji/noteanytime/R$id;->pull_refresh_scrollview:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;

    .line 272
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SHAREVIEW_BODY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 274
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 276
    const-string v1, "docId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_docId:Ljava/lang/String;

    .line 277
    const-string v1, "driveId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_driveId:Ljava/lang/String;

    .line 278
    const-string v1, "fromEditorActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fromEditor:Ljava/lang/String;

    .line 279
    const-string v1, "fromMainActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fromMain:Ljava/lang/String;

    .line 280
    const-string v1, "fromNoteListViewActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fromNoteList:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fromEditor:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_shareViewFragment:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    if-eqz v0, :cond_b

    .line 282
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 284
    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewActivity$8;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity$8;-><init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_b
    if-eqz p1, :cond_c

    .line 303
    const-string v0, "HitHelpVisibleList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_c

    .line 305
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/flexible/FxManager;->restoreHintHelpVisibleList([I)V

    :cond_c
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 329
    const-string v0, "docId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_docId:Ljava/lang/String;

    .line 330
    const-string v0, "driveId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_driveId:Ljava/lang/String;

    .line 331
    const-string v0, "fromEditorActivity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fromEditor:Ljava/lang/String;

    .line 332
    const-string v0, "fromMainActivity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fromMain:Ljava/lang/String;

    .line 333
    const-string v0, "fromNoteListViewActivity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fromNoteList:Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fromEditor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_shareViewFragment:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewActivity$9;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity$9;-><init>(Lcom/metamoji/ui/cabinet/ShareViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fromEditor:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_CABINET_BASE:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    .line 352
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_CABINET_BACK:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    .line 353
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_SHAREVIEW_GUIDE:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    .line 356
    :cond_1
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 689
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onPause()V

    .line 690
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    invoke-static {p0}, Lcom/metamoji/ui/dialog/UiDialog;->dismissAllDialogs(Landroidx/fragment/app/FragmentActivity;)V

    .line 693
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->unregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 648
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onResume()V

    .line 659
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_shareViewFragment:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    if-nez v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->share_view_fragment:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/ShareViewFragment;

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_shareViewFragment:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    .line 663
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 666
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_anytime_button:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 667
    instance-of v1, v0, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    if-eqz v1, :cond_1

    .line 668
    check-cast v0, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    invoke-static {v0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync(Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V

    .line 672
    :cond_1
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getSyncInfoString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 673
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 677
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->hideSyncStatusView()V

    .line 681
    :goto_0
    invoke-static {p0}, Lcom/metamoji/noteanytime/MainActivity;->remakeIfNeeded(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 314
    invoke-super {p0, p1}, Lcom/metamoji/lib/dialog/task/UtMortalActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 316
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManager;->getHintHelpVisibleList()[I

    move-result-object v0

    .line 317
    const-string v1, "HitHelpVisibleList"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public reloadAllView()V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_shareViewFragment:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->reloadAllView()V

    :cond_0
    return-void
.end method

.method public returnToMainActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_returnToMainActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setActionBarButtonPressed(Landroid/view/View;Landroid/graphics/PointF;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 632
    sget p2, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_base_push:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 634
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDeletedNoteCount(I)V
    .locals 0

    .line 566
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->setDeletedNoteCount(Landroidx/fragment/app/FragmentActivity;I)V

    return-void
.end method

.method public setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewActivity;->_fxmanager:Lcom/metamoji/ui/flexible/FxManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    return-void
.end method

.method public setMainMenu(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setObjectForPermissionRequest(Landroid/os/Parcelable;)V
    .locals 0

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

    .line 424
    sget v0, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomMenuView;

    .line 425
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    .line 426
    invoke-static {v1, p2, v2}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 427
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 428
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 429
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 430
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 431
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 433
    invoke-virtual {v0, p1, p0, v1}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    return-void
.end method

.method public showNoteListSyncInfo(Ljava/lang/String;Z)V
    .locals 0

    .line 578
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

    .line 572
    invoke-static {p0, p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->showNoteListSyncInfo(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public showSyncStatusView(Ljava/lang/String;)V
    .locals 0

    .line 552
    invoke-static {p0, p1}, Lcom/metamoji/noteanytime/MainActivity;->showSyncStatusView(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method
