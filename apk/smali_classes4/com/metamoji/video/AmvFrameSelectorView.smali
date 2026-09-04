.class public final Lcom/metamoji/video/AmvFrameSelectorView;
.super Landroid/widget/LinearLayout;
.source "AmvFrameSelectorView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/AmvFrameSelectorView$Companion;,
        Lcom/metamoji/video/AmvFrameSelectorView$Controls;,
        Lcom/metamoji/video/AmvFrameSelectorView$Models;,
        Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;,
        Lcom/metamoji/video/AmvFrameSelectorView$SavedData;,
        Lcom/metamoji/video/AmvFrameSelectorView$SavedState;,
        Lcom/metamoji/video/AmvFrameSelectorView$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 ;2\u00020\u0001:\u0006;<=>?@B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0006\u0010\u000e\u001a\u00020\u000bJ\u0008\u0010\"\u001a\u00020\u000bH\u0014J\u0008\u0010#\u001a\u00020\u000bH\u0014J\u0010\u0010$\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020%H\u0002J\u0010\u0010&\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020!H\u0002J \u0010(\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u00102\u0006\u0010,\u001a\u00020-H\u0002J\u0010\u0010.\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u0010H\u0002J(\u0010/\u001a\u00020\u000b2\u0006\u00100\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u0007H\u0014J\u0008\u00104\u001a\u00020\u000bH\u0002J\u0008\u00107\u001a\u000208H\u0014J\u0012\u00109\u001a\u00020\u000b2\u0008\u0010:\u001a\u0004\u0018\u000108H\u0014R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00108F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00060\u001aR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00060\u001cR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00105\u001a\u0008\u0018\u000106R\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lcom/metamoji/video/AmvFrameSelectorView;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "setSource",
        "",
        "source",
        "Ljava/io/File;",
        "dispose",
        "requestedFramePosition",
        "",
        "v",
        "framePosition",
        "getFramePosition",
        "()J",
        "setFramePosition",
        "(J)V",
        "mFrameHeight",
        "",
        "controls",
        "Lcom/metamoji/video/AmvFrameSelectorView$Controls;",
        "models",
        "Lcom/metamoji/video/AmvFrameSelectorView$Models;",
        "mFrameListViewModel",
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;",
        "mFrameListObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "extractFrameOnSourceChanged",
        "Lcom/metamoji/video/IAmvSource;",
        "updateFrameListByViewModel",
        "info",
        "onSliderChanged",
        "slider",
        "Lcom/metamoji/video/AmvSlider;",
        "position",
        "dragState",
        "Lcom/metamoji/video/AmvSlider$SliderDragState;",
        "updateSeekPosition",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "adjustSliderPosition",
        "restoringData",
        "Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;",
        "onSaveInstanceState",
        "Landroid/os/Parcelable;",
        "onRestoreInstanceState",
        "state",
        "Companion",
        "Controls",
        "Models",
        "RestoringData",
        "SavedData",
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
.field public static final Companion:Lcom/metamoji/video/AmvFrameSelectorView$Companion;

.field public static final FRAME_COUNT:I = 0xa

.field public static final FRAME_HEIGHT_IN_DP:F = 80.0f

.field public static final LISTENER_NAME:Ljava/lang/String; = "frameSelectorView"

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

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

.field private final models:Lcom/metamoji/video/AmvFrameSelectorView$Models;

.field private requestedFramePosition:J

.field private restoringData:Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/video/AmvFrameSelectorView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/video/AmvFrameSelectorView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/video/AmvFrameSelectorView;->Companion:Lcom/metamoji/video/AmvFrameSelectorView$Companion;

    .line 69
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/video/AmvFrameSelectorView;->logger:Lcom/metamoji/lib/utils/UtLog;

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

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvFrameSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/video/AmvFrameSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, -0x1

    .line 39
    iput-wide p2, p0, Lcom/metamoji/video/AmvFrameSelectorView;->requestedFramePosition:J

    const/high16 p2, 0x43200000    # 160.0f

    .line 72
    iput p2, p0, Lcom/metamoji/video/AmvFrameSelectorView;->mFrameHeight:F

    .line 92
    new-instance p2, Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-direct {p2, p0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;-><init>(Lcom/metamoji/video/AmvFrameSelectorView;)V

    iput-object p2, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    .line 100
    new-instance p3, Lcom/metamoji/video/AmvFrameSelectorView$Models;

    invoke-direct {p3, p0}, Lcom/metamoji/video/AmvFrameSelectorView$Models;-><init>(Lcom/metamoji/video/AmvFrameSelectorView;)V

    iput-object p3, p0, Lcom/metamoji/video/AmvFrameSelectorView;->models:Lcom/metamoji/video/AmvFrameSelectorView$Models;

    .line 112
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/metamoji/video/R$layout;->video_frame_selector:I

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 113
    invoke-virtual {p2}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/video/AmvSlider;->getCurrentPositionChanged()Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;

    move-result-object p3

    new-instance v0, Lcom/metamoji/video/AmvFrameSelectorView$1;

    invoke-direct {v0, p0}, Lcom/metamoji/video/AmvFrameSelectorView$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p3, v0}, Lcom/metamoji/video/AmvSlider$SliderValueChangedListener;->set(Lkotlin/jvm/functions/Function3;)V

    .line 114
    invoke-virtual {p2}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getFrameListView()Lcom/metamoji/video/AmvFrameListView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/video/AmvFrameListView;->getTouchFriendListener()Lcom/metamoji/lib/utils/FuncyListener1;

    move-result-object p3

    new-instance v0, Lcom/metamoji/video/AmvFrameSelectorView$2;

    invoke-virtual {p2}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/video/AmvFrameSelectorView$2;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p3, v0}, Lcom/metamoji/lib/utils/FuncyListener1;->set(Lkotlin/jvm/functions/Function1;)V

    const/high16 p3, 0x42a00000    # 80.0f

    .line 115
    invoke-static {p1, p3}, Lcom/metamoji/video/AmvUtilsKt;->dp2px(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->mFrameHeight:F

    .line 117
    invoke-virtual {p2}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->getVideoPreparedListener()Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;

    move-result-object p2

    new-instance p3, Lcom/metamoji/video/AmvFrameSelectorView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/metamoji/video/AmvFrameSelectorView$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvFrameSelectorView;)V

    const-string v0, "frameSelectorView"

    invoke-virtual {p2, v0, p3}, Lcom/metamoji/video/IAmvVideoPlayer$VideoPreparedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 135
    invoke-virtual {p1}, Lcom/metamoji/video/AmvExoVideoPlayer;->getSourceChangedListener()Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;

    move-result-object p1

    new-instance p2, Lcom/metamoji/video/AmvFrameSelectorView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/metamoji/video/AmvFrameSelectorView$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/AmvFrameSelectorView;)V

    invoke-virtual {p1, v0, p2}, Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 141
    :cond_0
    sget-object p1, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->Companion:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$Companion;

    move-object p2, p0

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$Companion;->getInstance(Landroid/view/View;)Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    return-void
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
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/video/AmvFrameSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getControls$p(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/AmvFrameSelectorView$Controls;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    return-object p0
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 26
    sget-object v0, Lcom/metamoji/video/AmvFrameSelectorView;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$getMFrameHeight$p(Lcom/metamoji/video/AmvFrameSelectorView;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->mFrameHeight:F

    return p0
.end method

.method public static final synthetic access$getMFrameListViewModel$p(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    return-object p0
.end method

.method public static final synthetic access$getModels$p(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/AmvFrameSelectorView$Models;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->models:Lcom/metamoji/video/AmvFrameSelectorView$Models;

    return-object p0
.end method

.method public static final synthetic access$onSliderChanged(Lcom/metamoji/video/AmvFrameSelectorView;Lcom/metamoji/video/AmvSlider;JLcom/metamoji/video/AmvSlider$SliderDragState;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/video/AmvFrameSelectorView;->onSliderChanged(Lcom/metamoji/video/AmvSlider;JLcom/metamoji/video/AmvSlider$SliderDragState;)V

    return-void
.end method

.method public static final synthetic access$setRestoringData$p(Lcom/metamoji/video/AmvFrameSelectorView;Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->restoringData:Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;

    return-void
.end method

.method public static final synthetic access$updateFrameListByViewModel(Lcom/metamoji/video/AmvFrameSelectorView;Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/metamoji/video/AmvFrameSelectorView;->updateFrameListByViewModel(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;)V

    return-void
.end method

.method private final adjustSliderPosition()V
    .locals 3

    .line 253
    invoke-virtual {p0}, Lcom/metamoji/video/AmvFrameSelectorView;->getMeasuredWidth()I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getFrameListView()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvFrameListView;->getContentWidth()I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getFrameListView()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/video/AmvFrameListView;->getLeftExtentWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getFrameListView()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/video/AmvFrameListView;->getRightExtentWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 255
    iget-object v2, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v2}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getSliderGroup()Landroid/widget/FrameLayout;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Lcom/metamoji/video/AmvUtilsKt;->setLayoutWidth(Landroid/view/View;I)V

    return-void
.end method

.method private final extractFrameOnSourceChanged(Lcom/metamoji/video/IAmvSource;)V
    .locals 7

    .line 162
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2}, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1;-><init>(Lcom/metamoji/video/IAmvSource;Lcom/metamoji/video/AmvFrameSelectorView;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method static final lambda$2$lambda$0(Lcom/metamoji/video/AmvFrameSelectorView;Lcom/metamoji/video/IAmvVideoPlayer;J)Lkotlin/Unit;
    .locals 2

    const-string p2, "<unused var>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->models:Lcom/metamoji/video/AmvFrameSelectorView$Models;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/metamoji/video/AmvFrameSelectorView$Models;->setPlayerPrepared(Z)V

    .line 128
    iget-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->restoringData:Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->tryRestoring()V

    .line 130
    :cond_0
    iget-wide p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->requestedFramePosition:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvFrameSelectorView;->setFramePosition(J)V

    .line 133
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final lambda$2$lambda$1(Lcom/metamoji/video/AmvFrameSelectorView;Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvSource;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->models:Lcom/metamoji/video/AmvFrameSelectorView$Models;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvFrameSelectorView$Models;->setPlayerPrepared(Z)V

    .line 137
    iget-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->models:Lcom/metamoji/video/AmvFrameSelectorView$Models;

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvFrameSelectorView$Models;->setVideoInfoPrepared(Z)V

    .line 138
    invoke-direct {p0, p2}, Lcom/metamoji/video/AmvFrameSelectorView;->extractFrameOnSourceChanged(Lcom/metamoji/video/IAmvSource;)V

    .line 139
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final onSliderChanged(Lcom/metamoji/video/AmvSlider;JLcom/metamoji/video/AmvSlider$SliderDragState;)V
    .locals 2

    .line 208
    sget-object p1, Lcom/metamoji/video/AmvFrameSelectorView;->logger:Lcom/metamoji/lib/utils/UtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current position: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 209
    sget-object p1, Lcom/metamoji/video/AmvFrameSelectorView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p4}, Lcom/metamoji/video/AmvSlider$SliderDragState;->ordinal()I

    move-result p4

    aget p1, p1, p4

    const/4 p4, 0x1

    if-eq p1, p4, :cond_3

    const/4 p4, 0x2

    if-eq p1, p4, :cond_2

    const/4 p4, 0x3

    if-eq p1, p4, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lcom/metamoji/video/AmvExoVideoPlayer;->setFastSeekMode(Z)V

    .line 218
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/metamoji/video/AmvFrameSelectorView;->updateSeekPosition(J)V

    return-void

    .line 214
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/metamoji/video/AmvFrameSelectorView;->updateSeekPosition(J)V

    return-void

    .line 211
    :cond_3
    iget-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, p4}, Lcom/metamoji/video/AmvExoVideoPlayer;->setFastSeekMode(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private final updateFrameListByViewModel(Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;)V
    .locals 4

    .line 183
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->restoringData:Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->onFatalError()V

    return-void

    .line 185
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getStatus()Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;->LOADED:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    if-eq v0, v1, :cond_3

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->models:Lcom/metamoji/video/AmvFrameSelectorView$Models;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Models;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->models:Lcom/metamoji/video/AmvFrameSelectorView$Models;

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvFrameSelectorView$Models;->setDuration(J)V

    .line 188
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v1}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getFrameListView()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2, v0}, Lcom/metamoji/video/AmvFrameListView;->prepare(III)V

    .line 190
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getDuration()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/video/AmvSlider;->resetWithValueRange(JZ)V

    .line 191
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getFrameListView()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvFrameListView;->setTotalRange(J)V

    .line 192
    invoke-direct {p0}, Lcom/metamoji/video/AmvFrameSelectorView;->adjustSliderPosition()V

    .line 193
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->models:Lcom/metamoji/video/AmvFrameSelectorView$Models;

    invoke-virtual {v0, v3}, Lcom/metamoji/video/AmvFrameSelectorView$Models;->setVideoInfoPrepared(Z)V

    .line 194
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->restoringData:Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->tryRestoring()V

    .line 195
    :cond_1
    iget-wide v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->requestedFramePosition:J

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/video/AmvFrameSelectorView;->setFramePosition(J)V

    .line 197
    :cond_2
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getFrameListView()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getFrameList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvFrameListView;->setFrames(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method private final updateSeekPosition(J)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->seekTo(J)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getFrameListView()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/AmvFrameListView;->setPosition(J)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    invoke-virtual {v0}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->clear()V

    return-void
.end method

.method public final getFramePosition()J
    .locals 4

    .line 45
    iget-wide v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->requestedFramePosition:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 147
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 148
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/metamoji/video/AmvFrameSelectorView$onAttachedToWindow$1;

    invoke-direct {v2, p0}, Lcom/metamoji/video/AmvFrameSelectorView$onAttachedToWindow$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->setObserver(Landroid/view/View;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/Observer;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->mFrameListObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->mFrameListViewModel:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    iget-object v1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->mFrameListObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->resetObserver(Landroidx/lifecycle/Observer;)V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->mFrameListObserver:Landroidx/lifecycle/Observer;

    .line 154
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 317
    sget-object v0, Lcom/metamoji/video/AmvFrameSelectorView;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 318
    instance-of v0, p1, Lcom/metamoji/video/AmvFrameSelectorView$SavedState;

    if-eqz v0, :cond_1

    .line 319
    check-cast p1, Lcom/metamoji/video/AmvFrameSelectorView$SavedState;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameSelectorView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 320
    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameSelectorView$SavedState;->getData()Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 321
    new-instance v0, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;-><init>(Lcom/metamoji/video/AmvFrameSelectorView;Lcom/metamoji/video/AmvFrameSelectorView$SavedData;)V

    iput-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->restoringData:Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;

    .line 322
    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->tryRestoring()V

    :cond_0
    return-void

    .line 325
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 311
    sget-object v0, Lcom/metamoji/video/AmvFrameSelectorView;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 312
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 313
    new-instance v1, Lcom/metamoji/video/AmvFrameSelectorView$SavedState;

    iget-object v2, p0, Lcom/metamoji/video/AmvFrameSelectorView;->restoringData:Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/metamoji/video/AmvFrameSelectorView$RestoringData;->getData()Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Lcom/metamoji/video/AmvFrameSelectorView$SavedData;

    iget-object v3, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v3}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/video/AmvSlider;->getCurrentPosition()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/metamoji/video/AmvFrameSelectorView$SavedData;-><init>(J)V

    :cond_1
    invoke-direct {v1, v0, v2}, Lcom/metamoji/video/AmvFrameSelectorView$SavedState;-><init>(Landroid/os/Parcelable;Lcom/metamoji/video/AmvFrameSelectorView$SavedData;)V

    check-cast v1, Landroid/os/Parcelable;

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 240
    iget-object p3, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {p3}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getSliderGroup()Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p0}, Lcom/metamoji/video/AmvFrameSelectorView;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "getContext(...)"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-static {p4, v0}, Lcom/metamoji/video/AmvUtilsKt;->dp2px(Landroid/content/Context;I)I

    move-result p4

    add-int/2addr p3, p4

    .line 241
    iget-object p4, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {p4}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p4

    if-eqz p4, :cond_0

    sget-object v0, Lcom/metamoji/video/FitMode;->Inside:Lcom/metamoji/video/FitMode;

    int-to-float p1, p1

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p4, v0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->setLayoutHint(Lcom/metamoji/video/FitMode;FF)V

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->models:Lcom/metamoji/video/AmvFrameSelectorView$Models;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameSelectorView$Models;->isVideoInfoPrepared()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/metamoji/video/AmvFrameSelectorView;->adjustSliderPosition()V

    :cond_1
    return-void
.end method

.method public final setFramePosition(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->models:Lcom/metamoji/video/AmvFrameSelectorView$Models;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Models;->isPlayerPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->models:Lcom/metamoji/video/AmvFrameSelectorView$Models;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Models;->isVideoInfoPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/AmvExoVideoPlayer;->seekTo(J)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/AmvSlider;->setCurrentPosition(J)V

    .line 51
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getFrameListView()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/video/AmvFrameListView;->setPosition(J)V

    const-wide/16 p1, -0x1

    .line 52
    iput-wide p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->requestedFramePosition:J

    return-void

    .line 54
    :cond_1
    iput-wide p1, p0, Lcom/metamoji/video/AmvFrameSelectorView;->requestedFramePosition:J

    :cond_2
    return-void
.end method

.method public final setSource(Ljava/io/File;)V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView;->controls:Lcom/metamoji/video/AmvFrameSelectorView$Controls;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvFrameSelectorView$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/metamoji/video/AmvFileSource;

    invoke-direct {v1, p1}, Lcom/metamoji/video/AmvFileSource;-><init>(Ljava/io/File;)V

    check-cast v1, Lcom/metamoji/video/IAmvSource;

    const/4 p1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/metamoji/video/AmvExoVideoPlayer;->setSource(Lcom/metamoji/video/IAmvSource;ZJ)V

    :cond_0
    return-void
.end method
