.class public final Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;
.super Ljava/lang/Object;
.source "AmvExoVideoPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvExoVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SeekManager"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0005H\u0007J\u0006\u0010\u0015\u001a\u00020\u0012J\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0005J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0005H\u0003J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0005H\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001a\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;",
        "",
        "<init>",
        "(Lcom/metamoji/video/AmvExoVideoPlayer;)V",
        "mInterval",
        "",
        "mWaitCount",
        "",
        "mPercent",
        "mSeekTarget",
        "mSeeking",
        "",
        "mCheckCounter",
        "mThreshold",
        "mFastMode",
        "mLoop",
        "Ljava/lang/Runnable;",
        "checkAndSeek",
        "",
        "begin",
        "duration",
        "end",
        "request",
        "pos",
        "fastSeek",
        "exactSeek",
        "isSeeking",
        "()Z",
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
.field private mCheckCounter:I

.field private mFastMode:Z

.field private final mInterval:J

.field private final mLoop:Ljava/lang/Runnable;

.field private final mPercent:I

.field private mSeekTarget:J

.field private mSeeking:Z

.field private mThreshold:J

.field private final mWaitCount:I

.field final synthetic this$0:Lcom/metamoji/video/AmvExoVideoPlayer;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvExoVideoPlayer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 646
    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x64

    .line 647
    iput-wide v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mInterval:J

    const/4 p1, 0x5

    .line 648
    iput p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mWaitCount:I

    const/4 p1, 0x1

    .line 649
    iput p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mPercent:I

    const-wide/16 v0, -0x1

    .line 650
    iput-wide v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeekTarget:J

    .line 657
    new-instance p1, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;)V

    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mLoop:Ljava/lang/Runnable;

    return-void
.end method

.method private final checkAndSeek()V
    .locals 4

    .line 666
    iget-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeeking:Z

    if-eqz v0, :cond_2

    .line 667
    iget v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mCheckCounter:I

    iget v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mWaitCount:I

    if-lt v0, v1, :cond_1

    iget-wide v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeekTarget:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMBindings$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "seek: checked ok, but loading now"

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_0
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "seek: checked ok"

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 672
    iget-wide v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeekTarget:J

    invoke-direct {p0, v0, v1}, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->exactSeek(J)V

    const/4 v0, 0x0

    .line 673
    iput v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mCheckCounter:I

    .line 676
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    iget-object v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mLoop:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mInterval:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/video/AmvExoVideoPlayer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private final exactSeek(J)V
    .locals 3

    .line 743
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exact seek - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 744
    iget-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mFastMode:Z

    if-eqz v0, :cond_0

    .line 745
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "switch to exact seek"

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 746
    iput-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mFastMode:Z

    .line 747
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMPlayer$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    sget-object v1, Landroidx/media3/exoplayer/SeekParameters;->EXACT:Landroidx/media3/exoplayer/SeekParameters;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {v0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$playerSeek(Lcom/metamoji/video/AmvExoVideoPlayer;J)V

    return-void
.end method

.method private final fastSeek(J)V
    .locals 3

    .line 729
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fast seek - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMBindings$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 733
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mFastMode:Z

    if-nez v0, :cond_1

    .line 734
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "switch to fast seek"

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 735
    iput-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mFastMode:Z

    .line 736
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMPlayer$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    sget-object v1, Landroidx/media3/exoplayer/SeekParameters;->CLOSEST_SYNC:Landroidx/media3/exoplayer/SeekParameters;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {v0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$playerSeek(Lcom/metamoji/video/AmvExoVideoPlayer;J)V

    return-void
.end method

.method static final mLoop$lambda$0(Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;)V
    .locals 1

    .line 658
    iget v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mCheckCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mCheckCounter:I

    .line 659
    invoke-direct {p0}, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->checkAndSeek()V

    return-void
.end method


# virtual methods
.method public final begin(J)V
    .locals 2

    .line 685
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "seek begin"

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 686
    iget-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeeking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 687
    iput-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeeking:Z

    .line 688
    iput-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mFastMode:Z

    .line 689
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMPlayer$p(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    sget-object v1, Landroidx/media3/exoplayer/SeekParameters;->CLOSEST_SYNC:Landroidx/media3/exoplayer/SeekParameters;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V

    const-wide/16 v0, -0x1

    .line 690
    iput-wide v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeekTarget:J

    .line 691
    iget v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mPercent:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const/16 v0, 0x64

    int-to-long v0, v0

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mThreshold:J

    .line 692
    iget-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->this$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->access$getMHandler(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mLoop:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final end()V
    .locals 4

    .line 700
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "seek end"

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 701
    iget-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeeking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 702
    iput-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeeking:Z

    .line 703
    iget-wide v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeekTarget:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 704
    invoke-direct {p0, v0, v1}, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->exactSeek(J)V

    const-wide/16 v0, -0x1

    .line 705
    iput-wide v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeekTarget:J

    :cond_0
    return-void
.end method

.method public final isSeeking()Z
    .locals 1

    .line 753
    iget-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeeking:Z

    return v0
.end method

.method public final request(J)V
    .locals 4

    .line 714
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seek request - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 715
    iget-boolean v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeeking:Z

    if-eqz v0, :cond_2

    .line 716
    iget-wide v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeekTarget:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mThreshold:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 717
    :cond_0
    sget-object v0, Lcom/metamoji/video/AmvExoVideoPlayer;->Companion:Lcom/metamoji/video/AmvExoVideoPlayer$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mCheckCounter:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reset check count - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 718
    iput v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mCheckCounter:I

    .line 720
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->fastSeek(J)V

    .line 721
    iput-wide p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mSeekTarget:J

    return-void

    .line 723
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->exactSeek(J)V

    return-void
.end method
