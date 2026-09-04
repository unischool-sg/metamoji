.class Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;
.super Ljava/lang/Object;
.source "NoteAnytimeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/NoteAnytimeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LowMemoryEvent"
.end annotation


# static fields
.field private static _instance:Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;


# instance fields
.field private final _listeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;",
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

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->_listeners:Ljava/util/LinkedList;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;
    .locals 1

    .line 136
    sget-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->_instance:Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;

    invoke-direct {v0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;-><init>()V

    sput-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->_instance:Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;

    .line 139
    :cond_0
    sget-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->_instance:Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->_listeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->_listeners:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public invoke()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->_listeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->_listeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;

    .line 170
    invoke-interface {v2}, Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;->didReceiveMemoryWarning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 173
    :try_start_1
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 175
    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public remove(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->_listeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->_listeners:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
