.class public final Lcom/amazon/device/iap/internal/e;
.super Ljava/lang/Object;
.source "ImplementationFactory.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.amazon.device.iap.internal.e"

.field private static volatile b:Z

.field private static volatile c:Z

.field private static volatile d:Lcom/amazon/device/iap/internal/c;

.field private static volatile e:Lcom/amazon/device/iap/internal/a;

.field private static volatile f:Lcom/amazon/device/iap/internal/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 124
    :try_start_0
    invoke-static {}, Lcom/amazon/device/iap/internal/e;->d()Lcom/amazon/device/iap/internal/b;

    move-result-object v0

    .line 125
    invoke-interface {v0, p0}, Lcom/amazon/device/iap/internal/b;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 128
    sget-object v1, Lcom/amazon/device/iap/internal/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error getting instance for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Z
    .locals 4

    .line 54
    sget-boolean v0, Lcom/amazon/device/iap/internal/e;->c:Z

    if-eqz v0, :cond_0

    .line 55
    sget-boolean v0, Lcom/amazon/device/iap/internal/e;->b:Z

    return v0

    .line 57
    :cond_0
    const-class v0, Lcom/amazon/device/iap/internal/e;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-boolean v1, Lcom/amazon/device/iap/internal/e;->c:Z

    if-eqz v1, :cond_1

    .line 59
    sget-boolean v1, Lcom/amazon/device/iap/internal/e;->b:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v1

    :cond_1
    const/4 v1, 0x1

    .line 62
    :try_start_1
    const-class v2, Lcom/amazon/device/iap/internal/e;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 63
    const-string v3, "com.amazon.android.Kiwi"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v2, 0x0

    .line 64
    sput-boolean v2, Lcom/amazon/device/iap/internal/e;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    :try_start_2
    sput-boolean v1, Lcom/amazon/device/iap/internal/e;->b:Z

    .line 69
    :goto_0
    sput-boolean v1, Lcom/amazon/device/iap/internal/e;->c:Z

    .line 71
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    sget-boolean v0, Lcom/amazon/device/iap/internal/e;->b:Z

    return v0

    :catchall_1
    move-exception v1

    .line 71
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static b()Lcom/amazon/device/iap/internal/c;
    .locals 2

    .line 81
    sget-object v0, Lcom/amazon/device/iap/internal/e;->d:Lcom/amazon/device/iap/internal/c;

    if-nez v0, :cond_1

    .line 82
    const-class v0, Lcom/amazon/device/iap/internal/e;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/amazon/device/iap/internal/e;->d:Lcom/amazon/device/iap/internal/c;

    if-nez v1, :cond_0

    .line 84
    const-class v1, Lcom/amazon/device/iap/internal/c;

    invoke-static {v1}, Lcom/amazon/device/iap/internal/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/iap/internal/c;

    sput-object v1, Lcom/amazon/device/iap/internal/e;->d:Lcom/amazon/device/iap/internal/c;

    .line 86
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 88
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/device/iap/internal/e;->d:Lcom/amazon/device/iap/internal/c;

    return-object v0
.end method

.method public static c()Lcom/amazon/device/iap/internal/a;
    .locals 2

    .line 95
    sget-object v0, Lcom/amazon/device/iap/internal/e;->e:Lcom/amazon/device/iap/internal/a;

    if-nez v0, :cond_1

    .line 96
    const-class v0, Lcom/amazon/device/iap/internal/e;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/amazon/device/iap/internal/e;->e:Lcom/amazon/device/iap/internal/a;

    if-nez v1, :cond_0

    .line 98
    const-class v1, Lcom/amazon/device/iap/internal/a;

    invoke-static {v1}, Lcom/amazon/device/iap/internal/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/iap/internal/a;

    sput-object v1, Lcom/amazon/device/iap/internal/e;->e:Lcom/amazon/device/iap/internal/a;

    .line 100
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 102
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/device/iap/internal/e;->e:Lcom/amazon/device/iap/internal/a;

    return-object v0
.end method

.method private static d()Lcom/amazon/device/iap/internal/b;
    .locals 2

    .line 31
    sget-object v0, Lcom/amazon/device/iap/internal/e;->f:Lcom/amazon/device/iap/internal/b;

    if-nez v0, :cond_2

    .line 32
    const-class v0, Lcom/amazon/device/iap/internal/e;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/amazon/device/iap/internal/e;->f:Lcom/amazon/device/iap/internal/b;

    if-nez v1, :cond_1

    .line 34
    invoke-static {}, Lcom/amazon/device/iap/internal/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Lcom/amazon/device/iap/internal/a/d;

    invoke-direct {v1}, Lcom/amazon/device/iap/internal/a/d;-><init>()V

    sput-object v1, Lcom/amazon/device/iap/internal/e;->f:Lcom/amazon/device/iap/internal/b;

    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Lcom/amazon/device/iap/internal/b/g;

    invoke-direct {v1}, Lcom/amazon/device/iap/internal/b/g;-><init>()V

    sput-object v1, Lcom/amazon/device/iap/internal/e;->f:Lcom/amazon/device/iap/internal/b;

    .line 40
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_2
    :goto_1
    sget-object v0, Lcom/amazon/device/iap/internal/e;->f:Lcom/amazon/device/iap/internal/b;

    return-object v0
.end method
