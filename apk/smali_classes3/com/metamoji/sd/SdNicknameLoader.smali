.class public final Lcom/metamoji/sd/SdNicknameLoader;
.super Ljava/lang/Object;
.source "SdNicknameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/sd/SdNicknameLoader$Task;
    }
.end annotation


# static fields
.field private static _instance:Lcom/metamoji/sd/SdNicknameLoader;


# instance fields
.field private _executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/metamoji/sd/SdNicknameLoader;

    invoke-direct {v0}, Lcom/metamoji/sd/SdNicknameLoader;-><init>()V

    sput-object v0, Lcom/metamoji/sd/SdNicknameLoader;->_instance:Lcom/metamoji/sd/SdNicknameLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/sd/SdNicknameLoader;->_executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/sd/SdNicknameLoader;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/sd/SdNicknameLoader;->_instance:Lcom/metamoji/sd/SdNicknameLoader;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/metamoji/sd/SdNicknameLoader;->_executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/metamoji/sd/SdNicknameLoader$Task;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/sd/SdNicknameLoader$Task;-><init>(Lcom/metamoji/sd/SdNicknameLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
