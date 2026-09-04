.class public final synthetic Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda4;->f$0:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda4;->f$0:Landroid/view/MotionEvent;

    invoke-static {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->onDoubleTapEvent$lambda$0(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
