.class public final synthetic Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;


# direct methods
.method public synthetic constructor <init>(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda3;->f$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener$$ExternalSyntheticLambda3;->f$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;

    invoke-static {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;->SWIPE_VELOCITY_THRESHOLD_delegate$lambda$0(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$SwipeGestureListener;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
