.class public Lcom/metamoji/un/text/model/attr/StringAttributes;
.super Lcom/metamoji/un/text/model/attr/Attributes;
.source "StringAttributes.java"

# interfaces
.implements Lcom/metamoji/cm/ISerializable;


# instance fields
.field protected _composingBgColor:I

.field protected _composingColor:I

.field protected _composingUnderline:Z

.field protected _spellErrorMark:Z

.field protected _useComposingBgColor:Z

.field protected _useComposingColor:Z

.field protected fontName:Ljava/lang/String;

.field protected italic:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/metamoji/un/text/model/attr/Attributes;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->italic:Z

    .line 55
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_spellErrorMark:Z

    .line 56
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingUnderline:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/attr/Attributes;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/attr/Attributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    .line 67
    instance-of v0, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 68
    check-cast p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 69
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    .line 76
    :goto_0
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->italic:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->italic:Z

    .line 77
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_spellErrorMark:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_spellErrorMark:Z

    .line 79
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_useComposingColor:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_useComposingColor:Z

    .line 80
    iget v0, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingColor:I

    iput v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingColor:I

    .line 81
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_useComposingBgColor:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_useComposingBgColor:Z

    .line 82
    iget v0, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingBgColor:I

    iput v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingBgColor:I

    .line 83
    iget-boolean p1, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingUnderline:Z

    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingUnderline:Z

    return-void

    .line 86
    :cond_1
    iput-object v1, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->italic:Z

    .line 89
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_spellErrorMark:Z

    .line 90
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingUnderline:Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/un/text/model/attr/Attributes;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/Attributes;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;"
        }
    .end annotation

    .line 245
    const-class v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->compare(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method public compare(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/Attributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/text/model/attr/Attributes;->compare(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    .line 258
    instance-of v1, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz v1, :cond_3

    .line 259
    check-cast p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 260
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    iget-object v2, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    :cond_0
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_1
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->italic:Z

    iget-boolean v2, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->italic:Z

    if-ne v1, v2, :cond_2

    .line 267
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_2
    sget-object v1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->SpellErrorMark:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_spellErrorMark:Z

    iget-boolean p1, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_spellErrorMark:Z

    if-ne p2, p1, :cond_3

    .line 270
    sget-object p1, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->SpellErrorMark:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 214
    :cond_1
    instance-of v2, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-nez v2, :cond_2

    return v1

    .line 217
    :cond_2
    check-cast p1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 218
    invoke-super {p0, p1}, Lcom/metamoji/un/text/model/attr/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    if-nez v2, :cond_6

    :goto_0
    iget-boolean v2, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->italic:Z

    iget-boolean v3, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->italic:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_spellErrorMark:Z

    iget-boolean v3, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_spellErrorMark:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_useComposingColor:Z

    iget-boolean v3, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_useComposingColor:Z

    if-ne v2, v3, :cond_6

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingColor:I

    iget v3, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingColor:I

    if-ne v2, v3, :cond_6

    :cond_4
    iget-boolean v2, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_useComposingBgColor:Z

    iget-boolean v3, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_useComposingBgColor:Z

    if-ne v2, v3, :cond_6

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingBgColor:I

    iget v3, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingBgColor:I

    if-ne v2, v3, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingUnderline:Z

    iget-boolean p1, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingUnderline:Z

    if-ne v2, p1, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public getComposingBgColor()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingBgColor:I

    return v0
.end method

.method public getComposingColor()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingColor:I

    return v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public isComposingText()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isComposingUnderline()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingUnderline:Z

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->italic:Z

    return v0
.end method

.method public isSpellErrorMark()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_spellErrorMark:Z

    return v0
.end method

.method public isUseComposingBgColor()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_useComposingBgColor:Z

    return v0
.end method

.method public isUseComposingColor()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->_useComposingColor:Z

    return v0
.end method

.method public sameAsDefaultValue()Z
    .locals 1

    .line 200
    new-instance v0, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public serialize(Lcom/metamoji/cm/DataArchiver;)I
    .locals 3

    .line 134
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataToTemporary()Z

    .line 140
    invoke-super {p0, p1}, Lcom/metamoji/un/text/model/attr/Attributes;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeString(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    iget-boolean v1, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->italic:Z

    invoke-static {v1}, Lcom/metamoji/cm/TypeUtils;->toInt16(Z)S

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    invoke-super {p0, p1}, Lcom/metamoji/un/text/model/attr/Attributes;->serializeNewVerData(Lcom/metamoji/cm/DataArchiver;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataBackToMain()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 151
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 153
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->appendData(Ljava/io/ByteArrayOutputStream;)I

    return v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v0

    .line 159
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v1

    .line 160
    invoke-super {p0, p1}, Lcom/metamoji/un/text/model/attr/Attributes;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    .line 162
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v2

    invoke-static {v2}, Lcom/metamoji/cm/TypeUtils;->toBool(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->italic:Z

    .line 166
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v2

    sub-int/2addr v2, v1

    sub-int v2, v0, v2

    if-lez v2, :cond_1

    .line 169
    invoke-super {p0, p1}, Lcom/metamoji/un/text/model/attr/Attributes;->serializeNewVerData(Lcom/metamoji/cm/DataArchiver;)I

    :cond_1
    add-int/2addr v1, v0

    .line 173
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public updateDrawState(Landroid/graphics/Paint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V
    .locals 1

    .line 356
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/text/model/attr/Attributes;->updateDrawState(Landroid/graphics/Paint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 358
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseComposingColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getComposingColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isComposingUnderline()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 362
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 365
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->updateMeasureState(Landroid/graphics/Paint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    return-void
.end method

.method public updateMeasureState(Landroid/graphics/Paint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V
    .locals 4

    .line 289
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseFontWeight()Z

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontWeight()I

    move-result p2

    const/16 v3, 0x190

    if-le p2, v3, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isItalic()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isItalic()Z

    move-result p2

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    move p2, v2

    .line 303
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/text/model/attr/StringAttributes;->fontName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 304
    invoke-static {v3}, Lcom/metamoji/un/text/FontUtils;->getRenderingFontInfo(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object v3

    .line 306
    invoke-static {v3, p2}, Lcom/metamoji/un/text/FontUtils;->createTypeface(Lcom/metamoji/un/text/FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    .line 316
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    :goto_2
    if-nez v3, :cond_5

    goto :goto_3

    .line 321
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    :goto_3
    or-int/2addr p2, v2

    if-nez v3, :cond_6

    .line 328
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_4

    .line 330
    :cond_6
    invoke-static {v3, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 333
    :goto_4
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    not-int v3, v3

    and-int/2addr p2, v3

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_7

    .line 336
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_7
    and-int/2addr p2, v0

    if-eqz p2, :cond_8

    const/high16 p2, -0x41800000    # -0.25f

    .line 340
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 343
    :cond_8
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 347
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseFontSize()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 349
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_9
    return-void
.end method
