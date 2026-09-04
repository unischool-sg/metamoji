.class public final Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;
.super Ljava/lang/Object;
.source "MfFileItemDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00060\u0001j\u0002`\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "run",
        "",
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
.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

.field final synthetic this$1:Lcom/metamoji/media/video/dialog/MfFileItemDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->getPausingOnTracking()Z

    move-result v0

    if-nez v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "controls"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    invoke-static {v3}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvExoVideoPlayer;->getSeekPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Playing:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-ne v0, v1, :cond_3

    .line 377
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models$mSeekLoop$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->getHandler()Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
