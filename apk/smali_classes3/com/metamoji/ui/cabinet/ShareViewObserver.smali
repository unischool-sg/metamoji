.class public Lcom/metamoji/ui/cabinet/ShareViewObserver;
.super Ljava/lang/Object;
.source "ShareViewObserver.java"


# static fields
.field private static sInstance:Lcom/metamoji/ui/cabinet/ShareViewObserver;


# instance fields
.field private mNeedUpdate:Z

.field private mObserver:Lcom/metamoji/ui/cabinet/ShareViewFragment;

.field private mResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/metamoji/ui/cabinet/ShareViewObserver;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/ShareViewObserver;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->sInstance:Lcom/metamoji/ui/cabinet/ShareViewObserver;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mResumed:Z

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mObserver:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    .line 18
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mNeedUpdate:Z

    return-void
.end method

.method public static getInstance()Lcom/metamoji/ui/cabinet/ShareViewObserver;
    .locals 1

    .line 32
    sget-object v0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->sInstance:Lcom/metamoji/ui/cabinet/ShareViewObserver;

    return-object v0
.end method


# virtual methods
.method public notifyRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/metamoji/ui/cabinet/ShareViewObserver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewObserver$1;-><init>(Lcom/metamoji/ui/cabinet/ShareViewObserver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mNeedUpdate:Z

    .line 53
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mResumed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mObserver:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewObserver;->update(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreate(Lcom/metamoji/ui/cabinet/ShareViewFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mObserver:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mNeedUpdate:Z

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mResumed:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mResumed:Z

    .line 87
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mNeedUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mObserver:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0, v0}, Lcom/metamoji/ui/cabinet/ShareViewObserver;->update(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mObserver:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mResumed:Z

    if-eqz v2, :cond_0

    .line 63
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mNeedUpdate:Z

    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->update(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mObserver:Lcom/metamoji/ui/cabinet/ShareViewFragment;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mResumed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/metamoji/ui/cabinet/ShareViewObserver;->mNeedUpdate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p2, v0, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "ShareViewObserver: observer=%s, resumed=%s, update=%s"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
