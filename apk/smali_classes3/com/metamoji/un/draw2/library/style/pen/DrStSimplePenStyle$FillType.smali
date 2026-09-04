.class public final enum Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;
.super Ljava/lang/Enum;
.source "DrStSimplePenStyle.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FillType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;",
        ">;",
        "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

.field public static final enum GRADATION_LEFTTOP_RIGHTBOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

.field public static final enum GRADATION_LEFT_RIGHT:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

.field public static final enum GRADATION_RIGHTTOP_LEFTBOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

.field public static final enum GRADATION_TOP_BOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

.field public static final enum STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;


# instance fields
.field private final _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;
    .locals 6

    .line 26
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    sget-object v2, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_TOP_BOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    sget-object v3, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_LEFT_RIGHT:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    sget-object v4, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_LEFTTOP_RIGHTBOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_RIGHTTOP_LEFTBOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    .line 28
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    const-string v1, "STANDARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    .line 29
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    const-string v1, "GRADATION_TOP_BOTTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_TOP_BOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    .line 30
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    const-string v1, "GRADATION_LEFT_RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_LEFT_RIGHT:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    .line 31
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    const-string v1, "GRADATION_LEFTTOP_RIGHTBOTTOM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_LEFTTOP_RIGHTBOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    .line 32
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    const-string v1, "GRADATION_RIGHTTOP_LEFTBOTTOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_RIGHTTOP_LEFTBOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    .line 26
    invoke-static {}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->$values()[Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->$VALUES:[Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    const-class v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;
    .locals 1

    .line 26
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->$VALUES:[Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->_value:I

    return v0
.end method
