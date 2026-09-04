.class public final Lcom/metamoji/video/AmvTrimmingController$Models;
.super Ljava/lang/Object;
.source "AmvTrimmingController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvTrimmingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Models"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013\"\u0004\u0008\u0017\u0010\u0015R\u0011\u0010\u0018\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/video/AmvTrimmingController$Models;",
        "",
        "<init>",
        "(Lcom/metamoji/video/AmvTrimmingController;)V",
        "v",
        "Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "playerState",
        "getPlayerState",
        "()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "setPlayerState",
        "(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V",
        "naturalDuration",
        "",
        "getNaturalDuration",
        "()J",
        "setNaturalDuration",
        "(J)V",
        "isPlayerPrepared",
        "",
        "()Z",
        "setPlayerPrepared",
        "(Z)V",
        "isVideoInfoPrepared",
        "setVideoInfoPrepared",
        "isPlaying",
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


# instance fields
.field private isPlayerPrepared:Z

.field private isVideoInfoPrepared:Z

.field private naturalDuration:J

.field private playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

.field final synthetic this$0:Lcom/metamoji/video/AmvTrimmingController;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvTrimmingController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$Models;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    sget-object p1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->None:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    return-void
.end method


# virtual methods
.method public final getNaturalDuration()J
    .locals 2

    .line 274
    iget-wide v0, p0, Lcom/metamoji/video/AmvTrimmingController$Models;->naturalDuration:J

    return-wide v0
.end method

.method public final getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    return-object v0
.end method

.method public final isPlayerPrepared()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/metamoji/video/AmvTrimmingController$Models;->isPlayerPrepared:Z

    return v0
.end method

.method public final isPlaying()Z
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    sget-object v1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Playing:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isVideoInfoPrepared()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/metamoji/video/AmvTrimmingController$Models;->isVideoInfoPrepared:Z

    return v0
.end method

.method public final setNaturalDuration(J)V
    .locals 0

    .line 274
    iput-wide p1, p0, Lcom/metamoji/video/AmvTrimmingController$Models;->naturalDuration:J

    return-void
.end method

.method public final setPlayerPrepared(Z)V
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/metamoji/video/AmvTrimmingController$Models;->isPlayerPrepared:Z

    return-void
.end method

.method public final setPlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    .line 270
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Models;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getControls$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Controls;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvTrimmingController$Controls;->onUpdatePlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V

    return-void
.end method

.method public final setVideoInfoPrepared(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lcom/metamoji/video/AmvTrimmingController$Models;->isVideoInfoPrepared:Z

    return-void
.end method
