.class public abstract enum Lcom/metamoji/df/sprite/FillRule;
.super Ljava/lang/Enum;
.source "FillRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/df/sprite/FillRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/df/sprite/FillRule;

.field public static final enum EVEN_ODD:Lcom/metamoji/df/sprite/FillRule;

.field public static final enum WINDING:Lcom/metamoji/df/sprite/FillRule;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/df/sprite/FillRule;
    .locals 2

    .line 8
    sget-object v0, Lcom/metamoji/df/sprite/FillRule;->EVEN_ODD:Lcom/metamoji/df/sprite/FillRule;

    sget-object v1, Lcom/metamoji/df/sprite/FillRule;->WINDING:Lcom/metamoji/df/sprite/FillRule;

    filled-new-array {v0, v1}, [Lcom/metamoji/df/sprite/FillRule;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/metamoji/df/sprite/FillRule$1;

    const-string v1, "EVEN_ODD"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/df/sprite/FillRule$1;-><init>(Ljava/lang/String;ILcom/metamoji/df/sprite/FillRule-IA;)V

    sput-object v0, Lcom/metamoji/df/sprite/FillRule;->EVEN_ODD:Lcom/metamoji/df/sprite/FillRule;

    .line 14
    new-instance v0, Lcom/metamoji/df/sprite/FillRule$2;

    const-string v1, "WINDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/df/sprite/FillRule$2;-><init>(Ljava/lang/String;ILcom/metamoji/df/sprite/FillRule-IA;)V

    sput-object v0, Lcom/metamoji/df/sprite/FillRule;->WINDING:Lcom/metamoji/df/sprite/FillRule;

    .line 8
    invoke-static {}, Lcom/metamoji/df/sprite/FillRule;->$values()[Lcom/metamoji/df/sprite/FillRule;

    move-result-object v0

    sput-object v0, Lcom/metamoji/df/sprite/FillRule;->$VALUES:[Lcom/metamoji/df/sprite/FillRule;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/metamoji/df/sprite/FillRule-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/sprite/FillRule;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static valueOf(Landroid/graphics/Path$FillType;)Lcom/metamoji/df/sprite/FillRule;
    .locals 1

    .line 24
    sget-object v0, Lcom/metamoji/df/sprite/FillRule$3;->$SwitchMap$android$graphics$Path$FillType:[I

    invoke-virtual {p0}, Landroid/graphics/Path$FillType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 32
    sget-object p0, Lcom/metamoji/df/sprite/FillRule;->EVEN_ODD:Lcom/metamoji/df/sprite/FillRule;

    return-object p0

    .line 28
    :cond_0
    sget-object p0, Lcom/metamoji/df/sprite/FillRule;->WINDING:Lcom/metamoji/df/sprite/FillRule;

    return-object p0

    .line 26
    :cond_1
    sget-object p0, Lcom/metamoji/df/sprite/FillRule;->EVEN_ODD:Lcom/metamoji/df/sprite/FillRule;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/df/sprite/FillRule;
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
    const-class v0, Lcom/metamoji/df/sprite/FillRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/df/sprite/FillRule;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/df/sprite/FillRule;
    .locals 1

    .line 8
    sget-object v0, Lcom/metamoji/df/sprite/FillRule;->$VALUES:[Lcom/metamoji/df/sprite/FillRule;

    invoke-virtual {v0}, [Lcom/metamoji/df/sprite/FillRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/df/sprite/FillRule;

    return-object v0
.end method


# virtual methods
.method abstract toType()Landroid/graphics/Path$FillType;
.end method
