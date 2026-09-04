.class public final enum Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
.super Ljava/lang/Enum;
.source "DrInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

.field public static final enum ARROW_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

.field public static final enum CALLIGRAPHIC_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

.field public static final enum DIRECT_MOVE:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

.field public static final enum EDIT:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

.field public static final enum ERASE:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

.field public static final enum FOUNTAIN_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

.field public static final enum LASSO:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

.field public static final enum LONG_PRESS:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

.field public static final enum REDUCIBLE_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

.field public static final enum SHAPE_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

.field public static final enum SIMPLE_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    .locals 11

    .line 16
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->SIMPLE_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    sget-object v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->REDUCIBLE_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    sget-object v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->CALLIGRAPHIC_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    sget-object v3, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->FOUNTAIN_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    sget-object v4, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->ERASE:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    sget-object v5, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->LASSO:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    sget-object v6, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->LONG_PRESS:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    sget-object v7, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->EDIT:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    sget-object v8, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->SHAPE_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    sget-object v9, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->ARROW_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    sget-object v10, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->DIRECT_MOVE:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    filled-new-array/range {v0 .. v10}, [Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    const-string v1, "SIMPLE_DRAW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->SIMPLE_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    .line 18
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    const-string v1, "REDUCIBLE_DRAW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->REDUCIBLE_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    .line 19
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    const-string v1, "CALLIGRAPHIC_DRAW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->CALLIGRAPHIC_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    .line 20
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    const-string v1, "FOUNTAIN_DRAW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->FOUNTAIN_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    .line 21
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    const-string v1, "ERASE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->ERASE:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    .line 22
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    const-string v1, "LASSO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->LASSO:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    .line 23
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    const-string v1, "LONG_PRESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->LONG_PRESS:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    .line 24
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    const-string v1, "EDIT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->EDIT:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    .line 25
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    const-string v1, "SHAPE_DRAW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->SHAPE_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    .line 26
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    const-string v1, "ARROW_DRAW"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->ARROW_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    .line 27
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    const-string v1, "DIRECT_MOVE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->DIRECT_MOVE:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    .line 16
    invoke-static {}, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->$values()[Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->$VALUES:[Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 16
    const-class v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    .locals 1

    .line 16
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->$VALUES:[Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    return-object v0
.end method
