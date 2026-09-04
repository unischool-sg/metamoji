.class public final enum Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
.super Ljava/lang/Enum;
.source "DrShapeType.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;",
        ">;",
        "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

.field public static final enum ARROW_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

.field public static final enum BALLOON_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

.field public static final enum DISK_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

.field public static final enum RECTANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

.field public static final enum RECTANGLE_BALLOON_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

.field public static final enum SIMPLE_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

.field public static final enum STAR_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

.field public static final enum TRIANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

.field public static final enum UNKNOWN:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;


# instance fields
.field private final _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 10

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->NONE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    sget-object v2, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->SIMPLE_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    sget-object v3, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->TRIANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    sget-object v4, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->RECTANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    sget-object v5, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->DISK_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    sget-object v6, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ARROW_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    sget-object v7, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->BALLOON_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    sget-object v8, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->RECTANGLE_BALLOON_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    sget-object v9, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->STAR_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    filled-new-array/range {v0 .. v9}, [Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    const/4 v1, -0x2

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    .line 11
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->NONE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    .line 12
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    const-string v1, "SIMPLE_SHAPE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->SIMPLE_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    .line 13
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    const-string v1, "TRIANGLE"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->TRIANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    .line 14
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    const-string v1, "RECTANGLE"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->RECTANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    .line 15
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    const-string v1, "DISK_SHAPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->DISK_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    .line 16
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    const-string v1, "ARROW_SHAPE"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->ARROW_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    .line 17
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    const-string v1, "BALLOON_SHAPE"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v4, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->BALLOON_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    .line 18
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    const-string v1, "RECTANGLE_BALLOON_SHAPE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->RECTANGLE_BALLOON_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    .line 19
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    const-string v1, "STAR_SHAPE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->STAR_SHAPE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    .line 8
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->$values()[Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
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
    const-class v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 1

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->_value:I

    return v0
.end method
