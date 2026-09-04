.class public final enum Lcom/metamoji/cm/ICmUIProvider$ResourceId;
.super Ljava/lang/Enum;
.source "ICmUIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/ICmUIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/cm/ICmUIProvider$ResourceId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/cm/ICmUIProvider$ResourceId;

.field public static final enum CANCEL:Lcom/metamoji/cm/ICmUIProvider$ResourceId;

.field public static final enum OK:Lcom/metamoji/cm/ICmUIProvider$ResourceId;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/cm/ICmUIProvider$ResourceId;
    .locals 2

    .line 21
    sget-object v0, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->OK:Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    sget-object v1, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->CANCEL:Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    filled-new-array {v0, v1}, [Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/ICmUIProvider$ResourceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->OK:Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    new-instance v0, Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    const-string v1, "CANCEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/ICmUIProvider$ResourceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->CANCEL:Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    .line 21
    invoke-static {}, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->$values()[Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    move-result-object v0

    sput-object v0, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->$VALUES:[Lcom/metamoji/cm/ICmUIProvider$ResourceId;

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

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/cm/ICmUIProvider$ResourceId;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 21
    const-class v0, Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/cm/ICmUIProvider$ResourceId;
    .locals 1

    .line 21
    sget-object v0, Lcom/metamoji/cm/ICmUIProvider$ResourceId;->$VALUES:[Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    invoke-virtual {v0}, [Lcom/metamoji/cm/ICmUIProvider$ResourceId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/cm/ICmUIProvider$ResourceId;

    return-object v0
.end method
