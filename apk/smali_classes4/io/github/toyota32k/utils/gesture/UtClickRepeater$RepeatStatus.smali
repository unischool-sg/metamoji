.class public final enum Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;
.super Ljava/lang/Enum;
.source "UtClickRepeater.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/gesture/UtClickRepeater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RepeatStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NONE",
        "STANDBY",
        "REPEATING",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

.field public static final enum NONE:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

.field public static final enum REPEATING:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

.field public static final enum STANDBY:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;


# direct methods
.method private static final synthetic $values()[Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;
    .locals 3

    sget-object v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->NONE:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    sget-object v1, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->STANDBY:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    sget-object v2, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->REPEATING:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    filled-new-array {v0, v1, v2}, [Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->NONE:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    .line 32
    new-instance v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    const-string v1, "STANDBY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->STANDBY:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    .line 33
    new-instance v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    const-string v1, "REPEATING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->REPEATING:Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    invoke-static {}, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->$values()[Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    move-result-object v0

    sput-object v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->$VALUES:[Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;
    .locals 1

    const-class v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    return-object p0
.end method

.method public static values()[Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;
    .locals 1

    sget-object v0, Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;->$VALUES:[Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/toyota32k/utils/gesture/UtClickRepeater$RepeatStatus;

    return-object v0
.end method
