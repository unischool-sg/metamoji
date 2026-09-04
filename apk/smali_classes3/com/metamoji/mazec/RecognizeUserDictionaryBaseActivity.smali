.class public Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;
.super Landroid/app/Activity;
.source "RecognizeUserDictionaryBaseActivity.java"

# interfaces
.implements Lcom/metamoji/mazec/LangResouceManager$Listener;


# instance fields
.field private mLang:Ljava/lang/String;

.field private mProgressOverlay:Landroid/view/View;

.field private mUserDic:Lcom/metamoji/mazec/RecognitionUserDictionary;

.field private mWaitCounter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mWaitCounter:I

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mLang:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDictionary()Lcom/metamoji/mazec/RecognitionUserDictionary;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mUserDic:Lcom/metamoji/mazec/RecognitionUserDictionary;

    return-object v0
.end method

.method protected initCommon()V
    .locals 2

    .line 20
    const-string v0, "id.progress_overlay"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mProgressOverlay:Landroid/view/View;

    const/16 v1, 0x8

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mProgressOverlay:Landroid/view/View;

    new-instance v1, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity$1;-><init>(Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 29
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->initLanguage()V

    return-void
.end method

.method protected initLanguage()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mLang:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mUserDic:Lcom/metamoji/mazec/RecognitionUserDictionary;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->setupLanguage()V

    return-void
.end method

.method public initialLanguagesInstalled()V
    .locals 1

    .line 116
    invoke-static {p0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p0}, Lcom/metamoji/mazec/LangResouceManager;->removeListener(Lcom/metamoji/mazec/LangResouceManager$Listener;)V

    .line 119
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->stopWaiting()V

    .line 121
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->setupLanguage()V

    return-void
.end method

.method protected isWaiting()Z
    .locals 1

    .line 142
    iget v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mWaitCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mUserDic:Lcom/metamoji/mazec/RecognitionUserDictionary;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->dispose()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mUserDic:Lcom/metamoji/mazec/RecognitionUserDictionary;

    .line 71
    :cond_0
    iget v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mWaitCounter:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mWaitCounter:I

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->stopWaiting()V

    .line 75
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->initLanguage()V

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected setupLanguage()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mUserDic:Lcom/metamoji/mazec/RecognitionUserDictionary;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->dispose()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mUserDic:Lcom/metamoji/mazec/RecognitionUserDictionary;

    .line 105
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    const-string v1, "input_language"

    sget-object v2, Lcom/metamoji/mazec/MazecConfig;->DEFAULT_LANG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mLang:Ljava/lang/String;

    .line 107
    invoke-static {v0, p0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->isAvailable(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mLang:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->create(Ljava/lang/String;Landroid/content/Context;)Lcom/metamoji/mazec/RecognitionUserDictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mUserDic:Lcom/metamoji/mazec/RecognitionUserDictionary;

    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->finish()V

    return-void
.end method

.method protected showMessage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->showMessage(Ljava/lang/String;Z)V

    return-void
.end method

.method protected showMessage(Ljava/lang/String;Z)V
    .locals 2

    .line 149
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string/jumbo v0, "string.dialog_button_ok"

    .line 151
    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 155
    new-instance p2, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity$2;

    invoke-direct {p2, p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity$2;-><init>(Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method protected startWaiting()V
    .locals 2

    .line 125
    iget v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mWaitCounter:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mWaitCounter:I

    .line 127
    iget-object v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mProgressOverlay:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_0
    iget v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mWaitCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mWaitCounter:I

    return-void
.end method

.method protected stopWaiting()V
    .locals 2

    .line 133
    iget v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mWaitCounter:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 134
    iput v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mWaitCounter:I

    if-gtz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->mProgressOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
