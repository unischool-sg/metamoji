.class public final enum Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;
.super Ljava/lang/Enum;
.source "UnTextUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnTextUnitOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

.field public static final enum UnTextUnitOption_AllowMultipleShareEdit:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

.field public static final enum UnTextUnitOption_HideDropShadow:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

.field public static final enum UnTextUnitOption_NoOutsideTapLocationUI:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

.field public static final enum UnTextUnitOption_NoSetLocationUI:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

.field public static final enum UnTextUnitOption_None:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;


# instance fields
.field private _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;
    .locals 5

    .line 389
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_None:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    sget-object v1, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_NoSetLocationUI:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    sget-object v2, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_NoOutsideTapLocationUI:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_HideDropShadow:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_AllowMultipleShareEdit:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 390
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    const-string v1, "UnTextUnitOption_None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_None:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    .line 391
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    const-string v1, "UnTextUnitOption_NoSetLocationUI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_NoSetLocationUI:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    .line 392
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    const-string v1, "UnTextUnitOption_NoOutsideTapLocationUI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_NoOutsideTapLocationUI:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    .line 393
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    const-string v1, "UnTextUnitOption_HideDropShadow"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_HideDropShadow:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    .line 394
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    const-string v1, "UnTextUnitOption_AllowMultipleShareEdit"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->UnTextUnitOption_AllowMultipleShareEdit:Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    .line 389
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->$values()[Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->$VALUES:[Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

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

    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 399
    iput p3, p0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->_value:I

    return-void
.end method

.method public static fromIntValue(I)Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;
    .locals 5

    .line 406
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->values()[Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 407
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->toIntValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 389
    const-class v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;
    .locals 1

    .line 389
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->$VALUES:[Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;

    return-object v0
.end method


# virtual methods
.method public toIntValue()I
    .locals 1

    .line 403
    iget v0, p0, Lcom/metamoji/un/text/UnTextUnit$UnTextUnitOption;->_value:I

    return v0
.end method
