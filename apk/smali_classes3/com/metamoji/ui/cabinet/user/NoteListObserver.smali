.class public Lcom/metamoji/ui/cabinet/user/NoteListObserver;
.super Ljava/lang/Object;
.source "NoteListObserver.java"


# static fields
.field private static sInstance:Lcom/metamoji/ui/cabinet/user/NoteListObserver;


# instance fields
.field private mNeedUpdate:Z

.field private mObserver:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

.field private mResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->sInstance:Lcom/metamoji/ui/cabinet/user/NoteListObserver;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mResumed:Z

    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mObserver:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    .line 20
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mNeedUpdate:Z

    return-void
.end method

.method public static getInstance()Lcom/metamoji/ui/cabinet/user/NoteListObserver;
    .locals 1

    .line 34
    sget-object v0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->sInstance:Lcom/metamoji/ui/cabinet/user/NoteListObserver;

    return-object v0
.end method


# virtual methods
.method public notifyRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/metamoji/ui/cabinet/user/NoteListObserver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/NoteListObserver$1;-><init>(Lcom/metamoji/ui/cabinet/user/NoteListObserver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mNeedUpdate:Z

    .line 55
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mResumed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mObserver:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->update(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreate(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mObserver:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mNeedUpdate:Z

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mResumed:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mResumed:Z

    .line 89
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mNeedUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mObserver:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0, v0}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->update(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mObserver:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mResumed:Z

    if-eqz v2, :cond_0

    .line 65
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mNeedUpdate:Z

    .line 66
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->update(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mObserver:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mResumed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->mNeedUpdate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "NoteListObserver: observer=%s, resumed=%s, update=%s"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 69
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
