.class public abstract enum Lcom/metamoji/df/sprite/LineCap;
.super Ljava/lang/Enum;
.source "LineCap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/df/sprite/LineCap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/df/sprite/LineCap;

.field public static final enum BUTT:Lcom/metamoji/df/sprite/LineCap;

.field public static final enum ROUND:Lcom/metamoji/df/sprite/LineCap;

.field public static final enum SQUARE:Lcom/metamoji/df/sprite/LineCap;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/df/sprite/LineCap;
    .locals 3

    .line 8
    sget-object v0, Lcom/metamoji/df/sprite/LineCap;->BUTT:Lcom/metamoji/df/sprite/LineCap;

    sget-object v1, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    sget-object v2, Lcom/metamoji/df/sprite/LineCap;->SQUARE:Lcom/metamoji/df/sprite/LineCap;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/df/sprite/LineCap;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/metamoji/df/sprite/LineCap$1;

    const-string v1, "BUTT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/df/sprite/LineCap$1;-><init>(Ljava/lang/String;ILcom/metamoji/df/sprite/LineCap-IA;)V

    sput-object v0, Lcom/metamoji/df/sprite/LineCap;->BUTT:Lcom/metamoji/df/sprite/LineCap;

    .line 14
    new-instance v0, Lcom/metamoji/df/sprite/LineCap$2;

    const-string v1, "ROUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/df/sprite/LineCap$2;-><init>(Ljava/lang/String;ILcom/metamoji/df/sprite/LineCap-IA;)V

    sput-object v0, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    .line 19
    new-instance v0, Lcom/metamoji/df/sprite/LineCap$3;

    const-string v1, "SQUARE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/df/sprite/LineCap$3;-><init>(Ljava/lang/String;ILcom/metamoji/df/sprite/LineCap-IA;)V

    sput-object v0, Lcom/metamoji/df/sprite/LineCap;->SQUARE:Lcom/metamoji/df/sprite/LineCap;

    .line 8
    invoke-static {}, Lcom/metamoji/df/sprite/LineCap;->$values()[Lcom/metamoji/df/sprite/LineCap;

    move-result-object v0

    sput-object v0, Lcom/metamoji/df/sprite/LineCap;->$VALUES:[Lcom/metamoji/df/sprite/LineCap;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/metamoji/df/sprite/LineCap-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/sprite/LineCap;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static valueOf(Landroid/graphics/Paint$Cap;)Lcom/metamoji/df/sprite/LineCap;
    .locals 1

    .line 28
    sget-object v0, Lcom/metamoji/df/sprite/LineCap$4;->$SwitchMap$android$graphics$Paint$Cap:[I

    invoke-virtual {p0}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 36
    sget-object p0, Lcom/metamoji/df/sprite/LineCap;->BUTT:Lcom/metamoji/df/sprite/LineCap;

    return-object p0

    .line 34
    :cond_0
    sget-object p0, Lcom/metamoji/df/sprite/LineCap;->SQUARE:Lcom/metamoji/df/sprite/LineCap;

    return-object p0

    .line 32
    :cond_1
    sget-object p0, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    return-object p0

    .line 30
    :cond_2
    sget-object p0, Lcom/metamoji/df/sprite/LineCap;->BUTT:Lcom/metamoji/df/sprite/LineCap;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/df/sprite/LineCap;
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
    const-class v0, Lcom/metamoji/df/sprite/LineCap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/df/sprite/LineCap;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/df/sprite/LineCap;
    .locals 1

    .line 8
    sget-object v0, Lcom/metamoji/df/sprite/LineCap;->$VALUES:[Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v0}, [Lcom/metamoji/df/sprite/LineCap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/df/sprite/LineCap;

    return-object v0
.end method


# virtual methods
.method abstract toCap()Landroid/graphics/Paint$Cap;
.end method
