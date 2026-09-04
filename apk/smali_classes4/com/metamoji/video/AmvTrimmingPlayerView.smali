.class public final Lcom/metamoji/video/AmvTrimmingPlayerView;
.super Landroid/widget/FrameLayout;
.source "AmvTrimmingPlayerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001AB\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ(\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u0007H\u0014J\u0010\u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020#H\u0003J\u001a\u0010$\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0002J\u0006\u00103\u001a\u00020\u001cJ\u0016\u0010=\u001a\u00020&2\u0006\u0010>\u001a\u00020-2\u0006\u0010?\u001a\u00020&J\u0006\u0010@\u001a\u00020&R\u0012\u0010\n\u001a\u00060\u000bR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010)\u001a\u0008\u0012\u0004\u0012\u00020&0\u00178F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u001aR\u0011\u0010\'\u001a\u00020(8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R(\u0010.\u001a\u0004\u0018\u00010-2\u0008\u0010,\u001a\u0004\u0018\u00010-@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u0017\u00104\u001a\u00020&8F\u00a2\u0006\u000c\u0012\u0004\u00085\u00106\u001a\u0004\u00084\u00107R\u0017\u00108\u001a\u0002098F\u00a2\u0006\u000c\u0012\u0004\u0008:\u00106\u001a\u0004\u0008;\u0010<\u00a8\u0006B"
    }
    d2 = {
        "Lcom/metamoji/video/AmvTrimmingPlayerView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "controls",
        "Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;",
        "videoPlayer",
        "Lcom/metamoji/video/IAmvVideoPlayer;",
        "getVideoPlayer",
        "()Lcom/metamoji/video/IAmvVideoPlayer;",
        "videoController",
        "Lcom/metamoji/video/IAmvVideoController;",
        "getVideoController",
        "()Lcom/metamoji/video/IAmvVideoController;",
        "mViewModel",
        "Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;",
        "status",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;",
        "getStatus",
        "()Landroidx/lifecycle/LiveData;",
        "onSizeChanged",
        "",
        "w",
        "h",
        "oldw",
        "oldh",
        "onProgress",
        "progress",
        "",
        "onTrimmingCompleted",
        "result",
        "",
        "error",
        "Lcom/metamoji/video/AmvError;",
        "isBusy",
        "getError",
        "()Lcom/metamoji/video/AmvError;",
        "v",
        "Ljava/io/File;",
        "source",
        "getSource",
        "()Ljava/io/File;",
        "setSource",
        "(Ljava/io/File;)V",
        "dispose",
        "isTrimmed",
        "isTrimmed$annotations",
        "()V",
        "()Z",
        "trimmingRange",
        "Lcom/metamoji/video/IAmvVideoPlayer$Clipping;",
        "getTrimmingRange$annotations",
        "getTrimmingRange",
        "()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;",
        "startTrimming",
        "output",
        "repairOnError",
        "cancel",
        "Controls",
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
.field private final controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

.field private final mViewModel:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

.field private source:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvTrimmingPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvTrimmingPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;-><init>(Lcom/metamoji/video/AmvTrimmingPlayerView;)V

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/video/R$layout;->trimming_player:I

    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    sget-object v1, Lcom/metamoji/video/AmvStringPool;->INSTANCE:Lcom/metamoji/video/AmvStringPool;

    sget v2, Lcom/metamoji/video/R$string;->cancel:I

    invoke-virtual {v1, v2}, Lcom/metamoji/video/AmvStringPool;->get(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getCancelButton()Landroid/widget/Button;

    move-result-object v2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/metamoji/video/R$styleable;->AmvExoVideoPlayer:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    :try_start_0
    sget p2, Lcom/metamoji/video/R$styleable;->AmvTrimmingPlayerView_showCancelButton:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getCancelButton()Landroid/widget/Button;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->getVideoController()Lcom/metamoji/video/IAmvVideoController;

    move-result-object p1

    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->getVideoPlayer()Lcom/metamoji/video/IAmvVideoPlayer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/metamoji/video/IAmvVideoController;->setVideoPlayer(Lcom/metamoji/video/IAmvVideoPlayer;)V

    .line 85
    sget-object p1, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->Companion:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion;

    move-object p2, p0

    check-cast p2, Landroid/view/View;

    new-instance p3, Lcom/metamoji/video/AmvTrimmingPlayerView$2;

    invoke-direct {p3, p0}, Lcom/metamoji/video/AmvTrimmingPlayerView$2;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/metamoji/video/AmvTrimmingPlayerView$3;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvTrimmingPlayerView$3;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, p2, p3, v1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Companion;->registerTo(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->mViewModel:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    .line 88
    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getCancelButton()Landroid/widget/Button;

    move-result-object p2

    new-instance p3, Lcom/metamoji/video/AmvTrimmingPlayerView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/metamoji/video/AmvTrimmingPlayerView$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvTrimmingPlayerView;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 93
    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getProgressLayer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 94
    invoke-virtual {p1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvTrimmingPlayerView;->onProgress(F)V

    :cond_3
    return-void

    :catchall_0
    move-exception p2

    .line 81
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/video/AmvTrimmingPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static final _init_$lambda$1(Lcom/metamoji/video/AmvTrimmingPlayerView;Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->cancel()Z

    return-void
.end method

.method public static final synthetic access$onProgress(Lcom/metamoji/video/AmvTrimmingPlayerView;F)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvTrimmingPlayerView;->onProgress(F)V

    return-void
.end method

.method public static final synthetic access$onTrimmingCompleted(Lcom/metamoji/video/AmvTrimmingPlayerView;ZLcom/metamoji/video/AmvError;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/AmvTrimmingPlayerView;->onTrimmingCompleted(ZLcom/metamoji/video/AmvError;)V

    return-void
.end method

.method public static synthetic getTrimmingRange$annotations()V
    .locals 0

    return-void
.end method

.method private final getVideoController()Lcom/metamoji/video/IAmvVideoController;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getController()Lcom/metamoji/video/AmvTrimmingController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/video/IAmvVideoController;

    return-object v0
.end method

.method private final getVideoPlayer()Lcom/metamoji/video/IAmvVideoPlayer;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v0

    check-cast v0, Lcom/metamoji/video/IAmvVideoPlayer;

    return-object v0
.end method

.method public static synthetic isTrimmed$annotations()V
    .locals 0

    return-void
.end method

.method private final onProgress(F)V
    .locals 2

    const/16 v0, 0x64

    int-to-float v1, v0

    mul-float/2addr p1, v1

    .line 117
    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    if-le p1, v0, :cond_0

    .line 119
    rem-int/lit8 p1, p1, 0x64

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 123
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getMessage()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " %"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private final onTrimmingCompleted(ZLcom/metamoji/video/AmvError;)V
    .locals 1

    .line 131
    iget-object p2, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {p2}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getController()Lcom/metamoji/video/AmvTrimmingController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/video/AmvTrimmingController;->resumeFrameExtraction()V

    .line 137
    iget-object p2, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p2}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getProgressLayer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void

    .line 137
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getMessage()Landroid/widget/TextView;

    move-result-object p1

    sget-object p2, Lcom/metamoji/video/AmvStringPool;->INSTANCE:Lcom/metamoji/video/AmvStringPool;

    sget v0, Lcom/metamoji/video/R$string;->error:I

    invoke-virtual {p2, v0}, Lcom/metamoji/video/AmvStringPool;->get(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/metamoji/video/R$string;->error:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final cancel()Z
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->mViewModel:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->mViewModel:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->cancel()V

    .line 211
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getProgressLayer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getController()Lcom/metamoji/video/AmvTrimmingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController;->resumeFrameExtraction()V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final dispose()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getController()Lcom/metamoji/video/AmvTrimmingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController;->dispose()V

    .line 178
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->mViewModel:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getError()Lcom/metamoji/video/AmvError;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->mViewModel:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/metamoji/video/AmvError;

    invoke-direct {v0}, Lcom/metamoji/video/AmvError;-><init>()V

    return-object v0
.end method

.method public final getSource()Ljava/io/File;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->source:Ljava/io/File;

    return-object v0
.end method

.method public final getStatus()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->mViewModel:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getTrimmingRange()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getController()Lcom/metamoji/video/AmvTrimmingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController;->getTrimmingRange()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    move-result-object v0

    return-object v0
.end method

.method public final isBusy()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->mViewModel:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final isTrimmed()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getController()Lcom/metamoji/video/AmvTrimmingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController;->isTrimmed()Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 101
    iget-object p3, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {p3}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getController()Lcom/metamoji/video/AmvTrimmingController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/video/AmvTrimmingController;->getControllerHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "getContext(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p4, 0x32

    invoke-static {p3, p4}, Lcom/metamoji/video/AmvUtilsKt;->dp2px(Landroid/content/Context;I)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    .line 102
    iget-object p3, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {p3}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getController()Lcom/metamoji/video/AmvTrimmingController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/video/AmvTrimmingController;->getExtentWidth()F

    move-result p3

    sub-float/2addr p1, p3

    .line 103
    iget-object p3, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {p3}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p3

    sget-object p4, Lcom/metamoji/video/FitMode;->Inside:Lcom/metamoji/video/FitMode;

    invoke-virtual {p3, p4, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->setLayoutHint(Lcom/metamoji/video/FitMode;FF)V

    .line 104
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getController()Lcom/metamoji/video/AmvTrimmingController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingController;->adjustSliderPosition()V

    return-void
.end method

.method public final setSource(Ljava/io/File;)V
    .locals 4

    .line 168
    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->source:Ljava/io/File;

    .line 169
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v0

    new-instance v1, Lcom/metamoji/video/AmvFileSource;

    invoke-direct {v1, p1}, Lcom/metamoji/video/AmvFileSource;-><init>(Ljava/io/File;)V

    check-cast v1, Lcom/metamoji/video/IAmvSource;

    const/4 p1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/metamoji/video/AmvExoVideoPlayer;->setSource(Lcom/metamoji/video/IAmvSource;ZJ)V

    return-void
.end method

.method public final startTrimming(Ljava/io/File;Z)Z
    .locals 10

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->source:Ljava/io/File;

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->getTrimmingRange()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->mViewModel:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    invoke-virtual {v1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getController()Lcom/metamoji/video/AmvTrimmingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvTrimmingController;->pauseFrameExtraction()V

    .line 200
    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->controls:Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvTrimmingPlayerView$Controls;->getProgressLayer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 201
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->isTrimmed()Z

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingPlayerView;->mViewModel:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    .line 201
    const-string v3, "getContext(...)"

    if-nez v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->transcode(Ljava/io/File;Ljava/io/File;Landroid/content/Context;Z)Z

    move-result p1

    return p1

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->getTrimmingRange()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->getStart()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->getTrimmingRange()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->getEnd()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    move v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->truncate(Ljava/io/File;Ljava/io/File;JJLandroid/content/Context;Z)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method
