.class public Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;
.super Ljava/lang/Object;
.source "UnTextSettingsForceVerticalWriting.java"

# interfaces
.implements Lcom/metamoji/un/text/IUnTextSettings;


# instance fields
.field private _textSettings:Lcom/metamoji/un/text/IUnTextSettings;

.field private _verticalWriting:Z


# direct methods
.method public constructor <init>(Lcom/metamoji/un/text/IUnTextSettings;Z)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;->_textSettings:Lcom/metamoji/un/text/IUnTextSettings;

    .line 10
    iput-boolean p2, p0, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;->_verticalWriting:Z

    return-void
.end method


# virtual methods
.method public getTextUnitBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;->_textSettings:Lcom/metamoji/un/text/IUnTextSettings;

    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitBackgroundColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextUnitBackgroundColorAlpha()F
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;->_textSettings:Lcom/metamoji/un/text/IUnTextSettings;

    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitBackgroundColorAlpha()F

    move-result v0

    return v0
.end method

.method public getTextUnitBorderStyle()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;->_textSettings:Lcom/metamoji/un/text/IUnTextSettings;

    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitBorderStyle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextUnitFontColor()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;->_textSettings:Lcom/metamoji/un/text/IUnTextSettings;

    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitFontColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextUnitFontFamily()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;->_textSettings:Lcom/metamoji/un/text/IUnTextSettings;

    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextUnitFontSize()F
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;->_textSettings:Lcom/metamoji/un/text/IUnTextSettings;

    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitFontSize()F

    move-result v0

    return v0
.end method

.method public getTextUnitLineHeight()F
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;->_textSettings:Lcom/metamoji/un/text/IUnTextSettings;

    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitLineHeight()F

    move-result v0

    return v0
.end method

.method public getTextUnitRuledLineStyle()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;->_textSettings:Lcom/metamoji/un/text/IUnTextSettings;

    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitRuledLineStyle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextUnitVerticalWriting()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextSettingsForceVerticalWriting;->_verticalWriting:Z

    return v0
.end method

.method public setTextUnitBackgroundColor(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTextUnitBackgroundColorAlpha(F)V
    .locals 0

    return-void
.end method

.method public setTextUnitBorderStyle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTextUnitFontColor(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTextUnitFontFamily(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTextUnitFontSize(F)V
    .locals 0

    return-void
.end method

.method public setTextUnitLineHeight(F)V
    .locals 0

    return-void
.end method

.method public setTextUnitRuledLineStyle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTextUnitVerticalWriting(Z)V
    .locals 0

    return-void
.end method
