.class public final enum Lcom/metamoji/un/form/UnFormBase$FormImageStyle;
.super Ljava/lang/Enum;
.source "UnFormBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnFormBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormImageStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/form/UnFormBase$FormImageStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum FIT_TO_RECT:Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

.field public static final enum ORGSIZE:Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

.field public static final enum TILED:Lcom/metamoji/un/form/UnFormBase$FormImageStyle;


# instance fields
.field private m_value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/form/UnFormBase$FormImageStyle;
    .locals 3

    .line 122
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->ORGSIZE:Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    sget-object v1, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->FIT_TO_RECT:Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    sget-object v2, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->TILED:Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mgetIntValue(Lcom/metamoji/un/form/UnFormBase$FormImageStyle;)I
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->getIntValue()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 122
    const-class v0, Lcom/metamoji/un/form/UnFormBase;

    .line 124
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    const-string v1, "ORGSIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->ORGSIZE:Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    .line 126
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    const-string v1, "FIT_TO_RECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->FIT_TO_RECT:Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    .line 128
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    const-string v1, "TILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->TILED:Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    .line 122
    invoke-static {}, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->$values()[Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->$VALUES:[Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

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

    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput p3, p0, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->m_value:I

    return-void
.end method

.method private getIntValue()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->m_value:I

    return v0
.end method

.method public static valueOf(I)Lcom/metamoji/un/form/UnFormBase$FormImageStyle;
    .locals 5

    .line 141
    invoke-static {}, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->values()[Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 142
    invoke-direct {v3}, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->getIntValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/form/UnFormBase$FormImageStyle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 122
    const-class v0, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/form/UnFormBase$FormImageStyle;
    .locals 1

    .line 122
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->$VALUES:[Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    invoke-virtual {v0}, [Lcom/metamoji/un/form/UnFormBase$FormImageStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/form/UnFormBase$FormImageStyle;

    return-object v0
.end method
