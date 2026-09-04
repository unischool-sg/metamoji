.class public final synthetic Lcom/metamoji/un/video/UnVideoPlayerManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/video/IUnMoviePlayer;

.field public final synthetic f$1:Lcom/metamoji/un/video/UnVideoPlayerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/video/IUnMoviePlayer;Lcom/metamoji/un/video/UnVideoPlayerManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoPlayerManager$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/un/video/IUnMoviePlayer;

    iput-object p2, p0, Lcom/metamoji/un/video/UnVideoPlayerManager$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/un/video/UnVideoPlayerManager;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoPlayerManager$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/un/video/IUnMoviePlayer;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoPlayerManager$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/un/video/UnVideoPlayerManager;

    invoke-static {v0, v1}, Lcom/metamoji/un/video/UnVideoPlayerManager;->releasePlayer$lambda$1(Lcom/metamoji/un/video/IUnMoviePlayer;Lcom/metamoji/un/video/UnVideoPlayerManager;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
