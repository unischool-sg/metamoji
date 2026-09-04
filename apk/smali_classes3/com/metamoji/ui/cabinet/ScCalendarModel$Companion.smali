.class public final Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;
.super Ljava/lang/Object;
.source "ScCalendarModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/ScCalendarModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\nR\u0011\u0010\u000f\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\nR\u0011\u0010\u0011\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\nR\u0011\u0010\u0013\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\nR\u0011\u0010\u0015\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\nR\u0011\u0010\u0017\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\n\u00a8\u0006 "
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;",
        "",
        "<init>",
        "()V",
        "D_HEADER_H",
        "",
        "D_MIN_CELL_W",
        "D_MIN_WEEK_END_ROW_W",
        "D_COLOR_SEP",
        "getD_COLOR_SEP",
        "()I",
        "D_COLOR_BG",
        "getD_COLOR_BG",
        "D_COLOR_CELL_BG",
        "getD_COLOR_CELL_BG",
        "D_COLOR_CELL_BG_P",
        "getD_COLOR_CELL_BG_P",
        "D_COLOR_CELL_TEXT",
        "getD_COLOR_CELL_TEXT",
        "D_COLOR_DATE_BG",
        "getD_COLOR_DATE_BG",
        "D_COLOR_DATE_TEXT",
        "getD_COLOR_DATE_TEXT",
        "D_COLOR_INFO",
        "getD_COLOR_INFO",
        "rowWidth",
        "index",
        "dispWidth",
        "formatMonthRange",
        "",
        "date",
        "Ljava/time/LocalDate;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final formatMonthRange(Ljava/time/LocalDate;)Ljava/lang/String;
    .locals 9

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 178
    sget-object v1, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    invoke-static {v1}, Ljava/time/temporal/TemporalAdjusters;->previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v1

    .line 179
    sget-object v2, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    invoke-static {v2}, Ljava/time/temporal/TemporalAdjusters;->next(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object p1

    .line 180
    const-string/jumbo v2, "yyyy"

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v2, v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    .line 182
    const-string v3, "MMMM"

    invoke-static {v3, v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 183
    move-object v3, v1

    check-cast v3, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-virtual {v0, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v3

    .line 185
    move-object v5, p1

    check-cast v5, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {v0, v5}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v1}, Ljava/time/LocalDate;->getYear()I

    move-result v6

    invoke-virtual {p1}, Ljava/time/LocalDate;->getYear()I

    move-result v7

    const-string/jumbo v8, "\uff5e"

    if-ne v6, v7, :cond_1

    .line 191
    invoke-virtual {v1}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v1

    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object p1

    if-ne v1, p1, :cond_0

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 197
    :cond_1
    invoke-virtual {v2, v5}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getD_COLOR_BG()I
    .locals 1

    .line 125
    invoke-static {}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->access$getD_COLOR_BG$cp()I

    move-result v0

    return v0
.end method

.method public final getD_COLOR_CELL_BG()I
    .locals 1

    .line 134
    invoke-static {}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->access$getD_COLOR_CELL_BG$cp()I

    move-result v0

    return v0
.end method

.method public final getD_COLOR_CELL_BG_P()I
    .locals 1

    .line 135
    invoke-static {}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->access$getD_COLOR_CELL_BG_P$cp()I

    move-result v0

    return v0
.end method

.method public final getD_COLOR_CELL_TEXT()I
    .locals 1

    .line 136
    invoke-static {}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->access$getD_COLOR_CELL_TEXT$cp()I

    move-result v0

    return v0
.end method

.method public final getD_COLOR_DATE_BG()I
    .locals 1

    .line 137
    invoke-static {}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->access$getD_COLOR_DATE_BG$cp()I

    move-result v0

    return v0
.end method

.method public final getD_COLOR_DATE_TEXT()I
    .locals 1

    .line 138
    invoke-static {}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->access$getD_COLOR_DATE_TEXT$cp()I

    move-result v0

    return v0
.end method

.method public final getD_COLOR_INFO()I
    .locals 1

    .line 139
    invoke-static {}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->access$getD_COLOR_INFO$cp()I

    move-result v0

    return v0
.end method

.method public final getD_COLOR_SEP()I
    .locals 1

    .line 124
    invoke-static {}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->access$getD_COLOR_SEP$cp()I

    move-result v0

    return v0
.end method

.method public final rowWidth(II)I
    .locals 7

    int-to-float p2, p2

    const/high16 v0, 0x42f00000    # 120.0f

    .line 145
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    const/high16 v1, 0x42a00000    # 80.0f

    .line 146
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    const/4 v2, 0x7

    int-to-float v2, v2

    mul-float v3, v0, v2

    cmpg-float v3, p2, v3

    if-gez v3, :cond_3

    const/4 v2, 0x5

    int-to-float v3, v2

    mul-float v4, v0, v3

    sub-float v4, p2, v4

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpg-float v6, v4, v1

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-lt p1, v2, :cond_1

    float-to-double p1, v1

    .line 154
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-int p1, p1

    return p1

    :cond_1
    mul-float/2addr v1, v5

    sub-float/2addr p2, v1

    div-float/2addr p2, v3

    cmpg-float p1, p2, v0

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p2

    :goto_1
    float-to-int p1, v0

    return p1

    :cond_3
    div-float/2addr p2, v2

    cmpg-float p1, p2, v0

    if-gez p1, :cond_4

    goto :goto_2

    :cond_4
    move v0, p2

    :goto_2
    float-to-int p1, v0

    return p1
.end method
