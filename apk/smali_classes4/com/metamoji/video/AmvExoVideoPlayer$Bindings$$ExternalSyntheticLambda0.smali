.class public final synthetic Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/AmvExoVideoPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/AmvExoVideoPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/video/AmvExoVideoPlayer;

    invoke-static {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$Bindings;->playerView_delegate$lambda$0(Lcom/metamoji/video/AmvExoVideoPlayer;)Landroidx/media3/ui/PlayerView;

    move-result-object v0

    return-object v0
.end method
