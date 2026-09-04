.class public final synthetic Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;F)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1$$ExternalSyntheticLambda2;->f$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    iput p2, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1$$ExternalSyntheticLambda2;->f$1:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1$$ExternalSyntheticLambda2;->f$0:Lio/github/toyota32k/utils/gesture/UtManipulationAgent;

    iget v1, p0, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1$$ExternalSyntheticLambda2;->f$1:F

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, p1}, Lio/github/toyota32k/utils/gesture/UtManipulationAgent$pageChangeActionSub$1;->invokeSuspend$lambda$2(Lio/github/toyota32k/utils/gesture/UtManipulationAgent;FF)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
