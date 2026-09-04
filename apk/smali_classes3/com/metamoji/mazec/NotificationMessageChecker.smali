.class public Lcom/metamoji/mazec/NotificationMessageChecker;
.super Ljava/lang/Thread;
.source "NotificationMessageChecker.java"


# static fields
.field public static final CHECK_TIME_SPAN:J = 0x240c8400L

.field private static final CONNECT_TIMEOUT:I = 0xbb8

.field private static final KEY_MSG:Ljava/lang/String; = "msg"

.field private static final KEY_SEQ:Ljava/lang/String; = "id"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_URL:Ljava/lang/String; = "url"

.field private static final NOTIFY_TAG:Ljava/lang/String; = "mazec-msg"

.field private static final RESPONSE_CHAR_SET:Ljava/lang/String; = "UTF-8"

.field private static final SOCKET_TIMEOUT:I = 0xbb8

.field private static instance_:Lcom/metamoji/mazec/NotificationMessageChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static startChecking()V
    .locals 8

    .line 37
    const-class v0, Lcom/metamoji/mazec/NotificationMessageChecker;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/metamoji/mazec/NotificationMessageChecker;->instance_:Lcom/metamoji/mazec/NotificationMessageChecker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/mazec/NotificationMessageChecker;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 45
    sput-object v1, Lcom/metamoji/mazec/NotificationMessageChecker;->instance_:Lcom/metamoji/mazec/NotificationMessageChecker;

    .line 47
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 50
    const-string v3, "last_notifed_datetime"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 53
    sget-wide v6, Lcom/metamoji/mazec/NotificationMessageChecker;->CHECK_TIME_SPAN:J

    add-long/2addr v2, v6

    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    .line 58
    monitor-exit v0

    return-void

    .line 62
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 63
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 64
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    new-instance v1, Lcom/metamoji/mazec/NotificationMessageChecker;

    invoke-direct {v1}, Lcom/metamoji/mazec/NotificationMessageChecker;-><init>()V

    sput-object v1, Lcom/metamoji/mazec/NotificationMessageChecker;->instance_:Lcom/metamoji/mazec/NotificationMessageChecker;

    .line 72
    invoke-virtual {v1}, Lcom/metamoji/mazec/NotificationMessageChecker;->start()V

    .line 73
    monitor-exit v0

    return-void

    .line 68
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static stopChecking()V
    .locals 2

    .line 77
    const-class v0, Lcom/metamoji/mazec/NotificationMessageChecker;

    monitor-enter v0

    const/4 v1, 0x0

    .line 78
    :try_start_0
    sput-object v1, Lcom/metamoji/mazec/NotificationMessageChecker;->instance_:Lcom/metamoji/mazec/NotificationMessageChecker;

    .line 79
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
