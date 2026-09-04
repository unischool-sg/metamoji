.class public final Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener;
.super Ljava/lang/Object;
.source "UnVideoPlayerManager.kt"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;
.implements Lcom/metamoji/ui/MenuCloseEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ContextMenuListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J&\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0016J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener;",
        "Lcom/metamoji/ui/MenuEventListener;",
        "Lcom/metamoji/ui/MenuCloseEventListener;",
        "<init>",
        "(Lcom/metamoji/un/video/UnVideoPlayerManager;)V",
        "onSelect",
        "",
        "view",
        "Landroid/view/View;",
        "index",
        "",
        "options",
        "onClose",
        "removeMarker",
        "marker",
        "",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/video/UnVideoPlayerManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/video/UnVideoPlayerManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 382
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener;->this$0:Lcom/metamoji/un/video/UnVideoPlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final removeMarker(D)V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener;->this$0:Lcom/metamoji/un/video/UnVideoPlayerManager;

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->getActiveUnit()Lcom/metamoji/un/video/UnVideoUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->getMarkerManager()Lcom/metamoji/un/video/UnVideoMarkerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/video/UnVideoMarkerManager;->removeMarker(D)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener;->this$0:Lcom/metamoji/un/video/UnVideoPlayerManager;

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->getCurrentPlayer()Lcom/metamoji/un/video/UnMoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnMoviePlayer;->getVideoPlayer()Lcom/metamoji/video/AmvPlayerUnitView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoController()Lcom/metamoji/video/IAmvMarkerEditableController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/metamoji/video/IAmvMarkerEditableController;->getMarkerEditor()Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;->removeMarker(DLjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener;->this$0:Lcom/metamoji/un/video/UnVideoPlayerManager;

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoPlayerManager;->getCurrentPlayer()Lcom/metamoji/un/video/UnMoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnMoviePlayer;->getVideoPlayer()Lcom/metamoji/video/AmvPlayerUnitView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvPlayerUnitView;->getVideoController()Lcom/metamoji/video/IAmvMarkerEditableController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvMarkerEditableController;->getMarkerEditor()Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;->setHighLightMarker(Ljava/lang/Double;)V

    :cond_0
    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 387
    instance-of p1, p2, Lcom/metamoji/un/video/UnVideoPlayerManager$MarkerCommand;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p2, Lcom/metamoji/un/video/UnVideoPlayerManager$MarkerCommand;

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 388
    :goto_0
    instance-of p1, p3, Ljava/lang/Double;

    if-eqz p1, :cond_1

    move-object v0, p3

    check-cast v0, Ljava/lang/Double;

    :cond_1
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 390
    sget-object p1, Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/metamoji/un/video/UnVideoPlayerManager$MarkerCommand;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 391
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/video/UnVideoPlayerManager$ContextMenuListener;->removeMarker(D)V

    return-void

    .line 390
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    return-void
.end method
