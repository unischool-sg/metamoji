.class public Lcom/metamoji/mazec/MazecPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MazecPreferenceActivity.java"

# interfaces
.implements Lcom/metamoji/mazec/LangResouceManager$Listener;
.implements Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;


# static fields
.field private static final ONLINE_HELP_URI:Ljava/lang/String; = "https://product.metamoji.com/android_top/mazec3/support/help/"


# instance fields
.field private mAddUserCharFormPreference:Landroid/preference/PreferenceScreen;

.field private mAddUserCharFormPreferenceOrder:I

.field private mClearLearnDictionaryPreference:Lcom/metamoji/mazec/ui/ClearLearnDictionaryDialogPreference;

.field private mClearRecognitionUserDictionaryPreference:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

.field private mClearRecognitionUserDictionaryPreferenceOrder:I

.field private mLearnRecognitionPreference:Landroid/preference/CheckBoxPreference;

.field private mLearnRecognitionPreferenceOrder:I

.field private mLearnWordPreference:Landroid/preference/CheckBoxPreference;

.field private mListUserCharFormPreference:Landroid/preference/PreferenceScreen;

.field private mListUserCharFormPreferenceOrder:I

.field private mRecogUserDict:Lcom/metamoji/mazec/RecognitionUserDictionary;

.field private mUserDictAddWordPreference:Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;

.field private mUserWordListPreference:Landroid/preference/PreferenceScreen;

.field private mWordspacingPreference:Lcom/metamoji/mazec/ui/WordspacingCoefSeekBarDialogPreference;

.field private mWordspacingPreferenceOrder:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmListUserCharFormPreference(Lcom/metamoji/mazec/MazecPreferenceActivity;)Landroid/preference/PreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mListUserCharFormPreference:Landroid/preference/PreferenceScreen;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mRecogUserDict:Lcom/metamoji/mazec/RecognitionUserDictionary;

    return-void
.end method

.method private checkRecognitionUserDictionary(Ljava/lang/String;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mRecogUserDict:Lcom/metamoji/mazec/RecognitionUserDictionary;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mRecogUserDict:Lcom/metamoji/mazec/RecognitionUserDictionary;

    invoke-virtual {v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->dispose()V

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mRecogUserDict:Lcom/metamoji/mazec/RecognitionUserDictionary;

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mRecogUserDict:Lcom/metamoji/mazec/RecognitionUserDictionary;

    if-nez v0, :cond_1

    .line 399
    invoke-static {p1, p0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->create(Ljava/lang/String;Landroid/content/Context;)Lcom/metamoji/mazec/RecognitionUserDictionary;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mRecogUserDict:Lcom/metamoji/mazec/RecognitionUserDictionary;

    .line 400
    new-instance v0, Lcom/metamoji/mazec/MazecPreferenceActivity$5;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/MazecPreferenceActivity$5;-><init>(Lcom/metamoji/mazec/MazecPreferenceActivity;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->addResultReceiver(Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiver;)V

    .line 407
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mRecogUserDict:Lcom/metamoji/mazec/RecognitionUserDictionary;

    if-eqz p1, :cond_2

    .line 408
    invoke-virtual {p1}, Lcom/metamoji/mazec/RecognitionUserDictionary;->getLearnCharNumber()V

    :cond_2
    return-void
.end method


# virtual methods
.method public initialLanguagesInstalled()V
    .locals 1

    .line 388
    invoke-static {p0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    .line 389
    invoke-virtual {v0, p0}, Lcom/metamoji/mazec/LangResouceManager;->removeListener(Lcom/metamoji/mazec/LangResouceManager$Listener;)V

    .line 390
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferenceActivity;->updateLangSettings()V

    return-void
.end method

.method public languagesUpdated()V
    .locals 0

    .line 414
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferenceActivity;->updateLangSettings()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const-string/jumbo p1, "xml.mazec_preference"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecPreferenceActivity;->addPreferencesFromResource(I)V

    .line 77
    const-string p1, "mazec_preference_main"

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceScreen;

    .line 78
    const-string/jumbo v0, "wordspacing_coef"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/WordspacingCoefSeekBarDialogPreference;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mWordspacingPreference:Lcom/metamoji/mazec/ui/WordspacingCoefSeekBarDialogPreference;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/WordspacingCoefSeekBarDialogPreference;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mWordspacingPreferenceOrder:I

    .line 81
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mWordspacingPreference:Lcom/metamoji/mazec/ui/WordspacingCoefSeekBarDialogPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    :cond_0
    const-string p1, "category_learning"

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    .line 85
    const-string v0, "learn_conversion_enabled"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mLearnWordPreference:Landroid/preference/CheckBoxPreference;

    .line 86
    const-string v0, "pref_key_clear_learn_dictionary"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/ClearLearnDictionaryDialogPreference;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mClearLearnDictionaryPreference:Lcom/metamoji/mazec/ui/ClearLearnDictionaryDialogPreference;

    .line 87
    const-string v0, "learn_recognition_enabled"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mLearnRecognitionPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mLearnRecognitionPreferenceOrder:I

    .line 90
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mLearnRecognitionPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 92
    :cond_1
    const-string v0, "pref_key_clear_learn_recognition"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mClearRecognitionUserDictionaryPreference:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v0, p0}, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->addListener(Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;)V

    .line 95
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mClearRecognitionUserDictionaryPreference:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mClearRecognitionUserDictionaryPreferenceOrder:I

    .line 96
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mClearRecognitionUserDictionaryPreference:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    :cond_2
    const-string p1, "category_dictionary"

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    .line 100
    const-string v0, "pref_key_add_user_word"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mUserDictAddWordPreference:Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;

    .line 101
    invoke-virtual {v0, p0}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->addListener(Lcom/metamoji/mazec/ui/UpdateLangDialogPreference$Listener;)V

    .line 102
    const-string v0, "pref_key_user_word_list"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mUserWordListPreference:Landroid/preference/PreferenceScreen;

    .line 104
    const-string v0, "pref_key_add_user_char_form"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mAddUserCharFormPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mAddUserCharFormPreferenceOrder:I

    .line 107
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mAddUserCharFormPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    :cond_3
    const-string v0, "pref_key_user_char_form_list"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mListUserCharFormPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mListUserCharFormPreferenceOrder:I

    .line 112
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mListUserCharFormPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    :cond_4
    const-string v0, "pref_key_update_dictionaries"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 116
    sget-boolean v1, Lcom/metamoji/mazec/BuildConfig;->SUPPORT_IN_APP_BILLING:Z

    if-nez v1, :cond_5

    .line 119
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 121
    :cond_5
    new-instance p1, Lcom/metamoji/mazec/MazecPreferenceActivity$1;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/MazecPreferenceActivity$1;-><init>(Lcom/metamoji/mazec/MazecPreferenceActivity;)V

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 129
    :goto_0
    const-string p1, "category_help"

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/MazecPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    .line 131
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "pref_key_test_cate"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 235
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 240
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 242
    invoke-virtual {p0}, Lcom/metamoji/mazec/MazecPreferenceActivity;->updateLangSettings()V

    .line 246
    const-string v0, "mazec_preference_main"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 248
    const-string v1, "fullscreen_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 356
    const-string v0, "mazec_preference_main"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 357
    iget-object v1, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mWordspacingPreference:Lcom/metamoji/mazec/ui/WordspacingCoefSeekBarDialogPreference;

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    :cond_0
    const-string v0, "category_learning"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 363
    iget-object v1, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mLearnRecognitionPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 364
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mClearRecognitionUserDictionaryPreference:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

    if-eqz v1, :cond_2

    .line 367
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 371
    :cond_2
    const-string v0, "category_dictionary"

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/MazecPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 372
    iget-object v1, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mAddUserCharFormPreference:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    .line 373
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    :cond_3
    iget-object v1, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mListUserCharFormPreference:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_4

    .line 376
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    :cond_4
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mRecogUserDict:Lcom/metamoji/mazec/RecognitionUserDictionary;

    if-eqz v0, :cond_5

    .line 380
    invoke-virtual {v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->dispose()V

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mRecogUserDict:Lcom/metamoji/mazec/RecognitionUserDictionary;

    .line 384
    :cond_5
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method

.method public updateLangSettings()V
    .locals 9

    .line 259
    invoke-static {p0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    .line 261
    const-string v1, "mazec_preference_main"

    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/MazecPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 263
    invoke-virtual {v0, v2, v3}, Lcom/metamoji/mazec/LangResouceManager;->isLatinAvailable(ZZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    iget-object v4, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mWordspacingPreference:Lcom/metamoji/mazec/ui/WordspacingCoefSeekBarDialogPreference;

    if-eqz v4, :cond_0

    .line 265
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 266
    iget-object v1, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mWordspacingPreference:Lcom/metamoji/mazec/ui/WordspacingCoefSeekBarDialogPreference;

    iget v4, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mWordspacingPreferenceOrder:I

    invoke-virtual {v1, v4}, Lcom/metamoji/mazec/ui/WordspacingCoefSeekBarDialogPreference;->setOrder(I)V

    .line 270
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 271
    const-string v4, "input_language"

    sget-object v5, Lcom/metamoji/mazec/MazecConfig;->DEFAULT_LANG:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual {v0, v2, v3}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object v4

    .line 274
    invoke-static {v4}, Lcom/metamoji/mazec/MazecConfig;->isRecognitionLearningAvailable(Ljava/util/List;)Z

    move-result v4

    .line 276
    invoke-virtual {v0, v2, v3}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object v5

    .line 277
    invoke-static {v5}, Lcom/metamoji/mazec/MazecConfig;->isRecognitionLearningAvailable(Ljava/util/List;)Z

    move-result v6

    .line 278
    invoke-static {v5}, Lcom/metamoji/mazec/MazecConfig;->isLearningWordAvailable(Ljava/util/List;)Z

    move-result v5

    .line 281
    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/mazec/LangResouceManager;->isAvailable(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 283
    invoke-static {v1}, Lcom/metamoji/mazec/MazecConfig;->isRecognitionLearningAvailable(Ljava/lang/String;)Z

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 286
    invoke-static {v1}, Lcom/metamoji/mazec/MazecConfig;->isUserWordAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v3

    .line 289
    :goto_1
    const-string v5, "category_learning"

    invoke-virtual {p0, v5}, Lcom/metamoji/mazec/MazecPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 290
    iget-object v7, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mLearnWordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 291
    iget-object v7, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mClearLearnDictionaryPreference:Lcom/metamoji/mazec/ui/ClearLearnDictionaryDialogPreference;

    invoke-virtual {v7, v0}, Lcom/metamoji/mazec/ui/ClearLearnDictionaryDialogPreference;->setEnabled(Z)V

    .line 292
    iget-object v7, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mLearnRecognitionPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_3

    if-eqz v4, :cond_3

    .line 294
    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    iget-object v7, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mLearnRecognitionPreference:Landroid/preference/CheckBoxPreference;

    iget v8, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mLearnRecognitionPreferenceOrder:I

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 296
    iget-object v7, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mLearnRecognitionPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 299
    :cond_3
    iget-object v7, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mClearRecognitionUserDictionaryPreference:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

    if-eqz v7, :cond_4

    if-eqz v4, :cond_4

    .line 301
    invoke-virtual {v5, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 302
    iget-object v5, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mClearRecognitionUserDictionaryPreference:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

    iget v7, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mClearRecognitionUserDictionaryPreferenceOrder:I

    invoke-virtual {v5, v7}, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->setOrder(I)V

    .line 303
    iget-object v5, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mClearRecognitionUserDictionaryPreference:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

    invoke-virtual {v5, v6}, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->setEnabled(Z)V

    .line 307
    :cond_4
    const-string v5, "category_dictionary"

    invoke-virtual {p0, v5}, Lcom/metamoji/mazec/MazecPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_7

    .line 311
    invoke-static {p0, v1}, Lcom/metamoji/mazec/converter/ConvertEngine;->createConverter(Landroid/content/Context;Ljava/lang/String;)Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 313
    invoke-virtual {v0}, Lcom/metamoji/mazec/converter/ConvertEngine;->userWords()[Lcom/metamoji/mazec/converter/MmjiWord;

    move-result-object v7

    array-length v7, v7

    const/16 v8, 0x7d0

    if-ge v7, v8, :cond_5

    move v8, v2

    goto :goto_2

    :cond_5
    move v8, v3

    :goto_2
    if-lez v7, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    .line 316
    :goto_3
    invoke-virtual {v0}, Lcom/metamoji/mazec/converter/ConvertEngine;->destroy()V

    goto :goto_4

    :cond_7
    move v2, v3

    move v8, v2

    .line 319
    :goto_4
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mUserDictAddWordPreference:Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;

    if-eqz v0, :cond_8

    .line 320
    invoke-virtual {v0, v8}, Lcom/metamoji/mazec/ui/UserDictionaryAddWordDialogPreference;->setEnabled(Z)V

    .line 322
    :cond_8
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mUserWordListPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_9

    .line 323
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 324
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mUserWordListPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v2, Lcom/metamoji/mazec/UserDictionaryActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 327
    :cond_9
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mAddUserCharFormPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_a

    if-eqz v4, :cond_a

    .line 329
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 330
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mAddUserCharFormPreference:Landroid/preference/PreferenceScreen;

    iget v2, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mAddUserCharFormPreferenceOrder:I

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 331
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mAddUserCharFormPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mAddUserCharFormPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v2, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 335
    :cond_a
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mListUserCharFormPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_b

    if-eqz v4, :cond_b

    .line 337
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 338
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mListUserCharFormPreference:Landroid/preference/PreferenceScreen;

    iget v2, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mListUserCharFormPreferenceOrder:I

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 339
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mListUserCharFormPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/metamoji/mazec/MazecPreferenceActivity;->mListUserCharFormPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v2, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz v6, :cond_b

    .line 342
    invoke-direct {p0, v1}, Lcom/metamoji/mazec/MazecPreferenceActivity;->checkRecognitionUserDictionary(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
