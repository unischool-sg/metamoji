.class public interface abstract Lcom/metamoji/nt/dl/INtDownloadProgressListener;
.super Ljava/lang/Object;
.source "NtDownloadProgressListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0008\u0010\u000b\u001a\u00020\u0003H&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&\u00a8\u0006\u000f\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/INtDownloadProgressListener;",
        "",
        "onDownloadBegin",
        "",
        "messageId",
        "",
        "count",
        "total",
        "onDownloadProgress",
        "percent",
        "onDownloadCancelEnabled",
        "onDownloadEnd",
        "connectManager",
        "manager",
        "Lcom/metamoji/nt/dl/NtResourceDownloadManager;",
        "app"
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
.method public abstract connectManager(Lcom/metamoji/nt/dl/NtResourceDownloadManager;)V
.end method

.method public abstract onDownloadBegin(III)V
.end method

.method public abstract onDownloadCancelEnabled()V
.end method

.method public abstract onDownloadEnd()V
.end method

.method public abstract onDownloadProgress(I)V
.end method
