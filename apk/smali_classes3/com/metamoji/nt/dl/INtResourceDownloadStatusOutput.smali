.class public interface abstract Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;
.super Ljava/lang/Object;
.source "NtDownloadProgressListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\u0003H&J\u0008\u0010\u000c\u001a\u00020\u0003H&\u00a8\u0006\r\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;",
        "",
        "beginResourceDownload",
        "",
        "message",
        "",
        "cancelListener",
        "Landroid/view/View$OnClickListener;",
        "progressResourceDownload",
        "percent",
        "",
        "setResourceDownloadCancellable",
        "endResourceDownload",
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
.method public abstract beginResourceDownload(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
.end method

.method public abstract endResourceDownload()V
.end method

.method public abstract progressResourceDownload(I)V
.end method

.method public abstract setResourceDownloadCancellable()V
.end method
