.class public final Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;
.super Lcom/metamoji/lib/utils/Funcies2;
.source "IAmvVideoPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/video/IAmvVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayerStateChangedListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$IHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/utils/Funcies2<",
        "Lcom/metamoji/video/IAmvVideoPlayer;",
        "Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J.\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00082\u0006\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0007J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;",
        "Lcom/metamoji/lib/utils/Funcies2;",
        "Lcom/metamoji/video/IAmvVideoPlayer;",
        "Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
        "",
        "<init>",
        "()V",
        "add",
        "Lcom/metamoji/lib/utils/IFuncy2;",
        "listener",
        "Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$IHandler;",
        "name",
        "",
        "remove",
        "IHandler",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/metamoji/lib/utils/Funcies2;-><init>()V

    return-void
.end method

.method public static synthetic add$default(Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$IHandler;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/lib/utils/IFuncy2;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;->add(Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$IHandler;Ljava/lang/String;)Lcom/metamoji/lib/utils/IFuncy2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$IHandler;)Lcom/metamoji/lib/utils/IFuncy2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$IHandler;",
            ")",
            "Lcom/metamoji/lib/utils/IFuncy2<",
            "Lcom/metamoji/video/IAmvVideoPlayer;",
            "Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;->add$default(Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$IHandler;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/lib/utils/IFuncy2;

    move-result-object p1

    return-object p1
.end method

.method public final add(Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$IHandler;Ljava/lang/String;)Lcom/metamoji/lib/utils/IFuncy2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$IHandler;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/lib/utils/IFuncy2<",
            "Lcom/metamoji/video/IAmvVideoPlayer;",
            "Lcom/metamoji/video/IAmvVideoPlayer$PlayerState;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$add$1;

    invoke-direct {v0, p1}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$add$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-super {p0, p2, v0}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$IHandler;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$remove$1;

    invoke-direct {v0, p1}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener$remove$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/video/IAmvVideoPlayer$PlayerStateChangedListener;->remove(Ljava/lang/Object;)V

    return-void
.end method
