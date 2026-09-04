.class public Lcom/metamoji/ui/dialog/TextSettings;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "TextSettings.java"


# instance fields
.field private mCheckSpelling:Z

.field private mDispTextUnitDropShadow:Z

.field private mTextLineExtractAllOneLine:Z

.field private mTextLineExtractLevelCaption:Landroid/view/View;

.field private mTextLineExtractLevelGroup:Lcom/metamoji/ui/common/UiRadioGroup;

.field private mTextLineExtractLevelIndex:I

.field private mUseTextLineEngine:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmTextLineExtractLevelGroup(Lcom/metamoji/ui/dialog/TextSettings;)Lcom/metamoji/ui/common/UiRadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCheckSpelling(Lcom/metamoji/ui/dialog/TextSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/TextSettings;->mCheckSpelling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDispTextUnitDropShadow(Lcom/metamoji/ui/dialog/TextSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/TextSettings;->mDispTextUnitDropShadow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTextLineExtractAllOneLine(Lcom/metamoji/ui/dialog/TextSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractAllOneLine:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTextLineExtractLevelIndex(Lcom/metamoji/ui/dialog/TextSettings;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUseTextLineEngine(Lcom/metamoji/ui/dialog/TextSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/ui/dialog/TextSettings;->mUseTextLineEngine:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckEnabledTextLineExtractSettings(Lcom/metamoji/ui/dialog/TextSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/TextSettings;->checkEnabledTextLineExtractSettings()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mCheckSpelling:Z

    .line 40
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mDispTextUnitDropShadow:Z

    .line 43
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mUseTextLineEngine:Z

    .line 44
    iput v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelIndex:I

    .line 45
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractAllOneLine:Z

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelCaption:Landroid/view/View;

    .line 47
    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    return-void
.end method

.method private checkEnabledTextLineExtractSettings()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 296
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/TextSettings;->mUseTextLineEngine:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz v0, :cond_1

    .line 298
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/TextSettings;->mUseTextLineEngine:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioGroup;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 55
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_textsettings:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mViewId:I

    .line 56
    sget v0, Lcom/metamoji/noteanytime/R$string;->SystemOption_TextMode_Settings:I

    iput v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTitleId:I

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 60
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_textunitstyleinit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_0

    .line 62
    new-instance p3, Lcom/metamoji/ui/dialog/TextSettings$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/TextSettings$1;-><init>(Lcom/metamoji/ui/dialog/TextSettings;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_SpellCheck:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 142
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->isCheckSpellingWhenTyping()Z

    move-result p3

    iput-boolean p3, p0, Lcom/metamoji/ui/dialog/TextSettings;->mCheckSpelling:Z

    .line 143
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->isSpellCheckAvailable()Z

    move-result p3

    const/16 v0, 0x8

    if-eqz p3, :cond_1

    .line 144
    sget p3, Lcom/metamoji/noteanytime/R$id;->switch_spellcheck:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiSwitch;

    if-eqz p3, :cond_2

    .line 146
    iget-boolean v1, p0, Lcom/metamoji/ui/dialog/TextSettings;->mCheckSpelling:Z

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 147
    new-instance v1, Lcom/metamoji/ui/dialog/TextSettings$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/dialog/TextSettings$2;-><init>(Lcom/metamoji/ui/dialog/TextSettings;)V

    invoke-virtual {p3, v1}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_3

    .line 161
    sget p2, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_TextUnitDropShadow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_3

    .line 163
    sget p3, Lcom/metamoji/noteanytime/R$drawable;->group_background_up:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/high16 p3, 0x41000000    # 8.0f

    .line 164
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p3

    float-to-int p3, p3

    .line 165
    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 170
    :cond_3
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_textunitdropshadow:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    .line 171
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getDispTextUnitDropShadow()Z

    move-result p3

    iput-boolean p3, p0, Lcom/metamoji/ui/dialog/TextSettings;->mDispTextUnitDropShadow:Z

    if-eqz p2, :cond_4

    .line 173
    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 174
    new-instance p3, Lcom/metamoji/ui/dialog/TextSettings$3;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/TextSettings$3;-><init>(Lcom/metamoji/ui/dialog/TextSettings;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    :cond_4
    sget p2, Lcom/metamoji/noteanytime/R$id;->textview_TextLineExtractLevel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelCaption:Landroid/view/View;

    .line 184
    sget p2, Lcom/metamoji/noteanytime/R$id;->group_TextLineExtractLevel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 187
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p2

    sget-object p3, Lcom/metamoji/nt/NtFeature;->ConvertTextToFont:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 189
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->isUseTextLineExtractSetting()Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/ui/dialog/TextSettings;->mUseTextLineEngine:Z

    .line 190
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/TextSettings;->checkEnabledTextLineExtractSettings()V

    .line 191
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_UseTextLineEngine:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    if-eqz p2, :cond_5

    .line 193
    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/TextSettings;->mUseTextLineEngine:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 194
    new-instance p3, Lcom/metamoji/ui/dialog/TextSettings$4;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/TextSettings$4;-><init>(Lcom/metamoji/ui/dialog/TextSettings;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    const/4 p2, 0x0

    .line 205
    iput p2, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelIndex:I

    .line 206
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getTextLineExtractLevelSetting()Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    move-result-object p3

    .line 207
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_Normal:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    const/4 v1, 0x1

    if-ne v0, p3, :cond_6

    .line 208
    iput v1, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelIndex:I

    goto :goto_1

    .line 209
    :cond_6
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_Low:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    if-ne v0, p3, :cond_7

    const/4 p2, 0x2

    .line 210
    iput p2, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelIndex:I

    goto :goto_1

    .line 212
    :cond_7
    iput p2, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelIndex:I

    .line 213
    :goto_1
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    if-eqz p2, :cond_8

    .line 214
    iget p3, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelIndex:I

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 216
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance p3, Lcom/metamoji/ui/dialog/TextSettings$5;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/TextSettings$5;-><init>(Lcom/metamoji/ui/dialog/TextSettings;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 226
    :cond_8
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->isMultiBoundCombine()Z

    move-result p2

    xor-int/2addr p2, v1

    iput-boolean p2, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractAllOneLine:Z

    .line 227
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_TextLine_AllSingle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    if-eqz p2, :cond_c

    .line 229
    iget-boolean p3, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractAllOneLine:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 230
    new-instance p3, Lcom/metamoji/ui/dialog/TextSettings$6;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/dialog/TextSettings$6;-><init>(Lcom/metamoji/ui/dialog/TextSettings;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    .line 240
    :cond_9
    sget p2, Lcom/metamoji/noteanytime/R$id;->textview_settings_textlinesettings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 242
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :cond_a
    sget p2, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_UseTextLineEngine:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_b

    .line 245
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    :cond_b
    sget p2, Lcom/metamoji/noteanytime/R$id;->SystemOptionGroup_TextLine_AllSingle:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_c

    .line 248
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    :cond_c
    :goto_2
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/TextSettings;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 4

    .line 258
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->isSpellCheckAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mCheckSpelling:Z

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->setCheckSpellingWhenTyping(Z)V

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mDispTextUnitDropShadow:Z

    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getDispTextUnitDropShadow()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 264
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mDispTextUnitDropShadow:Z

    invoke-static {v0}, Lcom/metamoji/un/text/UnTextUnit;->setDispTextUnitDropShadow(Z)V

    .line 268
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->ConvertTextToFont:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mUseTextLineEngine:Z

    invoke-static {v0}, Lcom/metamoji/tle/TextLineExtractorManager;->setUseTextLineExtractSetting(Z)V

    .line 273
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_High:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    .line 274
    iget v1, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractLevelIndex:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 279
    :cond_2
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_Low:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    goto :goto_0

    .line 276
    :cond_3
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_Normal:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    .line 282
    :goto_0
    invoke-static {v0}, Lcom/metamoji/tle/TextLineExtractorManager;->setTextLineExtractLevelSetting(Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;)V

    .line 285
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/TextSettings;->mTextLineExtractAllOneLine:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/metamoji/tle/TextLineExtractorManager;->setMulitiBoundCombine(Z)V

    .line 288
    :cond_4
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 306
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 307
    sget-object v0, Lcom/metamoji/ui/dialog/TextSettings;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
