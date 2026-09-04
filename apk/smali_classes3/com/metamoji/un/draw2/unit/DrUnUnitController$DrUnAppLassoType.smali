.class final enum Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;
.super Ljava/lang/Enum;
.source "DrUnUnitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/unit/DrUnUnitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrUnAppLassoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

.field public static final enum INCLUSIVE:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

.field public static final enum NORMAL:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;
    .locals 3

    .line 256
    sget-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;->NONE:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;->NORMAL:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;->INCLUSIVE:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 257
    new-instance v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;->NONE:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    .line 258
    new-instance v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;->NORMAL:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    .line 259
    new-instance v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    const-string v1, "INCLUSIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;->INCLUSIVE:Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    .line 256
    invoke-static {}, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;->$values()[Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;->$VALUES:[Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

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

    .line 256
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 256
    const-class v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;
    .locals 1

    .line 256
    sget-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;->$VALUES:[Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/unit/DrUnUnitController$DrUnAppLassoType;

    return-object v0
.end method
