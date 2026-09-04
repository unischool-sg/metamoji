.class Lcom/metamoji/noteanytime/EditorActivity$FirstJob;
.super Ljava/lang/Object;
.source "EditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FirstJob"
.end annotation


# instance fields
.field private _isLoading:Z

.field private _jobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mexec(Lcom/metamoji/noteanytime/EditorActivity$FirstJob;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->exec(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 8092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8093
    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->_jobs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 8094
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->_isLoading:Z

    return-void
.end method

.method private addInternal(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 8136
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->_jobs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 8137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->_jobs:Ljava/util/ArrayList;

    .line 8139
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->_jobs:Ljava/util/ArrayList;

    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$1;-><init>(Lcom/metamoji/noteanytime/EditorActivity$FirstJob;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private exec(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 1

    .line 8121
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8123
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8125
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    .line 8153
    monitor-enter p0

    .line 8154
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addInternal(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    .line 8155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addOrExecute(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 8164
    monitor-enter p0

    .line 8165
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->_isLoading:Z

    if-eqz v0, :cond_0

    .line 8166
    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->addInternal(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    .line 8167
    monitor-exit p0

    return-void

    .line 8169
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8172
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 8173
    new-instance v1, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$2;-><init>(Lcom/metamoji/noteanytime/EditorActivity$FirstJob;Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8169
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isLoading()Z
    .locals 1

    .line 8110
    monitor-enter p0

    .line 8111
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->_isLoading:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 8112
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteLoaded()V
    .locals 4

    .line 8185
    monitor-enter p0

    .line 8186
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->_jobs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 8188
    iput-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->_jobs:Ljava/util/ArrayList;

    .line 8190
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    .line 8191
    new-instance v3, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$3;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$3;-><init>(Lcom/metamoji/noteanytime/EditorActivity$FirstJob;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    :cond_0
    const/4 v0, 0x0

    .line 8203
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->_isLoading:Z

    .line 8204
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoading()V
    .locals 1

    .line 8100
    monitor-enter p0

    const/4 v0, 0x1

    .line 8101
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->_isLoading:Z

    .line 8102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
