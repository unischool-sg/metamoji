.class public final Lcom/metamoji/ui/cabinet/ScCalendarModel;
.super Ljava/lang/Object;
.source "ScCalendarModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014J\n\u0010\u0016\u001a\u00020\u0017*\u00020\u000bJ\u000e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0007J\u0016\u0010 \u001a\u00020\u00052\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001bH\u0002J\u0010\u0010(\u001a\u00020\u00052\u0008\u0010)\u001a\u0004\u0018\u00010#R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\r\u001a\n \u000e*\u0004\u0018\u00010\u000b0\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010\"\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/ScCalendarModel;",
        "",
        "<init>",
        "()V",
        "clear",
        "",
        "isCalendarMode",
        "",
        "setCalendarMode",
        "calendar",
        "getCurrentDate",
        "Ljava/time/LocalDate;",
        "m_calendarMode",
        "m_currentDate",
        "kotlin.jvm.PlatformType",
        "getM_currentDate",
        "()Ljava/time/LocalDate;",
        "setM_currentDate",
        "(Ljava/time/LocalDate;)V",
        "calcWidth",
        "",
        "width",
        "toDate",
        "Ljava/util/Date;",
        "reloadCalenderData",
        "force",
        "m_roomArray",
        "",
        "getM_roomArray",
        "()Ljava/util/List;",
        "setM_roomArray",
        "(Ljava/util/List;)V",
        "updateRoomArray",
        "roomArray",
        "_activity",
        "Lcom/metamoji/noteanytime/MainActivity;",
        "get_activity",
        "()Lcom/metamoji/noteanytime/MainActivity;",
        "set_activity",
        "(Lcom/metamoji/noteanytime/MainActivity;)V",
        "notifyMainActivity",
        "activity",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

.field private static final D_COLOR_BG:I

.field private static final D_COLOR_CELL_BG:I

.field private static final D_COLOR_CELL_BG_P:I

.field private static final D_COLOR_CELL_TEXT:I

.field private static final D_COLOR_DATE_BG:I

.field private static final D_COLOR_DATE_TEXT:I

.field private static final D_COLOR_INFO:I

.field private static final D_COLOR_SEP:I

.field public static final D_HEADER_H:I = 0x3c

.field public static final D_MIN_CELL_W:I = 0x78

.field public static final D_MIN_WEEK_END_ROW_W:I = 0x50


# instance fields
.field private _activity:Lcom/metamoji/noteanytime/MainActivity;

.field private m_calendarMode:Z

.field private m_currentDate:Ljava/time/LocalDate;

.field private m_roomArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->Companion:Lcom/metamoji/ui/cabinet/ScCalendarModel$Companion;

    const/16 v0, 0xc8

    const/16 v1, 0xff

    .line 124
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_SEP:I

    const/4 v0, -0x1

    .line 125
    sput v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_BG:I

    const/16 v0, 0xdc

    .line 134
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_CELL_BG:I

    const/16 v0, 0xf0

    .line 135
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_CELL_BG_P:I

    const/16 v0, 0x50

    .line 136
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_CELL_TEXT:I

    const/16 v0, 0x9f

    const/16 v2, 0xbe

    const/16 v3, 0xd

    .line 137
    invoke-static {v1, v3, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_DATE_BG:I

    .line 138
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_DATE_TEXT:I

    const/16 v0, 0x80

    const/16 v2, 0xaa

    const/16 v3, 0x55

    .line 139
    invoke-static {v1, v3, v0, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_INFO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->m_currentDate:Ljava/time/LocalDate;

    return-void
.end method

.method public static final synthetic access$getD_COLOR_BG$cp()I
    .locals 1

    .line 20
    sget v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_BG:I

    return v0
.end method

.method public static final synthetic access$getD_COLOR_CELL_BG$cp()I
    .locals 1

    .line 20
    sget v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_CELL_BG:I

    return v0
.end method

.method public static final synthetic access$getD_COLOR_CELL_BG_P$cp()I
    .locals 1

    .line 20
    sget v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_CELL_BG_P:I

    return v0
.end method

.method public static final synthetic access$getD_COLOR_CELL_TEXT$cp()I
    .locals 1

    .line 20
    sget v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_CELL_TEXT:I

    return v0
.end method

.method public static final synthetic access$getD_COLOR_DATE_BG$cp()I
    .locals 1

    .line 20
    sget v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_DATE_BG:I

    return v0
.end method

.method public static final synthetic access$getD_COLOR_DATE_TEXT$cp()I
    .locals 1

    .line 20
    sget v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_DATE_TEXT:I

    return v0
.end method

.method public static final synthetic access$getD_COLOR_INFO$cp()I
    .locals 1

    .line 20
    sget v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_INFO:I

    return v0
.end method

.method public static final synthetic access$getD_COLOR_SEP$cp()I
    .locals 1

    .line 20
    sget v0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->D_COLOR_SEP:I

    return v0
.end method

.method static final reloadCalenderData$lambda$1(Lcom/metamoji/ui/cabinet/ScCalendarModel;ZLjava/util/List;Ljava/lang/String;)V
    .locals 2

    .line 83
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda0;-><init>(ZLcom/metamoji/ui/cabinet/ScCalendarModel;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static final reloadCalenderData$lambda$1$lambda$0(ZLcom/metamoji/ui/cabinet/ScCalendarModel;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 85
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->updateRoomArray(Ljava/util/List;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 88
    move-object p0, p3

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 89
    invoke-static {p3}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showMsgDialog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final updateRoomArray(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->m_roomArray:Ljava/util/List;

    .line 103
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->_activity:Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/noteanytime/MainActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static final updateRoomArray$lambda$4$lambda$3(Lcom/metamoji/noteanytime/MainActivity;Ljava/util/List;)V
    .locals 1

    .line 105
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_calendar_view:I

    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ui/cabinet/ScCabinetCalendarView;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ScCabinetCalendarView;->updateCalendarList(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final calcWidth(I)I
    .locals 1

    const/high16 v0, 0x443e0000    # 760.0f

    .line 44
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    if-ge p1, v0, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->m_calendarMode:Z

    .line 23
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->m_currentDate:Ljava/time/LocalDate;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->m_roomArray:Ljava/util/List;

    return-void
.end method

.method public final getCurrentDate()Ljava/time/LocalDate;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->m_currentDate:Ljava/time/LocalDate;

    sget-object v1, Ljava/time/DayOfWeek;->MONDAY:Ljava/time/DayOfWeek;

    invoke-static {v1}, Ljava/time/temporal/TemporalAdjusters;->previousOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v0

    const-string/jumbo v1, "with(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getM_currentDate()Ljava/time/LocalDate;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->m_currentDate:Ljava/time/LocalDate;

    return-object v0
.end method

.method public final getM_roomArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->m_roomArray:Ljava/util/List;

    return-object v0
.end method

.method public final get_activity()Lcom/metamoji/noteanytime/MainActivity;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->_activity:Lcom/metamoji/noteanytime/MainActivity;

    return-object v0
.end method

.method public final isCalendarMode()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->m_calendarMode:Z

    return v0
.end method

.method public final notifyMainActivity(Lcom/metamoji/noteanytime/MainActivity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->_activity:Lcom/metamoji/noteanytime/MainActivity;

    return-void
.end method

.method public final reloadCalenderData(Z)V
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->m_roomArray:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->getCurrentDate()Ljava/time/LocalDate;

    move-result-object p1

    const-wide/16 v0, 0x7

    .line 61
    invoke-virtual {p1, v0, v1}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 66
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->toDate(Ljava/time/LocalDate;)Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ns/NsShareViewCommand;->clearHoursDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    .line 67
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/ScCalendarModel;->toDate(Ljava/time/LocalDate;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsShareViewCommand;->clearHoursDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 70
    invoke-static {p1}, Lcom/metamoji/ns/NsShareViewCommand;->convertDateFromDate(Ljava/util/Date;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo v3, "startOpenDate"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {v0}, Lcom/metamoji/ns/NsShareViewCommand;->convertDateFromDate(Ljava/util/Date;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "endOpenDate"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string p1, "openDate"

    const/4 v0, 0x0

    .line 75
    invoke-static {p1, v0}, Lcom/metamoji/ns/NsShareViewCommand;->createSortParam(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "createSortParam(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance p1, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/cabinet/ScCalendarModel$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ui/cabinet/ScCalendarModel;)V

    .line 94
    invoke-static {v1, v2, p1}, Lcom/metamoji/ns/NsShareViewCommand;->getShareViewList(Ljava/util/Map;Ljava/util/List;Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;)V

    return-void
.end method

.method public final setCalendarMode(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->m_calendarMode:Z

    return-void
.end method

.method public final setM_currentDate(Ljava/time/LocalDate;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->m_currentDate:Ljava/time/LocalDate;

    return-void
.end method

.method public final setM_roomArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->m_roomArray:Ljava/util/List;

    return-void
.end method

.method public final set_activity(Lcom/metamoji/noteanytime/MainActivity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ScCalendarModel;->_activity:Lcom/metamoji/noteanytime/MainActivity;

    return-void
.end method

.method public final toDate(Ljava/time/LocalDate;)Ljava/util/Date;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p1

    const-string v0, "from(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
