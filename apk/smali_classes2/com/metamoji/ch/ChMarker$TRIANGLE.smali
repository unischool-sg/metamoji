.class final Lcom/metamoji/ch/ChMarker$TRIANGLE;
.super Lcom/metamoji/ch/ChMarker;
.source "ChMarker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ch/ChMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TRIANGLE"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\u00ca\u0001\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/metamoji/ch/ChMarker.TRIANGLE",
        "Lcom/metamoji/ch/ChMarker;",
        "draw",
        "",
        "gr",
        "Lcom/metamoji/df/sprite/Graphics;",
        "cx",
        "",
        "cy",
        "size",
        "color",
        "",
        "chart"
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
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ch/ChMarker;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/metamoji/df/sprite/Graphics;FFFI)V
    .locals 2

    const-string v0, "gr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/metamoji/ch/internal/ChCleanGraphics;

    invoke-direct {v0, p1}, Lcom/metamoji/ch/internal/ChCleanGraphics;-><init>(Lcom/metamoji/df/sprite/Graphics;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Lcom/metamoji/ch/internal/ChCleanGraphics;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p4, v1

    .line 53
    new-instance v1, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v1, p5}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    .line 54
    move-object p5, v1

    check-cast p5, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {p1, p5}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 55
    check-cast v1, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    sub-float p5, p3, p4

    .line 56
    invoke-virtual {p1, p2, p5}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    add-float p5, p2, p4

    add-float/2addr p3, p4

    .line 57
    invoke-virtual {p1, p5, p3}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    sub-float/2addr p2, p4

    .line 58
    invoke-virtual {p1, p2, p3}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 59
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    .line 60
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 51
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method
