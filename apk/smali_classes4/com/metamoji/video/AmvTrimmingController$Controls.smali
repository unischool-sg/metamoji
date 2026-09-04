.class public final Lcom/metamoji/video/AmvTrimmingController$Controls;
.super Ljava/lang/Object;
.source "AmvTrimmingController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/AmvTrimmingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Controls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvTrimmingController$Controls$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,J\u0010\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0002J\u0006\u00101\u001a\u00020*J\u0006\u00102\u001a\u00020*J\u0008\u00103\u001a\u00020*H\u0002J\u0006\u00104\u001a\u00020*J\u000e\u00105\u001a\u00020*2\u0006\u00106\u001a\u000200R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000f\u001a\u00020\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\t\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\t\u001a\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\t\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\t\u001a\u0004\u0008 \u0010!R\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\t\u001a\u0004\u0008$\u0010!R\u001b\u0010&\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\t\u001a\u0004\u0008\'\u0010!R\u0011\u00107\u001a\u0002088F\u00a2\u0006\u0006\u001a\u0004\u00089\u0010:\u00a8\u0006;"
    }
    d2 = {
        "Lcom/metamoji/video/AmvTrimmingController$Controls;",
        "",
        "<init>",
        "(Lcom/metamoji/video/AmvTrimmingController;)V",
        "root",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "getRoot",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "root$delegate",
        "Lkotlin/Lazy;",
        "sliderGroup",
        "Landroid/widget/FrameLayout;",
        "getSliderGroup",
        "()Landroid/widget/FrameLayout;",
        "sliderGroup$delegate",
        "slider",
        "Lcom/metamoji/video/AmvSlider;",
        "getSlider",
        "()Lcom/metamoji/video/AmvSlider;",
        "slider$delegate",
        "frameList",
        "Lcom/metamoji/video/AmvFrameListView;",
        "getFrameList",
        "()Lcom/metamoji/video/AmvFrameListView;",
        "frameList$delegate",
        "playButton",
        "Landroid/widget/ImageButton;",
        "getPlayButton",
        "()Landroid/widget/ImageButton;",
        "playButton$delegate",
        "trimStartText",
        "Landroid/widget/TextView;",
        "getTrimStartText",
        "()Landroid/widget/TextView;",
        "trimStartText$delegate",
        "trimmedRangeText",
        "getTrimmedRangeText",
        "trimmedRangeText$delegate",
        "trimEndText",
        "getTrimEndText",
        "trimEndText$delegate",
        "onUpdatePlayerState",
        "",
        "state",
        "Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "formatTime",
        "",
        "time",
        "",
        "updateTrimStartText",
        "updateTrimEndText",
        "updateTrimmedRangeText",
        "initialize",
        "resetWithDuration",
        "duration",
        "height",
        "",
        "getHeight",
        "()I",
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
.field private final frameList$delegate:Lkotlin/Lazy;

.field private final playButton$delegate:Lkotlin/Lazy;

.field private final root$delegate:Lkotlin/Lazy;

.field private final slider$delegate:Lkotlin/Lazy;

.field private final sliderGroup$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/metamoji/video/AmvTrimmingController;

.field private final trimEndText$delegate:Lkotlin/Lazy;

.field private final trimStartText$delegate:Lkotlin/Lazy;

.field private final trimmedRangeText$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lcom/metamoji/video/AmvTrimmingController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->root$delegate:Lkotlin/Lazy;

    .line 138
    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->sliderGroup$delegate:Lkotlin/Lazy;

    .line 141
    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda8;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->slider$delegate:Lkotlin/Lazy;

    .line 144
    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda9;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->frameList$delegate:Lkotlin/Lazy;

    .line 147
    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda10;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->playButton$delegate:Lkotlin/Lazy;

    .line 151
    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda11;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->trimStartText$delegate:Lkotlin/Lazy;

    .line 154
    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->trimmedRangeText$delegate:Lkotlin/Lazy;

    .line 157
    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->trimEndText$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final formatTime(J)Ljava/lang/String;
    .locals 5

    .line 186
    new-instance v0, Lcom/metamoji/video/AmvTimeSpan;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/video/AmvTimeSpan;-><init>(J)V

    .line 187
    new-instance p1, Lcom/metamoji/video/AmvTimeSpan;

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/video/AmvSlider;->getValueRange()J

    move-result-wide v1

    invoke-direct {p1, v1, v2}, Lcom/metamoji/video/AmvTimeSpan;-><init>(J)V

    .line 189
    invoke-virtual {p1}, Lcom/metamoji/video/AmvTimeSpan;->getHours()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTimeSpan;->formatH()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/video/AmvTimeSpan;->getMinutes()J

    move-result-wide p1

    cmp-long p1, p1, v3

    if-lez p1, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTimeSpan;->formatM()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 191
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/video/AmvTimeSpan;->formatS()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static final frameList_delegate$lambda$3(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvFrameListView;
    .locals 1

    .line 145
    sget v0, Lcom/metamoji/video/R$id;->vtc_frameList:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvFrameListView;

    return-object p0
.end method

.method private final getPlayButton()Landroid/widget/ImageButton;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->playButton$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageButton;

    return-object v0
.end method

.method private final getTrimEndText()Landroid/widget/TextView;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->trimEndText$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTrimStartText()Landroid/widget/TextView;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->trimStartText$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final getTrimmedRangeText()Landroid/widget/TextView;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->trimmedRangeText$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method static final initialize$lambda$10(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvTrimmingController$Controls;Lcom/metamoji/video/AmvSlider;JLcom/metamoji/video/AmvSlider$SliderDragState;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "state"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMPlayer$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "mPlayer"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    invoke-interface {p2, v0}, Lcom/metamoji/video/IAmvVideoPlayer;->setClip(Lcom/metamoji/video/IAmvVideoPlayer$Clipping;)V

    .line 228
    sget-object p2, Lcom/metamoji/video/AmvSlider$Knob;->LEFT:Lcom/metamoji/video/AmvSlider$Knob;

    invoke-static {p0, p3, p4, p5, p2}, Lcom/metamoji/video/AmvTrimmingController;->access$sliderPositionChanged(Lcom/metamoji/video/AmvTrimmingController;JLcom/metamoji/video/AmvSlider$SliderDragState;Lcom/metamoji/video/AmvSlider$Knob;)V

    .line 229
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getControls$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Controls;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/metamoji/video/AmvFrameListView;->setTrimStart(J)V

    .line 230
    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingController$Controls;->updateTrimStartText()V

    .line 231
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final initialize$lambda$11(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvTrimmingController$Controls;Lcom/metamoji/video/AmvSlider;JLcom/metamoji/video/AmvSlider$SliderDragState;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "state"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMPlayer$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "mPlayer"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    invoke-interface {p2, v0}, Lcom/metamoji/video/IAmvVideoPlayer;->setClip(Lcom/metamoji/video/IAmvVideoPlayer$Clipping;)V

    .line 234
    sget-object p2, Lcom/metamoji/video/AmvSlider$Knob;->RIGHT:Lcom/metamoji/video/AmvSlider$Knob;

    invoke-static {p0, p3, p4, p5, p2}, Lcom/metamoji/video/AmvTrimmingController;->access$sliderPositionChanged(Lcom/metamoji/video/AmvTrimmingController;JLcom/metamoji/video/AmvSlider$SliderDragState;Lcom/metamoji/video/AmvSlider$Knob;)V

    .line 235
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getControls$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Controls;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lcom/metamoji/video/AmvFrameListView;->setTrimEnd(J)V

    .line 236
    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingController$Controls;->updateTrimEndText()V

    .line 237
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final initialize$lambda$8(Lcom/metamoji/video/AmvTrimmingController;Landroid/view/View;)V
    .locals 3

    .line 211
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMPlayer$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "mPlayer"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    move-result-object p1

    sget-object v2, Lcom/metamoji/video/AmvTrimmingController$Controls$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    return-void

    .line 217
    :cond_1
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMPlayer$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    invoke-interface {v0}, Lcom/metamoji/video/IAmvVideoPlayer;->pause()V

    return-void

    .line 213
    :cond_3
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMPlayer$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController;->getTrimmingRange()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/metamoji/video/IAmvVideoPlayer;->setClip(Lcom/metamoji/video/IAmvVideoPlayer$Clipping;)V

    .line 214
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMPlayer$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object p0

    if-nez p0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v0, p0

    :goto_1
    invoke-interface {v0}, Lcom/metamoji/video/IAmvVideoPlayer;->play()V

    return-void
.end method

.method static final initialize$lambda$9(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvSlider;JLcom/metamoji/video/AmvSlider$SliderDragState;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    sget-object p1, Lcom/metamoji/video/AmvSlider$Knob;->THUMB:Lcom/metamoji/video/AmvSlider$Knob;

    invoke-static {p0, p2, p3, p4, p1}, Lcom/metamoji/video/AmvTrimmingController;->access$sliderPositionChanged(Lcom/metamoji/video/AmvTrimmingController;JLcom/metamoji/video/AmvSlider$SliderDragState;Lcom/metamoji/video/AmvSlider$Knob;)V

    .line 225
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final playButton_delegate$lambda$4(Lcom/metamoji/video/AmvTrimmingController;)Landroid/widget/ImageButton;
    .locals 1

    .line 148
    sget v0, Lcom/metamoji/video/R$id;->vtc_playButton:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    return-object p0
.end method

.method static final root_delegate$lambda$0(Lcom/metamoji/video/AmvTrimmingController;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 136
    sget v0, Lcom/metamoji/video/R$id;->vtc_root:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static final sliderGroup_delegate$lambda$1(Lcom/metamoji/video/AmvTrimmingController;)Landroid/widget/FrameLayout;
    .locals 1

    .line 139
    sget v0, Lcom/metamoji/video/R$id;->vtc_sliderGroup:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static final slider_delegate$lambda$2(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvSlider;
    .locals 1

    .line 142
    sget v0, Lcom/metamoji/video/R$id;->vtc_slider:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/video/AmvSlider;

    return-object p0
.end method

.method static final trimEndText_delegate$lambda$7(Lcom/metamoji/video/AmvTrimmingController;)Landroid/widget/TextView;
    .locals 1

    .line 158
    sget v0, Lcom/metamoji/video/R$id;->vtc_trimEndText:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method static final trimStartText_delegate$lambda$5(Lcom/metamoji/video/AmvTrimmingController;)Landroid/widget/TextView;
    .locals 1

    .line 152
    sget v0, Lcom/metamoji/video/R$id;->vtc_trimStartText:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method static final trimmedRangeText_delegate$lambda$6(Lcom/metamoji/video/AmvTrimmingController;)Landroid/widget/TextView;
    .locals 1

    .line 155
    sget v0, Lcom/metamoji/video/R$id;->vtc_trimmedRangeText:I

    invoke-virtual {p0, v0}, Lcom/metamoji/video/AmvTrimmingController;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private final updateTrimmedRangeText()V
    .locals 3

    .line 205
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getTrimmedRangeText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvSlider;->getTrimmedRange()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/metamoji/video/AmvTrimmingController$Controls;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getFrameList()Lcom/metamoji/video/AmvFrameListView;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->frameList$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvFrameListView;

    return-object v0
.end method

.method public final getHeight()I
    .locals 4

    .line 256
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvSlider;->getSliderHeight(Z)I

    move-result v0

    .line 257
    iget-object v2, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v2}, Lcom/metamoji/video/AmvTrimmingController;->access$getMFrameHeight$p(Lcom/metamoji/video/AmvTrimmingController;)F

    move-result v2

    float-to-int v2, v2

    .line 258
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getTrimStartText()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 259
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getTrimStartText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 260
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getPlayButton()Landroid/widget/ImageButton;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {v3}, Lcom/metamoji/video/AmvUtilsKt;->getLayoutHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0
.end method

.method public final getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->root$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public final getSlider()Lcom/metamoji/video/AmvSlider;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->slider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/video/AmvSlider;

    return-object v0
.end method

.method public final getSliderGroup()Landroid/widget/FrameLayout;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->sliderGroup$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final initialize()V
    .locals 3

    .line 210
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getPlayButton()Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    new-instance v2, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getCurrentPositionChanged()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    new-instance v2, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;->set(Lkotlin/jvm/functions/Function3;)V

    .line 226
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getTrimStartPositionChanged()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    new-instance v2, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvTrimmingController$Controls;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;->set(Lkotlin/jvm/functions/Function3;)V

    .line 232
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getTrimEndPositionChanged()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    new-instance v2, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvTrimmingController$Controls;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;->set(Lkotlin/jvm/functions/Function3;)V

    .line 238
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvSlider;->setSaveFromParentEnabled(Z)V

    .line 240
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameListView;->getTouchFriendListener()Lcom/metamoji/lib/utils/FuncyListener1;

    move-result-object v0

    new-instance v1, Lcom/metamoji/video/AmvTrimmingController$Controls$initialize$5;

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/metamoji/video/AmvTrimmingController$Controls$initialize$5;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/FuncyListener1;->set(Lkotlin/jvm/functions/Function1;)V

    .line 241
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameListView;->getTrimmingFriendListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v0

    new-instance v1, Lcom/metamoji/video/AmvTrimmingController$Controls$initialize$6;

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/metamoji/video/AmvTrimmingController$Controls$initialize$6;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final onUpdatePlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V
    .locals 5

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/metamoji/video/AmvTrimmingController$Controls$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getPlayButton()Landroid/widget/ImageButton;

    move-result-object p1

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 180
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getPlayButton()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getPlayButton()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 173
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getPlayButton()Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v1}, Lcom/metamoji/video/AmvTrimmingController;->access$getDrPause$p(Lcom/metamoji/video/AmvTrimmingController;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getPlayButton()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 175
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {p1, v2, v3, v0}, Lcom/metamoji/video/AmvTrimmingController;->updateKnobVisibility$default(Lcom/metamoji/video/AmvTrimmingController;ZILjava/lang/Object;)V

    .line 176
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingController;->adjustSliderPosition()V

    return-void

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getPlayButton()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 166
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getPlayButton()Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v1}, Lcom/metamoji/video/AmvTrimmingController;->access$getDrPlay$p(Lcom/metamoji/video/AmvTrimmingController;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getPlayButton()Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 168
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {p1, v2, v3, v0}, Lcom/metamoji/video/AmvTrimmingController;->updateKnobVisibility$default(Lcom/metamoji/video/AmvTrimmingController;ZILjava/lang/Object;)V

    .line 169
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingController;->adjustSliderPosition()V

    return-void
.end method

.method public final resetWithDuration(J)V
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/video/AmvSlider;->resetWithValueRange(JZ)V

    .line 246
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/AmvFrameListView;->setTotalRange(J)V

    .line 247
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->updateTrimStartText()V

    .line 248
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->updateTrimEndText()V

    return-void
.end method

.method public final updateTrimEndText()V
    .locals 3

    .line 200
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getTrimEndText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvSlider;->getTrimEndPosition()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/metamoji/video/AmvTrimmingController$Controls;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->updateTrimmedRangeText()V

    return-void
.end method

.method public final updateTrimStartText()V
    .locals 3

    .line 196
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getTrimStartText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvSlider;->getTrimStartPosition()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/metamoji/video/AmvTrimmingController$Controls;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->updateTrimmedRangeText()V

    return-void
.end method
