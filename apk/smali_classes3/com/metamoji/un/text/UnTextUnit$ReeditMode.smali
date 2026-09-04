.class final enum Lcom/metamoji/un/text/UnTextUnit$ReeditMode;
.super Ljava/lang/Enum;
.source "UnTextUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReeditMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/UnTextUnit$ReeditMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

.field public static final enum ReNone:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

.field public static final enum RePendingReconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

.field public static final enum RePendingReedit:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

.field public static final enum Reconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

.field public static final enum Reedit:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;


# instance fields
.field private _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/UnTextUnit$ReeditMode;
    .locals 5

    .line 268
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->ReNone:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    sget-object v1, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->Reedit:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    sget-object v2, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->Reconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->RePendingReedit:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->RePendingReconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 269
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    const-string v1, "ReNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->ReNone:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    .line 270
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    const-string v1, "Reedit"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->Reedit:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    .line 271
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    const-string v1, "Reconvert"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->Reconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    .line 274
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "RePendingReedit"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->RePendingReedit:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    .line 275
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    const/4 v1, 0x4

    const/4 v2, -0x2

    const-string v3, "RePendingReconvert"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->RePendingReconvert:Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    .line 268
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->$values()[Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->$VALUES:[Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

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

    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 280
    iput p3, p0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->_value:I

    return-void
.end method

.method public static fromIntValue(I)Lcom/metamoji/un/text/UnTextUnit$ReeditMode;
    .locals 5

    .line 287
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->values()[Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 288
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->toIntValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/UnTextUnit$ReeditMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 268
    const-class v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/UnTextUnit$ReeditMode;
    .locals 1

    .line 268
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->$VALUES:[Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/UnTextUnit$ReeditMode;

    return-object v0
.end method


# virtual methods
.method public toIntValue()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/metamoji/un/text/UnTextUnit$ReeditMode;->_value:I

    return v0
.end method
