.class public final synthetic Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/video/IUnMoviePlayer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/video/IUnMoviePlayer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda5;->f$0:Lcom/metamoji/un/video/IUnMoviePlayer;

    iput-boolean p2, p0, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda5;->f$0:Lcom/metamoji/un/video/IUnMoviePlayer;

    iget-boolean v1, p0, Lcom/metamoji/un/video/UnVideoUnit$$ExternalSyntheticLambda5;->f$1:Z

    invoke-static {v0, v1}, Lcom/metamoji/un/video/UnVideoUnit;->listenBroadcast$lambda$4(Lcom/metamoji/un/video/IUnMoviePlayer;Z)V

    return-void
.end method
