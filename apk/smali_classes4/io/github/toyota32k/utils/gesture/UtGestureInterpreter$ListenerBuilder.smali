.class final Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;
.super Ljava/lang/Object;
.source "UtGestureInterpreter.kt"

# interfaces
.implements Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IListenerBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerBuilder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0011\u001a\u00020\u00072\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0016J\u001c\u0010\u0013\u001a\u00020\u00072\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u0005H\u0016J\u001c\u0010\u0014\u001a\u00020\u00072\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00070\u0005H\u0016J\u001c\u0010\u0015\u001a\u00020\u00072\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00070\u0005H\u0016J\u001c\u0010\u0016\u001a\u00020\u00072\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00070\u0005H\u0016J\u001c\u0010\u0017\u001a\u00020\u00072\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00070\u0005H\u0016J\u001c\u0010\u0018\u001a\u00020\u00072\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00070\u0005H\u0016J\u000e\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001bR\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IListenerBuilder;",
        "<init>",
        "(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)V",
        "mScroll",
        "Lkotlin/Function1;",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScrollEvent;",
        "",
        "mScale",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;",
        "mTap",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
        "mLongTap",
        "mDoubleTap",
        "mFlickHorizontal",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IFlickEvent;",
        "mFlickVertical",
        "onScroll",
        "fn",
        "onScale",
        "onTap",
        "onLongTap",
        "onDoubleTap",
        "onFlickHorizontal",
        "onFlickVertical",
        "build",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
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
.field private mDoubleTap:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mFlickHorizontal:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IFlickEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mFlickVertical:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IFlickEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mLongTap:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mScroll:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScrollEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mTap:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;


# direct methods
.method public constructor <init>(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mScroll:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    .line 302
    invoke-virtual {v1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getScrollListener()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;

    .line 304
    :cond_0
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mScale:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    .line 305
    invoke-virtual {v1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getScaleListener()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;

    .line 307
    :cond_1
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mTap:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    .line 308
    invoke-virtual {v1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getTapListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;

    .line 310
    :cond_2
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mLongTap:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    .line 311
    invoke-virtual {v1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getLongTapListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;

    .line 313
    :cond_3
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mDoubleTap:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    .line 314
    invoke-virtual {v1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getDoubleTapListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;

    .line 316
    :cond_4
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mFlickHorizontal:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    .line 317
    invoke-virtual {v1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getFlickHorizontalListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;

    .line 319
    :cond_5
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mFlickVertical:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    .line 320
    invoke-virtual {v1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getFlickVerticalListeners()Lio/github/toyota32k/utils/lifecycle/Listeners;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lio/github/toyota32k/utils/lifecycle/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/IDisposable;

    :cond_6
    return-void
.end method

.method public onDoubleTap(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->getRapidTap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mDoubleTap:Lkotlin/jvm/functions/Function1;

    return-void

    .line 283
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot apply double-tap event listener while rapidTap==true"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onFlickHorizontal(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IFlickEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mFlickHorizontal:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public onFlickVertical(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IFlickEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mFlickVertical:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public onLongTap(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mLongTap:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public onScale(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mScale:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public onScroll(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScrollEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mScroll:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public onTap(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ListenerBuilder;->mTap:Lkotlin/jvm/functions/Function1;

    return-void
.end method
