.class public final synthetic Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/AmvTrimmingController;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/AmvTrimmingController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/video/AmvTrimmingController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/video/AmvTrimmingController;

    check-cast p1, Lcom/metamoji/video/AmvSlider;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p3, Lcom/metamoji/video/AmvSlider$SliderDragState;

    invoke-static {v0, p1, v1, v2, p3}, Lcom/metamoji/video/AmvTrimmingController$Controls;->initialize$lambda$9(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvSlider;JLcom/metamoji/video/AmvSlider$SliderDragState;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
