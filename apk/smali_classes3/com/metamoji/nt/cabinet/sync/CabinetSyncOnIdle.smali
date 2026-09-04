.class public Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;
.super Ljava/lang/Object;
.source "CabinetSyncOnIdle.java"


# static fields
.field public static _instance:Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;


# instance fields
.field private m_stopSync:Z

.field private m_syncCheckTimer:Lcom/metamoji/cm/UiTimer;


# direct methods
.method static bridge synthetic -$$Nest$fgetm_syncCheckTimer(Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;)Lcom/metamoji/cm/UiTimer;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->m_syncCheckTimer:Lcom/metamoji/cm/UiTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoSyncOnIdleTimer(Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->doSyncOnIdleTimer()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->m_stopSync:Z

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->m_syncCheckTimer:Lcom/metamoji/cm/UiTimer;

    return-void
.end method

.method private clearTimer()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->m_syncCheckTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->m_syncCheckTimer:Lcom/metamoji/cm/UiTimer;

    :cond_0
    return-void
.end method

.method private doSyncOnIdleTimer()V
    .locals 1

    .line 146
    const-string v0, "====== CabinetSyncOnIdle#doSyncOnIdleTimer ======="

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->clearTimer()V

    .line 150
    invoke-direct {p0}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->isEditting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->isMenuOrDialogVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-nez v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->isSyncOnEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->simpleAutoChangeSync()Z

    return-void

    .line 155
    :cond_1
    :goto_0
    const-string v0, "-------------- Skip -----------------"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;
    .locals 1

    .line 38
    sget-object v0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->_instance:Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;

    invoke-direct {v0}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;-><init>()V

    sput-object v0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->_instance:Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;

    .line 42
    :cond_0
    sget-object v0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->_instance:Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;

    return-object v0
.end method

.method private isEditting()Z
    .locals 1

    .line 100
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMenuOrDialogVisible()Z
    .locals 3

    .line 108
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 110
    sget v1, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/CustomMenuView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Lcom/metamoji/ui/CustomMenuView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 114
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/dialog/UiDialog;->getCurrentDialog()Lcom/metamoji/ui/dialog/UiDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    return v2

    .line 117
    :cond_1
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialogHelper;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogHelper;

    invoke-virtual {v1, v0}, Lcom/metamoji/lib/dialog/UtDialogHelper;->isDialogShown(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isSyncOnEdit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private setTimer()V
    .locals 4

    .line 167
    new-instance v0, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v0}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->m_syncCheckTimer:Lcom/metamoji/cm/UiTimer;

    .line 168
    new-instance v1, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle$1;-><init>(Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public doSyncOnIdle()V
    .locals 1

    .line 71
    const-string v0, "====== CabinetSyncOnIdle#doSyncOnIdle ======="

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 74
    iget-boolean v0, p0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->m_stopSync:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->m_syncCheckTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 87
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->toDoSync(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    .line 92
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->setTimer()V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->clearTimer()V

    return-void
.end method

.method public stopSync(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->m_stopSync:Z

    if-eqz p1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/metamoji/nt/cabinet/sync/CabinetSyncOnIdle;->clearTimer()V

    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->simpleAutoChangeSync()Z

    return-void
.end method
