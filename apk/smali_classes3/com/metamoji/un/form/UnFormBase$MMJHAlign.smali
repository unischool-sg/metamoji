.class public final enum Lcom/metamoji/un/form/UnFormBase$MMJHAlign;
.super Ljava/lang/Enum;
.source "UnFormBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnFormBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MMJHAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/form/UnFormBase$MMJHAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum CENTER:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

.field public static final enum EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

.field public static final enum LEFT:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

.field public static final enum RIGHT:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;


# instance fields
.field private m_value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/form/UnFormBase$MMJHAlign;
    .locals 4

    .line 91
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    sget-object v1, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->LEFT:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    sget-object v2, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->CENTER:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    sget-object v3, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->RIGHT:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mgetIntValue(Lcom/metamoji/un/form/UnFormBase$MMJHAlign;)I
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->getIntValue()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 91
    const-class v0, Lcom/metamoji/un/form/UnFormBase;

    .line 93
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    const-string v1, "EQUALLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    .line 95
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->LEFT:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    .line 97
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    const-string v1, "CENTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->CENTER:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    .line 99
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    const-string v1, "RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->RIGHT:Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    .line 91
    invoke-static {}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->$values()[Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->$VALUES:[Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

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

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->m_value:I

    return-void
.end method

.method private getIntValue()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->m_value:I

    return v0
.end method

.method public static valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJHAlign;
    .locals 5

    .line 111
    invoke-static {}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->values()[Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 112
    invoke-direct {v3}, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->getIntValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/form/UnFormBase$MMJHAlign;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    const-class v0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/form/UnFormBase$MMJHAlign;
    .locals 1

    .line 91
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->$VALUES:[Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    invoke-virtual {v0}, [Lcom/metamoji/un/form/UnFormBase$MMJHAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/form/UnFormBase$MMJHAlign;

    return-object v0
.end method
