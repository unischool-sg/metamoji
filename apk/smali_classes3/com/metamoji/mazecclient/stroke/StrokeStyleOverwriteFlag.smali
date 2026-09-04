.class public final enum Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;
.super Ljava/lang/Enum;
.source "StrokeStyleOverwriteFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

.field public static final enum CALLI_ANGLE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

.field public static final enum CALLI_PAINT_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

.field public static final enum CALLI_RATE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

.field public static final enum FOUNTAIN_PROPS:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

.field public static final enum INK:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

.field public static final enum LINE_COLOR_A:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

.field public static final enum LINE_COLOR_RGB:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

.field public static final enum LINE_DASH:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

.field public static final enum LINE_WIDTH_RATIO:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

.field public static final enum PEN_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;
    .locals 10

    .line 5
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_RGB:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_A:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_WIDTH_RATIO:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_ANGLE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    sget-object v4, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_RATE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    sget-object v5, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_PAINT_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    sget-object v6, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_DASH:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    sget-object v7, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->INK:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    sget-object v8, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->PEN_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    sget-object v9, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->FOUNTAIN_PROPS:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    filled-new-array/range {v0 .. v9}, [Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    const-string v1, "LINE_COLOR_RGB"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_RGB:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 7
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    const-string v1, "LINE_COLOR_A"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_A:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 8
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    const-string v1, "LINE_WIDTH_RATIO"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_WIDTH_RATIO:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 9
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    const-string v1, "CALLI_ANGLE"

    const/4 v2, 0x3

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_ANGLE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 10
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    const-string v1, "CALLI_RATE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_RATE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 11
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    const/4 v1, 0x5

    const/16 v2, 0x20

    const-string v3, "CALLI_PAINT_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_PAINT_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 12
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    const/4 v1, 0x6

    const/16 v2, 0x40

    const-string v3, "LINE_DASH"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_DASH:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 13
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    const/4 v1, 0x7

    const/16 v2, 0x80

    const-string v3, "INK"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->INK:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 14
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    const-string v1, "PEN_TYPE"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v4, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->PEN_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 15
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    const/16 v1, 0x9

    const/16 v2, 0x200

    const-string v3, "FOUNTAIN_PROPS"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->FOUNTAIN_PROPS:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 5
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->$values()[Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->$VALUES:[Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

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
    iput p3, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->value:I

    return-void
.end method

.method public static enumSetFromInt(I)Ljava/util/EnumSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;",
            ">;"
        }
    .end annotation

    .line 43
    const-class v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->values()[Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 45
    invoke-virtual {v4}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->getIntValue()I

    move-result v5

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    .line 46
    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static enumSetToInt(Ljava/util/EnumSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;",
            ">;)I"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    .line 38
    invoke-virtual {v1}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->getIntValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static valueOf(I)Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;
    .locals 5

    .line 27
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->values()[Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 28
    invoke-virtual {v3}, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->getIntValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 5
    const-class v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;
    .locals 1

    .line 5
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->$VALUES:[Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {v0}, [Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->value:I

    return v0
.end method
