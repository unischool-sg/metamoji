.class public final enum Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;
.super Ljava/lang/Enum;
.source "CalligraphyPaintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

.field public static final enum CUBIC:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

.field public static final enum DEFAULT:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

.field public static final enum GRADATION:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;


# instance fields
.field private value:S


# direct methods
.method private static synthetic $values()[Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;
    .locals 3

    .line 4
    sget-object v0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->DEFAULT:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->GRADATION:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    sget-object v2, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->CUBIC:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->DEFAULT:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    .line 8
    new-instance v0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    const-string v1, "GRADATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->GRADATION:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    .line 10
    new-instance v0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    const-string v1, "CUBIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->CUBIC:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    .line 4
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->$values()[Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->$VALUES:[Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
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
            "(S)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-short p3, p0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->value:S

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 4
    const-class v0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    return-object p0
.end method

.method public static valueOf(S)Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;
    .locals 5

    .line 22
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->values()[Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 23
    invoke-virtual {v3}, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->getInt16Value()S

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

.method public static values()[Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;
    .locals 1

    .line 4
    sget-object v0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->$VALUES:[Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    invoke-virtual {v0}, [Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    return-object v0
.end method


# virtual methods
.method public getInt16Value()S
    .locals 1

    .line 19
    iget-short v0, p0, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->value:S

    return v0
.end method
