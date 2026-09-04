.class public final enum Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;
.super Ljava/lang/Enum;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/text/model/attr/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertyFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

.field public static final enum BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

.field public static final enum Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

.field public static final enum ComposingBgColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

.field public static final enum ComposingColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

.field public static final enum ComposingUnderline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

.field public static final enum FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

.field public static final enum FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

.field public static final enum FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

.field public static final enum Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

.field public static final enum SpellErrorMark:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

.field public static final enum Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

.field public static final enum Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;
    .locals 12

    .line 14
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v3, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v4, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v5, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v6, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v7, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v8, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->SpellErrorMark:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v9, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->ComposingColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v10, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->ComposingBgColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v11, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->ComposingUnderline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    filled-new-array/range {v0 .. v11}, [Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    const-string v1, "FontSize"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontSize:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    .line 16
    new-instance v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    const-string v1, "FontWeight"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontWeight:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    .line 17
    new-instance v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    const-string v1, "Underline"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    .line 18
    new-instance v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    const-string v1, "Strikeout"

    const/4 v2, 0x3

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    .line 19
    new-instance v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    const-string v1, "Color"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Color:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    .line 20
    new-instance v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    const/4 v1, 0x5

    const/16 v2, 0x20

    const-string v3, "FontName"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    .line 21
    new-instance v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    const/4 v1, 0x6

    const/16 v2, 0x40

    const-string v3, "Italic"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    .line 22
    new-instance v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    const/4 v1, 0x7

    const/16 v2, 0x80

    const-string v3, "BackgroundColor"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    .line 24
    new-instance v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    const-string v1, "SpellErrorMark"

    const v2, 0x8000

    invoke-direct {v0, v1, v4, v2}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->SpellErrorMark:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    .line 25
    new-instance v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    const/16 v1, 0x9

    const/16 v2, 0x4000

    const-string v3, "ComposingColor"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->ComposingColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    .line 26
    new-instance v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    const/16 v1, 0xa

    const/16 v2, 0x2000

    const-string v3, "ComposingBgColor"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->ComposingBgColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    .line 27
    new-instance v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    const/16 v1, 0xb

    const/16 v2, 0x1000

    const-string v3, "ComposingUnderline"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->ComposingUnderline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    .line 14
    invoke-static {}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->$values()[Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    move-result-object v0

    sput-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->$VALUES:[Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->value:I

    return-void
.end method

.method public static enumSetFromInt(I)Ljava/util/EnumSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;"
        }
    .end annotation

    .line 55
    const-class v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->values()[Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 57
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->getIntValue()I

    move-result v5

    and-int/2addr v5, p0

    if-eqz v5, :cond_0

    .line 58
    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static enumSetToInt(Ljava/util/EnumSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)I"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    .line 50
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->getIntValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static valueOf(I)Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;
    .locals 5

    .line 39
    invoke-static {}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->values()[Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 40
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->getIntValue()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 14
    const-class v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    return-object p0
.end method

.method public static values()[Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;
    .locals 1

    .line 14
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->$VALUES:[Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0}, [Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->value:I

    return v0
.end method
