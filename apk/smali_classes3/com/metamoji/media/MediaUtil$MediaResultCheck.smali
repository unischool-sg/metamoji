.class public Lcom/metamoji/media/MediaUtil$MediaResultCheck;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaResultCheck"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showError(Ljava/lang/String;)V
    .locals 2

    .line 463
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/MediaUtil$MediaResultCheck$1;

    invoke-direct {v1, p0}, Lcom/metamoji/media/MediaUtil$MediaResultCheck$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected onError(Ljava/lang/String;)V
    .locals 0

    .line 476
    invoke-static {p1}, Lcom/metamoji/media/MediaUtil$MediaResultCheck;->showError(Ljava/lang/String;)V

    return-void
.end method

.method public result(ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 481
    invoke-virtual {p0, p2}, Lcom/metamoji/media/MediaUtil$MediaResultCheck;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
