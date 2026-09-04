.class public Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;
.super Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;
.source "RecognizeUserDictionaryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;
    }
.end annotation


# instance fields
.field mAutoLearnedCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

.field mAutoLearnings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mAutoLearningsUpdated:Z

.field mCheckedStrokesNum:I

.field mCurSelectCharIndex:I

.field mCurSelectPanel:Lcom/metamoji/mazec/ui/FlowLayout;

.field mDeleteButton:Landroid/widget/Button;

.field mRegisterdLeaningsUpdated:Z

.field mRegisteredCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

.field mRegisteredLearnings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mStrokesAdapter:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;

.field mStrokesChecked:[Z

.field mStrokesList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCurSelectCharIndex:I

    return-void
.end method

.method private clearStrokesList()V
    .locals 2

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesChecked:[Z

    const/4 v0, 0x0

    .line 255
    iput v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCheckedStrokesNum:I

    .line 256
    iget-object v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesAdapter:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;

    invoke-virtual {v1}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;->clear()V

    .line 258
    iget-object v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected deleteCheckedStrokes()V
    .locals 3

    const/4 v0, 0x0

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesChecked:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 279
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->getUserDictionary()Lcom/metamoji/mazec/RecognitionUserDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->startWaiting()V

    .line 283
    iget-object v2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesAdapter:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;

    invoke-virtual {v2, v0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/RecognitionUserDictionary;->deleteLearnedEntry(Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected learnedEntryDeleted(Lcom/metamoji/mazec/RecognitionUserDictionary;Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->stopWaiting()V

    .line 292
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->isWaiting()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    .line 293
    invoke-virtual {p2}, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->getError()I

    move-result p2

    if-eqz p2, :cond_0

    .line 294
    const-string/jumbo p2, "string.char_form_list_err_msg_faild_to_delete"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->showMessage(Ljava/lang/String;Z)V

    .line 297
    :cond_0
    iget-object p2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCurSelectPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisteredCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    if-ne p2, v0, :cond_1

    .line 298
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->updateRegisterdLearnings(Lcom/metamoji/mazec/RecognitionUserDictionary;)V

    return-void

    .line 300
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->updateAutoLearnings(Lcom/metamoji/mazec/RecognitionUserDictionary;)V

    :cond_2
    return-void
.end method

.method protected onClickStrokesAt(I)V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesChecked:[Z

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 263
    aget-boolean v1, v0, p1

    xor-int/lit8 v2, v1, 0x1

    .line 264
    aput-boolean v2, v0, p1

    .line 269
    iget p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCheckedStrokesNum:I

    const/4 v0, 0x1

    if-nez v1, :cond_0

    add-int/2addr p1, v0

    .line 267
    iput p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCheckedStrokesNum:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    .line 269
    iput p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCheckedStrokesNum:I

    .line 271
    :goto_0
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mDeleteButton:Landroid/widget/Button;

    iget v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCheckedStrokesNum:I

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 273
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesAdapter:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;

    invoke-virtual {p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string p1, "layout.recog_user_dict_list"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 53
    const-string v0, "dimen.recog_user_char_spacing"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 55
    const-string v0, "id.registerd_chars_panel"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/FlowLayout;

    iput-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisteredCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    .line 56
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/FlowLayout;->setHorizontalSpacing(I)V

    .line 57
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisteredCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/FlowLayout;->setVerticalSpacing(I)V

    .line 59
    const-string v0, "id.learned_chars_panel"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/FlowLayout;

    iput-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearnedCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    .line 60
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/FlowLayout;->setHorizontalSpacing(I)V

    .line 61
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearnedCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/FlowLayout;->setVerticalSpacing(I)V

    .line 63
    const-string p1, "id.recog_user_char_list_stroke_list"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesList:Landroid/widget/ListView;

    .line 64
    new-instance v0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;

    invoke-direct {v0, p0, p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;-><init>(Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesAdapter:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesList:Landroid/widget/ListView;

    new-instance v0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$1;-><init>(Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    const-string p1, "id.button_delete"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mDeleteButton:Landroid/widget/Button;

    .line 73
    new-instance v0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$2;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$2;-><init>(Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->initCommon()V

    return-void
.end method

.method protected selectCurrentChar()V
    .locals 4

    .line 191
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->isWaiting()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCurSelectPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    .line 196
    iget v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCurSelectCharIndex:I

    const/4 v2, 0x0

    .line 197
    iput-object v2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCurSelectPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    const/4 v2, -0x1

    .line 198
    iput v2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCurSelectCharIndex:I

    .line 200
    invoke-direct {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->clearStrokesList()V

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisteredCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/FlowLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisteredCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    goto :goto_0

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearnedCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/FlowLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 207
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearnedCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    :cond_3
    :goto_0
    move v1, v2

    :cond_4
    if-eqz v0, :cond_7

    if-gez v1, :cond_5

    goto :goto_1

    .line 214
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getChildCount()I

    move-result v2

    if-gt v2, v1, :cond_6

    .line 215
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->getChildCount()I

    move-result v2

    goto :goto_1

    :cond_6
    move v2, v1

    .line 218
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->selectCurrentChar(Lcom/metamoji/mazec/ui/FlowLayout;I)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected selectCurrentChar(Lcom/metamoji/mazec/ui/FlowLayout;I)V
    .locals 2

    if-ltz p2, :cond_3

    .line 223
    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/FlowLayout;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCurSelectPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    if-ne v0, p1, :cond_0

    iget v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCurSelectCharIndex:I

    if-eq v1, p2, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    .line 226
    iget v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCurSelectCharIndex:I

    if-ltz v1, :cond_1

    .line 227
    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 230
    :cond_1
    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCurSelectPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    .line 231
    iput p2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCurSelectCharIndex:I

    .line 233
    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/ui/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/ui/RecognizeUserCharView;

    const/4 p2, 0x1

    .line 234
    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->setSelected(Z)V

    .line 236
    iget-object p2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mCurSelectPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisteredCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisteredLearnings:Ljava/util/Map;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearnings:Ljava/util/Map;

    .line 237
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->updateStrokesList(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method protected setupLanguage()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryBaseActivity;->setupLanguage()V

    .line 87
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->getUserDictionary()Lcom/metamoji/mazec/RecognitionUserDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$3;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$3;-><init>(Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/RecognitionUserDictionary;->addResultReceiver(Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiver;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->updateRegisterdLearnings(Lcom/metamoji/mazec/RecognitionUserDictionary;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->updateAutoLearnings(Lcom/metamoji/mazec/RecognitionUserDictionary;)V

    :cond_0
    return-void
.end method

.method protected updateAutoLearnings(Lcom/metamoji/mazec/RecognitionUserDictionary;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearnedCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->removeAllViews()V

    .line 119
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearnings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearningsUpdated:Z

    .line 124
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->startWaiting()V

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->getLearnedEntries(I)V

    return-void
.end method

.method protected updateCharsPanel(Lcom/metamoji/mazec/ui/FlowLayout;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/ui/FlowLayout;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/FlowLayout;->removeAllViews()V

    .line 169
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 171
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 173
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, p2, v3

    .line 175
    new-instance v6, Lcom/metamoji/mazec/ui/RecognizeUserCharView;

    invoke-direct {v6, p0}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {v6, v5}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->setText(Ljava/lang/String;)V

    const/4 v7, -0x1

    .line 177
    invoke-static {p0, v5, v2, v7, v0}, Lcom/metamoji/mazec/ui/HwrCandidatesView;->getBkColor(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->setCategoryColor(I)V

    const/4 v5, 0x1

    .line 178
    invoke-virtual {v6, v5}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->setClickable(Z)V

    .line 179
    new-instance v7, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$4;

    invoke-direct {v7, p0, p1, v4}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$4;-><init>(Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;Lcom/metamoji/mazec/ui/FlowLayout;I)V

    invoke-virtual {v6, v7}, Lcom/metamoji/mazec/ui/RecognizeUserCharView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {p1, v6}, Lcom/metamoji/mazec/ui/FlowLayout;->addView(Landroid/view/View;)V

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateRegisterdLearnings(Lcom/metamoji/mazec/RecognitionUserDictionary;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisteredCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/FlowLayout;->removeAllViews()V

    .line 108
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisteredLearnings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisterdLeaningsUpdated:Z

    .line 113
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->startWaiting()V

    const/4 v0, 0x2

    .line 114
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->getLearnedEntries(I)V

    return-void
.end method

.method protected updateRegisteredLearningInfo(Lcom/metamoji/mazec/RecognitionUserDictionary;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/RecognitionUserDictionary;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_3

    .line 130
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    .line 131
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->getLearningType()I

    move-result p1

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    .line 134
    invoke-virtual {v2}, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->getCharacter()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    .line 137
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    const/4 v2, 0x1

    if-ne p1, p2, :cond_2

    .line 143
    iput-object v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisteredLearnings:Ljava/util/Map;

    .line 144
    iput-boolean v2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisterdLeaningsUpdated:Z

    goto :goto_1

    .line 146
    :cond_2
    iput-object v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearnings:Ljava/util/Map;

    .line 147
    iput-boolean v2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearningsUpdated:Z

    .line 150
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->stopWaiting()V

    .line 152
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->isWaiting()Z

    move-result p1

    if-nez p1, :cond_6

    .line 153
    iget-boolean p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisterdLeaningsUpdated:Z

    if-eqz p1, :cond_4

    .line 154
    iput-boolean v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisterdLeaningsUpdated:Z

    .line 155
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisteredCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    iget-object p2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mRegisteredLearnings:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->updateCharsPanel(Lcom/metamoji/mazec/ui/FlowLayout;Ljava/util/Map;)V

    .line 157
    :cond_4
    iget-boolean p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearningsUpdated:Z

    if-eqz p1, :cond_5

    .line 158
    iput-boolean v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearningsUpdated:Z

    .line 159
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearnedCharsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    iget-object p2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mAutoLearnings:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->updateCharsPanel(Lcom/metamoji/mazec/ui/FlowLayout;Ljava/util/Map;)V

    .line 162
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->selectCurrentChar()V

    :cond_6
    return-void
.end method

.method protected updateStrokesList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;",
            ">;)V"
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->clearStrokesList()V

    if-eqz p1, :cond_0

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesChecked:[Z

    .line 247
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    .line 248
    iget-object v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->mStrokesAdapter:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$StrokesAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
