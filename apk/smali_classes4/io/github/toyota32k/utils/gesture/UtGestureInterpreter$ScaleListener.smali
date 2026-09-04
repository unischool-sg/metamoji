.class final Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "UtGestureInterpreter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScaleListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;",
        "Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;",
        "<init>",
        "(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)V",
        "pivot",
        "Landroid/graphics/PointF;",
        "getPivot",
        "detector",
        "Landroid/view/ScaleGestureDetector;",
        "onScale",
        "",
        "onScaleBegin",
        "onScaleEnd",
        "",
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
.field private final pivot:Landroid/graphics/PointF;

.field final synthetic this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;


# direct methods
.method public constructor <init>(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 494
    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 495
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;->pivot:Landroid/graphics/PointF;

    return-void
.end method

.method private final getPivot(Landroid/view/ScaleGestureDetector;)Landroid/graphics/PointF;
    .locals 2

    .line 498
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;->pivot:Landroid/graphics/PointF;

    .line 499
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 500
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method static final onScale$lambda$0(Landroid/view/ScaleGestureDetector;)Ljava/lang/String;
    .locals 0

    .line 511
    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onScaleBegin$lambda$0(Landroid/view/ScaleGestureDetector;)Ljava/lang/String;
    .locals 0

    .line 516
    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onScaleEnd$lambda$0(Landroid/view/ScaleGestureDetector;)Ljava/lang/String;
    .locals 1

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    new-instance v1, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener$$ExternalSyntheticLambda1;-><init>(Landroid/view/ScaleGestureDetector;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/github/toyota32k/logger/UtLog;->debug(ZLkotlin/jvm/functions/Function0;)V

    .line 512
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;->getPivot(Landroid/view/ScaleGestureDetector;)Landroid/graphics/PointF;

    move-result-object p1

    sget-object v2, Lio/github/toyota32k/utils/gesture/Timing;->Repeat:Lio/github/toyota32k/utils/gesture/Timing;

    invoke-static {v0, v1, p1, v2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$fireScaleEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;FLandroid/graphics/PointF;Lio/github/toyota32k/utils/gesture/Timing;)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    new-instance v1, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/ScaleGestureDetector;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/github/toyota32k/logger/UtLog;->debug(ZLkotlin/jvm/functions/Function0;)V

    .line 517
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;->getPivot(Landroid/view/ScaleGestureDetector;)Landroid/graphics/PointF;

    move-result-object p1

    sget-object v2, Lio/github/toyota32k/utils/gesture/Timing;->Start:Lio/github/toyota32k/utils/gesture/Timing;

    invoke-static {v0, v1, p1, v2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$fireScaleEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;FLandroid/graphics/PointF;Lio/github/toyota32k/utils/gesture/Timing;)Z

    move-result p1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    sget-object v0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->Companion:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$Companion;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    new-instance v1, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener$$ExternalSyntheticLambda2;-><init>(Landroid/view/ScaleGestureDetector;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lio/github/toyota32k/logger/UtLog;->debug(ZLkotlin/jvm/functions/Function0;)V

    .line 522
    iget-object v0, p0, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;->this$0:Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter$ScaleListener;->getPivot(Landroid/view/ScaleGestureDetector;)Landroid/graphics/PointF;

    move-result-object p1

    sget-object v2, Lio/github/toyota32k/utils/gesture/Timing;->End:Lio/github/toyota32k/utils/gesture/Timing;

    invoke-static {v0, v1, p1, v2}, Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;->access$fireScaleEvent(Lio/github/toyota32k/utils/gesture/UtGestureInterpreter;FLandroid/graphics/PointF;Lio/github/toyota32k/utils/gesture/Timing;)Z

    return-void
.end method
