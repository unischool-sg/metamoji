.class public Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;
.super Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;
.source "ClearRecognitionUserDictionaryDialogPreference.java"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mUserRecogDictCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 5

    if-eqz p1, :cond_1

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->mUserRecogDictCount:I

    .line 30
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 32
    invoke-virtual {v1, v2, v2}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 33
    invoke-static {v3}, Lcom/metamoji/mazec/MazecConfig;->isRecognitionLearningAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    invoke-static {v3, v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->create(Ljava/lang/String;Landroid/content/Context;)Lcom/metamoji/mazec/RecognitionUserDictionary;

    move-result-object v3

    .line 35
    iget v4, p0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->mUserRecogDictCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->mUserRecogDictCount:I

    .line 36
    new-instance v4, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;

    invoke-direct {v4, p0}, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;-><init>(Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/mazec/RecognitionUserDictionary;->addResultReceiver(Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiver;)V

    .line 52
    invoke-virtual {v3}, Lcom/metamoji/mazec/RecognitionUserDictionary;->clearImplicitLearnChars()V

    goto :goto_0

    .line 56
    :cond_1
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/UpdateLangDialogPreference;->onDialogClosed(Z)V

    return-void
.end method
