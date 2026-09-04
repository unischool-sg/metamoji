.class final synthetic Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener$add$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "IAmvVideoPlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener;->add(Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener$IHandler;Ljava/lang/String;)Lcom/metamoji/lib/utils/IFuncy2;
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
        "Lcom/metamoji/video/IAmvSource;",
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

    const-class v3, Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener$IHandler;

    const-string v5, "sourceChanged(Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvSource;)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-string v4, "sourceChanged"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lcom/metamoji/video/IAmvVideoPlayer;

    check-cast p2, Lcom/metamoji/video/IAmvSource;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener$add$1;->invoke(Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvSource;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvSource;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener$add$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener$IHandler;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/video/IAmvVideoPlayer$SourceChangedListener$IHandler;->sourceChanged(Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvSource;)V

    return-void
.end method
