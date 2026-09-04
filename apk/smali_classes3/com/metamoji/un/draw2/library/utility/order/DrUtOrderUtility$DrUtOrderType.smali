.class public final enum Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;
.super Ljava/lang/Enum;
.source "DrUtOrderUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrUtOrderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

.field public static final enum ALIGNMENT_BOTTOM:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

.field public static final enum ALIGNMENT_HORIZONTAL_CENTER:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

.field public static final enum ALIGNMENT_LEFT:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

.field public static final enum ALIGNMENT_RIGHT:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

.field public static final enum ALIGNMENT_TOP:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

.field public static final enum ALIGNMENT_VERTICAL_CENTER:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

.field public static final enum JUSTIFICATION_HORIZONTAL_DISTANCE:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

.field public static final enum JUSTIFICATION_VERTICAL_DISTANCE:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

.field public static final enum LATTICE:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;
    .locals 9

    .line 18
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_LEFT:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_RIGHT:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    sget-object v2, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_TOP:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    sget-object v3, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_BOTTOM:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    sget-object v4, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_HORIZONTAL_CENTER:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    sget-object v5, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_VERTICAL_CENTER:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    sget-object v6, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->JUSTIFICATION_HORIZONTAL_DISTANCE:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    sget-object v7, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->JUSTIFICATION_VERTICAL_DISTANCE:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    sget-object v8, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->LATTICE:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    filled-new-array/range {v0 .. v8}, [Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    const-string v1, "ALIGNMENT_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_LEFT:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    .line 20
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    const-string v1, "ALIGNMENT_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_RIGHT:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    .line 21
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    const-string v1, "ALIGNMENT_TOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_TOP:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    .line 22
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    const-string v1, "ALIGNMENT_BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_BOTTOM:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    .line 23
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    const-string v1, "ALIGNMENT_HORIZONTAL_CENTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_HORIZONTAL_CENTER:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    .line 24
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    const-string v1, "ALIGNMENT_VERTICAL_CENTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ALIGNMENT_VERTICAL_CENTER:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    .line 25
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    const-string v1, "JUSTIFICATION_HORIZONTAL_DISTANCE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->JUSTIFICATION_HORIZONTAL_DISTANCE:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    .line 26
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    const-string v1, "JUSTIFICATION_VERTICAL_DISTANCE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->JUSTIFICATION_VERTICAL_DISTANCE:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    .line 27
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    const-string v1, "LATTICE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->LATTICE:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    .line 18
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->$values()[Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->$VALUES:[Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 18
    const-class v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;
    .locals 1

    .line 18
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->$VALUES:[Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;

    return-object v0
.end method
