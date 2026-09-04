.class public final Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;
.super Ljava/lang/Object;
.source "UnVideoUnit.kt"

# interfaces
.implements Lcom/metamoji/df/sprite/ViewportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ManipulationListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0002J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\nH\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016J\u0008\u0010\u000f\u001a\u00020\u0005H\u0016J\u0008\u0010\u0010\u001a\u00020\u0005H\u0016J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\nH\u0016J\u0008\u0010\u0013\u001a\u00020\u0005H\u0016J\u0010\u0010\u0014\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\nH\u0016J\u0008\u0010\u0015\u001a\u00020\u0005H\u0016J\u0018\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;",
        "Lcom/metamoji/df/sprite/ViewportListener;",
        "<init>",
        "(Lcom/metamoji/un/video/UnVideoUnit;)V",
        "adjustPlayerPosition",
        "",
        "scrollStart",
        "scrollChanging",
        "scrollEnd",
        "inertia",
        "",
        "scrollInertiaStart",
        "scrollInertiaEnd",
        "complete",
        "scrollChanged",
        "zoomStart",
        "zoomChanging",
        "zoomEnd",
        "rebound",
        "zoomReboundStart",
        "zoomReboundEnd",
        "zoomChanged",
        "sizeChanged",
        "width",
        "",
        "height",
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
.field final synthetic this$0:Lcom/metamoji/un/video/UnVideoUnit;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/video/UnVideoUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1041
    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;->this$0:Lcom/metamoji/un/video/UnVideoUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final adjustPlayerPosition()V
    .locals 2

    .line 1046
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;->this$0:Lcom/metamoji/un/video/UnVideoUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/video/UnVideoUnit;->getMMoviePlayer()Lcom/metamoji/un/video/IUnMoviePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;->this$0:Lcom/metamoji/un/video/UnVideoUnit;

    invoke-static {v1}, Lcom/metamoji/un/video/UnVideoUnit;->access$getPlayerRectOnScroller(Lcom/metamoji/un/video/UnVideoUnit;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/un/video/IUnMoviePlayer;->adjustPosition(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public scrollChanged()V
    .locals 0

    .line 1068
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;->adjustPlayerPosition()V

    return-void
.end method

.method public scrollChanging()V
    .locals 0

    .line 1053
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;->adjustPlayerPosition()V

    return-void
.end method

.method public scrollEnd(Z)V
    .locals 0

    .line 1057
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;->adjustPlayerPosition()V

    return-void
.end method

.method public scrollInertiaEnd(Z)V
    .locals 0

    .line 1064
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;->adjustPlayerPosition()V

    return-void
.end method

.method public scrollInertiaStart()V
    .locals 0

    return-void
.end method

.method public scrollStart()V
    .locals 0

    return-void
.end method

.method public sizeChanged(II)V
    .locals 0

    .line 1094
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;->adjustPlayerPosition()V

    return-void
.end method

.method public zoomChanged()V
    .locals 0

    .line 1090
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;->adjustPlayerPosition()V

    return-void
.end method

.method public zoomChanging()V
    .locals 0

    .line 1075
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;->adjustPlayerPosition()V

    return-void
.end method

.method public zoomEnd(Z)V
    .locals 0

    .line 1079
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;->adjustPlayerPosition()V

    return-void
.end method

.method public zoomReboundEnd(Z)V
    .locals 0

    .line 1086
    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnit$ManipulationListener;->adjustPlayerPosition()V

    return-void
.end method

.method public zoomReboundStart()V
    .locals 0

    return-void
.end method

.method public zoomStart()V
    .locals 0

    return-void
.end method
