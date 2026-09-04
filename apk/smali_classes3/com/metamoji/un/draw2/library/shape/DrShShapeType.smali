.class public final enum Lcom/metamoji/un/draw2/library/shape/DrShShapeType;
.super Ljava/lang/Enum;
.source "DrShShapeType.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/shape/DrShShapeType;",
        ">;",
        "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum ARROW:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum CIRCLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum CIRCLE_ARC:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum CURVE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum DECAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum ELLIPSE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum ELLIPSE_ARC:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum ENNEAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum HEPTAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum HEXAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum LINE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum MULTI_CURVE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum MULTI_LINE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum OCTAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum PENTAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum POLYGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum RECTANGLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field public static final enum TRIANGLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;


# instance fields
.field private final _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/shape/DrShShapeType;
    .locals 20

    .line 8
    sget-object v1, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->NONE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v2, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->LINE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v3, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->MULTI_LINE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v4, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->CURVE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v5, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->MULTI_CURVE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v6, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->CIRCLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v7, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->CIRCLE_ARC:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v8, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ELLIPSE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v9, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ELLIPSE_ARC:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v10, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->TRIANGLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v11, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->RECTANGLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v12, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->PENTAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v13, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->HEXAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v14, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->HEPTAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v15, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->OCTAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v16, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ENNEAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v17, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->DECAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v18, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->POLYGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v19, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ARROW:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    filled-new-array/range {v1 .. v19}, [Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->NONE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 11
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "LINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->LINE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 12
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "MULTI_LINE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->MULTI_LINE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 13
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "CURVE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->CURVE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 14
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "MULTI_CURVE"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->MULTI_CURVE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 15
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "CIRCLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->CIRCLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 16
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "CIRCLE_ARC"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->CIRCLE_ARC:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 17
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "ELLIPSE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ELLIPSE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 18
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "ELLIPSE_ARC"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ELLIPSE_ARC:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 19
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "TRIANGLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->TRIANGLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 20
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "RECTANGLE"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->RECTANGLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 21
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "PENTAGON"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->PENTAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 22
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "HEXAGON"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->HEXAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 23
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "HEPTAGON"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->HEPTAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 24
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "OCTAGON"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->OCTAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 25
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "ENNEAGON"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ENNEAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 26
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "DECAGON"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->DECAGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 27
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "POLYGON"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->POLYGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 28
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const-string v1, "ARROW"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ARROW:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 8
    invoke-static {}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->$values()[Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->$VALUES:[Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/shape/DrShShapeType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 8
    const-class v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/shape/DrShShapeType;
    .locals 1

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->$VALUES:[Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->_value:I

    return v0
.end method
