.class public final enum Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;
.super Ljava/lang/Enum;
.source "DrArrowShapeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrArrowShapeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

.field public static final enum HALF_DOUBLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

.field public static final enum HALF_SINGLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

.field public static final enum STANDARD_DOUBLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

.field public static final enum STANDARD_SINGLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;
    .locals 4

    .line 31
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->STANDARD_SINGLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->STANDARD_DOUBLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    sget-object v2, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->HALF_SINGLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    sget-object v3, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->HALF_DOUBLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    const-string v1, "STANDARD_SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->STANDARD_SINGLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    .line 33
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    const-string v1, "STANDARD_DOUBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->STANDARD_DOUBLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    .line 34
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    const-string v1, "HALF_SINGLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->HALF_SINGLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    .line 35
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    const-string v1, "HALF_DOUBLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->HALF_DOUBLE:Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    .line 31
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->$values()[Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    const-class v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;
    .locals 1

    .line 31
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/element/shape/DrArrowShapeElement$DrArrowShapeType;

    return-object v0
.end method
