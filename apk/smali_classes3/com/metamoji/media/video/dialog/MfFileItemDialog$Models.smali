.class public final Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;
.super Ljava/lang/Object;
.source "MfFileItemDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfFileItemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Models"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t*\u0001\u000f\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000b\"\u0004\u0008\u0012\u0010\rR$\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R$\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000b\"\u0004\u0008\u001c\u0010\r\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;",
        "",
        "<init>",
        "(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "pausingOnTracking",
        "",
        "getPausingOnTracking",
        "()Z",
        "setPausingOnTracking",
        "(Z)V",
        "mSeekLoop",
        "com/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1",
        "Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;",
        "isPlayerPrepared",
        "setPlayerPrepared",
        "state",
        "Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "playerState",
        "getPlayerState",
        "()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "setPlayerState",
        "(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V",
        "v",
        "isPlaying",
        "setPlaying",
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


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isPlayerPrepared:Z

.field private isPlaying:Z

.field private final mSeekLoop:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;

.field private pausingOnTracking:Z

.field private playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->handler:Landroid/os/Handler;

    .line 371
    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->mSeekLoop:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;

    .line 384
    sget-object p1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->None:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getPausingOnTracking()Z
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->pausingOnTracking:Z

    return v0
.end method

.method public final getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    return-object v0
.end method

.method public final isPlayerPrepared()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->isPlayerPrepared:Z

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->isPlaying:Z

    return v0
.end method

.method public final setPausingOnTracking(Z)V
    .locals 0

    .line 369
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->pausingOnTracking:Z

    return-void
.end method

.method public final setPlayerPrepared(Z)V
    .locals 0

    .line 382
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->isPlayerPrepared:Z

    return-void
.end method

.method public final setPlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V
    .locals 8

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-eq v0, p1, :cond_e

    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->pausingOnTracking:Z

    if-nez v0, :cond_e

    .line 387
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    .line 388
    sget-object v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto/16 :goto_3

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {p1, v3}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$setRestoringData$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;)V

    .line 415
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    move-result-object p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    invoke-virtual {v3}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getErrorInfo()Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel$ErrorInfo;->setError(I)V

    goto/16 :goto_3

    .line 411
    :cond_2
    iput-boolean v1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->isPlayerPrepared:Z

    goto/16 :goto_3

    .line 395
    :cond_3
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getRestoringData$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 396
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getRestoringData$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;

    move-result-object p1

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;->getSeekPosition()J

    move-result-wide v6

    goto :goto_1

    :cond_4
    move-wide v6, v4

    .line 397
    :goto_1
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getRestoringData$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;->isPlaying()Z

    move-result p1

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_2
    cmp-long v2, v6, v4

    .line 399
    const-string v4, "controls"

    if-lez v2, :cond_8

    .line 400
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {v2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_6
    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/metamoji/video/AmvExoVideoPlayer;->seekTo(J)V

    .line 401
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {v2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_7
    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    :cond_8
    if-eqz p1, :cond_a

    .line 404
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_9
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->play()V

    .line 406
    :cond_a
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {p1, v3}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$setRestoringData$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;)V

    goto :goto_3

    .line 391
    :cond_b
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->mSeekLoop:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    sget-object v2, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Playing:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-ne p1, v2, :cond_d

    goto :goto_4

    :cond_d
    move v0, v1

    :goto_4
    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->setPlaying(Z)V

    :cond_e
    return-void
.end method

.method public final setPlaying(Z)V
    .locals 1

    .line 426
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->isPlaying:Z

    if-eq p1, v0, :cond_1

    .line 427
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->isPlaying:Z

    .line 428
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "controls"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->updatePlayButton()V

    :cond_1
    return-void
.end method
