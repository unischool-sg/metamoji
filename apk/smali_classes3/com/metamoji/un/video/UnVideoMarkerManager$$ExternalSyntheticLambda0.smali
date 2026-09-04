.class public final synthetic Lcom/metamoji/un/video/UnVideoMarkerManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/video/IUnVideoMarkerPresenter;

.field public final synthetic f$1:Lcom/metamoji/un/video/IUnVideoMarker;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/video/IUnVideoMarkerPresenter;Lcom/metamoji/un/video/IUnVideoMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/un/video/IUnVideoMarkerPresenter;

    iput-object p2, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/un/video/IUnVideoMarker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/un/video/IUnVideoMarkerPresenter;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoMarkerManager$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/un/video/IUnVideoMarker;

    invoke-static {v0, v1}, Lcom/metamoji/un/video/UnVideoMarkerManager;->performAddMarker$lambda$5(Lcom/metamoji/un/video/IUnVideoMarkerPresenter;Lcom/metamoji/un/video/IUnVideoMarker;)V

    return-void
.end method
