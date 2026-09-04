.class public final enum Lcom/metamoji/mazec/BuildOption$DeviceType;
.super Ljava/lang/Enum;
.source "BuildOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/BuildOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/mazec/BuildOption$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/mazec/BuildOption$DeviceType;

.field public static final enum SMARTPHONE:Lcom/metamoji/mazec/BuildOption$DeviceType;

.field public static final enum TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/mazec/BuildOption$DeviceType;
    .locals 2

    .line 20
    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceType;->SMARTPHONE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    filled-new-array {v0, v1}, [Lcom/metamoji/mazec/BuildOption$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/metamoji/mazec/BuildOption$DeviceType;

    const-string v1, "SMARTPHONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$DeviceType;->SMARTPHONE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    .line 22
    new-instance v0, Lcom/metamoji/mazec/BuildOption$DeviceType;

    const-string v1, "TABLET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    .line 20
    invoke-static {}, Lcom/metamoji/mazec/BuildOption$DeviceType;->$values()[Lcom/metamoji/mazec/BuildOption$DeviceType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/BuildOption$DeviceType;->$VALUES:[Lcom/metamoji/mazec/BuildOption$DeviceType;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/mazec/BuildOption$DeviceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 20
    const-class v0, Lcom/metamoji/mazec/BuildOption$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazec/BuildOption$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/mazec/BuildOption$DeviceType;
    .locals 1

    .line 20
    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceType;->$VALUES:[Lcom/metamoji/mazec/BuildOption$DeviceType;

    invoke-virtual {v0}, [Lcom/metamoji/mazec/BuildOption$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/mazec/BuildOption$DeviceType;

    return-object v0
.end method
