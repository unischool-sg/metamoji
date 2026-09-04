.class public Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;
.super Lcom/metamoji/un/text/model/attr/StrokeAttributes;
.source "MutableStrokeAttributes.java"

# interfaces
.implements Lcom/metamoji/un/text/model/attr/IAttributesAccess;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/attr/Attributes;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    return-void
.end method


# virtual methods
.method public overwriteOtherAttributes(Lcom/metamoji/un/text/model/attr/StrokeAttributes;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/StrokeAttributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)",
            "Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->overwriteOtherAttributes(Lcom/metamoji/un/text/model/attr/Attributes;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/Attributes;

    :cond_0
    return-object p0
.end method

.method public setBackgroundColor(Lcom/metamoji/un/text/model/ColorComponent;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->_backgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->_useBackgroundColor:Z

    return-void
.end method

.method public setColor(Lcom/metamoji/un/text/model/ColorComponent;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->color:Lcom/metamoji/un/text/model/ColorComponent;

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->useColor:Z

    return-void
.end method

.method public setFontSize(F)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->fontSize:F

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->useFontSize:Z

    return-void
.end method

.method public setFontWeight(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->fontWeight:I

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->useFontWeight:Z

    return-void
.end method

.method public setStrikeout(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->strikeout:Z

    return-void
.end method

.method public setUnderline(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->underline:Z

    return-void
.end method

.method public setUseBackgroundColor(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->_useBackgroundColor:Z

    return-void
.end method

.method public setUseColor(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->useColor:Z

    return-void
.end method

.method public setUseFontSize(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->useFontSize:Z

    return-void
.end method

.method public setUseFontWeight(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/attr/MutableStrokeAttributes;->useFontWeight:Z

    return-void
.end method
