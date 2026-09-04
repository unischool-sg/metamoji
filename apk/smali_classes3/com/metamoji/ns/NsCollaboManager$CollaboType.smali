.class public final enum Lcom/metamoji/ns/NsCollaboManager$CollaboType;
.super Ljava/lang/Enum;
.source "NsCollaboManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/NsCollaboManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CollaboType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/ns/NsCollaboManager$CollaboType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/ns/NsCollaboManager$CollaboType;

.field public static final enum COLLABO_CASUAL:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

.field public static final enum COLLABO_FORMAL:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

.field public static final enum COLLABO_LIMITED:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

.field public static final enum COLLABO_NONE:Lcom/metamoji/ns/NsCollaboManager$CollaboType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/ns/NsCollaboManager$CollaboType;
    .locals 4

    .line 60
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_NONE:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_CASUAL:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_FORMAL:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_LIMITED:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    const-string v1, "COLLABO_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager$CollaboType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_NONE:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    .line 62
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    const-string v1, "COLLABO_CASUAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager$CollaboType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_CASUAL:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    .line 63
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    const-string v1, "COLLABO_FORMAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager$CollaboType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_FORMAL:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    .line 64
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    const-string v1, "COLLABO_LIMITED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager$CollaboType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_LIMITED:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    .line 60
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->$values()[Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->$VALUES:[Lcom/metamoji/ns/NsCollaboManager$CollaboType;

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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/ns/NsCollaboManager$CollaboType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 60
    const-class v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/ns/NsCollaboManager$CollaboType;
    .locals 1

    .line 60
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->$VALUES:[Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    invoke-virtual {v0}, [Lcom/metamoji/ns/NsCollaboManager$CollaboType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    return-object v0
.end method
