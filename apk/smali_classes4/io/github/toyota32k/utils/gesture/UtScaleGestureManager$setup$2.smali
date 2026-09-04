.class final synthetic Lio/github/toyota32k/utils/gesture/UtScaleGestureManager$setup$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "UtScaleGestureManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;->setup(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lio/github/toyota32k/utils/gesture/UtScaleGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    const-string v5, "onScale(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "onScale"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;

    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager$setup$2;->invoke(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtScaleGestureManager$setup$2;->receiver:Ljava/lang/Object;

    check-cast v0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent;->onScale(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;)V

    return-void
.end method
