.class public final Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;
.super Ljava/lang/Object;
.source "SdShareViewThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;
    }
.end annotation


# static fields
.field private static _instance:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;


# instance fields
.field private _executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;

    invoke-direct {v0}, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;-><init>()V

    sput-object v0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;->_instance:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;->_executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;
    .locals 1

    .line 30
    sget-object v0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;->_instance:Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;Lcom/metamoji/cm/Size;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Landroid/widget/ImageView;",
            "Lcom/metamoji/cm/Size;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;->_executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader$Task;-><init>(Lcom/metamoji/sd/shareview/SdShareViewThumbnailLoader;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroid/widget/ImageView;Lcom/metamoji/cm/Size;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public clearTask()V
    .locals 0

    return-void
.end method
