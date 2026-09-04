.class final Lcom/metamoji/video/AmvVideoController$Models;
.super Ljava/lang/Object;
.source "AmvVideoController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Models"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvVideoController$Models$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\t\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\n\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\tR$\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0007\"\u0004\u0008\u000e\u0010\tR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0014\u0010\u0012R\u001a\u0010\u0017\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\tR\u001a\u0010\u0019\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0007\"\u0004\u0008\u001a\u0010\tR$\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0007\"\u0004\u0008\u001c\u0010\tR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001e@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010%\u001a\u00020$2\u0006\u0010\u0004\u001a\u00020$@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R$\u0010*\u001a\u00020$2\u0006\u0010\u0004\u001a\u00020$@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\'\"\u0004\u0008,\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/metamoji/video/AmvVideoController$Models;",
        "",
        "<init>",
        "(Lcom/metamoji/video/AmvVideoController;)V",
        "v",
        "",
        "isPlaying",
        "()Z",
        "setPlaying",
        "(Z)V",
        "isReadOnly",
        "setReadOnly",
        "showingFrames",
        "getShowingFrames",
        "setShowingFrames",
        "buttonCount",
        "",
        "getButtonCount",
        "()I",
        "minControllerWidth",
        "getMinControllerWidth",
        "minControllerWidth$delegate",
        "Lkotlin/Lazy;",
        "isVideoInfoPrepared",
        "setVideoInfoPrepared",
        "isDurationAvailable",
        "setDurationAvailable",
        "isPlayerPrepared",
        "setPlayerPrepared",
        "state",
        "Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "playerState",
        "getPlayerState",
        "()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "setPlayerState",
        "(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V",
        "",
        "currentPosition",
        "getCurrentPosition",
        "()J",
        "setCurrentPosition",
        "(J)V",
        "duration",
        "getDuration",
        "setDuration",
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
.field private currentPosition:J

.field private duration:J

.field private isDurationAvailable:Z

.field private isPlayerPrepared:Z

.field private isPlaying:Z

.field private isReadOnly:Z

.field private isVideoInfoPrepared:Z

.field private final minControllerWidth$delegate:Lkotlin/Lazy;

.field private playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

.field private showingFrames:Z

.field final synthetic this$0:Lcom/metamoji/video/AmvVideoController;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvVideoController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Models$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/video/AmvVideoController$Models$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvVideoController;Lcom/metamoji/video/AmvVideoController$Models;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->minControllerWidth$delegate:Lkotlin/Lazy;

    .line 321
    sget-object p1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->None:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    const-wide/16 v0, -0x1

    .line 349
    iput-wide v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->currentPosition:J

    return-void
.end method

.method private final getButtonCount()I
    .locals 1

    .line 303
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getAllowPictureInPicture()Z

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method static final minControllerWidth_delegate$lambda$0(Lcom/metamoji/video/AmvVideoController;Lcom/metamoji/video/AmvVideoController$Models;)I
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1}, Lcom/metamoji/video/AmvVideoController$Models;->getButtonCount()I

    move-result p1

    mul-int/lit8 p1, p1, 0x28

    invoke-static {p0, p1}, Lcom/metamoji/video/AmvUtilsKt;->dp2px(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getCurrentPosition()J
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->currentPosition:J

    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    .line 357
    iget-wide v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->duration:J

    return-wide v0
.end method

.method public final getMinControllerWidth()I
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->minControllerWidth$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    return-object v0
.end method

.method public final getShowingFrames()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->showingFrames:Z

    return v0
.end method

.method public final isDurationAvailable()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->isDurationAvailable:Z

    return v0
.end method

.method public final isPlayerPrepared()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->isPlayerPrepared:Z

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->isPlaying:Z

    return v0
.end method

.method public final isReadOnly()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->isReadOnly:Z

    return v0
.end method

.method public final isVideoInfoPrepared()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->isVideoInfoPrepared:Z

    return v0
.end method

.method public final setCurrentPosition(J)V
    .locals 2

    .line 351
    iget-wide v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->currentPosition:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 352
    iput-wide p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->currentPosition:J

    .line 353
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {p1}, Lcom/metamoji/video/AmvVideoController;->access$getControls$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Controls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvVideoController$Controls;->updateCounter()V

    :cond_0
    return-void
.end method

.method public final setDuration(J)V
    .locals 4

    .line 359
    iget-wide v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->duration:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 360
    iput-wide p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->duration:J

    .line 361
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getControls$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->updateCounter()V

    .line 362
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getControls$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/video/AmvSlider;->resetWithValueRange(JZ)V

    .line 363
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {p1}, Lcom/metamoji/video/AmvVideoController;->access$getControls$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Controls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvVideoController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {p2}, Lcom/metamoji/video/AmvVideoController;->access$getMPlayer$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "mPlayer"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p2}, Lcom/metamoji/video/IAmvVideoPlayer;->getSeekPosition()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    .line 364
    iput-boolean v1, p0, Lcom/metamoji/video/AmvVideoController$Models;->isDurationAvailable:Z

    :cond_1
    return-void
.end method

.method public final setDurationAvailable(Z)V
    .locals 0

    .line 310
    iput-boolean p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->isDurationAvailable:Z

    return-void
.end method

.method public final setPlayerPrepared(Z)V
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->isPlayerPrepared:Z

    if-eq v0, p1, :cond_0

    .line 315
    iput-boolean p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->isPlayerPrepared:Z

    .line 316
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {p1}, Lcom/metamoji/video/AmvVideoController;->access$getControls$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Controls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvVideoController$Controls;->updatePlayerPrepared()V

    :cond_0
    return-void
.end method

.method public final setPlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V
    .locals 6

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-eq v0, p1, :cond_7

    .line 324
    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    .line 325
    sget-object v0, Lcom/metamoji/video/AmvVideoController;->Companion:Lcom/metamoji/video/AmvVideoController$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PlayState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/metamoji/video/AmvVideoController$Models$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {p1}, Lcom/metamoji/video/AmvVideoController;->access$getMStopAt$p(Lcom/metamoji/video/AmvVideoController;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_5

    .line 338
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {p1}, Lcom/metamoji/video/AmvVideoController;->access$getMPlayer$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "mPlayer"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v2}, Lcom/metamoji/video/AmvVideoController;->access$getMStopAt$p(Lcom/metamoji/video/AmvVideoController;)J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lcom/metamoji/video/IAmvVideoPlayer;->seekTo(J)V

    .line 339
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    const-wide/16 v2, -0x1

    invoke-static {p1, v2, v3}, Lcom/metamoji/video/AmvVideoController;->access$setMStopAt$p(Lcom/metamoji/video/AmvVideoController;J)V

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {p0, v1}, Lcom/metamoji/video/AmvVideoController$Models;->setPlayerPrepared(Z)V

    goto :goto_0

    .line 332
    :cond_3
    invoke-virtual {p0, v1}, Lcom/metamoji/video/AmvVideoController$Models;->setPlayerPrepared(Z)V

    goto :goto_0

    .line 330
    :cond_4
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {p1}, Lcom/metamoji/video/AmvVideoController;->access$startSeekLoop(Lcom/metamoji/video/AmvVideoController;)V

    .line 345
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->playerState:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    sget-object v2, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Playing:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-ne p1, v2, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvVideoController$Models;->setPlaying(Z)V

    :cond_7
    return-void
.end method

.method public final setPlaying(Z)V
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->isPlaying:Z

    if-eq p1, v0, :cond_0

    .line 280
    iput-boolean p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->isPlaying:Z

    .line 281
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {p1}, Lcom/metamoji/video/AmvVideoController;->access$getControls$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Controls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvVideoController$Controls;->updatePlaying()V

    :cond_0
    return-void
.end method

.method public final setReadOnly(Z)V
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->isReadOnly:Z

    if-eq v0, p1, :cond_0

    .line 288
    iput-boolean p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->isReadOnly:Z

    .line 289
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {p1}, Lcom/metamoji/video/AmvVideoController;->access$getControls$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Controls;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvVideoController$Controls;->updateReadOnly()V

    :cond_0
    return-void
.end method

.method public final setShowingFrames(Z)V
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->showingFrames:Z

    if-eq v0, p1, :cond_0

    .line 296
    iput-boolean p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->showingFrames:Z

    .line 297
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController;->access$getControls$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Controls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->updateShowingFrame()V

    .line 298
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Models;->this$0:Lcom/metamoji/video/AmvVideoController;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController;->getFrameVisibilityChanged()Lcom/metamoji/lib/utils/FuncyListener1;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/FuncyListener1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setVideoInfoPrepared(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/metamoji/video/AmvVideoController$Models;->isVideoInfoPrepared:Z

    return-void
.end method
