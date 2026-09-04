.class public final synthetic Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/AmvPlayerUnitView;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/AmvPlayerUnitView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/video/AmvPlayerUnitView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/AmvPlayerUnitView$Bindings$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/video/AmvPlayerUnitView;

    check-cast p1, Lcom/metamoji/video/IAmvVideoPlayer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/video/AmvPlayerUnitView$Bindings;->init$lambda$5(Lcom/metamoji/video/AmvPlayerUnitView;Lcom/metamoji/video/IAmvVideoPlayer;II)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
