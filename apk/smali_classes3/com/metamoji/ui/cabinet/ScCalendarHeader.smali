.class public final Lcom/metamoji/ui/cabinet/ScCalendarHeader;
.super Landroid/view/View;
.source "ScCalendarHeader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0014J\u000e\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\tJ\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001cH\u0014R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/ScCalendarHeader;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "m_model",
        "Lcom/metamoji/ui/cabinet/ScCalendarModel;",
        "getM_model",
        "()Lcom/metamoji/ui/cabinet/ScCalendarModel;",
        "setM_model",
        "(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V",
        "paint",
        "Landroid/graphics/Paint;",
        "paintToDay",
        "textPaint",
        "textPaint2",
        "onMeasure",
        "",
        "widthMeasureSpec",
        "",
        "heightMeasureSpec",
        "notifyModel",
        "model",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "app"
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
.field private m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

.field private final paint:Landroid/graphics/Paint;

.field private final paintToDay:Landroid/graphics/Paint;

.field private final textPaint:Landroid/graphics/Paint;

.field private final textPaint2:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->paint:Landroid/graphics/Paint;

    .line 22
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->paintToDay:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->textPaint:Landroid/graphics/Paint;

    .line 24
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->textPaint2:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 28
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    sget-object v2, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_SEP()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, -0x1000000

    .line 32
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 33
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 35
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v3, 0x1

    .line 36
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 39
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 43
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 46
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    sget-object p1, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->getD_COLOR_CELL_BG_P()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final getM_model()Lcom/metamoji/ui/cabinet/ScCalendarModel;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    return-object v0
.end method

.method public final notifyModel(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    sub-float v4, v0, v1

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    .line 66
    iget-object v7, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move v6, v4

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_0

    .line 69
    sget-object v3, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3, v0, v5}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->rowWidth(II)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v3, v1

    move v6, v4

    const/4 v4, 0x0

    .line 70
    iget-object v7, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->paint:Landroid/graphics/Paint;

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->getCurrentDate()Ljava/time/LocalDate;

    move-result-object v0

    .line 75
    sget-object v1, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    invoke-static {v1}, Ljava/time/temporal/TemporalAdjusters;->previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->textPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    move-object v1, v0

    move v0, p1

    :goto_1
    if-ge p1, v3, :cond_4

    .line 79
    sget-object v5, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5, p1, v6}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;->rowWidth(II)I

    move-result v5

    .line 80
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    div-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v0

    int-to-float v6, v6

    const/4 v7, 0x2

    int-to-float v7, v7

    div-float v7, v4, v7

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "getContext(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v9, 0x41b00000    # 22.0f

    invoke-static {v8, v9}, Lcom/metamoji/video/AmvUtilsKt;->dp2px(Landroid/content/Context;F)F

    move-result v8

    iget-object v9, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->paintToDay:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    const/4 v6, 0x5

    if-eq p1, v6, :cond_3

    const/4 v6, 0x6

    if-eq p1, v6, :cond_2

    goto :goto_2

    .line 87
    :cond_2
    iget-object v6, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->textPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x10000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 85
    :cond_3
    iget-object v6, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->textPaint:Landroid/graphics/Paint;

    const v7, -0xffff01

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    :goto_2
    const-string v6, "E"

    invoke-static {v6}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v6

    .line 90
    invoke-virtual {v1, v6}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41d00000    # 26.0f

    .line 91
    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    .line 94
    div-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v0

    int-to-float v8, v8

    .line 96
    iget-object v9, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->textPaint:Landroid/graphics/Paint;

    .line 92
    invoke-virtual {v2, v6, v8, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    const-string v6, "d"

    invoke-static {v6}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v6

    .line 100
    invoke-virtual {v1, v6}, Ljava/time/LocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x42380000    # 46.0f

    .line 101
    invoke-static {v7}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v7

    .line 106
    iget-object v9, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->textPaint2:Landroid/graphics/Paint;

    .line 102
    invoke-virtual {v2, v6, v8, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v0, v5

    const-wide/16 v5, 0x1

    .line 111
    invoke-virtual {v1, v5, v6}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 51
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x42700000    # 60.0f

    .line 53
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    float-to-int p2, p2

    .line 54
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->calcWidth(I)I

    move-result p1

    .line 55
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setM_model(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarHeader;->m_model:Lcom/metamoji/ui/cabinet/ScCalendarModel;

    return-void
.end method
