.class public final synthetic Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/AmvTrimmingController;

.field public final synthetic f$1:Lcom/metamoji/video/AmvTrimmingController$Controls;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvTrimmingController$Controls;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/video/AmvTrimmingController;

    iput-object p2, p0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda4;->f$1:Lcom/metamoji/video/AmvTrimmingController$Controls;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/video/AmvTrimmingController;

    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda4;->f$1:Lcom/metamoji/video/AmvTrimmingController$Controls;

    move-object v2, p1

    check-cast v2, Lcom/metamoji/video/AmvSlider;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v5, p3

    check-cast v5, Lcom/metamoji/video/AmvSlider$SliderDragState;

    invoke-static/range {v0 .. v5}, Lcom/metamoji/video/AmvTrimmingController$Controls;->initialize$lambda$10(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvTrimmingController$Controls;Lcom/metamoji/video/AmvSlider;JLcom/metamoji/video/AmvSlider$SliderDragState;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
