.class public final enum Lcom/metamoji/mazec/BuildOption$ProductType;
.super Ljava/lang/Enum;
.source "BuildOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/BuildOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProductType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/mazec/BuildOption$ProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/mazec/BuildOption$ProductType;

.field public static final enum FREE:Lcom/metamoji/mazec/BuildOption$ProductType;

.field public static final enum PREMIUM:Lcom/metamoji/mazec/BuildOption$ProductType;

.field public static final enum TRIAL:Lcom/metamoji/mazec/BuildOption$ProductType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/mazec/BuildOption$ProductType;
    .locals 3

    .line 11
    sget-object v0, Lcom/metamoji/mazec/BuildOption$ProductType;->PREMIUM:Lcom/metamoji/mazec/BuildOption$ProductType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$ProductType;->TRIAL:Lcom/metamoji/mazec/BuildOption$ProductType;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$ProductType;->FREE:Lcom/metamoji/mazec/BuildOption$ProductType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/mazec/BuildOption$ProductType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/metamoji/mazec/BuildOption$ProductType;

    const-string v1, "PREMIUM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$ProductType;->PREMIUM:Lcom/metamoji/mazec/BuildOption$ProductType;

    .line 13
    new-instance v0, Lcom/metamoji/mazec/BuildOption$ProductType;

    const-string v1, "TRIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$ProductType;->TRIAL:Lcom/metamoji/mazec/BuildOption$ProductType;

    .line 14
    new-instance v0, Lcom/metamoji/mazec/BuildOption$ProductType;

    const-string v1, "FREE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$ProductType;->FREE:Lcom/metamoji/mazec/BuildOption$ProductType;

    .line 11
    invoke-static {}, Lcom/metamoji/mazec/BuildOption$ProductType;->$values()[Lcom/metamoji/mazec/BuildOption$ProductType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/BuildOption$ProductType;->$VALUES:[Lcom/metamoji/mazec/BuildOption$ProductType;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/mazec/BuildOption$ProductType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Lcom/metamoji/mazec/BuildOption$ProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazec/BuildOption$ProductType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/mazec/BuildOption$ProductType;
    .locals 1

    .line 11
    sget-object v0, Lcom/metamoji/mazec/BuildOption$ProductType;->$VALUES:[Lcom/metamoji/mazec/BuildOption$ProductType;

    invoke-virtual {v0}, [Lcom/metamoji/mazec/BuildOption$ProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/mazec/BuildOption$ProductType;

    return-object v0
.end method
