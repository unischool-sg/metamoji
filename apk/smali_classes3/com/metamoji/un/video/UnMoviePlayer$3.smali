.class final synthetic Lcom/metamoji/un/video/UnMoviePlayer$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "UnVideoPlayerManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/video/UnMoviePlayer;-><init>(Lcom/metamoji/un/video/UnVideoUnit;Lcom/metamoji/video/IAmvSource;Landroid/content/Context;Lcom/metamoji/un/video/IWvvChairmansDirection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/metamoji/video/IAmvVideoPlayer;",
        "Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/metamoji/un/video/UnMoviePlayer;

    const-string v5, "onPlayerStateChanged(Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-string v4, "onPlayerStateChanged"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    check-cast p1, Lcom/metamoji/video/IAmvVideoPlayer;

    check-cast p2, Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/UnMoviePlayer$3;->invoke(Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/metamoji/un/video/UnMoviePlayer$3;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/un/video/UnMoviePlayer;

    invoke-static {v0, p1, p2}, Lcom/metamoji/un/video/UnMoviePlayer;->access$onPlayerStateChanged(Lcom/metamoji/un/video/UnMoviePlayer;Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;)V

    return-void
.end method
