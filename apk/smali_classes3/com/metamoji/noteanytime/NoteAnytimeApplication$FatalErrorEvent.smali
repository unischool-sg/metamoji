.class public Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;
.super Ljava/lang/Object;
.source "NoteAnytimeApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/NoteAnytimeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FatalErrorEvent"
.end annotation


# static fields
.field private static _instance:Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;

.field private static _orgHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final _listeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/metamoji/noteanytime/NoteAnytimeApplication$IFatalErrorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->_listeners:Ljava/util/LinkedList;

    return-void
.end method

.method static getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;
    .locals 1

    .line 243
    sget-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->_instance:Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;

    return-object v0
.end method

.method static initialize()V
    .locals 1

    .line 247
    sget-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->_instance:Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;

    invoke-direct {v0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;-><init>()V

    sput-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->_instance:Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;

    .line 249
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->_orgHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 250
    sget-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->_instance:Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/metamoji/noteanytime/NoteAnytimeApplication$IFatalErrorListener;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->_listeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->_listeners:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Lcom/metamoji/noteanytime/NoteAnytimeApplication$IFatalErrorListener;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->_listeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->_listeners:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 292
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->_listeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->_listeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/noteanytime/NoteAnytimeApplication$IFatalErrorListener;

    .line 262
    invoke-interface {v2, p1, p2}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$IFatalErrorListener;->onFatalError(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    monitor-exit v0

    return-void

    .line 266
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const-string/jumbo v0, "uncaughtException"

    invoke-static {p2, v0}, Lcom/metamoji/cm/ErrorInfo;->writeError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->_orgHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 271
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 266
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
