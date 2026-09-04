.class public abstract enum Lcom/metamoji/df/sprite/LineJoin;
.super Ljava/lang/Enum;
.source "LineJoin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/df/sprite/LineJoin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/df/sprite/LineJoin;

.field public static final enum BEVEL:Lcom/metamoji/df/sprite/LineJoin;

.field public static final enum MITER:Lcom/metamoji/df/sprite/LineJoin;

.field public static final enum ROUND:Lcom/metamoji/df/sprite/LineJoin;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/df/sprite/LineJoin;
    .locals 3

    .line 8
    sget-object v0, Lcom/metamoji/df/sprite/LineJoin;->BEVEL:Lcom/metamoji/df/sprite/LineJoin;

    sget-object v1, Lcom/metamoji/df/sprite/LineJoin;->MITER:Lcom/metamoji/df/sprite/LineJoin;

    sget-object v2, Lcom/metamoji/df/sprite/LineJoin;->ROUND:Lcom/metamoji/df/sprite/LineJoin;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/metamoji/df/sprite/LineJoin$1;

    const-string v1, "BEVEL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/df/sprite/LineJoin$1;-><init>(Ljava/lang/String;ILcom/metamoji/df/sprite/LineJoin-IA;)V

    sput-object v0, Lcom/metamoji/df/sprite/LineJoin;->BEVEL:Lcom/metamoji/df/sprite/LineJoin;

    .line 14
    new-instance v0, Lcom/metamoji/df/sprite/LineJoin$2;

    const-string v1, "MITER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/df/sprite/LineJoin$2;-><init>(Ljava/lang/String;ILcom/metamoji/df/sprite/LineJoin-IA;)V

    sput-object v0, Lcom/metamoji/df/sprite/LineJoin;->MITER:Lcom/metamoji/df/sprite/LineJoin;

    .line 19
    new-instance v0, Lcom/metamoji/df/sprite/LineJoin$3;

    const-string v1, "ROUND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/df/sprite/LineJoin$3;-><init>(Ljava/lang/String;ILcom/metamoji/df/sprite/LineJoin-IA;)V

    sput-object v0, Lcom/metamoji/df/sprite/LineJoin;->ROUND:Lcom/metamoji/df/sprite/LineJoin;

    .line 8
    invoke-static {}, Lcom/metamoji/df/sprite/LineJoin;->$values()[Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v0

    sput-object v0, Lcom/metamoji/df/sprite/LineJoin;->$VALUES:[Lcom/metamoji/df/sprite/LineJoin;

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

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/metamoji/df/sprite/LineJoin-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/sprite/LineJoin;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static valueOf(Landroid/graphics/Paint$Join;)Lcom/metamoji/df/sprite/LineJoin;
    .locals 1

    .line 29
    sget-object v0, Lcom/metamoji/df/sprite/LineJoin$4;->$SwitchMap$android$graphics$Paint$Join:[I

    invoke-virtual {p0}, Landroid/graphics/Paint$Join;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 37
    sget-object p0, Lcom/metamoji/df/sprite/LineJoin;->BEVEL:Lcom/metamoji/df/sprite/LineJoin;

    return-object p0

    .line 35
    :cond_0
    sget-object p0, Lcom/metamoji/df/sprite/LineJoin;->ROUND:Lcom/metamoji/df/sprite/LineJoin;

    return-object p0

    .line 33
    :cond_1
    sget-object p0, Lcom/metamoji/df/sprite/LineJoin;->MITER:Lcom/metamoji/df/sprite/LineJoin;

    return-object p0

    .line 31
    :cond_2
    sget-object p0, Lcom/metamoji/df/sprite/LineJoin;->BEVEL:Lcom/metamoji/df/sprite/LineJoin;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/df/sprite/LineJoin;
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
    const-class v0, Lcom/metamoji/df/sprite/LineJoin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/df/sprite/LineJoin;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/df/sprite/LineJoin;
    .locals 1

    .line 8
    sget-object v0, Lcom/metamoji/df/sprite/LineJoin;->$VALUES:[Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v0}, [Lcom/metamoji/df/sprite/LineJoin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/df/sprite/LineJoin;

    return-object v0
.end method


# virtual methods
.method abstract toJoin()Landroid/graphics/Paint$Join;
.end method
