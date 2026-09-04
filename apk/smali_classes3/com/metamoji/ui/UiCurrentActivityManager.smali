.class public Lcom/metamoji/ui/UiCurrentActivityManager;
.super Ljava/lang/Object;
.source "UiCurrentActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;,
        Lcom/metamoji/ui/UiCurrentActivityManager$ActivityCallInfo;,
        Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/metamoji/ui/UiCurrentActivityManager;


# instance fields
.field private mCurrent:Landroidx/fragment/app/FragmentActivity;

.field private mInfo:Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;

.field private mListeners:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mPausingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiCurrentActivityManager$ActivityCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPrev:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/metamoji/ui/UiCurrentActivityManager;

    invoke-direct {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;-><init>()V

    sput-object v0, Lcom/metamoji/ui/UiCurrentActivityManager;->sInstance:Lcom/metamoji/ui/UiCurrentActivityManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mPausingProcesses:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mCurrent:Landroidx/fragment/app/FragmentActivity;

    .line 73
    new-instance v0, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {v0}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mListeners:Lcom/metamoji/cm/CmEventListener;

    .line 74
    new-instance v0, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;-><init>(Lcom/metamoji/ui/UiCurrentActivityManager;)V

    iput-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mInfo:Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;
    .locals 1

    .line 82
    sget-object v0, Lcom/metamoji/ui/UiCurrentActivityManager;->sInstance:Lcom/metamoji/ui/UiCurrentActivityManager;

    return-object v0
.end method


# virtual methods
.method public addActivityChangeListener(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mListeners:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v1, p1, p2}, Lcom/metamoji/cm/CmEventListener;->add(Ljava/lang/Object;Lcom/metamoji/cm/ICmEventHandler;)V

    .line 177
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mCurrent:Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 164
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 166
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 167
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerActivity(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mCurrent:Landroidx/fragment/app/FragmentActivity;

    if-eq v1, p1, :cond_2

    .line 95
    iput-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mCurrent:Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x0

    .line 96
    iput-object v2, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mPrev:Landroidx/fragment/app/FragmentActivity;

    .line 97
    iget-object v2, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mListeners:Lcom/metamoji/cm/CmEventListener;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mInfo:Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;

    invoke-static {v2, p1}, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;->-$$Nest$fputmNew(Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;Landroidx/fragment/app/FragmentActivity;)V

    .line 99
    iget-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mInfo:Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;

    invoke-static {p1, v1}, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;->-$$Nest$fputmOrg(Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;Landroidx/fragment/app/FragmentActivity;)V

    .line 100
    iget-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mListeners:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mInfo:Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mPausingProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 106
    const-string p1, "#2692 run paused processes."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mPausingProcesses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 108
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityCallInfo;

    .line 110
    iget-object v2, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mCurrent:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityCallInfo;->run(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 116
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeActivityChangeListener(Ljava/lang/Object;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mListeners:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Ljava/lang/Class;Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method

.method public runWithActivity(Ljava/lang/Class;Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mCurrent:Landroidx/fragment/app/FragmentActivity;

    if-nez v1, :cond_0

    .line 204
    const-string v1, "#2692 push pausing processes."

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mPausingProcesses:Ljava/util/ArrayList;

    new-instance v2, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityCallInfo;

    invoke-direct {v2, p0, p2, p1}, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityCallInfo;-><init>(Lcom/metamoji/ui/UiCurrentActivityManager;Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    monitor-exit v0

    return-void

    .line 208
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    :try_start_1
    invoke-interface {p2, v1}, Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;->run(Landroidx/fragment/app/FragmentActivity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 215
    const-string p2, "UiCurrentActivityManager.runWithActivity (direct execution) error."

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    .line 208
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public unregisterActivity(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mCurrent:Landroidx/fragment/app/FragmentActivity;

    if-ne v1, p1, :cond_0

    .line 128
    iput-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mPrev:Landroidx/fragment/app/FragmentActivity;

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mCurrent:Landroidx/fragment/app/FragmentActivity;

    .line 130
    iget-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mListeners:Lcom/metamoji/cm/CmEventListener;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mInfo:Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;

    invoke-static {v1, p1}, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;->-$$Nest$fputmNew(Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;Landroidx/fragment/app/FragmentActivity;)V

    .line 132
    iget-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mInfo:Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;

    iget-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mPrev:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1, v1}, Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;->-$$Nest$fputmOrg(Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;Landroidx/fragment/app/FragmentActivity;)V

    .line 133
    iget-object p1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mListeners:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/ui/UiCurrentActivityManager;->mInfo:Lcom/metamoji/ui/UiCurrentActivityManager$ActivityInfo;

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    .line 137
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
