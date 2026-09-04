.class public final Lcom/metamoji/video/AmvTrimmingController;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AmvTrimmingController.kt"

# interfaces
.implements Lcom/metamoji/video/IAmvVideoController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvTrimmingController$Companion;,
        Lcom/metamoji/video/AmvTrimmingController$Controls;,
        Lcom/metamoji/video/AmvTrimmingController$Models;,
        Lcom/metamoji/video/AmvTrimmingController$RestoringData;,
        Lcom/metamoji/video/AmvTrimmingController$SavedData;,
        Lcom/metamoji/video/AmvTrimmingController$SavedState;,
        Lcom/metamoji/video/AmvTrimmingController$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b1\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t*\u0001C\u0018\u0000 W2\u00020\u00012\u00020\u0002:\u0006WXYZ[\\B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u00100\u001a\u000201H\u0014J\u0008\u00102\u001a\u000201H\u0014J\u0010\u00107\u001a\u0002012\u0006\u00108\u001a\u00020 H\u0016J\u0008\u00109\u001a\u000201H\u0016J\u0006\u0010:\u001a\u000201J\u0006\u0010;\u001a\u000201J\u0010\u0010<\u001a\u0002012\u0006\u0010=\u001a\u00020>H\u0002J\u0010\u0010?\u001a\u0002012\u0006\u0010@\u001a\u00020/H\u0002J\u0006\u0010A\u001a\u000201J \u0010E\u001a\u0002012\u0006\u0010F\u001a\u00020G2\u0006\u0010H\u001a\u00020\u00102\u0006\u0010I\u001a\u00020\'H\u0002J \u0010J\u001a\u0002012\u0006\u0010K\u001a\u00020G2\u0006\u0010L\u001a\u00020M2\u0006\u0010I\u001a\u00020\'H\u0002J\u0010\u0010N\u001a\u0002012\u0008\u0008\u0002\u0010O\u001a\u00020\u0010J\u0008\u0010S\u001a\u00020TH\u0014J\u0012\u0010U\u001a\u0002012\u0008\u0010V\u001a\u0004\u0018\u00010TH\u0014R\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00060\u0018R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00060\u001aR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010*\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0016\u0010-\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u00103\u001a\u00020\u0010X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0011\"\u0004\u00084\u00105R\u0014\u00106\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u0010\u0011R\u0010\u0010B\u001a\u00020CX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010DR\u0014\u0010P\u001a\u0008\u0018\u00010QR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010R\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008R\u0010\u0011\u00a8\u0006]"
    }
    d2 = {
        "Lcom/metamoji/video/AmvTrimmingController;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/metamoji/video/IAmvVideoController;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "trimmingRange",
        "Lcom/metamoji/video/IAmvVideoPlayer$Clipping;",
        "getTrimmingRange",
        "()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;",
        "isTrimmed",
        "",
        "()Z",
        "extentWidth",
        "",
        "getExtentWidth",
        "()F",
        "mFrameHeight",
        "models",
        "Lcom/metamoji/video/AmvTrimmingController$Models;",
        "controls",
        "Lcom/metamoji/video/AmvTrimmingController$Controls;",
        "drPlay",
        "Landroid/graphics/drawable/Drawable;",
        "drPause",
        "pausingOnTracking",
        "mPlayer",
        "Lcom/metamoji/video/IAmvVideoPlayer;",
        "mFrameExtractor",
        "Lcom/metamoji/video/AmvFrameExtractor;",
        "mClipping",
        "mHandler",
        "Landroid/os/Handler;",
        "mHandlingKnob",
        "Lcom/metamoji/video/AmvSlider$Knob;",
        "mFrameListViewModel",
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;",
        "controllerHeight",
        "getControllerHeight",
        "()I",
        "mFrameListObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;",
        "onAttachedToWindow",
        "",
        "onDetachedFromWindow",
        "isReadOnly",
        "setReadOnly",
        "(Z)V",
        "isSeekingBySlider",
        "setVideoPlayer",
        "player",
        "dispose",
        "pauseFrameExtraction",
        "resumeFrameExtraction",
        "extractFrameOnSourceChanged",
        "source",
        "Lcom/metamoji/video/IAmvSource;",
        "updateFrameListByViewModel",
        "info",
        "adjustSliderPosition",
        "mSliderSeekerOnPlaying",
        "com/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1",
        "Lcom/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1;",
        "updateSeekPosition",
        "pos",
        "",
        "seekPlayer",
        "knob",
        "sliderPositionChanged",
        "position",
        "dragState",
        "Lcom/metamoji/video/AmvSlider$SliderDragState;",
        "updateKnobVisibility",
        "dragEnd",
        "restoringData",
        "Lcom/metamoji/video/AmvTrimmingController$RestoringData;",
        "isRestoring",
        "onSaveInstanceState",
        "Landroid/os/Parcelable;",
        "onRestoreInstanceState",
        "state",
        "Companion",
        "Controls",
        "Models",
        "SavedData",
        "RestoringData",
        "SavedState",
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


# static fields
.field public static final Companion:Lcom/metamoji/video/AmvTrimmingController$Companion;

.field private static final FRAME_COUNT:I = 0xa

.field private static final FRAME_HEIGHT_IN_DP:F = 80.0f

.field private static final LISTENER_NAME:Ljava/lang/String; = "trimmingController"

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

.field private final drPause:Landroid/graphics/drawable/Drawable;

.field private final drPlay:Landroid/graphics/drawable/Drawable;

.field private isReadOnly:Z

.field private mClipping:Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

.field private mFrameExtractor:Lcom/metamoji/video/AmvFrameExtractor;

.field private mFrameHeight:F

.field private mFrameListObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlingKnob:Lcom/metamoji/video/AmvSlider$Knob;

.field private mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

.field private final mSliderSeekerOnPlaying:Lcom/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1;

.field private final models:Lcom/metamoji/video/AmvTrimmingController$Models;

.field private pausingOnTracking:Z

.field private restoringData:Lcom/metamoji/video/AmvTrimmingController$RestoringData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/AmvTrimmingController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/AmvTrimmingController;->Companion:Lcom/metamoji/video/AmvTrimmingController$Companion;

    .line 67
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/AmvTrimmingController;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

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

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvTrimmingController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvTrimmingController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x43200000    # 160.0f

    .line 69
    iput v0, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameHeight:F

    .line 71
    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$Models;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvTrimmingController$Models;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    .line 72
    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    .line 83
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/metamoji/video/AmvTrimmingController;->mHandler:Landroid/os/Handler;

    .line 84
    sget-object v1, Lcom/metamoji/video/AmvSlider$Knob;->NONE:Lcom/metamoji/video/AmvSlider$Knob;

    iput-object v1, p0, Lcom/metamoji/video/AmvTrimmingController;->mHandlingKnob:Lcom/metamoji/video/AmvSlider$Knob;

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/video/R$layout;->video_trimming_controller:I

    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    sget v1, Lcom/metamoji/video/R$drawable;->ic_play:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/metamoji/video/AmvTrimmingController;->drPlay:Landroid/graphics/drawable/Drawable;

    .line 91
    sget v1, Lcom/metamoji/video/R$drawable;->ic_pause:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/metamoji/video/AmvTrimmingController;->drPause:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x42a00000    # 80.0f

    .line 92
    invoke-static {p1, v1}, Lcom/metamoji/video/AmvUtilsKt;->dp2px(Landroid/content/Context;F)F

    move-result v1

    iput v1, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameHeight:F

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/metamoji/video/R$styleable;->AmvTrimmingtController:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :try_start_0
    sget p2, Lcom/metamoji/video/R$styleable;->AmvTrimmingtController_frameCache:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 99
    sget-object p2, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->Companion:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$Companion;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$Companion;->getInstance(Landroid/view/View;)Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 98
    :goto_0
    iput-object p2, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->initialize()V

    .line 287
    iput-boolean p3, p0, Lcom/metamoji/video/AmvTrimmingController;->isReadOnly:Z

    .line 430
    new-instance p1, Lcom/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1;

    invoke-direct {p1, p0}, Lcom/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->mSliderSeekerOnPlaying:Lcom/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1;

    return-void

    :catchall_0
    move-exception p2

    .line 104
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

    .line 29
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/video/AmvTrimmingController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getControls$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Controls;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    return-object p0
.end method

.method public static final synthetic access$getDrPause$p(Lcom/metamoji/video/AmvTrimmingController;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/metamoji/video/AmvTrimmingController;->drPause:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getDrPlay$p(Lcom/metamoji/video/AmvTrimmingController;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/metamoji/video/AmvTrimmingController;->drPlay:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 29
    sget-object v0, Lcom/metamoji/video/AmvTrimmingController;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$getMFrameHeight$p(Lcom/metamoji/video/AmvTrimmingController;)F
    .locals 0

    .line 29
    iget p0, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameHeight:F

    return p0
.end method

.method public static final synthetic access$getMFrameListViewModel$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    return-object p0
.end method

.method public static final synthetic access$getMHandler$p(Lcom/metamoji/video/AmvTrimmingController;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/metamoji/video/AmvTrimmingController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getMPlayer$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/IAmvVideoPlayer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/metamoji/video/AmvTrimmingController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    return-object p0
.end method

.method public static final synthetic access$getModels$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Models;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    return-object p0
.end method

.method public static final synthetic access$getPausingOnTracking$p(Lcom/metamoji/video/AmvTrimmingController;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/metamoji/video/AmvTrimmingController;->pausingOnTracking:Z

    return p0
.end method

.method public static final synthetic access$getRestoringData$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$RestoringData;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/metamoji/video/AmvTrimmingController;->restoringData:Lcom/metamoji/video/AmvTrimmingController$RestoringData;

    return-object p0
.end method

.method public static final synthetic access$setMFrameExtractor$p(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvFrameExtractor;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameExtractor:Lcom/metamoji/video/AmvFrameExtractor;

    return-void
.end method

.method public static final synthetic access$setRestoringData$p(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvTrimmingController$RestoringData;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->restoringData:Lcom/metamoji/video/AmvTrimmingController$RestoringData;

    return-void
.end method

.method public static final synthetic access$sliderPositionChanged(Lcom/metamoji/video/AmvTrimmingController;JLcom/metamoji/video/AmvSlider$SliderDragState;Lcom/metamoji/video/AmvSlider$Knob;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/video/AmvTrimmingController;->sliderPositionChanged(JLcom/metamoji/video/AmvSlider$SliderDragState;Lcom/metamoji/video/AmvSlider$Knob;)V

    return-void
.end method

.method public static final synthetic access$updateFrameListByViewModel(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvTrimmingController;->updateFrameListByViewModel(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;)V

    return-void
.end method

.method public static final synthetic access$updateSeekPosition(Lcom/metamoji/video/AmvTrimmingController;JZLcom/metamoji/video/AmvSlider$Knob;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/video/AmvTrimmingController;->updateSeekPosition(JZLcom/metamoji/video/AmvSlider$Knob;)V

    return-void
.end method

.method private final extractFrameOnSourceChanged(Lcom/metamoji/video/IAmvSource;)V
    .locals 7

    .line 347
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2}, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1;-><init>(Lcom/metamoji/video/IAmvSource;Lcom/metamoji/video/AmvTrimmingController;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final isRestoring()Z
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->restoringData:Lcom/metamoji/video/AmvTrimmingController$RestoringData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static final setVideoPlayer$lambda$0(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget-boolean p1, p0, Lcom/metamoji/video/AmvTrimmingController;->pausingOnTracking:Z

    if-nez p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    invoke-virtual {p1, p2}, Lcom/metamoji/video/AmvTrimmingController$Models;->setPlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V

    .line 302
    :cond_0
    sget-object p1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Playing:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-ne p2, p1, :cond_1

    .line 303
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/metamoji/video/AmvTrimmingController;->mSliderSeekerOnPlaying:Lcom/metamoji/video/AmvTrimmingController$mSliderSeekerOnPlaying$1;

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 305
    :cond_1
    sget-object p1, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->Error:Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    if-ne p2, p1, :cond_2

    .line 306
    iget-object p0, p0, Lcom/metamoji/video/AmvTrimmingController;->restoringData:Lcom/metamoji/video/AmvTrimmingController$RestoringData;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->onFatalError()V

    .line 308
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final setVideoPlayer$lambda$1(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/IAmvVideoPlayer;J)Lkotlin/Unit;
    .locals 0

    const-string p2, "<unused var>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/metamoji/video/AmvTrimmingController$Models;->setPlayerPrepared(Z)V

    .line 319
    iget-object p0, p0, Lcom/metamoji/video/AmvTrimmingController;->restoringData:Lcom/metamoji/video/AmvTrimmingController$RestoringData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->tryRestoring()V

    .line 320
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final setVideoPlayer$lambda$2(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvSource;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvTrimmingController$Models;->setPlayerPrepared(Z)V

    .line 326
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvTrimmingController$Models;->setVideoInfoPrepared(Z)V

    .line 327
    invoke-direct {p0, p2}, Lcom/metamoji/video/AmvTrimmingController;->extractFrameOnSourceChanged(Lcom/metamoji/video/IAmvSource;)V

    .line 328
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final setVideoPlayer$lambda$3(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$Clipping;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iput-object p2, p0, Lcom/metamoji/video/AmvTrimmingController;->mClipping:Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    .line 332
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final sliderPositionChanged(JLcom/metamoji/video/AmvSlider$SliderDragState;Lcom/metamoji/video/AmvSlider$Knob;)V
    .locals 5

    .line 468
    invoke-direct {p0}, Lcom/metamoji/video/AmvTrimmingController;->isRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 473
    :cond_0
    sget-object v0, Lcom/metamoji/video/AmvTrimmingController$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p3}, Lcom/metamoji/video/AmvSlider$SliderDragState;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const-string v0, "mPlayer"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v3, :cond_7

    const/4 v4, 0x2

    if-eq p3, v4, :cond_5

    const/4 v4, 0x3

    if-eq p3, v4, :cond_1

    goto :goto_1

    .line 487
    :cond_1
    iget-object p3, p0, Lcom/metamoji/video/AmvTrimmingController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p3, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v2

    :cond_2
    invoke-interface {p3, v1}, Lcom/metamoji/video/IAmvVideoPlayer;->setFastSeekMode(Z)V

    .line 488
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/metamoji/video/AmvTrimmingController;->updateSeekPosition(JZLcom/metamoji/video/AmvSlider$Knob;)V

    .line 489
    sget-object p1, Lcom/metamoji/video/AmvSlider$Knob;->NONE:Lcom/metamoji/video/AmvSlider$Knob;

    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->mHandlingKnob:Lcom/metamoji/video/AmvSlider$Knob;

    .line 490
    iget-boolean p1, p0, Lcom/metamoji/video/AmvTrimmingController;->pausingOnTracking:Z

    if-eqz p1, :cond_4

    .line 491
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p1

    :goto_0
    invoke-interface {v2}, Lcom/metamoji/video/IAmvVideoPlayer;->play()V

    .line 492
    iput-boolean v1, p0, Lcom/metamoji/video/AmvTrimmingController;->pausingOnTracking:Z

    .line 494
    :cond_4
    invoke-virtual {p0, v3}, Lcom/metamoji/video/AmvTrimmingController;->updateKnobVisibility(Z)V

    return-void

    .line 482
    :cond_5
    iget-object p3, p0, Lcom/metamoji/video/AmvTrimmingController;->mHandlingKnob:Lcom/metamoji/video/AmvSlider$Knob;

    if-ne p4, p3, :cond_6

    .line 483
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/metamoji/video/AmvTrimmingController;->updateSeekPosition(JZLcom/metamoji/video/AmvSlider$Knob;)V

    :cond_6
    :goto_1
    return-void

    .line 475
    :cond_7
    iput-object p4, p0, Lcom/metamoji/video/AmvTrimmingController;->mHandlingKnob:Lcom/metamoji/video/AmvSlider$Knob;

    .line 476
    sget-object p1, Lcom/metamoji/video/AmvSlider$Knob;->THUMB:Lcom/metamoji/video/AmvSlider$Knob;

    if-ne p4, p1, :cond_8

    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingController$Models;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v3

    goto :goto_2

    :cond_8
    move p1, v1

    :goto_2
    iput-boolean p1, p0, Lcom/metamoji/video/AmvTrimmingController;->pausingOnTracking:Z

    .line 477
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_9

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_9
    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->pause()V

    .line 478
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_a
    invoke-interface {p1, v3}, Lcom/metamoji/video/IAmvVideoPlayer;->setFastSeekMode(Z)V

    .line 479
    invoke-static {p0, v1, v3, v2}, Lcom/metamoji/video/AmvTrimmingController;->updateKnobVisibility$default(Lcom/metamoji/video/AmvTrimmingController;ZILjava/lang/Object;)V

    return-void
.end method

.method private final updateFrameListByViewModel(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;)V
    .locals 4

    .line 394
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->restoringData:Lcom/metamoji/video/AmvTrimmingController$RestoringData;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->onFatalError()V

    return-void

    .line 396
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getStatus()Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;->INIT:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    if-eq v0, v1, :cond_3

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Models;->getNaturalDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvTrimmingController$Models;->setNaturalDuration(J)V

    .line 399
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2, v0}, Lcom/metamoji/video/AmvFrameListView;->prepare(III)V

    .line 401
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getDuration()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/video/AmvSlider;->resetWithValueRange(JZ)V

    .line 402
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvFrameListView;->setTotalRange(J)V

    .line 403
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->updateTrimStartText()V

    .line 404
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->updateTrimEndText()V

    .line 405
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    invoke-virtual {v0, v3}, Lcom/metamoji/video/AmvTrimmingController$Models;->setVideoInfoPrepared(Z)V

    .line 406
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->restoringData:Lcom/metamoji/video/AmvTrimmingController$RestoringData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->tryRestoring()V

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController;->adjustSliderPosition()V

    .line 409
    :cond_2
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getFrameList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvFrameListView;->setFrames(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method public static synthetic updateKnobVisibility$default(Lcom/metamoji/video/AmvTrimmingController;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 503
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvTrimmingController;->updateKnobVisibility(Z)V

    return-void
.end method

.method private final updateSeekPosition(JZLcom/metamoji/video/AmvSlider$Knob;)V
    .locals 2

    if-eqz p3, :cond_1

    .line 450
    iget-object p3, p0, Lcom/metamoji/video/AmvTrimmingController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p3, :cond_0

    const-string p3, "mPlayer"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_0
    invoke-interface {p3, p1, p2}, Lcom/metamoji/video/IAmvVideoPlayer;->seekTo(J)V

    .line 452
    :cond_1
    sget-object p3, Lcom/metamoji/video/AmvTrimmingController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Lcom/metamoji/video/AmvSlider$Knob;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    if-eq p3, p4, :cond_3

    const/4 p4, 0x2

    if-eq p3, p4, :cond_3

    const/4 p4, 0x3

    if-eq p3, p4, :cond_2

    goto :goto_0

    .line 454
    :cond_2
    iget-object p3, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {p3}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object p3

    iget-object p4, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {p4}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object p4

    invoke-virtual {p4}, Lcom/metamoji/video/AmvSlider;->getTrimStartPosition()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    goto :goto_0

    .line 453
    :cond_3
    iget-object p3, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {p3}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    .line 457
    :goto_0
    iget-object p3, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {p3}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/video/AmvFrameListView;->setPosition(J)V

    return-void
.end method


# virtual methods
.method public final adjustSliderPosition()V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameListView;->getContentWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvSlider;->getExtentWidth()F

    move-result v1

    add-float/2addr v0, v1

    .line 417
    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v2, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSliderGroup()Landroid/widget/FrameLayout;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Lcom/metamoji/video/AmvUtilsKt;->setLayoutWidth(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->clear()V

    :cond_0
    return-void
.end method

.method public final getControllerHeight()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getExtentWidth()F
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getExtentWidth()F

    move-result v0

    return v0
.end method

.method public final getTrimmingRange()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;
    .locals 5

    .line 38
    new-instance v0, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvSlider;->getTrimStartPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v3}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/video/AmvSlider;->getTrimEndPosition()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;-><init>(JJ)V

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/metamoji/video/AmvTrimmingController;->isReadOnly:Z

    return v0
.end method

.method public isSeekingBySlider()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/metamoji/video/AmvTrimmingController;->pausingOnTracking:Z

    return v0
.end method

.method public final isTrimmed()Z
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Models;->isPlayerPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Models;->getNaturalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->isTrimmed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 118
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    .line 119
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/metamoji/video/AmvTrimmingController$onAttachedToWindow$1;

    invoke-direct {v2, p0}, Lcom/metamoji/video/AmvTrimmingController$onAttachedToWindow$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->setObserver(Landroid/view/View;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/Observer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameListObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameListObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->resetObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameListObserver:Landroidx/lifecycle/Observer;

    .line 125
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 594
    sget-object v0, Lcom/metamoji/video/AmvTrimmingController;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 595
    instance-of v0, p1, Lcom/metamoji/video/AmvTrimmingController$SavedState;

    if-eqz v0, :cond_1

    .line 596
    check-cast p1, Lcom/metamoji/video/AmvTrimmingController$SavedState;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingController$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 597
    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingController$SavedState;->getData()Lcom/metamoji/video/AmvTrimmingController$SavedData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 599
    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$RestoringData;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/video/AmvTrimmingController$RestoringData;-><init>(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvTrimmingController$SavedData;)V

    iput-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->restoringData:Lcom/metamoji/video/AmvTrimmingController$RestoringData;

    :cond_0
    return-void

    .line 602
    :cond_1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 14

    .line 585
    sget-object v0, Lcom/metamoji/video/AmvTrimmingController;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 586
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 587
    new-instance v1, Lcom/metamoji/video/AmvTrimmingController$SavedState;

    iget-object v3, p0, Lcom/metamoji/video/AmvTrimmingController;->restoringData:Lcom/metamoji/video/AmvTrimmingController$RestoringData;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->getData()Lcom/metamoji/video/AmvTrimmingController$SavedData;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    new-instance v4, Lcom/metamoji/video/AmvTrimmingController$SavedData;

    iget-object v3, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    invoke-virtual {v3}, Lcom/metamoji/video/AmvTrimmingController$Models;->isPlaying()Z

    move-result v5

    iget-object v3, p0, Lcom/metamoji/video/AmvTrimmingController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez v3, :cond_1

    const-string v3, "mPlayer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-interface {v2}, Lcom/metamoji/video/IAmvVideoPlayer;->getSeekPosition()J

    move-result-wide v6

    iget-object v2, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/video/AmvSlider;->getCurrentPosition()J

    move-result-wide v8

    iget-object v2, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/video/AmvSlider;->getTrimStartPosition()J

    move-result-wide v10

    iget-object v2, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/video/AmvSlider;->getTrimEndPosition()J

    move-result-wide v12

    invoke-direct/range {v4 .. v13}, Lcom/metamoji/video/AmvTrimmingController$SavedData;-><init>(ZJJJJ)V

    move-object v3, v4

    :cond_2
    invoke-direct {v1, v0, v3}, Lcom/metamoji/video/AmvTrimmingController$SavedState;-><init>(Landroid/os/Parcelable;Lcom/metamoji/video/AmvTrimmingController$SavedData;)V

    check-cast v1, Landroid/os/Parcelable;

    return-object v1
.end method

.method public final pauseFrameExtraction()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->pause()V

    :cond_0
    return-void
.end method

.method public final resumeFrameExtraction()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->resume()V

    :cond_0
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Lcom/metamoji/video/AmvTrimmingController;->isReadOnly:Z

    return-void
.end method

.method public setVideoPlayer(Lcom/metamoji/video/IAmvVideoPlayer;)V
    .locals 4

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    .line 294
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvTrimmingController$Models;->setPlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V

    .line 298
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    const/4 v0, 0x0

    const-string v1, "mPlayer"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getPlayerStateChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;

    move-result-object p1

    new-instance v2, Lcom/metamoji/video/AmvTrimmingController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/metamoji/video/AmvTrimmingController$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    const-string v3, "trimmingController"

    invoke-virtual {p1, v3, v2}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 317
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getVideoPreparedListener()Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;

    move-result-object p1

    new-instance v2, Lcom/metamoji/video/AmvTrimmingController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/metamoji/video/AmvTrimmingController$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-virtual {p1, v3, v2}, Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 323
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getSourceChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;

    move-result-object p1

    new-instance v2, Lcom/metamoji/video/AmvTrimmingController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/metamoji/video/AmvTrimmingController$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-virtual {p1, v3, v2}, Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 330
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    invoke-interface {v0}, Lcom/metamoji/video/IAmvVideoPlayer;->getClipChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;

    move-result-object p1

    new-instance v0, Lcom/metamoji/video/AmvTrimmingController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvTrimmingController$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-virtual {p1, v3, v0}, Lcom/metamoji/video/IAmvVideoPlayer$ClipChangedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    return-void
.end method

.method public final updateKnobVisibility(Z)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->controls:Lcom/metamoji/video/AmvTrimmingController$Controls;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object p1

    sget-object v1, Lcom/metamoji/video/AmvSlider$Knob;->THUMB:Lcom/metamoji/video/AmvSlider$Knob;

    invoke-virtual {p1, v1}, Lcom/metamoji/video/AmvSlider;->isKnobDragging(Lcom/metamoji/video/AmvSlider$Knob;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController;->models:Lcom/metamoji/video/AmvTrimmingController$Models;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingController$Models;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvFrameListView;->setShowKnob(Z)V

    return-void
.end method
