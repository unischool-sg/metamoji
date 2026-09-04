.class final Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;
.super Ljava/lang/Object;
.source "AmvFrameSelectorView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvFrameSelectorView;
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
        "Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;",
        "",
        "data",
        "Lcom/metamoji/video/AmvFrameSelectorView$SavedData;",
        "<init>",
        "(Lcom/metamoji/video/AmvFrameSelectorView;Lcom/metamoji/video/AmvFrameSelectorView$SavedData;)V",
        "getData",
        "()Lcom/metamoji/video/AmvFrameSelectorView$SavedData;",
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
.field private final data:Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

.field private isPlayerRestored:Z

.field private isSliderRestored:Z

.field final synthetic this$0:Lcom/metamoji/video/AmvFrameSelectorView;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvFrameSelectorView;Lcom/metamoji/video/AmvFrameSelectorView$SavedData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/video/AmvFrameSelectorView$SavedData;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iput-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->data:Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

    return-void
.end method

.method private final isPlayerPrepared()Z
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-static {v0}, Lcom/metamoji/video/AmvFrameSelectorView;->access$getModels$p(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/AmvFrameSelectorView$Models;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Models;->isPlayerPrepared()Z

    move-result v0

    return v0
.end method

.method private final isVideoInfoPrepared()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-static {v0}, Lcom/metamoji/video/AmvFrameSelectorView;->access$getModels$p(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/AmvFrameSelectorView$Models;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Models;->isVideoInfoPrepared()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getData()Lcom/metamoji/video/AmvFrameSelectorView$SavedData;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->data:Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

    return-object v0
.end method

.method public final onFatalError()V
    .locals 2

    .line 277
    sget-object v0, Lcom/metamoji/video/AmvFrameSelectorView;->Companion:Lcom/metamoji/video/AmvFrameSelectorView$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "abort restoring."

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/video/AmvFrameSelectorView;->access$setRestoringData$p(Lcom/metamoji/video/AmvFrameSelectorView;Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;)V

    return-void
.end method

.method public final tryRestoring()V
    .locals 4

    .line 282
    invoke-direct {p0}, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->isPlayerPrepared()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->isPlayerRestored:Z

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-static {v0}, Lcom/metamoji/video/AmvFrameSelectorView;->access$getControls$p(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->data:Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvFrameSelectorView$SavedData;->getSeekPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/video/AmvExoVideoPlayer;->seekTo(J)V

    .line 284
    :cond_0
    iput-boolean v1, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->isPlayerRestored:Z

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->isVideoInfoPrepared()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->isSliderRestored:Z

    if-nez v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-static {v0}, Lcom/metamoji/video/AmvFrameSelectorView;->access$getControls$p(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->data:Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvFrameSelectorView$SavedData;->getSeekPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    .line 288
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-static {v0}, Lcom/metamoji/video/AmvFrameSelectorView;->access$getControls$p(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getFrameListView()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->data:Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvFrameSelectorView$SavedData;->getSeekPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/video/AmvFrameListView;->setPosition(J)V

    .line 289
    iput-boolean v1, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->isSliderRestored:Z

    .line 292
    :cond_2
    iget-boolean v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->isPlayerRestored:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->isSliderRestored:Z

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/video/AmvFrameSelectorView;->access$setRestoringData$p(Lcom/metamoji/video/AmvFrameSelectorView;Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;)V

    :cond_3
    return-void
.end method
