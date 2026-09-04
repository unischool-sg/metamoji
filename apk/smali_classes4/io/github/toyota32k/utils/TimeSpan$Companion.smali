.class public final Lio/github/toyota32k/utils/TimeSpan$Companion;
.super Ljava/lang/Object;
.source "TimeSpan.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/TimeSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/github/toyota32k/utils/TimeSpan$Companion;",
        "",
        "<init>",
        "()V",
        "formatH",
        "",
        "ms",
        "",
        "formatM",
        "formatS",
        "formatAuto",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/utils/TimeSpan$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final formatAuto(J)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 60
    new-instance v0, Lio/github/toyota32k/utils/TimeSpan;

    invoke-direct {v0, p1, p2}, Lio/github/toyota32k/utils/TimeSpan;-><init>(J)V

    invoke-virtual {v0}, Lio/github/toyota32k/utils/TimeSpan;->formatAuto()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatH(J)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 48
    new-instance v0, Lio/github/toyota32k/utils/TimeSpan;

    invoke-direct {v0, p1, p2}, Lio/github/toyota32k/utils/TimeSpan;-><init>(J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, p1}, Lio/github/toyota32k/utils/TimeSpan;->formatH$default(Lio/github/toyota32k/utils/TimeSpan;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatM(J)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 52
    new-instance v0, Lio/github/toyota32k/utils/TimeSpan;

    invoke-direct {v0, p1, p2}, Lio/github/toyota32k/utils/TimeSpan;-><init>(J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, p1}, Lio/github/toyota32k/utils/TimeSpan;->formatM$default(Lio/github/toyota32k/utils/TimeSpan;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatS(J)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 56
    new-instance v0, Lio/github/toyota32k/utils/TimeSpan;

    invoke-direct {v0, p1, p2}, Lio/github/toyota32k/utils/TimeSpan;-><init>(J)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, p1}, Lio/github/toyota32k/utils/TimeSpan;->formatS$default(Lio/github/toyota32k/utils/TimeSpan;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
