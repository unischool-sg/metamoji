.class public final enum Lcom/metamoji/un/draw2/module/element/DrElementType;
.super Ljava/lang/Enum;
.source "DrElementType.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/element/DrElementType;",
        ">;",
        "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/element/DrElementType;

.field public static final enum ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/module/element/DrElementType;

.field public static final enum SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

.field public static final enum STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

.field public static final enum UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

.field public static final enum UNKNOWN:Lcom/metamoji/un/draw2/module/element/DrElementType;


# instance fields
.field private final _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/element/DrElementType;
    .locals 6

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/DrElementType;

    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElementType;->SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrElementType;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/un/draw2/module/element/DrElementType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    .line 11
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrElementType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/DrElementType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/DrElementType;

    .line 12
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrElementType;

    const-string v1, "STROKE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/module/element/DrElementType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    .line 13
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrElementType;

    const-string v1, "UNIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/DrElementType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    .line 14
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrElementType;

    const-string v1, "SHAPE"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/module/element/DrElementType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    .line 15
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrElementType;

    const-string v1, "ARROW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/DrElementType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    .line 8
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/DrElementType;->$values()[Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/DrElementType;

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

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/metamoji/un/draw2/module/element/DrElementType;->_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/element/DrElementType;
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
    const-class v0, Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/DrElementType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/element/DrElementType;
    .locals 1

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/element/DrElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/element/DrElementType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/DrElementType;->_value:I

    return v0
.end method
