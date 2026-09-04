.class public final Lio/github/toyota32k/utils/TimeSpan;
.super Ljava/lang/Object;
.source "TimeSpan.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/TimeSpan$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012J\u0010\u0010\u0014\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012J\u0010\u0010\u0015\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012J\u0010\u0010\u0016\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012J\u0010\u0010\u0017\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0012R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u0011\u0010\u000b\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0008R\u0011\u0010\r\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0008R\u0011\u0010\u000f\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0008\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/github/toyota32k/utils/TimeSpan;",
        "",
        "ms",
        "",
        "<init>",
        "(J)V",
        "totalMilliseconds",
        "getTotalMilliseconds",
        "()J",
        "seconds",
        "getSeconds",
        "minutes",
        "getMinutes",
        "hours",
        "getHours",
        "milliseconds",
        "getMilliseconds",
        "formatH",
        "",
        "format",
        "formatM",
        "formatMm",
        "formatS",
        "formatSm",
        "formatAuto",
        "Companion",
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


# static fields
.field public static final Companion:Lio/github/toyota32k/utils/TimeSpan$Companion;


# instance fields
.field private final totalMilliseconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/toyota32k/utils/TimeSpan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/utils/TimeSpan$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/utils/TimeSpan;->Companion:Lio/github/toyota32k/utils/TimeSpan$Companion;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lio/github/toyota32k/utils/TimeSpan;->totalMilliseconds:J

    return-void
.end method

.method public static final formatAuto(J)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/github/toyota32k/utils/TimeSpan;->Companion:Lio/github/toyota32k/utils/TimeSpan$Companion;

    invoke-virtual {v0, p0, p1}, Lio/github/toyota32k/utils/TimeSpan$Companion;->formatAuto(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatH(J)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/github/toyota32k/utils/TimeSpan;->Companion:Lio/github/toyota32k/utils/TimeSpan$Companion;

    invoke-virtual {v0, p0, p1}, Lio/github/toyota32k/utils/TimeSpan$Companion;->formatH(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatH$default(Lio/github/toyota32k/utils/TimeSpan;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 21
    const-string p1, "%02d:%02d\'%02d\""

    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/TimeSpan;->formatH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatM(J)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/github/toyota32k/utils/TimeSpan;->Companion:Lio/github/toyota32k/utils/TimeSpan$Companion;

    invoke-virtual {v0, p0, p1}, Lio/github/toyota32k/utils/TimeSpan$Companion;->formatM(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatM$default(Lio/github/toyota32k/utils/TimeSpan;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 24
    const-string p1, "%02d\'%02d\""

    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/TimeSpan;->formatM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatMm$default(Lio/github/toyota32k/utils/TimeSpan;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 27
    const-string p1, "%02d\'%02d\" %03d"

    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/TimeSpan;->formatMm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final formatS(J)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/github/toyota32k/utils/TimeSpan;->Companion:Lio/github/toyota32k/utils/TimeSpan$Companion;

    invoke-virtual {v0, p0, p1}, Lio/github/toyota32k/utils/TimeSpan$Companion;->formatS(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatS$default(Lio/github/toyota32k/utils/TimeSpan;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 30
    const-string p1, "%02d\" %02d"

    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/TimeSpan;->formatS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatSm$default(Lio/github/toyota32k/utils/TimeSpan;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 33
    const-string p1, "%02d\" %03d"

    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/utils/TimeSpan;->formatSm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final formatAuto()Ljava/lang/String;
    .locals 7

    .line 38
    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getHours()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_0

    invoke-static {p0, v4, v1, v4}, Lio/github/toyota32k/utils/TimeSpan;->formatH$default(Lio/github/toyota32k/utils/TimeSpan;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getMinutes()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-lez v0, :cond_1

    invoke-static {p0, v4, v1, v4}, Lio/github/toyota32k/utils/TimeSpan;->formatM$default(Lio/github/toyota32k/utils/TimeSpan;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :cond_1
    invoke-static {p0, v4, v1, v4}, Lio/github/toyota32k/utils/TimeSpan;->formatS$default(Lio/github/toyota32k/utils/TimeSpan;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatH(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getHours()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getMinutes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getSeconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final formatM(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getMinutes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final formatMm(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getMinutes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getMilliseconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final formatS(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getSeconds()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getMilliseconds()J

    move-result-wide v2

    const/16 v4, 0xa

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final formatSm(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getSeconds()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeSpan;->getMilliseconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getHours()J
    .locals 4

    .line 16
    iget-wide v0, p0, Lio/github/toyota32k/utils/TimeSpan;->totalMilliseconds:J

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    const/16 v2, 0x3c

    int-to-long v2, v2

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getMilliseconds()J
    .locals 4

    .line 19
    iget-wide v0, p0, Lio/github/toyota32k/utils/TimeSpan;->totalMilliseconds:J

    const/16 v2, 0x3e8

    int-to-long v2, v2

    rem-long/2addr v0, v2

    return-wide v0
.end method

.method public final getMinutes()J
    .locals 4

    .line 13
    iget-wide v0, p0, Lio/github/toyota32k/utils/TimeSpan;->totalMilliseconds:J

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    const/16 v2, 0x3c

    int-to-long v2, v2

    div-long/2addr v0, v2

    rem-long/2addr v0, v2

    return-wide v0
.end method

.method public final getSeconds()J
    .locals 4

    .line 10
    iget-wide v0, p0, Lio/github/toyota32k/utils/TimeSpan;->totalMilliseconds:J

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    const/16 v2, 0x3c

    int-to-long v2, v2

    rem-long/2addr v0, v2

    return-wide v0
.end method

.method public final getTotalMilliseconds()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lio/github/toyota32k/utils/TimeSpan;->totalMilliseconds:J

    return-wide v0
.end method
