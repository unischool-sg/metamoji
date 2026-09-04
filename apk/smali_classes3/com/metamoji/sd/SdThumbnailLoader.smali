.class public final Lcom/metamoji/sd/SdThumbnailLoader;
.super Ljava/lang/Object;
.source "SdThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/sd/SdThumbnailLoader$Task;
    }
.end annotation


# static fields
.field private static _instance:Lcom/metamoji/sd/SdThumbnailLoader;


# instance fields
.field private _executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/metamoji/sd/SdThumbnailLoader;

    invoke-direct {v0}, Lcom/metamoji/sd/SdThumbnailLoader;-><init>()V

    sput-object v0, Lcom/metamoji/sd/SdThumbnailLoader;->_instance:Lcom/metamoji/sd/SdThumbnailLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/sd/SdThumbnailLoader;->_executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/sd/SdThumbnailLoader;
    .locals 1

    .line 38
    sget-object v0, Lcom/metamoji/sd/SdThumbnailLoader;->_instance:Lcom/metamoji/sd/SdThumbnailLoader;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;Lcom/metamoji/cm/Size;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/widget/ImageView;",
            "Lcom/metamoji/cm/Size;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/metamoji/sd/SdThumbnailLoader;->_executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/metamoji/sd/SdThumbnailLoader$Task;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/sd/SdThumbnailLoader$Task;-><init>(Lcom/metamoji/sd/SdThumbnailLoader;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/ImageView;Lcom/metamoji/cm/Size;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public clearTask()V
    .locals 0

    return-void
.end method
