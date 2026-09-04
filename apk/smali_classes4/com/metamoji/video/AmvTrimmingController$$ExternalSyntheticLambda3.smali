.class public final synthetic Lcom/metamoji/video/AmvTrimmingController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/AmvTrimmingController;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/AmvTrimmingController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/video/AmvTrimmingController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/video/AmvTrimmingController;

    check-cast p1, Lcom/metamoji/video/IAmvVideoPlayer;

    check-cast p2, Lcom/metamoji/video/IAmvVideoPlayer$Clipping;

    invoke-static {v0, p1, p2}, Lcom/metamoji/video/AmvTrimmingController;->setVideoPlayer$lambda$3(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$Clipping;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
