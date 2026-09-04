.class final Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;
.super Ljava/lang/Object;
.source "UtGestureInterpreter.kt"

# interfaces
.implements Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScaleEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0002\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;",
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;",
        "scale",
        "",
        "pivot",
        "Landroid/graphics/PointF;",
        "timing",
        "Lio/github/toyota32k/utils/gesture/Timing;",
        "<init>",
        "(FLandroid/graphics/PointF;Lio/github/toyota32k/utils/gesture/Timing;)V",
        "getScale",
        "()F",
        "setScale",
        "(F)V",
        "getPivot",
        "()Landroid/graphics/PointF;",
        "setPivot",
        "(Landroid/graphics/PointF;)V",
        "getTiming",
        "()Lio/github/toyota32k/utils/gesture/Timing;",
        "setTiming",
        "(Lio/github/toyota32k/utils/gesture/Timing;)V",
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
.field private pivot:Landroid/graphics/PointF;

.field private scale:F

.field private timing:Lio/github/toyota32k/utils/gesture/Timing;


# direct methods
.method public constructor <init>(FLandroid/graphics/PointF;Lio/github/toyota32k/utils/gesture/Timing;)V
    .locals 1

    const-string v0, "timing"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;->scale:F

    iput-object p2, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;->pivot:Landroid/graphics/PointF;

    iput-object p3, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;->timing:Lio/github/toyota32k/utils/gesture/Timing;

    return-void
.end method


# virtual methods
.method public getPivot()Landroid/graphics/PointF;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;->pivot:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 118
    iget v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;->scale:F

    return v0
.end method

.method public getTiming()Lio/github/toyota32k/utils/gesture/Timing;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;->timing:Lio/github/toyota32k/utils/gesture/Timing;

    return-object v0
.end method

.method public setPivot(Landroid/graphics/PointF;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;->pivot:Landroid/graphics/PointF;

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 118
    iput p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;->scale:F

    return-void
.end method

.method public setTiming(Lio/github/toyota32k/utils/gesture/Timing;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleEvent;->timing:Lio/github/toyota32k/utils/gesture/Timing;

    return-void
.end method
