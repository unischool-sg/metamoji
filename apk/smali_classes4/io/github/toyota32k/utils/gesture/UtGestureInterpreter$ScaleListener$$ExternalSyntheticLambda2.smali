.class public final synthetic Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/view/ScaleGestureDetector;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener$$ExternalSyntheticLambda2;->f$0:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener$$ExternalSyntheticLambda2;->f$0:Landroid/view/ScaleGestureDetector;

    invoke-static {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;->onScaleEnd$lambda$0(Landroid/view/ScaleGestureDetector;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
