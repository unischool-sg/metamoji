.class final enum Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;
.super Ljava/lang/Enum;
.source "HotSpotChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/hotspot/HotSpotChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AddrState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

.field public static final enum ATMARK:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

.field public static final enum DOMAIN:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

.field public static final enum LOCAL:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

.field public static final enum NONE:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;
    .locals 4

    .line 374
    sget-object v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->NONE:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    sget-object v1, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->LOCAL:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    sget-object v2, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->ATMARK:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    sget-object v3, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->DOMAIN:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 376
    new-instance v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->NONE:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    .line 377
    new-instance v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    const-string v1, "LOCAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->LOCAL:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    .line 378
    new-instance v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    const-string v1, "ATMARK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->ATMARK:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    .line 379
    new-instance v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    const-string v1, "DOMAIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->DOMAIN:Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    .line 374
    invoke-static {}, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->$values()[Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->$VALUES:[Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

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

    .line 374
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 374
    const-class v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;
    .locals 1

    .line 374
    sget-object v0, Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->$VALUES:[Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/hotspot/HotSpotChecker$AddrState;

    return-object v0
.end method
