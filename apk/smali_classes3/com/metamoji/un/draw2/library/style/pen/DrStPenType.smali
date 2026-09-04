.class public final enum Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;
.super Ljava/lang/Enum;
.source "DrStPenType.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;",
        ">;",
        "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

.field public static final enum ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

.field public static final enum CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

.field public static final enum FOUNTAIN:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

.field public static final enum SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;


# instance fields
.field private final _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;
    .locals 5

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    sget-object v2, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    sget-object v3, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->FOUNTAIN:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    sget-object v4, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    .line 11
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    const-string v1, "SIMPLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    .line 12
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    const-string v1, "CALLIGRAPHIC"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    .line 13
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    const-string v1, "FOUNTAIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->FOUNTAIN:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    .line 14
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    const-string v1, "ARROW"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    .line 8
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->$values()[Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->$VALUES:[Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

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
    iput p3, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;
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
    const-class v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;
    .locals 1

    .line 8
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->$VALUES:[Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->_value:I

    return v0
.end method
