.class public interface abstract Lcom/metamoji/video/IAmvVideoController;
.super Ljava/lang/Object;
.source "IAmvVideoController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u000c\u001a\u00020\u0003H&R\u0018\u0010\u0006\u001a\u00020\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\r\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/video/IAmvVideoController;",
        "",
        "setVideoPlayer",
        "",
        "player",
        "Lcom/metamoji/video/IAmvVideoPlayer;",
        "isReadOnly",
        "",
        "()Z",
        "setReadOnly",
        "(Z)V",
        "isSeekingBySlider",
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
.method public abstract dispose()V
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract isSeekingBySlider()Z
.end method

.method public abstract setReadOnly(Z)V
.end method

.method public abstract setVideoPlayer(Lcom/metamoji/video/IAmvVideoPlayer;)V
.end method
