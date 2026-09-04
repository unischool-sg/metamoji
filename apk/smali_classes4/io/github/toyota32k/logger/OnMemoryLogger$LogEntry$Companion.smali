.class public final Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry$Companion;
.super Ljava/lang/Object;
.source "UtLoggerChain.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry$Companion;",
        "",
        "<init>",
        "()V",
        "levelToString",
        "",
        "level",
        "",
        "libLogger_release"
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

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final levelToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 74
    const-string p1, "[INVALID]"

    return-object p1

    .line 70
    :cond_0
    const-string p1, "[ERROR]"

    return-object p1

    .line 73
    :cond_1
    const-string p1, "[WARN]"

    return-object p1

    .line 71
    :cond_2
    const-string p1, "[INFO]"

    return-object p1

    .line 69
    :cond_3
    const-string p1, "[DEBUG]"

    return-object p1

    .line 72
    :cond_4
    const-string p1, "[VERBOSE]"

    return-object p1
.end method
