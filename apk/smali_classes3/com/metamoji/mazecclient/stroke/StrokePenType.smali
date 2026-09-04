.class public final enum Lcom/metamoji/mazecclient/stroke/StrokePenType;
.super Ljava/lang/Enum;
.source "StrokePenType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/mazecclient/stroke/StrokePenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/mazecclient/stroke/StrokePenType;

.field public static final enum CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

.field public static final enum FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

.field public static final enum NONE:Lcom/metamoji/mazecclient/stroke/StrokePenType;

.field public static final enum STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;


# instance fields
.field private value:S


# direct methods
.method private static synthetic $values()[Lcom/metamoji/mazecclient/stroke/StrokePenType;
    .locals 4

    .line 4
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->NONE:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/mazecclient/stroke/StrokePenType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->NONE:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    .line 7
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;

    const-string v1, "STANDARD"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/mazecclient/stroke/StrokePenType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    .line 8
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;

    const-string v1, "CALLIGRAPHY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/mazecclient/stroke/StrokePenType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    .line 9
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;

    const-string v1, "FOUNTAIN"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/mazecclient/stroke/StrokePenType;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    .line 4
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->$values()[Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->$VALUES:[Lcom/metamoji/mazecclient/stroke/StrokePenType;

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
    iput-short p3, p0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->value:S

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/mazecclient/stroke/StrokePenType;
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
    const-class v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/mazecclient/stroke/StrokePenType;

    return-object p0
.end method

.method public static valueOf(S)Lcom/metamoji/mazecclient/stroke/StrokePenType;
    .locals 5

    .line 22
    invoke-static {}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->values()[Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 23
    invoke-virtual {v3}, Lcom/metamoji/mazecclient/stroke/StrokePenType;->getInt16Value()S

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

.method public static values()[Lcom/metamoji/mazecclient/stroke/StrokePenType;
    .locals 1

    .line 4
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->$VALUES:[Lcom/metamoji/mazecclient/stroke/StrokePenType;

    invoke-virtual {v0}, [Lcom/metamoji/mazecclient/stroke/StrokePenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/mazecclient/stroke/StrokePenType;

    return-object v0
.end method


# virtual methods
.method public getInt16Value()S
    .locals 1

    .line 19
    iget-short v0, p0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->value:S

    return v0
.end method
