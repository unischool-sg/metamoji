.class Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/noteanytime/NoteAnytimeApplication$IFatalErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/EditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FatalErrorListener"
.end annotation


# instance fields
.field mAlive:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8058
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;->mAlive:Z

    return-void
.end method


# virtual methods
.method onCreate()V
    .locals 3

    const/4 v0, 0x1

    .line 8074
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;->mAlive:Z

    .line 8075
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "FatalErrorOnEditing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 8076
    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->add(Lcom/metamoji/noteanytime/NoteAnytimeApplication$IFatalErrorListener;)V

    return-void
.end method

.method onDestroy()V
    .locals 1

    .line 8079
    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->remove(Lcom/metamoji/noteanytime/NoteAnytimeApplication$IFatalErrorListener;)V

    return-void
.end method

.method public onFatalError(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 2

    const/4 p1, 0x0

    .line 8063
    :try_start_0
    iget-boolean p2, p0, Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;->mAlive:Z

    if-eqz p2, :cond_0

    .line 8064
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p2

    const-string v0, "FatalErrorOnEditing"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return p1

    :catchall_0
    move-exception p2

    .line 8068
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return p1
.end method

.method onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 8085
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;->mAlive:Z

    return-void
.end method

.method onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 8082
    iput-boolean v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FatalErrorListener;->mAlive:Z

    return-void
.end method
