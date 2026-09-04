.class public final Lio/github/toyota32k/utils/gesture/UtManipulationAgent;
.super Ljava/lang/Object;
.source "UtManipulationAgent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;,
        Lio/github/toyota32k/utils/gesture/UtManipulationAgent$Companion;,
        Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;,
        Lio/github/toyota32k/utils/gesture/UtManipulationAgent$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008,\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 Y2\u00020\u0001:\u0003WXYB#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J \u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u00052\u0006\u00108\u001a\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0002J \u0010:\u001a\u00020\u00052\u0006\u0010;\u001a\u00020\u00052\u0006\u00108\u001a\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0002J\u000e\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AJ\u000e\u0010B\u001a\u00020?2\u0006\u0010@\u001a\u00020CJ\u0010\u0010G\u001a\u00020=2\u0006\u0010H\u001a\u00020IH\u0002J\u0008\u0010J\u001a\u00020=H\u0002J\u0008\u0010K\u001a\u00020?H\u0002J\u0006\u0010L\u001a\u00020=J\u0006\u0010M\u001a\u00020=J\u0006\u0010N\u001a\u00020OJ\u000e\u0010P\u001a\u00020?2\u0006\u0010Q\u001a\u00020OJ\u0016\u0010R\u001a\u00020?2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020VR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u00020\n8F\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012R\u0017\u0010\u0015\u001a\u00020\n8F\u00a2\u0006\u000c\u0012\u0004\u0008\u0016\u0010\u000c\u001a\u0004\u0008\u0017\u0010\u000eR\u0014\u0010\u0018\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0012R\u0014\u0010\u001a\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0012R$\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00058B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R$\u0010\"\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00058B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008#\u0010\u001f\"\u0004\u0008$\u0010!R$\u0010%\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00058B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\u001f\"\u0004\u0008\'\u0010!R\u0014\u0010(\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u001fR\u0014\u0010*\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u001fR\u0014\u0010,\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u001fR\u0014\u0010.\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u001fR\u0014\u00100\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u001fR\u0014\u00102\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u001fR\u000e\u00104\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020=X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020EX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020=X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006Z"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtManipulationAgent;",
        "",
        "targetViewInfo",
        "Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;",
        "minScale",
        "",
        "maxScale",
        "<init>",
        "(Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;FF)V",
        "contentView",
        "Landroid/view/View;",
        "getContentView$annotations",
        "()V",
        "getContentView",
        "()Landroid/view/View;",
        "contentWidth",
        "",
        "getContentWidth",
        "()I",
        "contentHeight",
        "getContentHeight",
        "parentView",
        "getParentView$annotations",
        "getParentView",
        "parentWidth",
        "getParentWidth",
        "parentHeight",
        "getParentHeight",
        "v",
        "scale",
        "getScale",
        "()F",
        "setScale",
        "(F)V",
        "translationX",
        "getTranslationX",
        "setTranslationX",
        "translationY",
        "getTranslationY",
        "setTranslationY",
        "scaledWidth",
        "getScaledWidth",
        "scaledHeight",
        "getScaledHeight",
        "movableX",
        "getMovableX",
        "movableY",
        "getMovableY",
        "overScrollX",
        "getOverScrollX",
        "overScrollY",
        "getOverScrollY",
        "prevParentWidth",
        "prevParentHeight",
        "calcTranslation",
        "d",
        "movable",
        "overScroll",
        "clipTranslation",
        "translation",
        "scaling",
        "",
        "onScroll",
        "",
        "p",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScrollEvent;",
        "onScale",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;",
        "animationHandler",
        "Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;",
        "changingPageNow",
        "pageChangeActionSub",
        "orientation",
        "Lio/github/toyota32k/utils/gesture/Orientation;",
        "pageChangeAction",
        "onManipulationComplete",
        "resetScrollAndScale",
        "resetScroll",
        "saveScrollAndScale",
        "Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;",
        "restoreScrollAndScale",
        "state",
        "attachGestureInterpreter",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "interpreter",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;",
        "AnimationHandler",
        "ScrollAndScaleState",
        "Companion",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/github/toyota32k/utils/gesture/UtManipulationAgent$Companion;

.field private static final logger:Lio/github/toyota32k/logger/UtLog;


# instance fields
.field private final animationHandler:Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;

.field private changingPageNow:Z

.field private final maxScale:F

.field private final minScale:F

.field private prevParentHeight:I

.field private prevParentWidth:I

.field private scaling:Z

.field private final targetViewInfo:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->Companion:Lio/github/toyota32k/utils/gesture/UtManipulationAgent$Companion;

    .line 414
    new-instance v2, Lio/github/toyota32k/logger/UtLog;

    sget-object v1, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {v1}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v3, "SZC"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/Class;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->logger:Lio/github/toyota32k/logger/UtLog;

    return-void
.end method

.method public constructor <init>(Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;FF)V
    .locals 1

    const-string v0, "targetViewInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->targetViewInfo:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    .line 40
    iput p2, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->minScale:F

    .line 41
    iput p3, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->maxScale:F

    .line 107
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getParentView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$$ExternalSyntheticLambda0;-><init>(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 287
    new-instance p1, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;

    invoke-direct {p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->animationHandler:Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/high16 p3, 0x41200000    # 10.0f

    .line 38
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;-><init>(Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;FF)V

    return-void
.end method

.method static final _init_$lambda$0(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 110
    iget p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->prevParentWidth:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->prevParentHeight:I

    if-eq p1, p5, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 111
    :cond_1
    :goto_0
    iput p4, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->prevParentWidth:I

    .line 112
    iput p5, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->prevParentHeight:I

    .line 113
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->resetScroll()Z

    return-void
.end method

.method public static final synthetic access$getAnimationHandler$p(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;)Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;
    .locals 0

    .line 38
    iget-object p0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->animationHandler:Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;

    return-object p0
.end method

.method public static final synthetic access$getLogger$cp()Lio/github/toyota32k/logger/UtLog;
    .locals 1

    .line 38
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->logger:Lio/github/toyota32k/logger/UtLog;

    return-object v0
.end method

.method public static final synthetic access$getTargetViewInfo$p(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;)Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;
    .locals 0

    .line 38
    iget-object p0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->targetViewInfo:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    return-object p0
.end method

.method public static final synthetic access$setChangingPageNow$p(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->changingPageNow:Z

    return-void
.end method

.method public static final synthetic access$setScale(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setScale(F)V

    return-void
.end method

.method public static final synthetic access$setTranslationX(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationX(F)V

    return-void
.end method

.method public static final synthetic access$setTranslationY(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationY(F)V

    return-void
.end method

.method private final calcTranslation(FFF)F
    .locals 5

    .line 122
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v1, v0, p2

    if-lez v1, :cond_3

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    add-float v2, p2, p3

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    sub-float/2addr v0, p2

    .line 133
    sget-object v2, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->logger:Lio/github/toyota32k/logger/UtLog;

    cmpg-float v1, v1, v0

    if-gez v1, :cond_2

    cmpg-float v1, v0, p3

    if-gez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3, v4}, Lio/github/toyota32k/logger/UtLog;->assert$default(Lio/github/toyota32k/logger/UtLog;ZLjava/lang/String;ILjava/lang/Object;)V

    div-float v1, v0, p3

    float-to-double v1, v1

    const v3, 0x3dcccccd    # 0.1f

    float-to-double v3, v3

    .line 134
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    .line 135
    invoke-static {p3, v0}, Ljava/lang/Float;->min(FF)F

    move-result p3

    add-float/2addr p2, p3

    goto :goto_1

    :cond_3
    move p2, v0

    .line 141
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p2, p1

    return p2
.end method

.method private final clipTranslation(FFF)F
    .locals 1

    .line 148
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr p2, p3

    .line 149
    invoke-static {p2, v0}, Ljava/lang/Float;->min(FF)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p2, p1

    return p2
.end method

.method private final getContentHeight()I
    .locals 1

    .line 50
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->targetViewInfo:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    invoke-interface {v0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public static synthetic getContentView$annotations()V
    .locals 0

    return-void
.end method

.method private final getContentWidth()I
    .locals 1

    .line 48
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->targetViewInfo:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    invoke-interface {v0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getContentWidth()I

    move-result v0

    return v0
.end method

.method private final getMovableX()F
    .locals 2

    .line 89
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getScaledWidth()F

    move-result v0

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getParentWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private final getMovableY()F
    .locals 2

    .line 91
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getScaledHeight()F

    move-result v0

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getParentHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private final getOverScrollX()F
    .locals 2

    .line 94
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->targetViewInfo:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    invoke-interface {v0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getOverScrollX()F

    move-result v0

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getParentWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private final getOverScrollY()F
    .locals 2

    .line 96
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->targetViewInfo:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    invoke-interface {v0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getOverScrollY()F

    move-result v0

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getParentHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private final getParentHeight()I
    .locals 1

    .line 58
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->targetViewInfo:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    invoke-interface {v0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getParentHeight()I

    move-result v0

    return v0
.end method

.method public static synthetic getParentView$annotations()V
    .locals 0

    return-void
.end method

.method private final getParentWidth()I
    .locals 1

    .line 56
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->targetViewInfo:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    invoke-interface {v0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getParentWidth()I

    move-result v0

    return v0
.end method

.method private final getScale()F
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method private final getScaledHeight()F
    .locals 2

    .line 81
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private final getScaledWidth()F
    .locals 2

    .line 79
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getContentWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private final getTranslationX()F
    .locals 1

    .line 68
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method private final getTranslationY()F
    .locals 1

    .line 72
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method private final onManipulationComplete()V
    .locals 7

    .line 360
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationX()F

    move-result v2

    .line 361
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationY()F

    move-result v4

    .line 363
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationX()F

    move-result v0

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getMovableX()F

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->clipTranslation(FFF)F

    move-result v0

    .line 364
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationY()F

    move-result v1

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getMovableY()F

    move-result v5

    invoke-direct {p0, v1, v5, v3}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->clipTranslation(FFF)F

    move-result v5

    .line 365
    iget-object v6, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->animationHandler:Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;

    move v3, v0

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$$ExternalSyntheticLambda1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$$ExternalSyntheticLambda1;-><init>(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;FFFF)V

    const-wide/16 v1, 0x96

    invoke-virtual {v6, v1, v2, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$AnimationHandler;->start(JLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final onManipulationComplete$lambda$0(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;FFFFF)Lkotlin/Unit;
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p5

    add-float/2addr p1, p2

    .line 366
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationX(F)V

    sub-float/2addr p4, p3

    mul-float/2addr p4, p5

    add-float/2addr p3, p4

    .line 367
    invoke-direct {p0, p3}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationY(F)V

    .line 368
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final pageChangeAction()Z
    .locals 2

    .line 351
    iget-boolean v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->scaling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 352
    :cond_0
    sget-object v0, Lio/github/toyota32k/utils/gesture/Orientation;->Horizontal:Lio/github/toyota32k/utils/gesture/Orientation;

    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->pageChangeActionSub(Lio/github/toyota32k/utils/gesture/Orientation;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/github/toyota32k/utils/gesture/Orientation;->Vertical:Lio/github/toyota32k/utils/gesture/Orientation;

    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->pageChangeActionSub(Lio/github/toyota32k/utils/gesture/Orientation;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final pageChangeActionSub(Lio/github/toyota32k/utils/gesture/Orientation;)Z
    .locals 15

    move-object/from16 v3, p1

    .line 292
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->targetViewInfo:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    invoke-interface {v0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getPageOrientation()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 298
    :cond_0
    sget-object v0, Lio/github/toyota32k/utils/gesture/Orientation;->Horizontal:Lio/github/toyota32k/utils/gesture/Orientation;

    if-ne v3, v0, :cond_1

    .line 299
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationX()F

    move-result v0

    .line 300
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getMovableX()F

    move-result v2

    .line 301
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getOverScrollX()F

    move-result v4

    .line 302
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getScaledWidth()F

    move-result v5

    goto :goto_0

    .line 304
    :cond_1
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationY()F

    move-result v0

    .line 305
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getMovableY()F

    move-result v2

    .line 306
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getOverScrollY()F

    move-result v4

    .line 307
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getScaledHeight()F

    move-result v5

    :goto_0
    move v14, v2

    move v2, v0

    move v0, v14

    .line 309
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v0, v4

    cmpg-float v0, v6, v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpl-float v4, v2, v0

    if-lez v4, :cond_2

    .line 310
    sget-object v4, Lio/github/toyota32k/utils/gesture/Direction;->Start:Lio/github/toyota32k/utils/gesture/Direction;

    goto :goto_1

    :cond_2
    sget-object v4, Lio/github/toyota32k/utils/gesture/Direction;->End:Lio/github/toyota32k/utils/gesture/Direction;

    .line 311
    :goto_1
    iget-object v6, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->targetViewInfo:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    invoke-interface {v6, v3, v4}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->hasNextPage(Lio/github/toyota32k/utils/gesture/Orientation;Lio/github/toyota32k/utils/gesture/Direction;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 312
    sget-object v1, Lio/github/toyota32k/utils/gesture/Orientation;->Horizontal:Lio/github/toyota32k/utils/gesture/Orientation;

    if-ne v3, v1, :cond_3

    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationY(F)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationX(F)V

    :goto_2
    const/4 v7, 0x1

    .line 313
    iput-boolean v7, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->changingPageNow:Z

    .line 314
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v8

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;

    const/4 v6, 0x0

    move v1, v5

    move-object v5, v4

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;-><init>(FFLio/github/toyota32k/utils/gesture/Orientation;Lio/github/toyota32k/utils/gesture/UtManipulationAgent;Lio/github/toyota32k/utils/gesture/Direction;Lkotlin/coroutines/Continuation;)V

    move-object v11, v0

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return v7

    :cond_4
    return v1
.end method

.method private final setScale(F)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 64
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final setTranslationX(F)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private final setTranslationY(F)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public final attachGestureInterpreter(Landroidx/lifecycle/LifecycleOwner;Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)V
    .locals 2

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpreter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getScrollListener()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    new-instance v1, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$attachGestureInterpreter$1;

    invoke-direct {v1, p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$attachGestureInterpreter$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p1, v1}, Lio/github/toyota32k/utils/lifecycle/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;

    .line 410
    invoke-virtual {p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getScaleListener()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object p2

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$attachGestureInterpreter$2;

    invoke-direct {v0, p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$attachGestureInterpreter$2;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, p1, v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;

    return-void
.end method

.method public final getContentView()Landroid/view/View;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->targetViewInfo:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    invoke-interface {v0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getParentView()Landroid/view/View;
    .locals 1

    .line 54
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->targetViewInfo:Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;

    invoke-interface {v0}, Lio/github/toyota32k/utils/gesture/IUtManipulationTarget;->getParentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onScale(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;)V
    .locals 7

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-boolean v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->changingPageNow:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-interface {p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;->getPivot()Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 194
    :cond_1
    iget v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->minScale:F

    iget v2, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->maxScale:F

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getScale()F

    move-result v3

    invoke-interface {p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Float;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 196
    invoke-interface {p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;->getTiming()Lio/github/toyota32k/utils/gesture/Timing;

    move-result-object p1

    sget-object v2, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/github/toyota32k/utils/gesture/Timing;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 222
    iput-boolean p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->scaling:Z

    return-void

    .line 196
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 203
    :cond_3
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationX()F

    move-result p1

    neg-float p1, p1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getContentWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    add-float/2addr p1, v2

    .line 204
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationY()F

    move-result v2

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getContentHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    add-float/2addr v2, v0

    mul-float v0, p1, v1

    .line 205
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getScale()F

    move-result v3

    div-float/2addr v0, v3

    mul-float v3, v2, v1

    .line 206
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getScale()F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v0, p1

    sub-float/2addr v3, v2

    .line 216
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationX()F

    move-result p1

    sub-float/2addr p1, v0

    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationX(F)V

    .line 217
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationY()F

    move-result p1

    sub-float/2addr p1, v3

    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationY(F)V

    .line 218
    invoke-direct {p0, v1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setScale(F)V

    return-void

    .line 198
    :cond_4
    iput-boolean v2, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->scaling:Z

    .line 199
    sget-object p1, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->logger:Lio/github/toyota32k/logger/UtLog;

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getScale()F

    move-result v0

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationX()F

    move-result v1

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationY()F

    move-result v2

    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPivotX()F

    move-result v3

    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "start : scale="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", tx="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " px="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", py="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/github/toyota32k/logger/UtLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final onScroll(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScrollEvent;)V
    .locals 3

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->changingPageNow:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationX()F

    move-result v0

    invoke-interface {p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScrollEvent;->getDx()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getMovableX()F

    move-result v1

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getOverScrollX()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->calcTranslation(FFF)F

    move-result v0

    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationX(F)V

    .line 164
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationY()F

    move-result v0

    invoke-interface {p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScrollEvent;->getDy()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getMovableY()F

    move-result v1

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getOverScrollY()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->calcTranslation(FFF)F

    move-result v0

    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationY(F)V

    .line 165
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->pageChangeAction()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    invoke-interface {p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScrollEvent;->getEnd()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 169
    sget-object p1, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->logger:Lio/github/toyota32k/logger/UtLog;

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getMovableX()F

    move-result v0

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getOverScrollX()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/github/toyota32k/logger/UtLog;->debug(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->onManipulationComplete()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final resetScroll()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->changingPageNow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 382
    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationY(F)V

    .line 383
    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationX(F)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final resetScrollAndScale()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->changingPageNow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 373
    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationY(F)V

    .line 374
    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 375
    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setScale(F)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final restoreScrollAndScale(Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->getTranslationX()F

    move-result v0

    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationX(F)V

    .line 400
    invoke-virtual {p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->getTranslationY()F

    move-result v0

    invoke-direct {p0, v0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setTranslationY(F)V

    .line 401
    invoke-virtual {p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;->getScale()F

    move-result p1

    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->setScale(F)V

    return-void
.end method

.method public final saveScrollAndScale()Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;
    .locals 4

    .line 395
    new-instance v0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationX()F

    move-result v1

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getTranslationY()F

    move-result v2

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->getScale()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$ScrollAndScaleState;-><init>(FFF)V

    return-object v0
.end method
