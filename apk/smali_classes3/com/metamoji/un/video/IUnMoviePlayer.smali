.class public interface abstract Lcom/metamoji/un/video/IUnMoviePlayer;
.super Ljava/lang/Object;
.source "IUnMoviePlayer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/IUnMoviePlayer$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\nH&J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH&J\u001c\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011H&J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u0015H&J\u0016\u0010\u0016\u001a\u00020\n2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0018H&R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0004\"\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\u0019\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/un/video/IUnMoviePlayer;",
        "",
        "isMuted",
        "",
        "()Z",
        "setMuted",
        "(Z)V",
        "isReadOnly",
        "setReadOnly",
        "show",
        "",
        "hide",
        "adjustPosition",
        "bounds",
        "Landroid/graphics/RectF;",
        "setPlaybackRange",
        "start",
        "",
        "end",
        "request",
        "chairman",
        "Lcom/metamoji/un/video/IWvvChairmansDirection;",
        "setMarkers",
        "markers",
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


# direct methods
.method public static synthetic setPlaybackRange$default(Lcom/metamoji/un/video/IUnMoviePlayer;DDILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const-wide/high16 p3, -0x4010000000000000L    # -1.0

    .line 18
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/metamoji/un/video/IUnMoviePlayer;->setPlaybackRange(DD)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setPlaybackRange"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract adjustPosition(Landroid/graphics/RectF;)V
.end method

.method public abstract hide()V
.end method

.method public abstract isMuted()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract request(Lcom/metamoji/un/video/IWvvChairmansDirection;)V
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

.method public abstract setMuted(Z)V
.end method

.method public abstract setPlaybackRange(DD)V
.end method

.method public abstract setReadOnly(Z)V
.end method

.method public abstract show()V
.end method
