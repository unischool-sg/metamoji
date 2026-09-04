.class public Lcom/metamoji/cm/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Ljava/lang/StringBuilder;Lcom/metamoji/cm/Range;)V
    .locals 2

    .line 53
    iget v0, p1, Lcom/metamoji/cm/Range;->location:I

    iget v1, p1, Lcom/metamoji/cm/Range;->location:I

    iget p1, p1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static indexFrom(Ljava/lang/CharSequence;II)I
    .locals 4

    .line 139
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez p2, :cond_2

    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-ge v2, v0, :cond_1

    if-ge v1, p2, :cond_1

    .line 144
    invoke-static {p0, v2}, Lcom/metamoji/cm/StringUtils;->isFollowigCodeAtIndex(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_0
    move p1, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    move v0, p1

    :goto_2
    add-int/lit8 v2, v0, 0x1

    if-lez v2, :cond_4

    if-le v1, p2, :cond_4

    add-int/lit8 v2, v0, -0x1

    if-ge v2, p1, :cond_3

    if-eqz v2, :cond_3

    .line 152
    invoke-static {p0, v2}, Lcom/metamoji/cm/StringUtils;->isFollowigCodeAtIndex(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    return v0
.end method

.method public static indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;)I
    .locals 3

    .line 7
    new-instance v0, Lcom/metamoji/cm/Range;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-static {p0, p1, v0}, Lcom/metamoji/cm/StringUtils;->indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;Lcom/metamoji/cm/Range;)I

    move-result p0

    return p0
.end method

.method public static indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;Lcom/metamoji/cm/Range;)I
    .locals 3

    .line 11
    iget v0, p2, Lcom/metamoji/cm/Range;->location:I

    :goto_0
    iget v1, p2, Lcom/metamoji/cm/Range;->location:I

    iget v2, p2, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 13
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static isFollowigCodeAtIndex(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 80
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    .line 82
    invoke-static {p0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x20e3

    if-eq p1, p0, :cond_1

    const p1, 0xfe0e

    if-eq p1, p0, :cond_1

    const p1, 0xfe0f

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSurrogateAtIndex(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 92
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const p1, 0xd800

    if-gt p1, p0, :cond_0

    const p1, 0xdfff

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVariationSelector(I)Z
    .locals 1

    const/16 v0, 0x180b

    if-lt p0, v0, :cond_0

    const/16 v0, 0x180d

    if-le p0, v0, :cond_2

    :cond_0
    const v0, 0xfe00

    if-lt p0, v0, :cond_1

    const v0, 0xfe0f

    if-le p0, v0, :cond_2

    :cond_1
    const v0, 0xe0100

    if-lt p0, v0, :cond_3

    const v0, 0xe01ef

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static lengthUCS4(Ljava/lang/CharSequence;)I
    .locals 4

    .line 103
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 105
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_1

    .line 106
    invoke-static {p0, v3}, Lcom/metamoji/cm/StringUtils;->isFollowigCodeAtIndex(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static maxIndex(Ljava/lang/CharSequence;)I
    .locals 2

    .line 121
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 122
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 123
    invoke-static {p0, v1}, Lcom/metamoji/cm/StringUtils;->isFollowigCodeAtIndex(Ljava/lang/CharSequence;I)Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, -0x2

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static offsetFromIndexToIndex(Ljava/lang/CharSequence;II)I
    .locals 6

    .line 170
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-static {p0, p2}, Lcom/metamoji/cm/StringUtils;->isFollowigCodeAtIndex(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 175
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le p1, p2, :cond_1

    const/4 v2, -0x1

    move v5, p2

    move p2, p1

    move p1, v5

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge p1, p2, :cond_5

    if-lt p1, v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 188
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v4, p1, 0x1

    if-ge v4, v0, :cond_4

    .line 189
    invoke-static {p0, v4}, Lcom/metamoji/cm/StringUtils;->isFollowigCodeAtIndex(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    :cond_4
    add-int/2addr p1, v1

    goto :goto_1

    :cond_5
    :goto_2
    mul-int/2addr v3, v2

    return v3
.end method

.method public static rangeOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;)Lcom/metamoji/cm/Range;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 33
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p1

    if-nez p1, :cond_1

    add-int/lit8 p1, v1, 0x1

    .line 37
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-static {p0, p1}, Lcom/metamoji/cm/StringUtils;->isFollowigCodeAtIndex(Ljava/lang/CharSequence;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p0, 0x2

    .line 41
    :goto_2
    new-instance p1, Lcom/metamoji/cm/Range;

    invoke-direct {p1, v1, p0}, Lcom/metamoji/cm/Range;-><init>(II)V

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_4

    .line 47
    new-instance p0, Lcom/metamoji/cm/Range;

    const/4 p1, -0x1

    invoke-direct {p0, p1, v0}, Lcom/metamoji/cm/Range;-><init>(II)V

    return-object p0

    :cond_4
    return-object p1
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .locals 6

    .line 61
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 62
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual/range {p0 .. p5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0

    :cond_0
    if-eqz p0, :cond_1

    if-ltz p2, :cond_1

    .line 63
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int v1, p2, p5

    if-lt v0, v1, :cond_1

    .line 64
    invoke-interface {p0, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static stringFromCharacters(CI)Ljava/lang/StringBuilder;
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 207
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static substring(Ljava/lang/CharSequence;Lcom/metamoji/cm/Range;)Ljava/lang/CharSequence;
    .locals 2

    .line 57
    iget v0, p1, Lcom/metamoji/cm/Range;->location:I

    iget v1, p1, Lcom/metamoji/cm/Range;->location:I

    iget p1, p1, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v1, p1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
