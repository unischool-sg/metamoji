.class final enum Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;
.super Ljava/lang/Enum;
.source "UnTextUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/UnTextUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TextUnitSizeCheckDoInitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

.field public static final enum TextUnitSizeCheckDoInitType_7notes:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

.field public static final enum TextUnitSizeCheckDoInitType_None:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

.field public static final enum TextUnitSizeCheckDoInitType_PlainText:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

.field public static final enum TextUnitSizeCheckDoInitType_PlainTextPaste:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

.field public static final enum TextUnitSizeCheckDoInitType_StringWs:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;


# instance fields
.field private _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;
    .locals 5

    .line 425
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_None:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    sget-object v1, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_PlainText:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    sget-object v2, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_StringWs:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    sget-object v3, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_7notes:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    sget-object v4, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_PlainTextPaste:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 426
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    const-string v1, "TextUnitSizeCheckDoInitType_None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_None:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    .line 427
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    const-string v1, "TextUnitSizeCheckDoInitType_PlainText"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_PlainText:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    .line 428
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    const-string v1, "TextUnitSizeCheckDoInitType_StringWs"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_StringWs:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    .line 429
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    const-string v1, "TextUnitSizeCheckDoInitType_7notes"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_7notes:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    .line 430
    new-instance v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    const-string v1, "TextUnitSizeCheckDoInitType_PlainTextPaste"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->TextUnitSizeCheckDoInitType_PlainTextPaste:Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    .line 425
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->$values()[Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->$VALUES:[Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

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

    .line 434
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 435
    iput p3, p0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->_value:I

    return-void
.end method

.method public static fromIntValue(I)Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;
    .locals 5

    .line 442
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->values()[Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 443
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->toIntValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 425
    const-class v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;
    .locals 1

    .line 425
    sget-object v0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->$VALUES:[Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;

    return-object v0
.end method


# virtual methods
.method public toIntValue()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/metamoji/un/text/UnTextUnit$TextUnitSizeCheckDoInitType;->_value:I

    return v0
.end method
