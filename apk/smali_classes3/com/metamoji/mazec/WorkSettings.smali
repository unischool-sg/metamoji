.class public Lcom/metamoji/mazec/WorkSettings;
.super Ljava/lang/Object;
.source "WorkSettings.java"


# static fields
.field public static final KEY_AUTO_INSERT:Ljava/lang/String; = "MMJWorkSettingsAutoInsert"

.field public static final KEY_AUTO_SCROLL:Ljava/lang/String; = "MMJWorkSettingsAutoScroll"

.field public static final KEY_AUTO_SCROLL_DELAY_INTERVAL:Ljava/lang/String; = "MMJWorkSettingsAutoScrollDelayInterval"

.field public static final KEY_AUTO_SCROLL_REGION_WIDTH:Ljava/lang/String; = "MMJWorkSettingsAutoScrollRegionWidth"

.field public static final KEY_CONVERSION_LEARNING_ENABLED:Ljava/lang/String; = "MMJWorkSettingsConversionLearningEnabled"

.field public static final KEY_CONVERSION_MODE:Ljava/lang/String; = "MMJWorkSettingsConversionMode"

.field public static final KEY_HANDWRITING_HEIGHT:Ljava/lang/String; = "MMJWorkSettingsHandwritingHeight"

.field public static final KEY_INPUT_MODE:Ljava/lang/String; = "MMJWorkSettingsInputMode"

.field public static final KEY_JP_SPACE_DEFAULT:Ljava/lang/String; = "MMJWorkSettingsJpSpaceDefault"

.field public static final KEY_KANJI_RECOGNITION_MODE:Ljava/lang/String; = "MMJWorkSettingsKanjiRecognitionMode"

.field public static final KEY_LANGUAGE:Ljava/lang/String; = "MMJWorkSettingsLanguage"

.field public static final KEY_RECOGNITION_FILTER:Ljava/lang/String; = "MMJWorkSettingsRecognitionFilter"

.field public static final KEY_RECOG_LEARNING_ENABLED:Ljava/lang/String; = "MMJWorkSettingsImplicitRecogLearningEnabled"

.field public static final KEY_SCHOOL_YEAR:Ljava/lang/String; = "MMJWorkSettingsSchoolYear"

.field public static final KEY_WORD_SPLIT_SPACE_RATIO:Ljava/lang/String; = "MMJWorkSettingsWordSplitSpaceRatio"

.field public static final KEy_AUTO_INSERT_DELAY_INTERVAL:Ljava/lang/String; = "MMJWorkSettingsAutoInsertDelayInterval"

.field public static final VAL_CONVERSION_MODE_DEFAULT:Ljava/lang/String; = "MMJImConversionModeDefault"

.field public static final VAL_CONVERSON_MODE_ONLY_RECOGNIZED:Ljava/lang/String; = "MMJImConversionModeOnlyRecognizedText"

.field public static final VAL_KANJI_RECOGNITION_MODE_DEFAULT:Ljava/lang/String; = "MMJImKanjiRecognitionModeDefault"

.field public static final VAL_KANJI_RECOGNITION_MODE_LEARNED_PRECEDE:Ljava/lang/String; = "MMJImKanjiRecognitionModelLearnedPreced"

.field public static final VAL_KANJI_RECOGNITION_MODE_ONLY_LEARNED:Ljava/lang/String; = "MMJImKanjiRecognitionModeOnlyLearned"

.field public static final VAL_SCHOOL_YEAR_ELEMENTARY1:Ljava/lang/String; = "MMJImSchoolYearShogaku1"

.field public static final VAL_SCHOOL_YEAR_ELEMENTARY2:Ljava/lang/String; = "MMJImSchoolYearShogaku2"

.field public static final VAL_SCHOOL_YEAR_ELEMENTARY3:Ljava/lang/String; = "MMJImSchoolYearShogaku3"

.field public static final VAL_SCHOOL_YEAR_ELEMENTARY4:Ljava/lang/String; = "MMJImSchoolYearShogaku4"

.field public static final VAL_SCHOOL_YEAR_ELEMENTARY5:Ljava/lang/String; = "MMJImSchoolYearShogaku5"

.field public static final VAL_SCHOOL_YEAR_ELEMENTARY6:Ljava/lang/String; = "MMJImSchoolYearShogaku6"

.field public static final VAL_SCHOOL_YEAR_JUNIOR_HIGH:Ljava/lang/String; = "MMJImSchoolYearChugaku"

.field public static final VAL_SCHOOL_YEAR_UNSCPECIFIED:Ljava/lang/String; = "MMJImSchoolYearUnspecified"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static conversinMode2string(I)Ljava/lang/String;
    .locals 0

    .line 52
    const-string p0, "MMJImConversionModeOnlyRecognizedText"

    return-object p0
.end method

.method public static kanjiRecognitionMode2string(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 89
    const-string p0, "MMJImKanjiRecognitionModeDefault"

    return-object p0

    .line 87
    :cond_0
    const-string p0, "MMJImKanjiRecognitionModelLearnedPreced"

    return-object p0

    .line 84
    :cond_1
    const-string p0, "MMJImKanjiRecognitionModeOnlyLearned"

    return-object p0
.end method

.method public static schoolYear2string(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 150
    const-string p0, "MMJImSchoolYearUnspecified"

    return-object p0

    .line 148
    :pswitch_0
    const-string p0, "MMJImSchoolYearChugaku"

    return-object p0

    .line 145
    :pswitch_1
    const-string p0, "MMJImSchoolYearShogaku6"

    return-object p0

    .line 142
    :pswitch_2
    const-string p0, "MMJImSchoolYearShogaku5"

    return-object p0

    .line 139
    :pswitch_3
    const-string p0, "MMJImSchoolYearShogaku4"

    return-object p0

    .line 136
    :pswitch_4
    const-string p0, "MMJImSchoolYearShogaku3"

    return-object p0

    .line 133
    :pswitch_5
    const-string p0, "MMJImSchoolYearShogaku2"

    return-object p0

    .line 130
    :pswitch_6
    const-string p0, "MMJImSchoolYearShogaku1"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static string2conversionMode(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 59
    const-string v0, "MMJImConversionModeOnlyRecognizedText"

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static string2kanjiRecognitionMode(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_1

    .line 95
    const-string v0, "MMJImKanjiRecognitionModeOnlyLearned"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 97
    :cond_0
    const-string v0, "MMJImKanjiRecognitionModelLearnedPreced"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static string2schoolYear(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_6

    .line 156
    const-string v0, "MMJImSchoolYearShogaku1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 158
    :cond_0
    const-string v0, "MMJImSchoolYearShogaku2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 160
    :cond_1
    const-string v0, "MMJImSchoolYearShogaku3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 162
    :cond_2
    const-string v0, "MMJImSchoolYearShogaku4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    .line 164
    :cond_3
    const-string v0, "MMJImSchoolYearShogaku5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x5

    return p0

    .line 166
    :cond_4
    const-string v0, "MMJImSchoolYearShogaku6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x6

    return p0

    .line 168
    :cond_5
    const-string v0, "MMJImSchoolYearChugaku"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
