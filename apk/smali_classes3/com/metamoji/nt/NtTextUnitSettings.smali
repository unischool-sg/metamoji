.class public Lcom/metamoji/nt/NtTextUnitSettings;
.super Lcom/metamoji/df/controller/Settings;
.source "NtTextUnitSettings.java"

# interfaces
.implements Lcom/metamoji/un/text/IUnTextSettings;


# static fields
.field public static final MMJNT_MODELPROPVALUE_TEXTSETTINGS_VERSION_LATEST:I = 0x1

.field public static final TEXT_SETTINGS_TYPE:Ljava/lang/String; = "MMJNtTextSettings"

.field private static _defaultValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/Settings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static buildInitModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    const/4 v0, 0x1

    .line 62
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 63
    invoke-static {}, Lcom/metamoji/nt/NtTextUnitSettings;->getDefaultValues()Ljava/util/Map;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 68
    invoke-interface {p0, v2, v3}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getDefaultValues()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/metamoji/nt/NtTextUnitSettings;->_defaultValues:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 28
    new-instance v0, Lcom/metamoji/nt/NtTextUnitSettings$1;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtTextUnitSettings$1;-><init>(I)V

    sput-object v0, Lcom/metamoji/nt/NtTextUnitSettings;->_defaultValues:Ljava/util/Map;

    .line 39
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/metamoji/nt/NtTextUnitSettings;->_defaultValues:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "textUnitVerticalWriting"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    if-ne v0, v1, :cond_1

    .line 44
    sget-object v0, Lcom/metamoji/nt/NtTextUnitSettings;->_defaultValues:Ljava/util/Map;

    const-string/jumbo v1, "textUnitFontFamily"

    const-string v2, "UDDigiKyokasho ProN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtTextUnitSettings;->_defaultValues:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public equalsToDefault()Z
    .locals 11

    .line 89
    invoke-static {}, Lcom/metamoji/nt/NtTextUnitSettings;->getDefaultValues()Ljava/util/Map;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "textUnitLineHeight"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitLineHeight()F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v1

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v5, v1

    const-wide v7, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v1, v5, v7

    if-ltz v1, :cond_1

    return v2

    .line 101
    :cond_1
    const-string/jumbo v1, "textUnitFontFamily"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    return v2

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x1

    if-nez v1, :cond_3

    return v5

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 116
    :cond_4
    const-string/jumbo v1, "textUnitFontSize"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    return v2

    .line 119
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitFontSize()F

    move-result v3

    invoke-static {v1, v4}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v1

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v9, v1

    cmpg-double v1, v9, v7

    if-ltz v1, :cond_6

    return v2

    .line 123
    :cond_6
    const-string/jumbo v1, "textUnitRuledLineStyle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    return v2

    .line 127
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitRuledLineStyle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 131
    :cond_8
    const-string/jumbo v1, "textUnitBorderStyle"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    return v2

    .line 135
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitBorderStyle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 139
    :cond_a
    const-string/jumbo v1, "textUnitBackgroundColor"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    return v2

    .line 143
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitBackgroundColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 147
    :cond_c
    const-string/jumbo v1, "textUnitBackgroundColorAlpha"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    return v2

    .line 150
    :cond_d
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitBackgroundColorAlpha()F

    move-result v3

    invoke-static {v1, v4}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v1

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    cmpg-double v1, v3, v7

    if-ltz v1, :cond_e

    return v2

    .line 154
    :cond_e
    const-string/jumbo v1, "textUnitFontColor"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    return v2

    .line 158
    :cond_f
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitFontColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 162
    :cond_10
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v1, :cond_12

    .line 163
    const-string/jumbo v1, "textUnitVerticalWriting"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    return v2

    .line 167
    :cond_11
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getTextUnitVerticalWriting()Z

    move-result v1

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result v0

    if-eq v1, v0, :cond_12

    return v2

    :cond_12
    return v5
.end method

.method public getTextUnitBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 241
    const-string/jumbo v0, "textUnitBackgroundColor"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextUnitBackgroundColorAlpha()F
    .locals 3

    .line 249
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitBackgroundColorAlpha"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 252
    check-cast v0, Ljava/lang/String;

    .line 255
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 264
    :catch_0
    :cond_0
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtTextUnitSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    return v0
.end method

.method public getTextUnitBorderStyle()Ljava/lang/String;
    .locals 1

    .line 234
    const-string/jumbo v0, "textUnitBorderStyle"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextUnitFontColor()Ljava/lang/String;
    .locals 1

    .line 271
    const-string/jumbo v0, "textUnitFontColor"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextUnitFontFamily()Ljava/lang/String;
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitFontFamilyForG5"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 206
    const-string/jumbo v0, "textUnitFontFamily"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    const-string v1, "Hiragino Mincho ProN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MS PMincho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 209
    :cond_1
    :goto_0
    const-string v0, "UDDigiKyokasho ProN"

    :cond_2
    return-object v0
.end method

.method public getTextUnitFontSize()F
    .locals 2

    .line 220
    const-string/jumbo v0, "textUnitFontSize"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    return v0
.end method

.method public getTextUnitLineHeight()F
    .locals 2

    .line 196
    const-string/jumbo v0, "textUnitLineHeight"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    return v0
.end method

.method public getTextUnitRuledLineStyle()Ljava/lang/String;
    .locals 1

    .line 227
    const-string/jumbo v0, "textUnitRuledLineStyle"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextUnitVerticalWriting()Z
    .locals 2

    .line 283
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->isSystemSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 288
    :cond_0
    const-string/jumbo v0, "textUnitVerticalWriting"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtTextUnitSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method isSystemSettings()Z
    .locals 2

    .line 278
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtTextSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtTextUnitSettings;

    .line 279
    invoke-virtual {v0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    return v0
.end method

.method public removeLocaleDependantSettings()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v1, "textUnitFontFamily"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "textUnitFontFamilyForG5"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTextUnitBackgroundColor(Ljava/lang/String;)V
    .locals 2

    .line 244
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitBackgroundColor"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitBackgroundColorAlpha(F)V
    .locals 4

    .line 267
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitBackgroundColorAlpha"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setTextUnitBorderStyle(Ljava/lang/String;)V
    .locals 2

    .line 237
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitBorderStyle"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitFontColor(Ljava/lang/String;)V
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitFontColor"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitFontFamily(Ljava/lang/String;)V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitFontFamily"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitFontFamilyForG5"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitFontSize(F)V
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitFontSize"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setTextUnitLineHeight(F)V
    .locals 4

    .line 199
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitLineHeight"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setTextUnitRuledLineStyle(Ljava/lang/String;)V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitRuledLineStyle"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitVerticalWriting(Z)V
    .locals 2

    .line 294
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->isSystemSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitVerticalWriting"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 181
    invoke-static {}, Lcom/metamoji/nt/NtTextUnitSettings;->getDefaultValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtTextUnitSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method
