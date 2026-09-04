.class public final enum Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;
.super Ljava/lang/Enum;
.source "UnFormBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnFormBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MMJUNFORM_LENGTH_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum AUTO:Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

.field public static final enum LENGTH:Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

.field public static final enum PERCENT:Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;


# instance fields
.field private m_value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;
    .locals 3

    .line 31
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->AUTO:Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    sget-object v1, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->LENGTH:Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    sget-object v2, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->PERCENT:Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    const-class v0, Lcom/metamoji/un/form/UnFormBase;

    .line 33
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->AUTO:Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    .line 35
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    const-string v1, "LENGTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->LENGTH:Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    .line 37
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    const-string v1, "PERCENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->PERCENT:Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    .line 31
    invoke-static {}, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->$values()[Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->$VALUES:[Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

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

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->m_value:I

    return-void
.end method

.method public static valueOf(I)Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;
    .locals 5

    .line 49
    invoke-static {}, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->values()[Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 50
    invoke-virtual {v3}, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->getIntValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    const-class v0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;
    .locals 1

    .line 31
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->$VALUES:[Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    invoke-virtual {v0}, [Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/metamoji/un/form/UnFormBase$MMJUNFORM_LENGTH_TYPE;->m_value:I

    return v0
.end method
