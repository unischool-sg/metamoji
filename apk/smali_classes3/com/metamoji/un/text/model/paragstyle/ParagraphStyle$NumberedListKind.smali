.class public final enum Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;
.super Ljava/lang/Enum;
.source "ParagraphStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NumberedListKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

.field public static final enum Alphabet:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

.field public static final enum AlphabetCapital:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

.field public static final enum ArabicNumeralsAndPeriod:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

.field public static final enum ArabicNumeralsWithParenthesis:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

.field public static final enum ArabicNumeralsWithRightParenthesis:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

.field public static final enum None:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;


# instance fields
.field private _value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;
    .locals 6

    .line 131
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->None:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsAndPeriod:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    sget-object v2, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsWithRightParenthesis:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    sget-object v3, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsWithParenthesis:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    sget-object v4, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->AlphabetCapital:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    sget-object v5, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->Alphabet:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    filled-new-array/range {v0 .. v5}, [Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 132
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    const/4 v1, -0x1

    const-string v2, "None"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->None:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    .line 133
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    const-string v1, "ArabicNumeralsAndPeriod"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsAndPeriod:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    .line 134
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    const-string v1, "ArabicNumeralsWithRightParenthesis"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsWithRightParenthesis:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    .line 135
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    const-string v1, "ArabicNumeralsWithParenthesis"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->ArabicNumeralsWithParenthesis:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    .line 136
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    const-string v1, "AlphabetCapital"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->AlphabetCapital:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    .line 137
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    const-string v1, "Alphabet"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->Alphabet:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    .line 131
    invoke-static {}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->$values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->$VALUES:[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

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

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput p3, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->_value:I

    return-void
.end method

.method public static fromIntValue(I)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;
    .locals 5

    .line 147
    invoke-static {}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 148
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->toIntValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 131
    const-class v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;
    .locals 1

    .line 131
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->$VALUES:[Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;

    return-object v0
.end method


# virtual methods
.method public toIntValue()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$NumberedListKind;->_value:I

    return v0
.end method
