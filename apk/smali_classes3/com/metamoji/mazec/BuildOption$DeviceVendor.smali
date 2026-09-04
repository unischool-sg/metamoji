.class public final enum Lcom/metamoji/mazec/BuildOption$DeviceVendor;
.super Ljava/lang/Enum;
.source "BuildOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/BuildOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceVendor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/mazec/BuildOption$DeviceVendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/mazec/BuildOption$DeviceVendor;

.field public static final enum AMAZON:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

.field public static final enum LG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

.field public static final enum NONE:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

.field public static final enum ONKYO:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

.field public static final enum SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/mazec/BuildOption$DeviceVendor;
    .locals 5

    .line 34
    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->NONE:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->ONKYO:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v2, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->AMAZON:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v3, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v4, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->LG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$DeviceVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->NONE:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    .line 36
    new-instance v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    const-string v1, "ONKYO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$DeviceVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->ONKYO:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    .line 37
    new-instance v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    const-string v1, "AMAZON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$DeviceVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->AMAZON:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    .line 38
    new-instance v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    const-string v1, "SAMSUNG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$DeviceVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    .line 39
    new-instance v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    const-string v1, "LG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$DeviceVendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->LG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    .line 34
    invoke-static {}, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->$values()[Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->$VALUES:[Lcom/metamoji/mazec/BuildOption$DeviceVendor;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/mazec/BuildOption$DeviceVendor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 34
    const-class v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/mazec/BuildOption$DeviceVendor;
    .locals 1

    .line 34
    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->$VALUES:[Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    invoke-virtual {v0}, [Lcom/metamoji/mazec/BuildOption$DeviceVendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    return-object v0
.end method
