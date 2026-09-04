.class public Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;
.super Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;
.source "RecognizeUserDictionaryAddCharFormActivity.java"


# static fields
.field public static final KEY_STROKES:Ljava/lang/String; = "strokes"


# instance fields
.field private mCharForStrokes:Landroid/widget/EditText;

.field private mGuideText:Landroid/widget/TextView;

.field private mStrokeView:Lcom/metamoji/mazec/ui/StrokeView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearStrokes()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mStrokeView:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/StrokeView;->clearStrokes()V

    return-void
.end method

.method protected learnCharHasDone(Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->stopWaiting()V

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->getError()I

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->finish()V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 178
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->getError()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 181
    :cond_1
    const-string/jumbo p1, "string.char_form_err_msg_same_strokes"

    goto :goto_1

    .line 184
    :cond_2
    const-string/jumbo p1, "string.char_form_err_msg_invalid_char"

    goto :goto_1

    .line 188
    :cond_3
    :goto_0
    const-string/jumbo p1, "string.char_form_err_msg_faild"

    :goto_1
    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->showMessage(Ljava/lang/String;Z)V

    return-void
.end method

.method protected learnCharNumberHasGotten(IIII)V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->stopWaiting()V

    if-lt p3, p4, :cond_0

    .line 117
    const-string/jumbo p1, "string.char_form_err_msg_exceed_limit"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->showMessage(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const-string p1, "layout.recog_user_dict_add_char_form"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->initCommon()V

    .line 39
    const-string p1, "id.stroke_view"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/ui/StrokeView;

    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mStrokeView:Lcom/metamoji/mazec/ui/StrokeView;

    .line 40
    const-string p1, "id.guide_text"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mGuideText:Landroid/widget/TextView;

    .line 41
    const-string p1, "id.char_for_strokes"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mCharForStrokes:Landroid/widget/EditText;

    .line 43
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mStrokeView:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/StrokeView;->getStrokesModel()Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object p1

    new-instance v0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$1;-><init>(Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->addListener(Lcom/metamoji/mazec/ui/HwStrokeListener;)V

    .line 49
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mCharForStrokes:Landroid/widget/EditText;

    new-instance v0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$2;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$2;-><init>(Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 65
    const-string p1, "id.button_clear"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 66
    new-instance v0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$3;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$3;-><init>(Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const-string p1, "id.button_register"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 73
    new-instance v0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$4;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$4;-><init>(Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "strokes"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazecapi/StrokesAndStyles;

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/metamoji/mazecapi/StrokesAndStyles;->getStrokesList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/mazec/stroke/StrokeUtil;->convertStrokesListFromNA(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 82
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 83
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mStrokeView:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/StrokeView;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->setStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    .line 84
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mStrokeView:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/StrokeView;->setStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)V

    .line 85
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mStrokeView:Lcom/metamoji/mazec/ui/StrokeView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/StrokeView;->setHorizentalCenterring(Z)V

    .line 87
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mCharForStrokes:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected registerStrokes()V
    .locals 6

    .line 132
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->getUserDictionary()Lcom/metamoji/mazec/RecognitionUserDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->isWaiting()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mStrokeView:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/StrokeView;->getStrokes()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 146
    const-string/jumbo v0, "string.char_form_err_msg_no_strokes"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->showMessage(Ljava/lang/String;Z)V

    return-void

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mCharForStrokes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 154
    const-string/jumbo v0, "string.char_form_err_msg_no_char"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->showMessage(Ljava/lang/String;Z)V

    return-void

    :cond_3
    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 159
    const-string/jumbo v0, "string.char_form_err_msg_char_length"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->showMessage(Ljava/lang/String;Z)V

    return-void

    .line 163
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->startWaiting()V

    const/4 v3, 0x2

    .line 165
    invoke-static {p0}, Lcom/metamoji/mazec/MazecConfig;->getRecogLearningDeviceTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/metamoji/mazec/RecognitionUserDictionary;->learnChar(ILjava/lang/String;Lcom/metamoji/mazec/stroke/HwStrokes;Ljava/lang/String;)V

    return-void
.end method

.method protected setupLanguage()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->setupLanguage()V

    .line 95
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->getUserDictionary()Lcom/metamoji/mazec/RecognitionUserDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v1, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$5;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$5;-><init>(Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/RecognitionUserDictionary;->addResultReceiver(Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiver;)V

    .line 108
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->startWaiting()V

    .line 109
    invoke-virtual {v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->getLearnCharNumber()V

    :cond_0
    return-void
.end method

.method protected strokesChanged()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mStrokeView:Lcom/metamoji/mazec/ui/StrokeView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/StrokeView;->getStrokesModel()Lcom/metamoji/mazec/ui/HwStrokesModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HwStrokesModel;->hasStrokes()Z

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
