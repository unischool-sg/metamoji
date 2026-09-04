.class public final enum Lcom/metamoji/ch/bar/ChBarChartOrientation;
.super Ljava/lang/Enum;
.source "IChBarChartSetting.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ch/bar/ChBarChartOrientation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/metamoji/ch/bar/ChBarChartOrientation;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "VERTICAL",
        "HORIZONTAL",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/metamoji/ch/bar/ChBarChartOrientation;

.field public static final enum HORIZONTAL:Lcom/metamoji/ch/bar/ChBarChartOrientation;

.field public static final enum VERTICAL:Lcom/metamoji/ch/bar/ChBarChartOrientation;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/ch/bar/ChBarChartOrientation;
    .locals 2

    sget-object v0, Lcom/metamoji/ch/bar/ChBarChartOrientation;->VERTICAL:Lcom/metamoji/ch/bar/ChBarChartOrientation;

    sget-object v1, Lcom/metamoji/ch/bar/ChBarChartOrientation;->HORIZONTAL:Lcom/metamoji/ch/bar/ChBarChartOrientation;

    filled-new-array {v0, v1}, [Lcom/metamoji/ch/bar/ChBarChartOrientation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/metamoji/ch/bar/ChBarChartOrientation;

    const-string v1, "VERTICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ch/bar/ChBarChartOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ch/bar/ChBarChartOrientation;->VERTICAL:Lcom/metamoji/ch/bar/ChBarChartOrientation;

    .line 13
    new-instance v0, Lcom/metamoji/ch/bar/ChBarChartOrientation;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ch/bar/ChBarChartOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ch/bar/ChBarChartOrientation;->HORIZONTAL:Lcom/metamoji/ch/bar/ChBarChartOrientation;

    invoke-static {}, Lcom/metamoji/ch/bar/ChBarChartOrientation;->$values()[Lcom/metamoji/ch/bar/ChBarChartOrientation;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ch/bar/ChBarChartOrientation;->$VALUES:[Lcom/metamoji/ch/bar/ChBarChartOrientation;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ch/bar/ChBarChartOrientation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/ch/bar/ChBarChartOrientation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/ch/bar/ChBarChartOrientation;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ch/bar/ChBarChartOrientation;
    .locals 1

    const-class v0, Lcom/metamoji/ch/bar/ChBarChartOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ch/bar/ChBarChartOrientation;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ch/bar/ChBarChartOrientation;
    .locals 1

    sget-object v0, Lcom/metamoji/ch/bar/ChBarChartOrientation;->$VALUES:[Lcom/metamoji/ch/bar/ChBarChartOrientation;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ch/bar/ChBarChartOrientation;

    return-object v0
.end method
