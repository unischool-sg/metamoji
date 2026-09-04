.class public Lcom/metamoji/mazec/util/StringChecker;
.super Ljava/lang/Object;
.source "StringChecker.java"


# static fields
.field private static final BASIC_LATIN_MAX:C = '\u007f'

.field private static final BASIC_LATIN_MIN:C = '!'

.field private static final CYRILLIC_MAX:C = '\u04ff'

.field private static final CYRILLIC_SUPPLEMNET_MAX:C = '\u052f'

.field private static final GREEK_AND_COPTIC_MAX:C = '\u03ff'

.field private static final GREEK_AND_COPTIC_MIN:C = '\u0370'

.field private static final IPA_EXTENTION_MAX:C = '\u02af'

.field private static final LATIN1_SUPPLEMNET_MAX:C = '\u00ff'

.field private static final LATIN_EXTENDED_A_MAX:C = '\u017f'

.field private static final LATIN_EXTENDED_B_MAX:C = '\u024f'

.field private static final PUNC_FBS_STR:Ljava/lang/String; = "!,.;?"

.field private static final PUNC_STR:Ljava/lang/String; = "!\"%\'(),-./:;?[\\]{}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static headWordString(Ljava/lang/String;)Z
    .locals 2

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 36
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 37
    const-string v0, "!\"%\'(),-./:;?[\\]{}"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    return v1

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/metamoji/mazec/util/StringChecker;->isWordChar(C)Z

    move-result p0

    return p0
.end method

.method public static isPuncChar(C)Z
    .locals 1

    .line 71
    const-string v0, "!\"%\'(),-./:;?[\\]{}"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static isWordChar(C)Z
    .locals 3

    const/16 v0, 0x21

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x2af

    const/4 v2, 0x1

    if-gt p0, v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x370

    if-ge p0, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x52f

    if-gt p0, v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public static tailWordString(Ljava/lang/String;)Z
    .locals 3

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 55
    const-string v0, "!,.;?"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    return v2

    .line 59
    :cond_1
    const-string v0, "!\"%\'(),-./:;?[\\]{}"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    return v1

    .line 63
    :cond_2
    invoke-static {p0}, Lcom/metamoji/mazec/util/StringChecker;->isWordChar(C)Z

    move-result p0

    return p0
.end method
