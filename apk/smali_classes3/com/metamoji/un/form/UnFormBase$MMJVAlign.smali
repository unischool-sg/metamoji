.class public final enum Lcom/metamoji/un/form/UnFormBase$MMJVAlign;
.super Ljava/lang/Enum;
.source "UnFormBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnFormBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MMJVAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/form/UnFormBase$MMJVAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum BOTTOM:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

.field public static final enum CENTER:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

.field public static final enum EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

.field public static final enum TOP:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;


# instance fields
.field private m_value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/form/UnFormBase$MMJVAlign;
    .locals 4

    .line 60
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    sget-object v1, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->TOP:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    sget-object v2, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->CENTER:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    sget-object v3, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->BOTTOM:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    filled-new-array {v0, v1, v2, v3}, [Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mgetIntValue(Lcom/metamoji/un/form/UnFormBase$MMJVAlign;)I
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->getIntValue()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 60
    const-class v0, Lcom/metamoji/un/form/UnFormBase;

    .line 62
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    const-string v1, "EQUALLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->EQUALLY:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    .line 64
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    const-string v1, "TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->TOP:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    .line 66
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    const-string v1, "CENTER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->CENTER:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    .line 68
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    const-string v1, "BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->BOTTOM:Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    .line 60
    invoke-static {}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->$values()[Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->$VALUES:[Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

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

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->m_value:I

    return-void
.end method

.method private getIntValue()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->m_value:I

    return v0
.end method

.method public static valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJVAlign;
    .locals 5

    .line 80
    invoke-static {}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->values()[Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 81
    invoke-direct {v3}, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->getIntValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/form/UnFormBase$MMJVAlign;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 60
    const-class v0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/form/UnFormBase$MMJVAlign;
    .locals 1

    .line 60
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->$VALUES:[Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    invoke-virtual {v0}, [Lcom/metamoji/un/form/UnFormBase$MMJVAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/form/UnFormBase$MMJVAlign;

    return-object v0
.end method
