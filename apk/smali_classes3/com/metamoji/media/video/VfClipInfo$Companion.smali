.class public final Lcom/metamoji/media/video/VfClipInfo$Companion;
.super Ljava/lang/Object;
.source "VfClipInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/VfClipInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfClipInfo$Companion;",
        "",
        "<init>",
        "()V",
        "INVALID_TEXT",
        "",
        "formatDateFromMS",
        "ms",
        "",
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/VfClipInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final formatDateFromMS(J)Ljava/lang/String;
    .locals 2

    .line 52
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    long-to-double p1, p1

    const/16 v0, 0x3e8

    int-to-double v0, v0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Lcom/metamoji/cm/TimeUtils;->unixtime2datetime(D)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-static {p1}, Lcom/metamoji/cm/TimeUtils;->getDateTimeText(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 59
    :cond_0
    const-string p1, "----"

    return-object p1
.end method
