.class public final enum Lcom/metamoji/un/text/model/TextLayoutDirection;
.super Ljava/lang/Enum;
.source "TextLayoutDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/model/TextLayoutDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/model/TextLayoutDirection;

.field public static final enum Down:Lcom/metamoji/un/text/model/TextLayoutDirection;

.field public static final enum Left:Lcom/metamoji/un/text/model/TextLayoutDirection;

.field public static final enum Right:Lcom/metamoji/un/text/model/TextLayoutDirection;

.field public static final enum Up:Lcom/metamoji/un/text/model/TextLayoutDirection;


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/model/TextLayoutDirection;
    .locals 4

    .line 3
    sget-object v0, Lcom/metamoji/un/text/model/TextLayoutDirection;->Right:Lcom/metamoji/un/text/model/TextLayoutDirection;

    sget-object v1, Lcom/metamoji/un/text/model/TextLayoutDirection;->Left:Lcom/metamoji/un/text/model/TextLayoutDirection;

    sget-object v2, Lcom/metamoji/un/text/model/TextLayoutDirection;->Up:Lcom/metamoji/un/text/model/TextLayoutDirection;

    sget-object v3, Lcom/metamoji/un/text/model/TextLayoutDirection;->Down:Lcom/metamoji/un/text/model/TextLayoutDirection;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/text/model/TextLayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/metamoji/un/text/model/TextLayoutDirection;

    const-string v1, "Right"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/model/TextLayoutDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/model/TextLayoutDirection;->Right:Lcom/metamoji/un/text/model/TextLayoutDirection;

    .line 5
    new-instance v0, Lcom/metamoji/un/text/model/TextLayoutDirection;

    const-string v1, "Left"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/model/TextLayoutDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/model/TextLayoutDirection;->Left:Lcom/metamoji/un/text/model/TextLayoutDirection;

    .line 6
    new-instance v0, Lcom/metamoji/un/text/model/TextLayoutDirection;

    const-string v1, "Up"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/model/TextLayoutDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/model/TextLayoutDirection;->Up:Lcom/metamoji/un/text/model/TextLayoutDirection;

    .line 7
    new-instance v0, Lcom/metamoji/un/text/model/TextLayoutDirection;

    const-string v1, "Down"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/text/model/TextLayoutDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/metamoji/un/text/model/TextLayoutDirection;->Down:Lcom/metamoji/un/text/model/TextLayoutDirection;

    .line 3
    invoke-static {}, Lcom/metamoji/un/text/model/TextLayoutDirection;->$values()[Lcom/metamoji/un/text/model/TextLayoutDirection;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/model/TextLayoutDirection;->$VALUES:[Lcom/metamoji/un/text/model/TextLayoutDirection;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/model/TextLayoutDirection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 3
    const-class v0, Lcom/metamoji/un/text/model/TextLayoutDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/model/TextLayoutDirection;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/model/TextLayoutDirection;
    .locals 1

    .line 3
    sget-object v0, Lcom/metamoji/un/text/model/TextLayoutDirection;->$VALUES:[Lcom/metamoji/un/text/model/TextLayoutDirection;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/model/TextLayoutDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/model/TextLayoutDirection;

    return-object v0
.end method
