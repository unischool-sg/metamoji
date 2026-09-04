.class public interface abstract Lcom/metamoji/lib/utils/UtAsyncTask$IHandler;
.super Ljava/lang/Object;
.source "UtAsyncTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/UtAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH&\u00a8\u0006\u000b\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtAsyncTask$IHandler;",
        "",
        "onFinished",
        "",
        "caller",
        "Lcom/metamoji/lib/utils/UtAsyncTask;",
        "result",
        "",
        "onProgress",
        "percent",
        "",
        "utils"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onFinished(Lcom/metamoji/lib/utils/UtAsyncTask;Z)V
.end method

.method public abstract onProgress(Lcom/metamoji/lib/utils/UtAsyncTask;I)V
.end method
