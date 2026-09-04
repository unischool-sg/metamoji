.class public interface abstract Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;
.super Ljava/lang/Object;
.source "UtGestureInterpreter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IScaleEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e\u00c0\u0006\u0003"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$IScaleEvent;",
        "",
        "scale",
        "",
        "getScale",
        "()F",
        "pivot",
        "Landroid/graphics/PointF;",
        "getPivot",
        "()Landroid/graphics/PointF;",
        "timing",
        "Lio/github/toyota32k/utils/gesture/Timing;",
        "getTiming",
        "()Lio/github/toyota32k/utils/gesture/Timing;",
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


# virtual methods
.method public abstract getPivot()Landroid/graphics/PointF;
.end method

.method public abstract getScale()F
.end method

.method public abstract getTiming()Lio/github/toyota32k/utils/gesture/Timing;
.end method
