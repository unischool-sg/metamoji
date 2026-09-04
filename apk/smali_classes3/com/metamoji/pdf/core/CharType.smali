.class final Lcom/metamoji/pdf/core/CharType;
.super Ljava/lang/Object;
.source "PDFParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0010\u000c\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0005H\u0002J\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u001e2\u0006\u0010\u0013\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/metamoji/pdf/core/CharType;",
        "",
        "<init>",
        "()V",
        "DEC",
        "",
        "HEX",
        "OCT",
        "NUM",
        "SPACE",
        "EOL",
        "DELIM",
        "HEX_MASK",
        "CT",
        "",
        "[Ljava/lang/Integer;",
        "hasFlag",
        "",
        "ch",
        "flag",
        "isSpace",
        "isSpace2",
        "isNum",
        "isDec",
        "isHex",
        "isOct",
        "isRegular",
        "hex",
        "setFlag",
        "",
        "",
        "pdf"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CT:[Ljava/lang/Integer;

.field private static final DEC:I = 0x100

.field private static final DELIM:I = 0x8000

.field private static final EOL:I = 0x4000

.field private static final HEX:I = 0x200

.field private static final HEX_MASK:I = 0xf

.field public static final INSTANCE:Lcom/metamoji/pdf/core/CharType;

.field private static final NUM:I = 0x800

.field private static final OCT:I = 0x400

.field private static final SPACE:I = 0x2000


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/metamoji/pdf/core/CharType;

    invoke-direct {v0}, Lcom/metamoji/pdf/core/CharType;-><init>()V

    sput-object v0, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    const/16 v0, 0x100

    .line 47
    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/metamoji/pdf/core/CharType;->CT:[Ljava/lang/Integer;

    const/16 v0, 0x30

    move v1, v0

    :goto_1
    const/16 v3, 0x3a

    if-ge v1, v3, :cond_1

    .line 68
    sget-object v3, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    add-int/lit8 v4, v1, -0x30

    or-int/lit16 v4, v4, 0xb00

    invoke-direct {v3, v1, v4}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_1

    :cond_1
    :goto_2
    const/16 v1, 0x38

    if-ge v0, v1, :cond_2

    .line 71
    sget-object v1, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    const/16 v3, 0x400

    invoke-direct {v1, v0, v3}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_2

    :cond_2
    const/16 v0, 0x61

    :goto_3
    const/16 v1, 0x67

    if-ge v0, v1, :cond_3

    .line 74
    sget-object v1, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    add-int/lit8 v3, v0, -0x57

    or-int/lit16 v3, v3, 0x200

    invoke-direct {v1, v0, v3}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_3

    :cond_3
    const/16 v0, 0x41

    :goto_4
    const/16 v1, 0x47

    if-ge v0, v1, :cond_4

    .line 77
    sget-object v1, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    add-int/lit8 v3, v0, -0x37

    or-int/lit16 v3, v3, 0x200

    invoke-direct {v1, v0, v3}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_4

    .line 79
    :cond_4
    sget-object v0, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    const/16 v1, 0x2e

    const/16 v3, 0x800

    invoke-direct {v0, v1, v3}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    const/16 v1, 0x2b

    .line 80
    invoke-direct {v0, v1, v3}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    const/16 v1, 0x2d

    .line 81
    invoke-direct {v0, v1, v3}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    const/16 v1, 0x2000

    .line 83
    invoke-direct {v0, v2, v1}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    const/16 v3, 0x20

    .line 84
    invoke-direct {v0, v3, v1}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    const/16 v3, 0x9

    .line 85
    invoke-direct {v0, v3, v1}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    const/16 v3, 0xc

    .line 86
    invoke-direct {v0, v3, v1}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    const/16 v1, 0xd

    const/16 v3, 0x4000

    .line 88
    invoke-direct {v0, v1, v3}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    const/16 v1, 0xa

    .line 89
    invoke-direct {v0, v1, v3}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    .line 91
    const-string v0, "()<>[]{}/%"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_5
    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 92
    sget-object v4, Lcom/metamoji/pdf/core/CharType;->INSTANCE:Lcom/metamoji/pdf/core/CharType;

    const v5, 0x8000

    invoke-direct {v4, v3, v5}, Lcom/metamoji/pdf/core/CharType;->setFlag(CI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final hasFlag(II)Z
    .locals 1

    .line 49
    sget-object v0, Lcom/metamoji/pdf/core/CharType;->CT:[Ljava/lang/Integer;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final setFlag(CI)V
    .locals 2

    .line 63
    sget-object v0, Lcom/metamoji/pdf/core/CharType;->CT:[Ljava/lang/Integer;

    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    or-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    return-void
.end method


# virtual methods
.method public final hex(I)I
    .locals 1

    .line 59
    sget-object v0, Lcom/metamoji/pdf/core/CharType;->CT:[Ljava/lang/Integer;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0xf

    return p1
.end method

.method public final isDec(I)Z
    .locals 1

    const/16 v0, 0x100

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/metamoji/pdf/core/CharType;->hasFlag(II)Z

    move-result p1

    return p1
.end method

.method public final isHex(I)Z
    .locals 1

    const/16 v0, 0x200

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/metamoji/pdf/core/CharType;->hasFlag(II)Z

    move-result p1

    return p1
.end method

.method public final isNum(I)Z
    .locals 1

    const/16 v0, 0x800

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/metamoji/pdf/core/CharType;->hasFlag(II)Z

    move-result p1

    return p1
.end method

.method public final isOct(I)Z
    .locals 1

    const/16 v0, 0x400

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/metamoji/pdf/core/CharType;->hasFlag(II)Z

    move-result p1

    return p1
.end method

.method public final isRegular(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const v0, 0xe000

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/metamoji/pdf/core/CharType;->hasFlag(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isSpace(I)Z
    .locals 1

    const/16 v0, 0x2000

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/metamoji/pdf/core/CharType;->hasFlag(II)Z

    move-result p1

    return p1
.end method

.method public final isSpace2(I)Z
    .locals 1

    const/16 v0, 0x6000

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/metamoji/pdf/core/CharType;->hasFlag(II)Z

    move-result p1

    return p1
.end method
