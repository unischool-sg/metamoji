.class final enum Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;
.super Ljava/lang/Enum;
.source "DrUnUnitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/unit/DrUnUnitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrUnAppPenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

.field public static final enum CALLIGRAPHIC:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

.field public static final enum FOUNTAIN:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

.field public static final enum SIMPLE:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;
    .locals 4

    .line 243
    sget-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;->NONE:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;->SIMPLE:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    sget-object v3, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;->FOUNTAIN:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 244
    new-instance v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;->NONE:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    .line 245
    new-instance v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    const-string v1, "SIMPLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;->SIMPLE:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    .line 246
    new-instance v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    const-string v1, "CALLIGRAPHIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    .line 247
    new-instance v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    const-string v1, "FOUNTAIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;->FOUNTAIN:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    .line 243
    invoke-static {}, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;->$values()[Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;->$VALUES:[Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

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

    .line 243
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 243
    const-class v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;
    .locals 1

    .line 243
    sget-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;->$VALUES:[Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppPenType;

    return-object v0
.end method
