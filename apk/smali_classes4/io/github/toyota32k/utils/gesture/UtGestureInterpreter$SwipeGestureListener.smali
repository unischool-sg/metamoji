.class final Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "UtGestureInterpreter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwipeGestureListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J*\u0010\u0010\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J*\u0010\u0016\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0014H\u0016R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001e\u001a\u0004\u0008 \u0010\u001c\u00a8\u0006\""
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "<init>",
        "(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)V",
        "onDown",
        "",
        "e",
        "Landroid/view/MotionEvent;",
        "onSingleTapUp",
        "onShowPress",
        "",
        "onSingleTapConfirmed",
        "onContextClick",
        "onLongPress",
        "onDoubleTap",
        "onDoubleTapEvent",
        "onScroll",
        "e1",
        "e2",
        "distanceX",
        "",
        "distanceY",
        "onFling",
        "velocityX",
        "velocityY",
        "SWIPE_THRESHOLD",
        "",
        "getSWIPE_THRESHOLD",
        "()I",
        "SWIPE_THRESHOLD$delegate",
        "Lkotlin/Lazy;",
        "SWIPE_VELOCITY_THRESHOLD",
        "getSWIPE_VELOCITY_THRESHOLD",
        "SWIPE_VELOCITY_THRESHOLD$delegate",
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


# instance fields
.field private final SWIPE_THRESHOLD$delegate:Lkotlin/Lazy;

.field private final SWIPE_VELOCITY_THRESHOLD$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;


# direct methods
.method public constructor <init>(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 490
    new-instance v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda2;-><init>(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->SWIPE_THRESHOLD$delegate:Lkotlin/Lazy;

    .line 491
    new-instance p1, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda3;-><init>(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->SWIPE_VELOCITY_THRESHOLD$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final SWIPE_THRESHOLD_delegate$lambda$0(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)I
    .locals 1

    .line 490
    invoke-virtual {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Lio/github/toyota32k/utils/android/ViewExtKt;->dp2px(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static final SWIPE_VELOCITY_THRESHOLD_delegate$lambda$0(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;)I
    .locals 0

    .line 491
    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->getSWIPE_THRESHOLD()I

    move-result p0

    mul-int/lit8 p0, p0, 0x14

    return p0
.end method

.method private final getSWIPE_THRESHOLD()I
    .locals 1

    .line 490
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->SWIPE_THRESHOLD$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getSWIPE_VELOCITY_THRESHOLD()I
    .locals 1

    .line 491
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->SWIPE_VELOCITY_THRESHOLD$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method static final onContextClick$lambda$0(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 0

    .line 422
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onDoubleTap$lambda$0(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 0

    .line 432
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onDoubleTapEvent$lambda$0(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 0

    .line 439
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onDown$lambda$0(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 0

    .line 399
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onLongPress$lambda$0(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 0

    .line 427
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onShowPress$lambda$0(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 0

    .line 411
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onSingleTapConfirmed$lambda$0(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 0

    .line 415
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onSingleTapUp$lambda$0(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 0

    .line 404
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onContextClick(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    new-instance v1, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda8;-><init>(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/github/toyota32k/logger/UtLog;->debug(ZLkotlin/jvm/functions/Function0;)V

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    new-instance v1, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda1;-><init>(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/github/toyota32k/logger/UtLog;->debug(ZLkotlin/jvm/functions/Function0;)V

    .line 433
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getRapidTap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$fireDoubleTapEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;FF)Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    new-instance v1, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda4;-><init>(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/github/toyota32k/logger/UtLog;->debug(ZLkotlin/jvm/functions/Function0;)V

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    new-instance v1, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda9;-><init>(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/github/toyota32k/logger/UtLog;->debug(ZLkotlin/jvm/functions/Function0;)V

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const-string v0, "e2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getHasFlickListeners()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 462
    :cond_0
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/github/toyota32k/logger/UtLog;->debug(Ljava/lang/String;)V

    .line 465
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    :goto_0
    sub-float/2addr v0, v2

    .line 466
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_1
    sub-float/2addr v2, p1

    .line 467
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float p1, p1, p2

    .line 476
    iget-object p2, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    const/4 v3, 0x0

    if-lez p1, :cond_5

    .line 468
    :try_start_1
    invoke-static {p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$getHasFlickHorizontalListeners(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->getSWIPE_THRESHOLD()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->getSWIPE_VELOCITY_THRESHOLD()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    cmpl-float p1, v2, v3

    .line 472
    iget-object p2, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    if-lez p1, :cond_3

    .line 470
    :try_start_2
    sget-object p1, Lio/github/toyota32k/utils/gesture/Direction;->End:Lio/github/toyota32k/utils/gesture/Direction;

    invoke-static {p2, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$fireFlickHorizontalEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;Lio/github/toyota32k/utils/gesture/Direction;)Z

    move-result p1

    return p1

    .line 472
    :cond_3
    sget-object p1, Lio/github/toyota32k/utils/gesture/Direction;->Start:Lio/github/toyota32k/utils/gesture/Direction;

    invoke-static {p2, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$fireFlickHorizontalEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;Lio/github/toyota32k/utils/gesture/Direction;)Z

    move-result p1

    return p1

    :cond_4
    return v1

    .line 476
    :cond_5
    invoke-static {p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$getHasFlickVerticalListeners(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->getSWIPE_THRESHOLD()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->getSWIPE_VELOCITY_THRESHOLD()I

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    cmpl-float p1, v0, v3

    .line 480
    iget-object p2, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    if-lez p1, :cond_6

    .line 478
    :try_start_3
    sget-object p1, Lio/github/toyota32k/utils/gesture/Direction;->End:Lio/github/toyota32k/utils/gesture/Direction;

    invoke-static {p2, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$fireFlickVerticalEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;Lio/github/toyota32k/utils/gesture/Direction;)Z

    move-result p1

    return p1

    .line 480
    :cond_6
    sget-object p1, Lio/github/toyota32k/utils/gesture/Direction;->Start:Lio/github/toyota32k/utils/gesture/Direction;

    invoke-static {p2, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$fireFlickVerticalEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;Lio/github/toyota32k/utils/gesture/Direction;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return p1

    :cond_7
    return v1

    :catchall_0
    move-exception p1

    .line 485
    sget-object p2, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    invoke-virtual {p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p2

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-static {p2, p1, p4, p3, p4}, Lio/github/toyota32k/logger/UtLog;->error$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    new-instance v1, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda5;-><init>(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/github/toyota32k/logger/UtLog;->debug(ZLkotlin/jvm/functions/Function0;)V

    .line 428
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$fireLongTapEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;FF)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$setScrolling$p(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;Z)V

    .line 450
    iget-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    const/4 p2, 0x0

    invoke-static {p1, p3, p4, p2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$fireScrollEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;FFZ)Z

    move-result p1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    new-instance v1, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda6;-><init>(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/github/toyota32k/logger/UtLog;->debug(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    new-instance v1, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda7;-><init>(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/github/toyota32k/logger/UtLog;->debug(ZLkotlin/jvm/functions/Function0;)V

    .line 416
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getRapidTap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$fireTapEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;FF)Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    new-instance v1, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/github/toyota32k/logger/UtLog;->debug(ZLkotlin/jvm/functions/Function0;)V

    .line 405
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getRapidTap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$fireTapEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;FF)Z

    move-result p1

    return p1

    :cond_0
    return v2
.end method
