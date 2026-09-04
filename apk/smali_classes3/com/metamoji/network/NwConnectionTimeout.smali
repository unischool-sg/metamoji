.class public final enum Lcom/metamoji/network/NwConnectionTimeout;
.super Ljava/lang/Enum;
.source "NwHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/network/NwConnectionTimeout;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/network/NwConnectionTimeout;",
        "",
        "seconds",
        "",
        "<init>",
        "(Ljava/lang/String;IJ)V",
        "getSeconds",
        "()J",
        "SHORT",
        "MEDIUM",
        "LONG",
        "network"
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

.field private static final synthetic $VALUES:[Lcom/metamoji/network/NwConnectionTimeout;

.field public static final enum LONG:Lcom/metamoji/network/NwConnectionTimeout;

.field public static final enum MEDIUM:Lcom/metamoji/network/NwConnectionTimeout;

.field public static final enum SHORT:Lcom/metamoji/network/NwConnectionTimeout;


# instance fields
.field private final seconds:J


# direct methods
.method private static final synthetic $values()[Lcom/metamoji/network/NwConnectionTimeout;
    .locals 3

    sget-object v0, Lcom/metamoji/network/NwConnectionTimeout;->SHORT:Lcom/metamoji/network/NwConnectionTimeout;

    sget-object v1, Lcom/metamoji/network/NwConnectionTimeout;->MEDIUM:Lcom/metamoji/network/NwConnectionTimeout;

    sget-object v2, Lcom/metamoji/network/NwConnectionTimeout;->LONG:Lcom/metamoji/network/NwConnectionTimeout;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/network/NwConnectionTimeout;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lcom/metamoji/network/NwConnectionTimeout;

    const/4 v1, 0x0

    const-wide/16 v2, 0x5

    const-string v4, "SHORT"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/metamoji/network/NwConnectionTimeout;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/metamoji/network/NwConnectionTimeout;->SHORT:Lcom/metamoji/network/NwConnectionTimeout;

    .line 38
    new-instance v0, Lcom/metamoji/network/NwConnectionTimeout;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3c

    const-string v4, "MEDIUM"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/metamoji/network/NwConnectionTimeout;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/metamoji/network/NwConnectionTimeout;->MEDIUM:Lcom/metamoji/network/NwConnectionTimeout;

    .line 40
    new-instance v0, Lcom/metamoji/network/NwConnectionTimeout;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    const-string v4, "LONG"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/metamoji/network/NwConnectionTimeout;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/metamoji/network/NwConnectionTimeout;->LONG:Lcom/metamoji/network/NwConnectionTimeout;

    invoke-static {}, Lcom/metamoji/network/NwConnectionTimeout;->$values()[Lcom/metamoji/network/NwConnectionTimeout;

    move-result-object v0

    sput-object v0, Lcom/metamoji/network/NwConnectionTimeout;->$VALUES:[Lcom/metamoji/network/NwConnectionTimeout;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/metamoji/network/NwConnectionTimeout;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/metamoji/network/NwConnectionTimeout;->seconds:J

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/metamoji/network/NwConnectionTimeout;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/metamoji/network/NwConnectionTimeout;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/network/NwConnectionTimeout;
    .locals 1

    const-class v0, Lcom/metamoji/network/NwConnectionTimeout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/network/NwConnectionTimeout;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/network/NwConnectionTimeout;
    .locals 1

    sget-object v0, Lcom/metamoji/network/NwConnectionTimeout;->$VALUES:[Lcom/metamoji/network/NwConnectionTimeout;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/network/NwConnectionTimeout;

    return-object v0
.end method


# virtual methods
.method public final getSeconds()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/metamoji/network/NwConnectionTimeout;->seconds:J

    return-wide v0
.end method
