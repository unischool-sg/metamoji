.class public final enum Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;
.super Ljava/lang/Enum;
.source "UnFormBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/form/UnFormBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormImageRepeat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum X:Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

.field public static final enum XY:Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

.field public static final enum Y:Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;


# instance fields
.field private m_value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;
    .locals 3

    .line 152
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->XY:Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    sget-object v1, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->X:Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    sget-object v2, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->Y:Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    filled-new-array {v0, v1, v2}, [Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mgetIntValue(Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;)I
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->getIntValue()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 152
    const-class v0, Lcom/metamoji/un/form/UnFormBase;

    .line 154
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    const-string v1, "XY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->XY:Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    .line 156
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    const-string v1, "X"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->X:Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    .line 158
    new-instance v0, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    const-string v1, "Y"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->Y:Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    .line 152
    invoke-static {}, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->$values()[Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->$VALUES:[Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

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

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput p3, p0, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->m_value:I

    return-void
.end method

.method private getIntValue()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->m_value:I

    return v0
.end method

.method public static valueOf(I)Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;
    .locals 5

    .line 171
    invoke-static {}, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->values()[Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 172
    invoke-direct {v3}, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->getIntValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 152
    const-class v0, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;
    .locals 1

    .line 152
    sget-object v0, Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->$VALUES:[Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    invoke-virtual {v0}, [Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/form/UnFormBase$FormImageRepeat;

    return-object v0
.end method
