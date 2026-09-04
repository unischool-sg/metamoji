.class public final enum Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;
.super Ljava/lang/Enum;
.source "DrUnExternalInteractionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

.field public static final enum DRAW:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

.field public static final enum ERASE:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;
    .locals 3

    .line 6
    sget-object v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->NONE:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    sget-object v1, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->DRAW:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    sget-object v2, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->ERASE:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->NONE:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    .line 8
    new-instance v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    const-string v1, "DRAW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->DRAW:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    .line 9
    new-instance v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    const-string v1, "ERASE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->ERASE:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    .line 6
    invoke-static {}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->$values()[Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->$VALUES:[Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6
    const-class v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;
    .locals 1

    .line 6
    sget-object v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->$VALUES:[Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    return-object v0
.end method
