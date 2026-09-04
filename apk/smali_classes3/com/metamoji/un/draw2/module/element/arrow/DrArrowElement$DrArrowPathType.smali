.class public final enum Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;
.super Ljava/lang/Enum;
.source "DrArrowElement.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrArrowPathType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;",
        ">;",
        "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

.field public static final enum LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

.field public static final enum NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

.field public static final enum QUAD_CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;


# instance fields
.field private final _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;
    .locals 3

    .line 66
    sget-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    sget-object v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    sget-object v2, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->QUAD_CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 67
    new-instance v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    .line 68
    new-instance v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    const-string v1, "LINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    .line 69
    new-instance v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    const-string v1, "QUAD_CURVE"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->QUAD_CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    .line 66
    invoke-static {}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->$values()[Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

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

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 66
    const-class v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;
    .locals 1

    .line 66
    sget-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->$VALUES:[Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->_value:I

    return v0
.end method
