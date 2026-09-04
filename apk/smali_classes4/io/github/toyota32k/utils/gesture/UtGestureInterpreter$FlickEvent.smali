.class public final Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;
.super Ljava/lang/Object;
.source "UtGestureInterpreter.kt"

# interfaces
.implements Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IFlickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlickEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IFlickEvent;",
        "direction",
        "Lio/github/toyota32k/utils/gesture/Direction;",
        "<init>",
        "(Lio/github/toyota32k/utils/gesture/Direction;)V",
        "getDirection",
        "()Lio/github/toyota32k/utils/gesture/Direction;",
        "setDirection",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private direction:Lio/github/toyota32k/utils/gesture/Direction;


# direct methods
.method public constructor <init>(Lio/github/toyota32k/utils/gesture/Direction;)V
    .locals 1

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;->direction:Lio/github/toyota32k/utils/gesture/Direction;

    return-void
.end method


# virtual methods
.method public getDirection()Lio/github/toyota32k/utils/gesture/Direction;
    .locals 1

    .line 203
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;->direction:Lio/github/toyota32k/utils/gesture/Direction;

    return-object v0
.end method

.method public setDirection(Lio/github/toyota32k/utils/gesture/Direction;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$FlickEvent;->direction:Lio/github/toyota32k/utils/gesture/Direction;

    return-void
.end method
