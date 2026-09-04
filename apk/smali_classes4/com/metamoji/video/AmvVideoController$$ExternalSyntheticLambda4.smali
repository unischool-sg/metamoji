.class public final synthetic Lcom/metamoji/video/AmvVideoController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/AmvVideoController;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/AmvVideoController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/video/AmvVideoController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$$ExternalSyntheticLambda4;->f$0:Lcom/metamoji/video/AmvVideoController;

    check-cast p1, Lcom/metamoji/video/IAmvVideoPlayer;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lcom/metamoji/video/AmvVideoController;->setVideoPlayer$lambda$5$lambda$4(Lcom/metamoji/video/AmvVideoController;Lcom/metamoji/video/IAmvVideoPlayer;J)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
