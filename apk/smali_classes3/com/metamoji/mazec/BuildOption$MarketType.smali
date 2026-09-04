.class public final enum Lcom/metamoji/mazec/BuildOption$MarketType;
.super Ljava/lang/Enum;
.source "BuildOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/BuildOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MarketType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/mazec/BuildOption$MarketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/mazec/BuildOption$MarketType;

.field public static final enum AU:Lcom/metamoji/mazec/BuildOption$MarketType;

.field public static final enum AU_SMARTPASS:Lcom/metamoji/mazec/BuildOption$MarketType;

.field public static final enum NONE:Lcom/metamoji/mazec/BuildOption$MarketType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/mazec/BuildOption$MarketType;
    .locals 3

    .line 53
    sget-object v0, Lcom/metamoji/mazec/BuildOption$MarketType;->NONE:Lcom/metamoji/mazec/BuildOption$MarketType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$MarketType;->AU:Lcom/metamoji/mazec/BuildOption$MarketType;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$MarketType;->AU_SMARTPASS:Lcom/metamoji/mazec/BuildOption$MarketType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/mazec/BuildOption$MarketType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lcom/metamoji/mazec/BuildOption$MarketType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$MarketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$MarketType;->NONE:Lcom/metamoji/mazec/BuildOption$MarketType;

    .line 55
    new-instance v0, Lcom/metamoji/mazec/BuildOption$MarketType;

    const-string v1, "AU"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$MarketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$MarketType;->AU:Lcom/metamoji/mazec/BuildOption$MarketType;

    .line 56
    new-instance v0, Lcom/metamoji/mazec/BuildOption$MarketType;

    const-string v1, "AU_SMARTPASS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$MarketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$MarketType;->AU_SMARTPASS:Lcom/metamoji/mazec/BuildOption$MarketType;

    .line 53
    invoke-static {}, Lcom/metamoji/mazec/BuildOption$MarketType;->$values()[Lcom/metamoji/mazec/BuildOption$MarketType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/BuildOption$MarketType;->$VALUES:[Lcom/metamoji/mazec/BuildOption$MarketType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/mazec/BuildOption$MarketType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 53
    const-class v0, Lcom/metamoji/mazec/BuildOption$MarketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazec/BuildOption$MarketType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/mazec/BuildOption$MarketType;
    .locals 1

    .line 53
    sget-object v0, Lcom/metamoji/mazec/BuildOption$MarketType;->$VALUES:[Lcom/metamoji/mazec/BuildOption$MarketType;

    invoke-virtual {v0}, [Lcom/metamoji/mazec/BuildOption$MarketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/mazec/BuildOption$MarketType;

    return-object v0
.end method
