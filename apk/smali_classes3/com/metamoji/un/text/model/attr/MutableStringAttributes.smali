.class public Lcom/metamoji/un/text/model/attr/MutableStringAttributes;
.super Lcom/metamoji/un/text/model/attr/StringAttributes;
.source "MutableStringAttributes.java"

# interfaces
.implements Lcom/metamoji/un/text/model/attr/IAttributesAccess;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/metamoji/un/text/model/attr/StringAttributes;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/attr/Attributes;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/attr/StringAttributes;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    return-void
.end method


# virtual methods
.method public overwriteOtherAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/MutableStringAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)",
            "Lcom/metamoji/un/text/model/attr/MutableStringAttributes;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 157
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/text/model/attr/StringAttributes;->overwriteOtherAttributes(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/Attributes;

    .line 159
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->FontName:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->fontName:Ljava/lang/String;

    .line 163
    :cond_0
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Italic:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isItalic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->italic:Z

    .line 167
    :cond_1
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->SpellErrorMark:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isSpellErrorMark()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_spellErrorMark:Z

    .line 170
    :cond_2
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->ComposingColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_useComposingColor:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_useComposingColor:Z

    .line 172
    iget v0, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingColor:I

    iput v0, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_composingColor:I

    .line 174
    :cond_3
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->ComposingBgColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    iget-boolean v0, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_useComposingBgColor:Z

    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_useComposingBgColor:Z

    .line 176
    iget v0, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingBgColor:I

    iput v0, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_composingBgColor:I

    .line 178
    :cond_4
    sget-object v0, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->ComposingUnderline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 179
    iget-boolean p1, p1, Lcom/metamoji/un/text/model/attr/StringAttributes;->_composingUnderline:Z

    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_composingUnderline:Z

    :cond_5
    return-object p0
.end method

.method public resetComposingBgColor()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_useComposingBgColor:Z

    return-void
.end method

.method public resetComposingColor()V
    .locals 1

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_useComposingColor:Z

    return-void
.end method

.method public setBackgroundColor(Lcom/metamoji/un/text/model/ColorComponent;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_useBackgroundColor:Z

    return-void
.end method

.method public setColor(Lcom/metamoji/un/text/model/ColorComponent;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->useColor:Z

    return-void
.end method

.method public setComposingBgColor(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_composingBgColor:I

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_useComposingBgColor:Z

    return-void
.end method

.method public setComposingColor(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_composingColor:I

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_useComposingColor:Z

    return-void
.end method

.method public setComposingUnderline(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_composingUnderline:Z

    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->fontName:Ljava/lang/String;

    return-void
.end method

.method public setFontSize(F)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->fontSize:F

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->useFontSize:Z

    return-void
.end method

.method public setFontWeight(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->fontWeight:I

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->useFontWeight:Z

    return-void
.end method

.method public setItalic(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->italic:Z

    return-void
.end method

.method public setSpellErrorMark(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_spellErrorMark:Z

    return-void
.end method

.method public setStrikeout(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->strikeout:Z

    return-void
.end method

.method public setUnderline(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->underline:Z

    return-void
.end method

.method public setUseBackgroundColor(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->_useBackgroundColor:Z

    return-void
.end method

.method public setUseColor(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->useColor:Z

    return-void
.end method

.method public setUseFontSize(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->useFontSize:Z

    return-void
.end method

.method public setUseFontWeight(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->useFontWeight:Z

    return-void
.end method
