.class public final enum Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;
.super Ljava/lang/Enum;
.source "DrRectangleElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrRectangleCornerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

.field public static final enum CONCAVE_ROUND:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

.field public static final enum CONCAVE_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

.field public static final enum CONVEX_ROUND:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

.field public static final enum CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

.field public static final enum SLANT:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;
    .locals 5

    .line 32
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONCAVE_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    sget-object v2, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_ROUND:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    sget-object v3, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONCAVE_ROUND:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    sget-object v4, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->SLANT:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    const-string v1, "CONVEX_SQUARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 34
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    const-string v1, "CONCAVE_SQUARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONCAVE_SQUARE:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 35
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    const-string v1, "CONVEX_ROUND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_ROUND:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 36
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    const-string v1, "CONCAVE_ROUND"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONCAVE_ROUND:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 37
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    const-string v1, "SLANT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->SLANT:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    .line 32
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->$values()[Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    const-class v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;
    .locals 1

    .line 32
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    return-object v0
.end method
