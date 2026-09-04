.class public final enum Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;
.super Ljava/lang/Enum;
.source "DrUtOrderUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrUtBasePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

.field public static final enum CENTER:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

.field public static final enum LEFT_BOTTOM:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

.field public static final enum LEFT_TOP:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

.field public static final enum RIGHT_BOTTOM:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

.field public static final enum RIGHT_TOP:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;
    .locals 5

    .line 33
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->LEFT_TOP:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->RIGHT_TOP:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    sget-object v2, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->LEFT_BOTTOM:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    sget-object v3, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->RIGHT_BOTTOM:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    sget-object v4, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->CENTER:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    const-string v1, "LEFT_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->LEFT_TOP:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    .line 35
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    const-string v1, "RIGHT_TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->RIGHT_TOP:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    .line 36
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    const-string v1, "LEFT_BOTTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->LEFT_BOTTOM:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    .line 37
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    const-string v1, "RIGHT_BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->RIGHT_BOTTOM:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    .line 38
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    const-string v1, "CENTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->CENTER:Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    .line 33
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->$values()[Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->$VALUES:[Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

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

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 33
    const-class v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;
    .locals 1

    .line 33
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->$VALUES:[Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    invoke-virtual {v0}, [Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;

    return-object v0
.end method
