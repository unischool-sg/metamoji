.class public abstract enum Lcom/metamoji/ch/ChMarker;
.super Ljava/lang/Enum;
.source "ChMarker.kt"

# interfaces
.implements Lcom/metamoji/ch/IChMarkerDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ch/ChMarker$CIRCLE;,
        Lcom/metamoji/ch/ChMarker$CROSS;,
        Lcom/metamoji/ch/ChMarker$DIAMOND;,
        Lcom/metamoji/ch/ChMarker$NONE;,
        Lcom/metamoji/ch/ChMarker$PLUS;,
        Lcom/metamoji/ch/ChMarker$SQUARE;,
        Lcom/metamoji/ch/ChMarker$TRIANGLE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ch/ChMarker;",
        ">;",
        "Lcom/metamoji/ch/IChMarkerDrawable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/ch/ChMarker;",
        "Lcom/metamoji/ch/IChMarkerDrawable;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NONE",
        "SQUARE",
        "DIAMOND",
        "TRIANGLE",
        "CROSS",
        "CIRCLE",
        "PLUS",
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

.field private static final synthetic $VALUES:[Lcom/metamoji/ch/ChMarker;

.field public static final enum CIRCLE:Lcom/metamoji/ch/ChMarker;

.field public static final enum CROSS:Lcom/metamoji/ch/ChMarker;

.field public static final enum DIAMOND:Lcom/metamoji/ch/ChMarker;

.field public static final enum NONE:Lcom/metamoji/ch/ChMarker;

.field public static final enum PLUS:Lcom/metamoji/ch/ChMarker;

.field public static final enum SQUARE:Lcom/metamoji/ch/ChMarker;

.field public static final enum TRIANGLE:Lcom/metamoji/ch/ChMarker;


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/ch/ChMarker;
    .locals 7

    sget-object v0, Lcom/metamoji/ch/ChMarker;->NONE:Lcom/metamoji/ch/ChMarker;

    sget-object v1, Lcom/metamoji/ch/ChMarker;->SQUARE:Lcom/metamoji/ch/ChMarker;

    sget-object v2, Lcom/metamoji/ch/ChMarker;->DIAMOND:Lcom/metamoji/ch/ChMarker;

    sget-object v3, Lcom/metamoji/ch/ChMarker;->TRIANGLE:Lcom/metamoji/ch/ChMarker;

    sget-object v4, Lcom/metamoji/ch/ChMarker;->CROSS:Lcom/metamoji/ch/ChMarker;

    sget-object v5, Lcom/metamoji/ch/ChMarker;->CIRCLE:Lcom/metamoji/ch/ChMarker;

    sget-object v6, Lcom/metamoji/ch/ChMarker;->PLUS:Lcom/metamoji/ch/ChMarker;

    filled-new-array/range {v0 .. v6}, [Lcom/metamoji/ch/ChMarker;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/metamoji/ch/ChMarker$NONE;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ch/ChMarker$NONE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ch/ChMarker;->NONE:Lcom/metamoji/ch/ChMarker;

    .line 19
    new-instance v0, Lcom/metamoji/ch/ChMarker$SQUARE;

    const-string v1, "SQUARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ch/ChMarker$SQUARE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ch/ChMarker;->SQUARE:Lcom/metamoji/ch/ChMarker;

    .line 32
    new-instance v0, Lcom/metamoji/ch/ChMarker$DIAMOND;

    const-string v1, "DIAMOND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ch/ChMarker$DIAMOND;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ch/ChMarker;->DIAMOND:Lcom/metamoji/ch/ChMarker;

    .line 49
    new-instance v0, Lcom/metamoji/ch/ChMarker$TRIANGLE;

    const-string v1, "TRIANGLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ch/ChMarker$TRIANGLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ch/ChMarker;->TRIANGLE:Lcom/metamoji/ch/ChMarker;

    .line 65
    new-instance v0, Lcom/metamoji/ch/ChMarker$CROSS;

    const-string v1, "CROSS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ch/ChMarker$CROSS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ch/ChMarker;->CROSS:Lcom/metamoji/ch/ChMarker;

    .line 83
    new-instance v0, Lcom/metamoji/ch/ChMarker$CIRCLE;

    const-string v1, "CIRCLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ch/ChMarker$CIRCLE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ch/ChMarker;->CIRCLE:Lcom/metamoji/ch/ChMarker;

    .line 95
    new-instance v0, Lcom/metamoji/ch/ChMarker$PLUS;

    const-string v1, "PLUS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ch/ChMarker$PLUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ch/ChMarker;->PLUS:Lcom/metamoji/ch/ChMarker;

    invoke-static {}, Lcom/metamoji/ch/ChMarker;->$values()[Lcom/metamoji/ch/ChMarker;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ch/ChMarker;->$VALUES:[Lcom/metamoji/ch/ChMarker;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ch/ChMarker;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ch/ChMarker;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/ch/ChMarker;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/ch/ChMarker;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ch/ChMarker;
    .locals 1

    const-class v0, Lcom/metamoji/ch/ChMarker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ch/ChMarker;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ch/ChMarker;
    .locals 1

    sget-object v0, Lcom/metamoji/ch/ChMarker;->$VALUES:[Lcom/metamoji/ch/ChMarker;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ch/ChMarker;

    return-object v0
.end method
