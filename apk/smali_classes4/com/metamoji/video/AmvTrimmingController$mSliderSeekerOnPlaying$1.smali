.class public final Lcom/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1;
.super Ljava/lang/Object;
.source "AmvTrimmingController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/AmvTrimmingController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
        "com/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1",
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
.field final synthetic this$0:Lcom/metamoji/video/AmvTrimmingController;


# direct methods
.method constructor <init>(Lcom/metamoji/video/AmvTrimmingController;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 432
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getPausingOnTracking$p(Lcom/metamoji/video/AmvTrimmingController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMPlayer$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "mPlayer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v1}, Lcom/metamoji/video/IAmvVideoPlayer;->getSeekPosition()J

    move-result-wide v1

    const/4 v3, 0x0

    sget-object v4, Lcom/metamoji/video/AmvSlider$Knob;->NONE:Lcom/metamoji/video/AmvSlider$Knob;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/metamoji/video/AmvTrimmingController;->access$updateSeekPosition(Lcom/metamoji/video/AmvTrimmingController;JZLcom/metamoji/video/AmvSlider$Knob;)V

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getModels$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Models;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Models;->getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Playing:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-ne v0, v1, :cond_2

    .line 436
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMHandler$p(Lcom/metamoji/video/AmvTrimmingController;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
