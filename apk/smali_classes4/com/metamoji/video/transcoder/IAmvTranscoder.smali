.class public interface abstract Lcom/metamoji/video/transcoder/IAmvTranscoder;
.super Ljava/lang/Object;
.source "IAmvTranscoder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H&J \u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H&J\u0008\u0010\u0016\u001a\u00020\u0005H&J\u0008\u0010\u0017\u001a\u00020\u0005H&R$\u0010\u0002\u001a\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R$\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0007R\u0012\u0010\u000b\u001a\u00020\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
        "",
        "completionListener",
        "Lcom/metamoji/lib/utils/FuncyListener2;",
        "",
        "",
        "getCompletionListener",
        "()Lcom/metamoji/lib/utils/FuncyListener2;",
        "progressListener",
        "",
        "getProgressListener",
        "error",
        "Lcom/metamoji/video/AmvError;",
        "getError",
        "()Lcom/metamoji/video/AmvError;",
        "transcode",
        "distFile",
        "Ljava/io/File;",
        "truncate",
        "start",
        "",
        "end",
        "cancel",
        "dispose",
        "video"
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
.method public abstract cancel()V
.end method

.method public abstract dispose()V
.end method

.method public abstract getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getError()Lcom/metamoji/video/AmvError;
.end method

.method public abstract getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract transcode(Ljava/io/File;)V
.end method

.method public abstract truncate(Ljava/io/File;JJ)V
.end method
