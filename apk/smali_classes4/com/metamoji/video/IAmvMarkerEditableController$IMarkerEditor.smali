.class public interface abstract Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;
.super Ljava/lang/Object;
.source "IAmvVideoController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/IAmvMarkerEditableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMarkerEditor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0016\u0010\u0006\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H&J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H&J\u001a\u0010\r\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H&J\u0017\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\tH&\u00a2\u0006\u0002\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerEditor;",
        "",
        "setMarkerListener",
        "",
        "listener",
        "Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;",
        "setMarkers",
        "markers",
        "",
        "",
        "addMarker",
        "position",
        "clientData",
        "removeMarker",
        "setHighLightMarker",
        "(Ljava/lang/Double;)V",
        "view",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "video"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract addMarker(DLjava/lang/Object;)V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract removeMarker(DLjava/lang/Object;)V
.end method

.method public abstract setHighLightMarker(Ljava/lang/Double;)V
.end method

.method public abstract setMarkerListener(Lcom/metamoji/video/IAmvMarkerEditableController$IMarkerListener;)V
.end method

.method public abstract setMarkers(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method
