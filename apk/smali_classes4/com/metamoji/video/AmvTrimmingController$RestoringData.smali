.class final Lcom/metamoji/video/AmvTrimmingController$RestoringData;
.super Ljava/lang/Object;
.source "AmvTrimmingController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvTrimmingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RestoringData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\nR\u0014\u0010\u000b\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\nR\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/video/AmvTrimmingController$RestoringData;",
        "",
        "data",
        "Lcom/metamoji/video/AmvTrimmingController$SavedData;",
        "<init>",
        "(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvTrimmingController$SavedData;)V",
        "getData",
        "()Lcom/metamoji/video/AmvTrimmingController$SavedData;",
        "isPlayerPrepared",
        "",
        "()Z",
        "isVideoInfoPrepared",
        "isPlayerRestored",
        "isSliderRestored",
        "onFatalError",
        "",
        "tryRestoring",
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
.field private final data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

.field private isPlayerRestored:Z

.field private isSliderRestored:Z

.field final synthetic this$0:Lcom/metamoji/video/AmvTrimmingController;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvTrimmingController$SavedData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/video/AmvTrimmingController$SavedData;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

    return-void
.end method

.method private final isPlayerPrepared()Z
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getModels$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Models;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Models;->isPlayerPrepared()Z

    move-result v0

    return v0
.end method

.method private final isVideoInfoPrepared()Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getModels$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Models;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Models;->isVideoInfoPrepared()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getData()Lcom/metamoji/video/AmvTrimmingController$SavedData;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

    return-object v0
.end method

.method public final onFatalError()V
    .locals 2

    .line 551
    sget-object v0, Lcom/metamoji/video/AmvTrimmingController;->Companion:Lcom/metamoji/video/AmvTrimmingController$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "abort restoring."

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/video/AmvTrimmingController;->access$setRestoringData$p(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvTrimmingController$RestoringData;)V

    return-void
.end method

.method public final tryRestoring()V
    .locals 7

    .line 556
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->isPlayerPrepared()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->isPlayerRestored:Z

    if-nez v0, :cond_4

    .line 557
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$SavedData;->isPlaying()Z

    move-result v0

    const-string v3, "mPlayer"

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMPlayer$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v4, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-virtual {v4}, Lcom/metamoji/video/AmvTrimmingController;->getTrimmingRange()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/metamoji/video/IAmvVideoPlayer;->setClip(Lcom/metamoji/video/IAmvVideoPlayer$Clipping;)V

    .line 559
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMPlayer$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-interface {v0}, Lcom/metamoji/video/IAmvVideoPlayer;->play()V

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMPlayer$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v3, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

    invoke-virtual {v3}, Lcom/metamoji/video/AmvTrimmingController$SavedData;->getSeekPosition()J

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/metamoji/video/IAmvVideoPlayer;->seekTo(J)V

    .line 562
    iput-boolean v1, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->isPlayerRestored:Z

    .line 564
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->isVideoInfoPrepared()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->isSliderRestored:Z

    if-nez v0, :cond_7

    .line 565
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getControls$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

    invoke-virtual {v3}, Lcom/metamoji/video/AmvTrimmingController$SavedData;->getTrimStart()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/metamoji/video/AmvSlider;->setTrimStartPosition(J)V

    .line 566
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$SavedData;->getTrimEnd()J

    move-result-wide v3

    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$SavedData;->getTrimStart()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_5

    .line 567
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getControls$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

    invoke-virtual {v3}, Lcom/metamoji/video/AmvTrimmingController$SavedData;->getTrimEnd()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/metamoji/video/AmvSlider;->setTrimEndPosition(J)V

    .line 569
    :cond_5
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$SavedData;->getTrimStart()J

    move-result-wide v3

    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$SavedData;->getCurrent()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$SavedData;->getCurrent()J

    move-result-wide v3

    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$SavedData;->getTrimEnd()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    .line 570
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getControls$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->data:Lcom/metamoji/video/AmvTrimmingController$SavedData;

    invoke-virtual {v3}, Lcom/metamoji/video/AmvTrimmingController$SavedData;->getCurrent()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    .line 572
    :cond_6
    iput-boolean v1, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->isSliderRestored:Z

    .line 575
    :cond_7
    iget-boolean v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->isPlayerRestored:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->isSliderRestored:Z

    if-eqz v0, :cond_8

    .line 576
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0, v2}, Lcom/metamoji/video/AmvTrimmingController;->access$setRestoringData$p(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvTrimmingController$RestoringData;)V

    :cond_8
    return-void
.end method
