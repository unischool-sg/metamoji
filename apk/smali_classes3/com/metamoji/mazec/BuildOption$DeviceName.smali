.class public final enum Lcom/metamoji/mazec/BuildOption$DeviceName;
.super Ljava/lang/Enum;
.source "BuildOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/BuildOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/mazec/BuildOption$DeviceName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/mazec/BuildOption$DeviceName;

.field public static final enum KINDLEFIRE:Lcom/metamoji/mazec/BuildOption$DeviceName;

.field public static final enum NONE:Lcom/metamoji/mazec/BuildOption$DeviceName;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/mazec/BuildOption$DeviceName;
    .locals 2

    .line 45
    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceName;->NONE:Lcom/metamoji/mazec/BuildOption$DeviceName;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceName;->KINDLEFIRE:Lcom/metamoji/mazec/BuildOption$DeviceName;

    filled-new-array {v0, v1}, [Lcom/metamoji/mazec/BuildOption$DeviceName;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/metamoji/mazec/BuildOption$DeviceName;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$DeviceName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$DeviceName;->NONE:Lcom/metamoji/mazec/BuildOption$DeviceName;

    .line 47
    new-instance v0, Lcom/metamoji/mazec/BuildOption$DeviceName;

    const-string v1, "KINDLEFIRE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/mazec/BuildOption$DeviceName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/mazec/BuildOption$DeviceName;->KINDLEFIRE:Lcom/metamoji/mazec/BuildOption$DeviceName;

    .line 45
    invoke-static {}, Lcom/metamoji/mazec/BuildOption$DeviceName;->$values()[Lcom/metamoji/mazec/BuildOption$DeviceName;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/BuildOption$DeviceName;->$VALUES:[Lcom/metamoji/mazec/BuildOption$DeviceName;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/mazec/BuildOption$DeviceName;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    const-class v0, Lcom/metamoji/mazec/BuildOption$DeviceName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazec/BuildOption$DeviceName;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/mazec/BuildOption$DeviceName;
    .locals 1

    .line 45
    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceName;->$VALUES:[Lcom/metamoji/mazec/BuildOption$DeviceName;

    invoke-virtual {v0}, [Lcom/metamoji/mazec/BuildOption$DeviceName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/mazec/BuildOption$DeviceName;

    return-object v0
.end method
