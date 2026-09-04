.class public final Lcom/metamoji/video/AmvVideoController;
.super Landroid/widget/FrameLayout;
.source "AmvVideoController.kt"

# interfaces
.implements Lcom/metamoji/video/IAmvMarkerEditableController;
.implements Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvVideoController$Companion;,
        Lcom/metamoji/video/AmvVideoController$Controls;,
        Lcom/metamoji/video/AmvVideoController$Models;,
        Lcom/metamoji/video/AmvVideoController$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAmvVideoController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmvVideoController.kt\ncom/metamoji/video/AmvVideoController\n+ 2 UtCompat.kt\ncom/metamoji/lib/utils/UtCompat$Companion\n*L\n1#1,763:1\n88#2:764\n*S KotlinDebug\n*F\n+ 1 AmvVideoController.kt\ncom/metamoji/video/AmvVideoController\n*L\n448#1:764\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c5\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u001e\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0013\u0018\u0000 r2\u00020\u00012\u00020\u00022\u00020\u0003:\u0003rstB\'\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u001a\u0010,\u001a\u00020\u00162\u0006\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u00010!H\u0002J\u0008\u00103\u001a\u00020\u0016H\u0014J\u0008\u00104\u001a\u00020\u0016H\u0014J\u0010\u00105\u001a\u00020\u00162\u0006\u00106\u001a\u000207H\u0002J\u0010\u00108\u001a\u00020\u00162\u0006\u0010/\u001a\u00020!H\u0002J\u0010\u00109\u001a\u00020\u00162\u0006\u0010:\u001a\u000202H\u0002J \u0010;\u001a\u00020\u00162\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u001e2\u0006\u0010?\u001a\u00020\u001eH\u0002J\u0010\u0010@\u001a\u00020\u00162\u0006\u0010A\u001a\u00020\u0018H\u0016J\u0012\u0010B\u001a\u00020\u00162\u0008\u0010C\u001a\u0004\u0018\u00010!H\u0002J\u0008\u0010D\u001a\u00020\u0016H\u0016J\u0016\u0010N\u001a\u00020\u00162\u000c\u0010O\u001a\u0008\u0012\u0004\u0012\u00020M0LH\u0016J\u0010\u0010P\u001a\u00020\u00162\u0006\u0010Q\u001a\u00020=H\u0002J\u001a\u0010R\u001a\u00020\u00162\u0006\u0010S\u001a\u00020M2\u0008\u0010T\u001a\u0004\u0018\u00010UH\u0016J\u001a\u0010V\u001a\u00020\u00162\u0006\u0010S\u001a\u00020M2\u0008\u0010T\u001a\u0004\u0018\u00010UH\u0016J\u0012\u0010Y\u001a\u00020\u00162\u0008\u0010Z\u001a\u0004\u0018\u00010XH\u0016J\u0017\u0010[\u001a\u00020\u00162\u0008\u0010S\u001a\u0004\u0018\u00010MH\u0016\u00a2\u0006\u0002\u0010\\J\u000e\u0010a\u001a\u00020\u00162\u0006\u0010]\u001a\u00020^J\u000e\u0010b\u001a\u00020\u00162\u0006\u0010]\u001a\u00020^J\u000e\u0010c\u001a\u00020\u00162\u0006\u0010]\u001a\u00020^J\u000e\u0010d\u001a\u00020\u00162\u0006\u0010]\u001a\u00020^J\u000e\u0010e\u001a\u00020\u00162\u0006\u0010]\u001a\u00020^J\u000e\u0010f\u001a\u00020\u00162\u0006\u0010]\u001a\u00020^J\u000e\u0010g\u001a\u00020\u00162\u0006\u0010]\u001a\u00020^J\u0010\u0010h\u001a\u00020\u00162\u0006\u0010i\u001a\u00020\u001eH\u0002J\u001e\u0010j\u001a\u00020\u00162\u0006\u0010k\u001a\u00020l2\u0006\u0010S\u001a\u00020=2\u0006\u0010m\u001a\u00020nJ\u000e\u0010p\u001a\u00020\u00162\u0006\u0010<\u001a\u00020=J\u000e\u0010q\u001a\u00020\u00162\u0006\u0010<\u001a\u00020=R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00060\u000fR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00060\u0011R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010#\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u001e8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001d\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00160)\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0016\u00100\u001a\n\u0012\u0004\u0012\u000202\u0018\u000101X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010E\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u001e8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008E\u0010%\"\u0004\u0008F\u0010\'R\u0014\u0010G\u001a\u00020\u001e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010%R\u0014\u0010H\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010JR\u0016\u0010K\u001a\n\u0012\u0004\u0012\u00020M\u0018\u00010LX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010W\u001a\u0004\u0018\u00010XX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010]\u001a\u00020^8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010`R\u000e\u0010o\u001a\u00020=X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006u"
    }
    d2 = {
        "Lcom/metamoji/video/AmvVideoController;",
        "Landroid/widget/FrameLayout;",
        "Lcom/metamoji/video/IAmvMarkerEditableController;",
        "Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "mFrameHeight",
        "",
        "controls",
        "Lcom/metamoji/video/AmvVideoController$Controls;",
        "models",
        "Lcom/metamoji/video/AmvVideoController$Models;",
        "mSeekLoop",
        "com/metamoji/video/AmvVideoController$mSeekLoop$1",
        "Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;",
        "startSeekLoop",
        "",
        "mPlayer",
        "Lcom/metamoji/video/IAmvVideoPlayer;",
        "mHandler",
        "Landroid/os/Handler;",
        "mFrameListViewModel",
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;",
        "mPausingOnTracking",
        "",
        "mMinimalMode",
        "mSource",
        "Lcom/metamoji/video/IAmvSource;",
        "v",
        "showingFrames",
        "getShowingFrames",
        "()Z",
        "setShowingFrames",
        "(Z)V",
        "frameVisibilityChanged",
        "Lcom/metamoji/lib/utils/FuncyListener1;",
        "getFrameVisibilityChanged",
        "()Lcom/metamoji/lib/utils/FuncyListener1;",
        "onFullScreenActivityStateChanged",
        "state",
        "Lcom/metamoji/video/AmvFullscreenActivity$State;",
        "source",
        "mFrameListObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "onBackFromFullscreen",
        "intent",
        "Landroid/content/Intent;",
        "extractFrameOnSourceChanged",
        "updateFrameListByViewModel",
        "info",
        "updateSeekPosition",
        "pos",
        "",
        "seek",
        "slider",
        "setVideoPlayer",
        "player",
        "setSource",
        "newSource",
        "dispose",
        "isReadOnly",
        "setReadOnly",
        "isSeekingBySlider",
        "markerEditor",
        "getMarkerEditor",
        "()Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;",
        "mMarkerWork",
        "",
        "",
        "setMarkers",
        "markers",
        "initMarkerView",
        "duration",
        "addMarker",
        "position",
        "clientData",
        "",
        "removeMarker",
        "mMarkerListener",
        "Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;",
        "setMarkerListener",
        "listener",
        "setHighLightMarker",
        "(Ljava/lang/Double;)V",
        "view",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "onPlayClicked",
        "onPrevMarker",
        "onNextMarker",
        "onAddMarker",
        "onShowFramesClick",
        "onPinP",
        "onFullScreen",
        "showFullScreenViewer",
        "pinp",
        "onCurrentPositionChanged",
        "caller",
        "Lcom/metamoji/video/AmvSlider;",
        "dragState",
        "Lcom/metamoji/video/AmvSlider$SliderDragState;",
        "mStopAt",
        "startAt",
        "stopAt",
        "Companion",
        "Controls",
        "Models",
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
.field public static final Companion:Lcom/metamoji/video/AmvVideoController$Companion;

.field private static final FRAME_COUNT:I = 0xf

.field private static final FRAME_HEIGHT_IN_DP:F = 50.0f

.field private static final LISTENER_NAME:Ljava/lang/String; = "VCT"

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final controls:Lcom/metamoji/video/AmvVideoController$Controls;

.field private final frameVisibilityChanged:Lcom/metamoji/lib/utils/FuncyListener1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/FuncyListener1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameHeight:F

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

.field private mMarkerListener:Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;

.field private mMarkerWork:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimalMode:Z

.field private mPausingOnTracking:Z

.field private mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

.field private final mSeekLoop:Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;

.field private mSource:Lcom/metamoji/video/IAmvSource;

.field private mStopAt:J

.field private final models:Lcom/metamoji/video/AmvVideoController$Models;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/AmvVideoController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/AmvVideoController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/AmvVideoController;->Companion:Lcom/metamoji/video/AmvVideoController$Companion;

    .line 39
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/AmvVideoController;->logger:Lcom/metamoji/lib/utils/UtLog;

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

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x42480000    # 50.0f

    .line 45
    invoke-static {p1, v0}, Lcom/metamoji/video/AmvUtilsKt;->dp2px(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/metamoji/video/AmvVideoController;->mFrameHeight:F

    .line 269
    new-instance v0, Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvVideoController$Controls;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    .line 368
    new-instance v1, Lcom/metamoji/video/AmvVideoController$Models;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvVideoController$Models;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    iput-object v1, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    .line 374
    new-instance v1, Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    iput-object v1, p0, Lcom/metamoji/video/AmvVideoController;->mSeekLoop:Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;

    .line 394
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/metamoji/video/AmvVideoController;->mHandler:Landroid/os/Handler;

    .line 402
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/metamoji/video/R$layout;->video_controller:I

    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 403
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/metamoji/video/R$styleable;->AmvVideoController:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    :try_start_0
    sget p2, Lcom/metamoji/video/R$styleable;->AmvVideoController_minimal:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/video/AmvVideoController;->mMinimalMode:Z

    .line 406
    sget-object p2, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->Companion:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$Companion;

    move-object p3, p0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p2, p3}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$Companion;->getInstance(Landroid/view/View;)Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/video/AmvVideoController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 411
    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->initialize()V

    .line 417
    new-instance p1, Lcom/metamoji/lib/utils/FuncyListener1;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/FuncyListener1;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController;->frameVisibilityChanged:Lcom/metamoji/lib/utils/FuncyListener1;

    const-wide/16 p1, -0x1

    .line 751
    iput-wide p1, p0, Lcom/metamoji/video/AmvVideoController;->mStopAt:J

    return-void

    :catchall_0
    move-exception p2

    .line 408
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

    .line 33
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/video/AmvVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getControls$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Controls;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    return-object p0
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 33
    sget-object v0, Lcom/metamoji/video/AmvVideoController;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$getMFrameHeight$p(Lcom/metamoji/video/AmvVideoController;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/metamoji/video/AmvVideoController;->mFrameHeight:F

    return p0
.end method

.method public static final synthetic access$getMFrameListViewModel$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/metamoji/video/AmvVideoController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    return-object p0
.end method

.method public static final synthetic access$getMHandler$p(Lcom/metamoji/video/AmvVideoController;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/metamoji/video/AmvVideoController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getMMarkerListener$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/metamoji/video/AmvVideoController;->mMarkerListener:Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;

    return-object p0
.end method

.method public static final synthetic access$getMMinimalMode$p(Lcom/metamoji/video/AmvVideoController;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/metamoji/video/AmvVideoController;->mMinimalMode:Z

    return p0
.end method

.method public static final synthetic access$getMPausingOnTracking$p(Lcom/metamoji/video/AmvVideoController;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/metamoji/video/AmvVideoController;->mPausingOnTracking:Z

    return p0
.end method

.method public static final synthetic access$getMPlayer$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/IAmvVideoPlayer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    return-object p0
.end method

.method public static final synthetic access$getMStopAt$p(Lcom/metamoji/video/AmvVideoController;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/metamoji/video/AmvVideoController;->mStopAt:J

    return-wide v0
.end method

.method public static final synthetic access$getModels$p(Lcom/metamoji/video/AmvVideoController;)Lcom/metamoji/video/AmvVideoController$Models;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    return-object p0
.end method

.method public static final synthetic access$onBackFromFullscreen(Lcom/metamoji/video/AmvVideoController;Landroid/content/Intent;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvVideoController;->onBackFromFullscreen(Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic access$onFullScreenActivityStateChanged(Lcom/metamoji/video/AmvVideoController;Lcom/metamoji/video/AmvFullscreenActivity$State;Lcom/metamoji/video/IAmvSource;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/AmvVideoController;->onFullScreenActivityStateChanged(Lcom/metamoji/video/AmvFullscreenActivity$State;Lcom/metamoji/video/IAmvSource;)V

    return-void
.end method

.method public static final synthetic access$setMStopAt$p(Lcom/metamoji/video/AmvVideoController;J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/metamoji/video/AmvVideoController;->mStopAt:J

    return-void
.end method

.method public static final synthetic access$startSeekLoop(Lcom/metamoji/video/AmvVideoController;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/metamoji/video/AmvVideoController;->startSeekLoop()V

    return-void
.end method

.method public static final synthetic access$updateFrameListByViewModel(Lcom/metamoji/video/AmvVideoController;Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvVideoController;->updateFrameListByViewModel(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;)V

    return-void
.end method

.method public static final synthetic access$updateSeekPosition(Lcom/metamoji/video/AmvVideoController;JZZ)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/video/AmvVideoController;->updateSeekPosition(JZZ)V

    return-void
.end method

.method private final extractFrameOnSourceChanged(Lcom/metamoji/video/IAmvSource;)V
    .locals 7

    .line 466
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvVideoController;->setSource(Lcom/metamoji/video/IAmvSource;)V

    .line 467
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/metamoji/video/AmvVideoController$extractFrameOnSourceChanged$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2}, Lcom/metamoji/video/AmvVideoController$extractFrameOnSourceChanged$1;-><init>(Lcom/metamoji/video/IAmvSource;Lcom/metamoji/video/AmvVideoController;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final initMarkerView(J)V
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/AmvMarkerView;->resetWithTotalRange(J)V

    .line 619
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mMarkerWork:Ljava/util/Collection;

    if-eqz p1, :cond_0

    .line 620
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/video/AmvVideoController;->mMarkerWork:Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/metamoji/video/AmvMarkerView;->setMarkers$default(Lcom/metamoji/video/AmvMarkerView;Ljava/util/Collection;ZILjava/lang/Object;)V

    .line 621
    iput-object v2, p0, Lcom/metamoji/video/AmvVideoController;->mMarkerWork:Ljava/util/Collection;

    :cond_0
    return-void
.end method

.method private final onBackFromFullscreen(Landroid/content/Intent;)V
    .locals 6

    .line 448
    sget-object v0, Lcom/metamoji/lib/utils/UtCompat;->Companion:Lcom/metamoji/lib/utils/UtCompat$Companion;

    const-string v1, "source"

    .line 764
    const-class v2, Lcom/metamoji/video/IAmvSource;

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/lib/utils/UtCompat$Companion;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    .line 448
    check-cast v0, Lcom/metamoji/video/IAmvSource;

    .line 449
    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    const/4 v2, 0x0

    const-string v3, "mPlayer"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-interface {v1}, Lcom/metamoji/video/IAmvVideoPlayer;->getSource()Lcom/metamoji/video/IAmvSource;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 450
    const-string v0, "position"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 451
    const-string v4, "playing"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 452
    iget-object v4, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {v4}, Lcom/metamoji/video/AmvVideoController$Models;->getDuration()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 453
    iget-object v4, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    invoke-interface {v4, v0, v1}, Lcom/metamoji/video/IAmvVideoPlayer;->seekTo(J)V

    :cond_2
    if-eqz p1, :cond_4

    .line 456
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p1

    :goto_0
    invoke-interface {v2}, Lcom/metamoji/video/IAmvVideoPlayer;->play()V

    :cond_4
    return-void
.end method

.method private final onFullScreenActivityStateChanged(Lcom/metamoji/video/AmvFullscreenActivity$State;Lcom/metamoji/video/IAmvSource;)V
    .locals 0

    .line 420
    iget-object p2, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {p2, p1}, Lcom/metamoji/video/AmvVideoController$Controls;->updatePinPButton(Lcom/metamoji/video/AmvFullscreenActivity$State;)V

    return-void
.end method

.method private final setSource(Lcom/metamoji/video/IAmvSource;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 572
    invoke-interface {p1}, Lcom/metamoji/video/IAmvSource;->addRef()V

    .line 573
    :cond_0
    monitor-enter p0

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->mSource:Lcom/metamoji/video/IAmvSource;

    .line 575
    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mSource:Lcom/metamoji/video/IAmvSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit p0

    if-eqz v0, :cond_1

    .line 578
    invoke-interface {v0}, Lcom/metamoji/video/IAmvSource;->release()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 573
    monitor-exit p0

    throw p1
.end method

.method static final setVideoPlayer$lambda$5$lambda$0(Lcom/metamoji/video/AmvVideoController;Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    iget-boolean p1, p0, Lcom/metamoji/video/AmvVideoController;->mPausingOnTracking:Z

    if-nez p1, :cond_0

    .line 538
    iget-object p0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {p0, p2}, Lcom/metamoji/video/AmvVideoController$Models;->setPlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V

    .line 540
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final setVideoPlayer$lambda$5$lambda$1(Lcom/metamoji/video/AmvVideoController;Lcom/metamoji/video/IAmvVideoPlayer;II)Lkotlin/Unit;
    .locals 0

    const-string p3, "<unused var>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvVideoController$Controls;->getRoot()Landroid/view/ViewGroup;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {p0}, Lcom/metamoji/video/AmvVideoController$Models;->getMinControllerWidth()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p1, p0}, Lcom/metamoji/video/AmvUtilsKt;->setLayoutWidth(Landroid/view/View;I)V

    .line 546
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final setVideoPlayer$lambda$5$lambda$2(Lcom/metamoji/video/AmvVideoController;Lcom/metamoji/video/IAmvVideoPlayer;J)Lkotlin/Unit;
    .locals 2

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {v0, p2, p3}, Lcom/metamoji/video/AmvVideoController$Models;->setDuration(J)V

    .line 552
    iget-object p2, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getSeekPosition()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/metamoji/video/AmvVideoController$Models;->setCurrentPosition(J)V

    .line 553
    iget-object p0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvVideoController$Models;->setPlayerPrepared(Z)V

    .line 554
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final setVideoPlayer$lambda$5$lambda$3(Lcom/metamoji/video/AmvVideoController;Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvSource;)Lkotlin/Unit;
    .locals 2

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvVideoController$Models;->setPlayerPrepared(Z)V

    .line 559
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvVideoController$Models;->setVideoInfoPrepared(Z)V

    .line 560
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvVideoController$Models;->setDurationAvailable(Z)V

    .line 561
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/video/AmvVideoController$Models;->setDuration(J)V

    .line 562
    invoke-direct {p0, p2}, Lcom/metamoji/video/AmvVideoController;->extractFrameOnSourceChanged(Lcom/metamoji/video/IAmvSource;)V

    .line 563
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final setVideoPlayer$lambda$5$lambda$4(Lcom/metamoji/video/AmvVideoController;Lcom/metamoji/video/IAmvVideoPlayer;J)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 566
    invoke-direct {p0, p2, p3, p1, v0}, Lcom/metamoji/video/AmvVideoController;->updateSeekPosition(JZZ)V

    .line 567
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final showFullScreenViewer(Z)V
    .locals 10

    .line 692
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/metamoji/video/AmvUtilsKt;->getActivity(Landroid/view/View;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    const/4 v2, 0x0

    const-string v3, "mPlayer"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-interface {v1}, Lcom/metamoji/video/IAmvVideoPlayer;->getSource()Lcom/metamoji/video/IAmvSource;

    move-result-object v1

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 695
    iget-object v4, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    invoke-interface {v4}, Lcom/metamoji/video/IAmvVideoPlayer;->getSeekPosition()J

    move-result-wide v4

    .line 696
    iget-object v6, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {v6}, Lcom/metamoji/video/AmvVideoController$Models;->getDuration()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x0

    .line 697
    :goto_0
    iget-object v6, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez v6, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_3
    invoke-interface {v6}, Lcom/metamoji/video/IAmvVideoPlayer;->getClip()Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    move-result-object v6

    .line 698
    new-instance v7, Landroid/content/Intent;

    move-object v8, v0

    check-cast v8, Landroid/content/Context;

    const-class v9, Lcom/metamoji/video/AmvFullscreenActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 699
    const-string v8, "source"

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 700
    const-string v1, "position"

    invoke-virtual {v7, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 701
    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvVideoController$Models;->isPlaying()Z

    move-result v1

    const-string v4, "playing"

    invoke-virtual {v7, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 702
    const-string v1, "pinp"

    invoke-virtual {v7, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_5

    .line 704
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_4
    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getVideoSize()Landroid/util/Size;

    move-result-object p1

    .line 705
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-lez v1, :cond_5

    .line 706
    const-string v1, "videoWidth"

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const-string v1, "videoHeight"

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v7, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    if-eqz v6, :cond_6

    .line 711
    const-string p1, "start"

    invoke-virtual {v6}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->getStart()J

    move-result-wide v4

    invoke-virtual {v7, p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 712
    const-string p1, "end"

    invoke-virtual {v6}, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;->getEnd()J

    move-result-wide v4

    invoke-virtual {v7, p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 714
    :cond_6
    invoke-virtual {v0, v7}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 715
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v2, p1

    :goto_1
    invoke-interface {v2}, Lcom/metamoji/video/IAmvVideoPlayer;->pause()V

    :cond_8
    return-void
.end method

.method private final startSeekLoop()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController;->mSeekLoop:Lcom/metamoji/video/AmvVideoController$mSeekLoop$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final updateFrameListByViewModel(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;)V
    .locals 4

    .line 489
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getStatus()Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;->INIT:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Models;->isVideoInfoPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvVideoController$Models;->setDuration(J)V

    .line 492
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvVideoController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2, v0}, Lcom/metamoji/video/AmvFrameListView;->prepare(III)V

    .line 494
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvFrameListView;->setTotalRange(J)V

    .line 495
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getDuration()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/video/AmvVideoController;->initMarkerView(J)V

    .line 497
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvVideoController$Models;->setVideoInfoPrepared(Z)V

    .line 499
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getFrameList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvFrameListView;->setFrames(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private final updateSeekPosition(JZZ)V
    .locals 0

    if-eqz p3, :cond_1

    .line 510
    iget-object p3, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p3, :cond_0

    const-string p3, "mPlayer"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_0
    invoke-interface {p3, p1, p2}, Lcom/metamoji/video/IAmvVideoPlayer;->seekTo(J)V

    :cond_1
    if-eqz p4, :cond_2

    .line 512
    iget-object p3, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {p3}, Lcom/metamoji/video/AmvVideoController$Models;->isDurationAvailable()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 513
    iget-object p3, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {p3}, Lcom/metamoji/video/AmvVideoController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    .line 515
    :cond_2
    iget-object p3, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {p3}, Lcom/metamoji/video/AmvVideoController$Models;->isVideoInfoPrepared()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 516
    iget-object p3, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {p3}, Lcom/metamoji/video/AmvVideoController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/video/AmvFrameListView;->setPosition(J)V

    .line 518
    :cond_3
    iget-object p3, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/video/AmvVideoController$Models;->setCurrentPosition(J)V

    return-void
.end method


# virtual methods
.method public addMarker(DLjava/lang/Object;)V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object v0

    invoke-static {p1, p2}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/video/AmvMarkerView;->addMarker(JLjava/lang/Object;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 583
    invoke-direct {p0, v0}, Lcom/metamoji/video/AmvVideoController;->setSource(Lcom/metamoji/video/IAmvSource;)V

    return-void
.end method

.method public final getFrameVisibilityChanged()Lcom/metamoji/lib/utils/FuncyListener1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/FuncyListener1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->frameVisibilityChanged:Lcom/metamoji/lib/utils/FuncyListener1;

    return-object v0
.end method

.method public getMarkerEditor()Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;
    .locals 1

    .line 599
    move-object v0, p0

    check-cast v0, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;

    return-object v0
.end method

.method public final getShowingFrames()Z
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Models;->getShowingFrames()Z

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Models;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public isSeekingBySlider()Z
    .locals 1

    .line 594
    iget-boolean v0, p0, Lcom/metamoji/video/AmvVideoController;->mPausingOnTracking:Z

    return v0
.end method

.method public final onAddMarker(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvVideoController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvSlider;->getCurrentPosition()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0, v0, v1, p0}, Lcom/metamoji/video/AmvVideoController;->addMarker(DLjava/lang/Object;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 425
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 426
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, p0

    check-cast v2, Landroid/view/View;

    new-instance v3, Lcom/metamoji/video/AmvVideoController$onAttachedToWindow$1;

    invoke-direct {v3, p0}, Lcom/metamoji/video/AmvVideoController$onAttachedToWindow$1;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->setObserver(Landroid/view/View;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/Observer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController;->mFrameListObserver:Landroidx/lifecycle/Observer;

    .line 427
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->Companion:Lcom/metamoji/video/AmvFullscreenActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion;->getOnResultListener()Lcom/metamoji/lib/utils/Funcies1;

    move-result-object v0

    new-instance v2, Lcom/metamoji/video/AmvVideoController$onAttachedToWindow$2;

    invoke-direct {v2, p0}, Lcom/metamoji/video/AmvVideoController$onAttachedToWindow$2;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/utils/Funcies1;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IFuncy1;

    .line 428
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->Companion:Lcom/metamoji/video/AmvFullscreenActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion;->getStateListener()Lcom/metamoji/lib/utils/Funcies2;

    move-result-object v0

    new-instance v2, Lcom/metamoji/video/AmvVideoController$onAttachedToWindow$3;

    invoke-direct {v2, p0}, Lcom/metamoji/video/AmvVideoController$onAttachedToWindow$3;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    return-void
.end method

.method public final onCurrentPositionChanged(Lcom/metamoji/video/AmvSlider;JLcom/metamoji/video/AmvSlider$SliderDragState;)V
    .locals 4

    const-string v0, "caller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dragState"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    sget-object p1, Lcom/metamoji/video/AmvVideoController$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p4}, Lcom/metamoji/video/AmvSlider$SliderDragState;->ordinal()I

    move-result p4

    aget p1, p1, p4

    const/4 p4, 0x0

    const-string v0, "mPlayer"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_2

    .line 733
    :cond_0
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p4

    :cond_1
    invoke-interface {p1, v3}, Lcom/metamoji/video/IAmvVideoPlayer;->setFastSeekMode(Z)V

    .line 734
    invoke-direct {p0, p2, p3, v1, v3}, Lcom/metamoji/video/AmvVideoController;->updateSeekPosition(JZZ)V

    .line 737
    iget-boolean p1, p0, Lcom/metamoji/video/AmvVideoController;->mPausingOnTracking:Z

    if-eqz p1, :cond_7

    .line 738
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p4, p1

    :goto_0
    invoke-interface {p4}, Lcom/metamoji/video/IAmvVideoPlayer;->play()V

    .line 739
    iput-boolean v3, p0, Lcom/metamoji/video/AmvVideoController;->mPausingOnTracking:Z

    .line 740
    invoke-direct {p0}, Lcom/metamoji/video/AmvVideoController;->startSeekLoop()V

    goto :goto_2

    .line 730
    :cond_3
    invoke-direct {p0, p2, p3, v1, v3}, Lcom/metamoji/video/AmvVideoController;->updateSeekPosition(JZZ)V

    goto :goto_2

    .line 724
    :cond_4
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvVideoController$Models;->isPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/video/AmvVideoController;->mPausingOnTracking:Z

    .line 725
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p4

    :cond_5
    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->pause()V

    .line 726
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object p4, p1

    :goto_1
    invoke-interface {p4, v1}, Lcom/metamoji/video/IAmvVideoPlayer;->setFastSeekMode(Z)V

    .line 746
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/video/AmvVideoController$Models;->setCurrentPosition(J)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 432
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController;->mMarkerListener:Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;

    .line 434
    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/metamoji/video/AmvVideoController;->mFrameListObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->resetObserver(Landroidx/lifecycle/Observer;)V

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/metamoji/video/AmvVideoController;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->clear()V

    .line 436
    :cond_1
    iput-object v0, p0, Lcom/metamoji/video/AmvVideoController;->mFrameListObserver:Landroidx/lifecycle/Observer;

    .line 437
    invoke-direct {p0, v0}, Lcom/metamoji/video/AmvVideoController;->setSource(Lcom/metamoji/video/IAmvSource;)V

    .line 438
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->Companion:Lcom/metamoji/video/AmvFullscreenActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion;->getOnResultListener()Lcom/metamoji/lib/utils/Funcies1;

    move-result-object v0

    new-instance v1, Lcom/metamoji/video/AmvVideoController$onDetachedFromWindow$1;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvVideoController$onDetachedFromWindow$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/Funcies1;->remove(Ljava/lang/Object;)V

    .line 439
    sget-object v0, Lcom/metamoji/video/AmvFullscreenActivity;->Companion:Lcom/metamoji/video/AmvFullscreenActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFullscreenActivity$Companion;->getStateListener()Lcom/metamoji/lib/utils/Funcies2;

    move-result-object v0

    new-instance v1, Lcom/metamoji/video/AmvVideoController$onDetachedFromWindow$2;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvVideoController$onDetachedFromWindow$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/Funcies2;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public final onFullScreen(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 688
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvVideoController;->showFullScreenViewer(Z)V

    return-void
.end method

.method public final onNextMarker(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getCurrentPosition()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/video/AmvMarkerView;->nextMark(JLjava/lang/Object;)Z

    return-void
.end method

.method public final onPinP(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 685
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvVideoController;->showFullScreenViewer(Z)V

    return-void
.end method

.method public final onPlayClicked(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    const/4 v0, 0x0

    const-string v1, "mPlayer"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    move-result-object p1

    sget-object v2, Lcom/metamoji/video/AmvVideoController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    return-void

    .line 663
    :cond_1
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-interface {v0}, Lcom/metamoji/video/IAmvVideoPlayer;->pause()V

    return-void

    .line 662
    :cond_3
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, p1

    :goto_1
    invoke-interface {v0}, Lcom/metamoji/video/IAmvVideoPlayer;->play()V

    return-void
.end method

.method public final onPrevMarker(Landroid/view/View;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getCurrentPosition()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/video/AmvMarkerView;->prevMark(JLjava/lang/Object;)Z

    return-void
.end method

.method public final onShowFramesClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvVideoController$Models;->getShowingFrames()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvVideoController$Models;->setShowingFrames(Z)V

    return-void
.end method

.method public removeMarker(DLjava/lang/Object;)V
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object v0

    invoke-static {p1, p2}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/video/AmvMarkerView;->removeMarker(JLjava/lang/Object;)V

    return-void
.end method

.method public setHighLightMarker(Ljava/lang/Double;)V
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    if-nez p1, :cond_0

    .line 640
    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvMarkerView;->resetHighLightMarker()V

    return-void

    .line 642
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvMarkerView;->setHighLightMarker(J)V

    return-void
.end method

.method public setMarkerListener(Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mMarkerListener:Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;

    return-void
.end method

.method public setMarkers(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const-string v0, "markers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Models;->isVideoInfoPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->controls:Lcom/metamoji/video/AmvVideoController$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->getMarkerView()Lcom/metamoji/video/AmvMarkerView;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/metamoji/video/AmvMarkerView;->setMarkers$default(Lcom/metamoji/video/AmvMarkerView;Ljava/util/Collection;ZILjava/lang/Object;)V

    return-void

    .line 610
    :cond_0
    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mMarkerWork:Ljava/util/Collection;

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvVideoController$Models;->setReadOnly(Z)V

    return-void
.end method

.method public final setShowingFrames(Z)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvVideoController$Models;->setShowingFrames(Z)V

    return-void
.end method

.method public setVideoPlayer(Lcom/metamoji/video/IAmvVideoPlayer;)V
    .locals 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    .line 531
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvVideoController$Models;->setPlayerState(Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V

    .line 534
    iget-object p1, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez p1, :cond_0

    const-string p1, "mPlayer"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 536
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getPlayerStateChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;

    move-result-object v0

    new-instance v1, Lcom/metamoji/video/AmvVideoController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvVideoController$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    const-string v2, "VCT"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 543
    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getSizeChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;

    move-result-object v0

    new-instance v1, Lcom/metamoji/video/AmvVideoController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvVideoController$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/video/IAmvVideoPlayer$SizeChangedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/IFuncy3;

    .line 549
    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getVideoPreparedListener()Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;

    move-result-object v0

    new-instance v1, Lcom/metamoji/video/AmvVideoController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvVideoController$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 557
    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getSourceChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;

    move-result-object v0

    new-instance v1, Lcom/metamoji/video/AmvVideoController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/metamoji/video/AmvVideoController$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 565
    invoke-interface {p1}, Lcom/metamoji/video/IAmvVideoPlayer;->getSeekCompletedListener()Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;

    move-result-object p1

    new-instance v0, Lcom/metamoji/video/AmvVideoController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvVideoController$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/video/AmvVideoController;)V

    invoke-virtual {p1, v2, v0}, Lcom/metamoji/video/IAmvVideoPlayer$SeekCompletedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    return-void
.end method

.method public final startAt(J)V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    const/4 v1, 0x0

    const-string v2, "mPlayer"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lcom/metamoji/video/IAmvVideoPlayer;->play()V

    .line 754
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-interface {v1, p1, p2}, Lcom/metamoji/video/IAmvVideoPlayer;->seekTo(J)V

    return-void
.end method

.method public final stopAt(J)V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->models:Lcom/metamoji/video/AmvVideoController$Models;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvVideoController$Models;->getPlayerState()Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/metamoji/video/AmvVideoController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 758
    iput-wide p1, p0, Lcom/metamoji/video/AmvVideoController;->mStopAt:J

    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController;->mPlayer:Lcom/metamoji/video/IAmvVideoPlayer;

    if-nez v0, :cond_1

    const-string v0, "mPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/metamoji/video/IAmvVideoPlayer;->seekTo(J)V

    return-void
.end method
