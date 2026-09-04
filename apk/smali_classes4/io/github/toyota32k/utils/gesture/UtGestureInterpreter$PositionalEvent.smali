.class public final Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;
.super Ljava/lang/Object;
.source "UtGestureInterpreter.kt"

# interfaces
.implements Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionalEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IPositionalEvent;",
        "x",
        "",
        "y",
        "<init>",
        "(FF)V",
        "getX",
        "()F",
        "setX",
        "(F)V",
        "getY",
        "setY",
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
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;->x:F

    iput p2, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;->y:F

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .line 140
    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 140
    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;->y:F

    return v0
.end method

.method public setX(F)V
    .locals 0

    .line 140
    iput p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 140
    iput p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$PositionalEvent;->y:F

    return-void
.end method
