.class public final enum Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;
.super Ljava/lang/Enum;
.source "DrArrowType.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;",
        ">;",
        "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

.field public static final enum CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

.field public static final enum DOUBLE_CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

.field public static final enum LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

.field public static final enum MULTI_LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

.field public static final enum UNKNOWN:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;


# instance fields
.field private final _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;
    .locals 6

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    sget-object v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    sget-object v2, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    sget-object v3, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    sget-object v4, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->MULTI_LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    sget-object v5, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->DOUBLE_CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    const/4 v1, -0x2

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    .line 11
    new-instance v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    .line 12
    new-instance v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    const-string v1, "LINE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    .line 13
    new-instance v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    const-string v1, "CURVE"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    .line 14
    new-instance v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    const-string v1, "MULTI_LINE"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->MULTI_LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    .line 15
    new-instance v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    const-string v1, "DOUBLE_CURVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->DOUBLE_CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    .line 8
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->$values()[Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;
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
    const-class v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;
    .locals 1

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->_value:I

    return v0
.end method
