.class public final Lcom/metamoji/ch/internal/ChCleanGraphics;
.super Ljava/lang/Object;
.source "ChCleanGraphics.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \n*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \n*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \n*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \n*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n \n*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n \n*\u0004\u0018\u00010\u00170\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/metamoji/ch/internal/ChCleanGraphics;",
        "Ljava/io/Closeable;",
        "gr",
        "Lcom/metamoji/df/sprite/Graphics;",
        "<init>",
        "(Lcom/metamoji/df/sprite/Graphics;)V",
        "lineWidth",
        "",
        "lineCap",
        "Lcom/metamoji/df/sprite/LineCap;",
        "kotlin.jvm.PlatformType",
        "lineJoin",
        "Lcom/metamoji/df/sprite/LineJoin;",
        "lineDash",
        "",
        "linePaint",
        "Lcom/metamoji/df/sprite/Paint;",
        "lineAlpha",
        "fillPaint",
        "fillAlpha",
        "textPaint",
        "textAlpha",
        "fontName",
        "",
        "fontSize",
        "close",
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


# instance fields
.field private final fillAlpha:F

.field private final fillPaint:Lcom/metamoji/df/sprite/Paint;

.field private final fontName:Ljava/lang/String;

.field private final fontSize:F

.field private final gr:Lcom/metamoji/df/sprite/Graphics;

.field private final lineAlpha:F

.field private final lineCap:Lcom/metamoji/df/sprite/LineCap;

.field private final lineDash:[F

.field private final lineJoin:Lcom/metamoji/df/sprite/LineJoin;

.field private final linePaint:Lcom/metamoji/df/sprite/Paint;

.field private final lineWidth:F

.field private final textAlpha:F

.field private final textPaint:Lcom/metamoji/df/sprite/Paint;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/sprite/Graphics;)V
    .locals 3

    const-string v0, "gr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->gr:Lcom/metamoji/df/sprite/Graphics;

    .line 13
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->getLineWidth()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->lineWidth:F

    .line 14
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->getLineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->lineCap:Lcom/metamoji/df/sprite/LineCap;

    .line 15
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->getLineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    .line 16
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->getLineDash()[F

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->lineDash:[F

    .line 17
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->getLinePaint()Lcom/metamoji/df/sprite/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->linePaint:Lcom/metamoji/df/sprite/Paint;

    .line 18
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->getLineAlpha()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->lineAlpha:F

    .line 19
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->getFillPaint()Lcom/metamoji/df/sprite/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->fillPaint:Lcom/metamoji/df/sprite/Paint;

    .line 20
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->getFillAlpha()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->fillAlpha:F

    .line 21
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->getTextPaint()Lcom/metamoji/df/sprite/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->textPaint:Lcom/metamoji/df/sprite/Paint;

    .line 22
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->getTextAlpha()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->textAlpha:F

    .line 23
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->getFontName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->fontName:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->getFontSize()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->fontSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 28
    sget-object v1, Lcom/metamoji/df/sprite/LineCap;->BUTT:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 29
    sget-object v1, Lcom/metamoji/df/sprite/LineJoin;->BEVEL:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineDash([F)V

    .line 31
    sget-object v2, Lcom/metamoji/df/sprite/PaintSolid;->BLACK:Lcom/metamoji/df/sprite/PaintSolid;

    check-cast v2, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLineAlpha(F)V

    .line 33
    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 34
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    .line 35
    sget-object v2, Lcom/metamoji/df/sprite/PaintSolid;->BLACK:Lcom/metamoji/df/sprite/PaintSolid;

    check-cast v2, Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 36
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setTextAlpha(F)V

    .line 37
    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 38
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget v1, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->lineWidth:F

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 43
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget-object v1, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->lineCap:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 44
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget-object v1, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->lineJoin:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 45
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget-object v1, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->lineDash:[F

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineDash([F)V

    .line 46
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget-object v1, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->linePaint:Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 47
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget v1, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->lineAlpha:F

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineAlpha(F)V

    .line 48
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget-object v1, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->fillPaint:Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 49
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget v1, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->fillAlpha:F

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    .line 50
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget-object v1, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->textPaint:Lcom/metamoji/df/sprite/Paint;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 51
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget v1, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->textAlpha:F

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setTextAlpha(F)V

    .line 52
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget-object v1, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->gr:Lcom/metamoji/df/sprite/Graphics;

    iget v1, p0, Lcom/metamoji/ch/internal/ChCleanGraphics;->fontSize:F

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    return-void
.end method
