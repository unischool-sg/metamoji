.class public final Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;
.super Ljava/lang/Object;
.source "UtGestureInterpreter.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;,
        Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;,
        Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IFlickEvent;,
        Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IListenerBuilder;,
        Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;,
        Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;,
        Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScrollEvent;,
        Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;,
        Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;,
        Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;,
        Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;,
        Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScrollEvent;,
        Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 s2\u00020\u0001:\rghijklmnopqrsB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\tJ \u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0005H\u0002J\"\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u00192\u0008\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\'H\u0002J\u0018\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u0019H\u0002J\u0018\u00108\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u0019H\u0002J\u0018\u0010>\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u0019H\u0002J\u0010\u0010I\u001a\u00020\u00052\u0006\u0010J\u001a\u00020KH\u0002J\u0010\u0010Q\u001a\u00020\u00052\u0006\u0010J\u001a\u00020KH\u0002J/\u0010R\u001a\u00020\u00002\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020V2\u0017\u0010W\u001a\u0013\u0012\u0004\u0012\u00020Y\u0012\u0004\u0012\u00020Z0X\u00a2\u0006\u0002\u0008[J\u000e\u0010`\u001a\u00020\u00002\u0006\u0010U\u001a\u00020VJ\u000e\u0010a\u001a\u00020\u00002\u0006\u0010U\u001a\u00020VJ\u001a\u0010c\u001a\u00020\u00052\u0008\u0010d\u001a\u0004\u0018\u00010V2\u0006\u0010e\u001a\u00020fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0012R\u001a\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u000f0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010*\u001a\u0008\u0012\u0004\u0012\u00020+0\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\u0012R\u001a\u0010-\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u000f0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010.\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\rR\u0017\u00103\u001a\u0008\u0012\u0004\u0012\u00020+0\u000f8F\u00a2\u0006\u0006\u001a\u0004\u00084\u0010\u0012R\u001a\u00105\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u000f0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u00106\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u0010\rR\u0017\u00109\u001a\u0008\u0012\u0004\u0012\u00020+0\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010\u0012R\u001a\u0010;\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u000f0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010<\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010\rR\u000e\u0010?\u001a\u00020@X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010A\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010\rR\u0017\u0010C\u001a\u0008\u0012\u0004\u0012\u00020D0\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010\u0012R\u001a\u0010F\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020D0\u000f0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010G\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010\rR\u0017\u0010L\u001a\u0008\u0012\u0004\u0012\u00020D0\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010\u0012R\u001a\u0010N\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020D0\u000f0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010O\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008P\u0010\rR\u000e\u0010\\\u001a\u00020]X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010^\u001a\u0004\u0018\u00010_X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006t"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;",
        "Landroid/view/View$OnTouchListener;",
        "applicationContext",
        "Landroid/content/Context;",
        "enableScaleEvent",
        "",
        "rapidTap",
        "<init>",
        "(Landroid/content/Context;ZZ)V",
        "(ZZ)V",
        "getApplicationContext",
        "()Landroid/content/Context;",
        "getRapidTap",
        "()Z",
        "scrollListener",
        "Lio/github/toyota32k/utils/lifecycle/Listeners;",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScrollEvent;",
        "getScrollListener",
        "()Lio/github/toyota32k/utils/lifecycle/Listeners;",
        "scrollListenerRef",
        "Lio/github/toyota32k/utils/UtLazyResetableValue;",
        "scrollEvent",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScrollEvent;",
        "fireScrollEvent",
        "dx",
        "",
        "dy",
        "end",
        "scaleListener",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;",
        "getScaleListener",
        "scaleListenerRef",
        "scaleEvent",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;",
        "fireScaleEvent",
        "scale",
        "pivot",
        "Landroid/graphics/PointF;",
        "timing",
        "Lio/github/toyota32k/utils/gesture/Timing;",
        "positionalEvent",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;",
        "tapListeners",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
        "getTapListeners",
        "tapListenersRef",
        "hasTapListeners",
        "getHasTapListeners",
        "fireTapEvent",
        "x",
        "y",
        "longTapListeners",
        "getLongTapListeners",
        "longTapListenersRef",
        "hasLongTapListeners",
        "getHasLongTapListeners",
        "fireLongTapEvent",
        "doubleTapListeners",
        "getDoubleTapListeners",
        "doubleTapListenersRef",
        "hasDoubleTapListeners",
        "getHasDoubleTapListeners",
        "fireDoubleTapEvent",
        "flickEvent",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;",
        "hasFlickListeners",
        "getHasFlickListeners",
        "flickHorizontalListeners",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IFlickEvent;",
        "getFlickHorizontalListeners",
        "flickHorizontalListenersRef",
        "hasFlickHorizontalListeners",
        "getHasFlickHorizontalListeners",
        "fireFlickHorizontalEvent",
        "direction",
        "Lio/github/toyota32k/utils/gesture/Direction;",
        "flickVerticalListeners",
        "getFlickVerticalListeners",
        "flickVerticalListenersRef",
        "hasFlickVerticalListeners",
        "getHasFlickVerticalListeners",
        "fireFlickVerticalEvent",
        "setup",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroid/view/View;",
        "setupMe",
        "Lkotlin/Function1;",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IListenerBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "touchGestureDetector",
        "Landroid/view/GestureDetector;",
        "scaleGestureDetector",
        "Landroid/view/ScaleGestureDetector;",
        "attachView",
        "detachView",
        "scrolling",
        "onTouch",
        "v",
        "event",
        "Landroid/view/MotionEvent;",
        "IScrollEvent",
        "ScrollEvent",
        "IScaleEvent",
        "ScaleEvent",
        "IPositionalEvent",
        "PositionalEvent",
        "IFlickEvent",
        "FlickEvent",
        "IListenerBuilder",
        "ListenerBuilder",
        "SwipeGestureListener",
        "ScaleListener",
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
.field public static final Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

.field public static final GI_LOG:Z = false

.field private static final logger:Lio/github/toyota32k/logger/UtLog;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final doubleTapListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/utils/UtLazyResetableValue<",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final flickEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;

.field private final flickHorizontalListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/utils/UtLazyResetableValue<",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IFlickEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final flickVerticalListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/utils/UtLazyResetableValue<",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IFlickEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final longTapListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/utils/UtLazyResetableValue<",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final positionalEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;

.field private final rapidTap:Z

.field private final scaleEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final scaleListenerRef:Lio/github/toyota32k/utils/UtLazyResetableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/utils/UtLazyResetableValue<",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final scrollEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScrollEvent;

.field private final scrollListenerRef:Lio/github/toyota32k/utils/UtLazyResetableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/utils/UtLazyResetableValue<",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScrollEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private scrolling:Z

.field private final tapListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/utils/UtLazyResetableValue<",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final touchGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    .line 527
    new-instance v2, Lio/github/toyota32k/logger/UtLog;

    sget-object v0, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v4

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v3, "GI"

    const-class v5, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/Class;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->logger:Lio/github/toyota32k/logger/UtLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->applicationContext:Landroid/content/Context;

    .line 58
    iput-boolean p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->rapidTap:Z

    .line 79
    new-instance p3, Lio/github/toyota32k/utils/UtLazyResetableValue;

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p3, v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scrollListenerRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    .line 87
    new-instance p3, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScrollEvent;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p3, v1, v1, v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScrollEvent;-><init>(FFZ)V

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scrollEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScrollEvent;

    .line 116
    new-instance p3, Lio/github/toyota32k/utils/UtLazyResetableValue;

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p3, v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scaleListenerRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    .line 121
    new-instance p3, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;

    sget-object v0, Lio/github/toyota32k/utils/gesture/Timing;->Start:Lio/github/toyota32k/utils/gesture/Timing;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {p3, v2, v3, v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;-><init>(FLandroid/graphics/PointF;Lio/github/toyota32k/utils/gesture/Timing;)V

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scaleEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;

    .line 141
    new-instance p3, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;

    invoke-direct {p3, v1, v1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;-><init>(FF)V

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->positionalEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;

    .line 149
    new-instance p3, Lio/github/toyota32k/utils/UtLazyResetableValue;

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p3, v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->tapListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    .line 169
    new-instance p3, Lio/github/toyota32k/utils/UtLazyResetableValue;

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p3, v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->longTapListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    .line 188
    new-instance p3, Lio/github/toyota32k/utils/UtLazyResetableValue;

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {p3, v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->doubleTapListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    .line 204
    new-instance p3, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;

    sget-object v0, Lio/github/toyota32k/utils/gesture/Direction;->Start:Lio/github/toyota32k/utils/gesture/Direction;

    invoke-direct {p3, v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;-><init>(Lio/github/toyota32k/utils/gesture/Direction;)V

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->flickEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;

    .line 213
    new-instance p3, Lio/github/toyota32k/utils/UtLazyResetableValue;

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p3, v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->flickHorizontalListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    .line 231
    new-instance p3, Lio/github/toyota32k/utils/UtLazyResetableValue;

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {p3, v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->flickVerticalListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    .line 357
    new-instance p3, Landroid/view/GestureDetector;

    new-instance v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;

    invoke-direct {v0, p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;-><init>(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)V

    check-cast v0, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p3, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->touchGestureDetector:Landroid/view/GestureDetector;

    if-eqz p2, :cond_0

    .line 359
    new-instance v3, Landroid/view/ScaleGestureDetector;

    new-instance p2, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;

    invoke-direct {p2, p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;-><init>(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)V

    check-cast p2, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v3, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 358
    :cond_0
    iput-object v3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 55
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 63
    sget-object v0, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLib;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 60
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;-><init>(ZZ)V

    return-void
.end method

.method public static final synthetic access$fireDoubleTapEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;FF)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->fireDoubleTapEvent(FF)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$fireFlickHorizontalEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;Lio/github/toyota32k/utils/gesture/Direction;)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->fireFlickHorizontalEvent(Lio/github/toyota32k/utils/gesture/Direction;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$fireFlickVerticalEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;Lio/github/toyota32k/utils/gesture/Direction;)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->fireFlickVerticalEvent(Lio/github/toyota32k/utils/gesture/Direction;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$fireLongTapEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;FF)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->fireLongTapEvent(FF)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$fireScaleEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;FLandroid/graphics/PointF;Lio/github/toyota32k/utils/gesture/Timing;)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->fireScaleEvent(FLandroid/graphics/PointF;Lio/github/toyota32k/utils/gesture/Timing;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$fireScrollEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;FFZ)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->fireScrollEvent(FFZ)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$fireTapEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;FF)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->fireTapEvent(FF)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getHasFlickHorizontalListeners(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getHasFlickHorizontalListeners()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getHasFlickVerticalListeners(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getHasFlickVerticalListeners()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLogger$cp()Lio/github/toyota32k/logger/UtLog;
    .locals 1

    .line 55
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->logger:Lio/github/toyota32k/logger/UtLog;

    return-object v0
.end method

.method public static final synthetic access$setScrolling$p(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scrolling:Z

    return-void
.end method

.method static final doubleTapListenersRef$lambda$0()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1

    .line 188
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    invoke-direct {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;-><init>()V

    return-object v0
.end method

.method private final fireDoubleTapEvent(FF)Z
    .locals 2

    .line 191
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getHasDoubleTapListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getDoubleTapListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->positionalEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;

    .line 193
    invoke-virtual {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;->setX(F)V

    .line 194
    invoke-virtual {v1, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;->setY(F)V

    .line 192
    invoke-virtual {v0, v1}, Lio/github/toyota32k/utils/lifecycle/Listeners;->invoke(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final fireFlickHorizontalEvent(Lio/github/toyota32k/utils/gesture/Direction;)Z
    .locals 2

    .line 218
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getHasFlickHorizontalListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getFlickHorizontalListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->flickEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;

    .line 220
    invoke-virtual {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;->setDirection(Lio/github/toyota32k/utils/gesture/Direction;)V

    .line 219
    invoke-virtual {v0, v1}, Lio/github/toyota32k/utils/lifecycle/Listeners;->invoke(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final fireFlickVerticalEvent(Lio/github/toyota32k/utils/gesture/Direction;)Z
    .locals 2

    .line 236
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getHasFlickVerticalListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getFlickVerticalListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->flickEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;

    .line 238
    invoke-virtual {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;->setDirection(Lio/github/toyota32k/utils/gesture/Direction;)V

    .line 237
    invoke-virtual {v0, v1}, Lio/github/toyota32k/utils/lifecycle/Listeners;->invoke(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final fireLongTapEvent(FF)Z
    .locals 2

    .line 172
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getHasLongTapListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getLongTapListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->positionalEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;

    .line 174
    invoke-virtual {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;->setX(F)V

    .line 175
    invoke-virtual {v1, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;->setY(F)V

    .line 173
    invoke-virtual {v0, v1}, Lio/github/toyota32k/utils/lifecycle/Listeners;->invoke(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final fireScaleEvent(FLandroid/graphics/PointF;Lio/github/toyota32k/utils/gesture/Timing;)Z
    .locals 2

    .line 123
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scaleListenerRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getHasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getScaleListener()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getScaleListener()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scaleEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;

    .line 125
    invoke-virtual {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;->setScale(F)V

    .line 126
    invoke-virtual {v1, p3}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;->setTiming(Lio/github/toyota32k/utils/gesture/Timing;)V

    .line 127
    invoke-virtual {v1, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;->setPivot(Landroid/graphics/PointF;)V

    .line 124
    invoke-virtual {v0, v1}, Lio/github/toyota32k/utils/lifecycle/Listeners;->invoke(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final fireScrollEvent(FFZ)Z
    .locals 2

    .line 89
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scrollListenerRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getHasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getScrollListener()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getScrollListener()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scrollEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScrollEvent;

    .line 91
    invoke-virtual {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScrollEvent;->setDx(F)V

    .line 92
    invoke-virtual {v1, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScrollEvent;->setDy(F)V

    .line 93
    invoke-virtual {v1, p3}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScrollEvent;->setEnd(Z)V

    .line 90
    invoke-virtual {v0, v1}, Lio/github/toyota32k/utils/lifecycle/Listeners;->invoke(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final fireTapEvent(FF)Z
    .locals 2

    .line 152
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getHasTapListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getTapListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->positionalEvent:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;

    .line 154
    invoke-virtual {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;->setX(F)V

    .line 155
    invoke-virtual {v1, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;->setY(F)V

    .line 153
    invoke-virtual {v0, v1}, Lio/github/toyota32k/utils/lifecycle/Listeners;->invoke(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static final flickHorizontalListenersRef$lambda$0()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1

    .line 213
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    invoke-direct {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;-><init>()V

    return-object v0
.end method

.method static final flickVerticalListenersRef$lambda$0()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1

    .line 231
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    invoke-direct {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;-><init>()V

    return-object v0
.end method

.method private final getHasDoubleTapListeners()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->doubleTapListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getHasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getDoubleTapListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final getHasFlickHorizontalListeners()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->flickHorizontalListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getHasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getFlickHorizontalListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final getHasFlickVerticalListeners()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->flickVerticalListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getHasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getFlickVerticalListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final getHasLongTapListeners()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->longTapListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getHasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getLongTapListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final getHasTapListeners()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->tapListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getHasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getTapListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static final longTapListenersRef$lambda$0()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1

    .line 169
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    invoke-direct {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;-><init>()V

    return-object v0
.end method

.method static final scaleListenerRef$lambda$0()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1

    .line 116
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    invoke-direct {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;-><init>()V

    return-object v0
.end method

.method static final scrollListenerRef$lambda$0()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1

    .line 79
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    invoke-direct {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;-><init>()V

    return-object v0
.end method

.method static final tapListenersRef$lambda$0()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1

    .line 149
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    invoke-direct {v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final attachView(Landroid/view/View;)Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 369
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p0
.end method

.method public final detachView(Landroid/view/View;)Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getDoubleTapListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->doubleTapListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    return-object v0
.end method

.method public final getFlickHorizontalListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IFlickEvent;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->flickHorizontalListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    return-object v0
.end method

.method public final getFlickVerticalListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IFlickEvent;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->flickVerticalListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    return-object v0
.end method

.method public final getHasFlickListeners()Z
    .locals 1

    .line 206
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getHasFlickHorizontalListeners()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getHasFlickVerticalListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getLongTapListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->longTapListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    return-object v0
.end method

.method public final getRapidTap()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->rapidTap:Z

    return v0
.end method

.method public final getScaleListener()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scaleListenerRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    return-object v0
.end method

.method public final getScrollListener()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScrollEvent;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scrollListenerRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    return-object v0
.end method

.method public final getTapListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/github/toyota32k/utils/lifecycle/Listeners<",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->tapListenersRef:Lio/github/toyota32k/utils/UtLazyResetableValue;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/UtLazyResetableValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/utils/lifecycle/Listeners;

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 387
    :cond_0
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->touchGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 388
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    .line 389
    :cond_1
    iget-boolean p2, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scrolling:Z

    if-eqz p2, :cond_2

    .line 390
    iput-boolean v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->scrolling:Z

    const/4 p2, 0x0

    .line 391
    invoke-direct {p0, p2, p2, v2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->fireScrollEvent(FFZ)Z

    :cond_2
    if-eqz p1, :cond_3

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result p1

    if-ne p1, v2, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final setup(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IListenerBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setupMe"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->attachView(Landroid/view/View;)Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    .line 347
    new-instance p2, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;

    invoke-direct {p2, p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;-><init>(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)V

    .line 348
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual {p2, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->build(Landroidx/lifecycle/LifecycleOwner;)V

    return-object p0
.end method
