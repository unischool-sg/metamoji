.class public final enum Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;
.super Ljava/lang/Enum;
.source "DrStFountainInkType.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;",
        ">;",
        "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

.field public static final enum GRADATION:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

.field public static final enum STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

.field public static final enum TWO_COLORS:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;


# instance fields
.field private final _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;
    .locals 3

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->GRADATION:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    sget-object v2, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->TWO_COLORS:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    .line 11
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    const-string v1, "GRADATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->GRADATION:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    .line 12
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    const-string v1, "TWO_COLORS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->TWO_COLORS:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    .line 8
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->$values()[Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->$VALUES:[Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->_value:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;
    .locals 1

    .line 33
    const-class v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->enumOf(ILjava/lang/Class;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;
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
    const-class v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;
    .locals 1

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->$VALUES:[Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->_value:I

    return v0
.end method
