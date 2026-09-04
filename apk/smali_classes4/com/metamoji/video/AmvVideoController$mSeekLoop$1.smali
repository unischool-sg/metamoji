.class public final Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;
.super Ljava/lang/Object;
.source "AmvVideoController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/AmvVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/metamoji/video/AmvVideoController$mSeekLoop$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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
.field final synthetic this$0:Lcom/metamoji/video/AmvVideoController;


# direct methods
.method constructor <init>(Lcom/metamoji/video/AmvVideoController;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;->this$0:Lcom/metamoji/video/AmvVideoController;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 376
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getMPausingOnTracking$p(Lcom/metamoji/video/AmvVideoController;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "mPlayer"

    if-nez v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getMPlayer$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lcom/metamoji/video/IAmvVideoPlayer;->getSeekPosition()J

    move-result-wide v3

    .line 378
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;->this$0:Lcom/metamoji/video/AmvVideoController;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v3, v4, v5, v6}, Lcom/metamoji/video/AmvVideoController;->access$updateSeekPosition(Lcom/metamoji/video/AmvVideoController;JZZ)V

    .line 379
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getMStopAt$p(Lcom/metamoji/video/AmvVideoController;)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v0, v7, v5

    if-gtz v0, :cond_2

    cmp-long v0, v5, v3

    if-gtz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getMPlayer$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-interface {v0}, Lcom/metamoji/video/IAmvVideoPlayer;->pause()V

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getMPlayer$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Lcom/metamoji/video/IAmvVideoPlayer;->isPlayingOrReservedToPlay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 384
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getMHandler$p(Lcom/metamoji/video/AmvVideoController;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
