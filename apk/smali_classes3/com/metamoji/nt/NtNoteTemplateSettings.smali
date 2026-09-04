.class public Lcom/metamoji/nt/NtNoteTemplateSettings;
.super Ljava/lang/Object;
.source "NtNoteTemplateSettings.java"


# instance fields
.field public footer:Ljava/lang/String;

.field public hasFrontCover:Z

.field public hasRecordings:Z

.field public header:Ljava/lang/String;

.field public noFrontCoverOnPrinting:Z

.field public passwordHash:Ljava/lang/String;

.field public shareTemplateDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

.field public titleRule:Ljava/lang/String;

.field public useNoteTextSettings:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTitle(Lcom/metamoji/df/model/IModelManager;Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 152
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/metamoji/df/controller/SettingsManager;

    invoke-direct {v1}, Lcom/metamoji/df/controller/SettingsManager;-><init>()V

    .line 154
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/metamoji/df/controller/SettingsManager;->init(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/SettingsFactory;)V

    .line 155
    const-string p0, "MMJNtDocumentSettings"

    invoke-virtual {v1, p0}, Lcom/metamoji/df/controller/SettingsManager;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 156
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getTitleRule()Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-virtual {v1}, Lcom/metamoji/df/controller/SettingsManager;->destroy()V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 166
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 167
    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 165
    :cond_1
    const-string v2, ""

    move-object p1, v2

    .line 174
    :goto_0
    const-string v1, "%D"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 176
    const-string v1, "%T"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, "-"

    invoke-static {p0, p1}, Lcom/metamoji/nt/NtDocument;->getValidDocumentTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static shareTemplateDicFromModelMgr(Lcom/metamoji/df/model/IModelManager;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModelManager;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;

    move-result-object v0

    .line 184
    new-instance v1, Lcom/metamoji/df/controller/SettingsManager;

    invoke-direct {v1}, Lcom/metamoji/df/controller/SettingsManager;-><init>()V

    .line 185
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/metamoji/df/controller/SettingsManager;->init(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/SettingsFactory;)V

    .line 186
    const-string p0, "MMJNtDocumentSettings"

    invoke-virtual {v1, p0}, Lcom/metamoji/df/controller/SettingsManager;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p0

    check-cast p0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 187
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocumentSettings;->getShareTemplateDic()Ljava/util/Map;

    move-result-object p0

    .line 188
    invoke-virtual {v1}, Lcom/metamoji/df/controller/SettingsManager;->destroy()V

    return-object p0
.end method


# virtual methods
.method public applyFromModelMgr(Lcom/metamoji/df/model/IModelManager;)V
    .locals 5

    .line 58
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/metamoji/df/controller/SettingsManager;

    invoke-direct {v1}, Lcom/metamoji/df/controller/SettingsManager;-><init>()V

    .line 60
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/df/controller/SettingsManager;->init(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/SettingsFactory;)V

    .line 61
    const-string v0, "MMJNtDocumentSettings"

    invoke-virtual {v1, v0}, Lcom/metamoji/df/controller/SettingsManager;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 63
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTitleRule()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->titleRule:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getHeader()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->header:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getFooter()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->footer:Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasFrontCover:Z

    .line 67
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getNoFrontCoverOnPrinting()Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->noFrontCoverOnPrinting:Z

    .line 68
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getUseSystemTextSettings()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->useNoteTextSettings:Z

    .line 69
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getShareTemplateDic()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->shareTemplateDic:Ljava/util/Map;

    .line 72
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitBackgroundColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 74
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitBackgroundColorAlpha()F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 75
    invoke-static {v2, v3}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v2

    .line 77
    new-instance v3, Lcom/metamoji/un/text/model/UnitStyles;

    invoke-direct {v3}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 78
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitFontFamily()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitFontSize()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 80
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitFontColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/text/DataUtil;->createUIColorWithCSSColorString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 81
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_1
    const/high16 v4, -0x1000000

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    .line 82
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitLineHeight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 83
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitRuledLineStyle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    .line 85
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitBorderStyle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createBorderStyleFromString(Ljava/lang/String;)Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v2

    iput-object v2, v3, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 86
    sget-boolean v2, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getTextUnitVerticalWriting()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    .line 88
    :cond_2
    iput-object v3, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    .line 90
    invoke-static {p1}, Lcom/metamoji/nt/NtDocument;->getPasswordHash(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    .line 92
    invoke-virtual {v1}, Lcom/metamoji/df/controller/SettingsManager;->destroy()V

    return-void
.end method

.method public applyToModelMgr(Lcom/metamoji/df/model/IModelManager;)V
    .locals 4

    .line 102
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createDocumentSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/metamoji/df/controller/SettingsManager;

    invoke-direct {v1}, Lcom/metamoji/df/controller/SettingsManager;-><init>()V

    .line 104
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/df/controller/SettingsManager;->init(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/SettingsFactory;)V

    .line 105
    const-string v0, "MMJNtDocumentSettings"

    invoke-virtual {v1, v0}, Lcom/metamoji/df/controller/SettingsManager;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 107
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->titleRule:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setTitleRule(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->header:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setHeader(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->footer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setFooter(Ljava/lang/String;)V

    .line 110
    iget-boolean v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->hasFrontCover:Z

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setFrontCover(Z)V

    .line 111
    iget-boolean v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->noFrontCoverOnPrinting:Z

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setNoFrontCoverOnPrinting(Z)V

    .line 112
    iget-boolean v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->useNoteTextSettings:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setUseSystemTextSettings(Z)V

    .line 113
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->shareTemplateDic:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setShareTemplateDic(Ljava/util/Map;)V

    .line 117
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitFontSize(F)V

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createCSSColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitFontColor(Ljava/lang/String;)V

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    if-eqz v2, :cond_2

    .line 124
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitLineHeight(F)V

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-eqz v2, :cond_3

    .line 127
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createRuledLineStyleString(Lcom/metamoji/un/text/model/RuledLineStyle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitRuledLineStyle(Ljava/lang/String;)V

    .line 129
    :cond_3
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 130
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 131
    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createCSSColorStringFromUIColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitBackgroundColor(Ljava/lang/String;)V

    .line 132
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitBackgroundColorAlpha(F)V

    .line 134
    :cond_4
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-eqz v2, :cond_5

    .line 135
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-static {v2}, Lcom/metamoji/un/text/DataUtil;->createTextUnitBorderStyleString(Lcom/metamoji/un/text/model/UnitBorderStyle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitBorderStyle(Ljava/lang/String;)V

    .line 137
    :cond_5
    sget-boolean v2, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    .line 138
    iget-object v2, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->textUnitStyles:Lcom/metamoji/un/text/model/UnitStyles;

    iget-object v2, v2, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtDocumentSettings;->setTextUnitVerticalWriting(Z)V

    .line 141
    :cond_6
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/metamoji/nt/NtDocument;->setPasswordHash(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;)V

    .line 143
    invoke-virtual {v1}, Lcom/metamoji/df/controller/SettingsManager;->destroy()V

    return-void
.end method

.method public hasPasswordHash()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/nt/NtNoteTemplateSettings;->passwordHash:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
