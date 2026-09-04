.class public Lcom/metamoji/mazec/RecognitionUserDictionary;
.super Ljava/lang/Object;
.source "RecognitionUserDictionary.java"

# interfaces
.implements Lcom/metamoji/mazec/util/MessageHandler;


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLang:Ljava/lang/String;

.field private mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

.field private mResultReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmResultReceivers(Lcom/metamoji/mazec/RecognitionUserDictionary;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mResultReceivers:Ljava/util/List;

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mResultReceivers:Ljava/util/List;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    .line 38
    invoke-static {p1, p2}, Lcom/metamoji/mazec/RecognitionUserDictionary;->isAvailable(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iput-object p1, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mLang:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mCtx:Landroid/content/Context;

    return-void

    .line 39
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Recognition user dictionary is not available for language %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static create(Ljava/lang/String;Landroid/content/Context;)Lcom/metamoji/mazec/RecognitionUserDictionary;
    .locals 1

    .line 32
    invoke-static {p0, p1}, Lcom/metamoji/mazec/RecognitionUserDictionary;->isAvailable(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    new-instance v0, Lcom/metamoji/mazec/RecognitionUserDictionary;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/mazec/RecognitionUserDictionary;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method private getRecognizer(Ljava/lang/String;)Lcom/metamoji/mazec/recognizer/HwRecognizer;
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mCtx:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->createRecognizer(Landroid/content/Context;ILjava/lang/String;)Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    return-object p1
.end method

.method public static isAvailable(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 72
    :cond_0
    const-string v1, "ja_JP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-static {p1}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1, v1}, Lcom/metamoji/mazec/LangResouceManager;->isAvailable(Ljava/lang/String;ZZ)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static isAvailable(Ljava/util/List;Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .line 83
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-static {v0, p1}, Lcom/metamoji/mazec/RecognitionUserDictionary;->isAvailable(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private notifyClearImplicitLearnCharsResult(I)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/mazec/RecognitionUserDictionary$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/mazec/RecognitionUserDictionary$1;-><init>(Lcom/metamoji/mazec/RecognitionUserDictionary;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyDeleteLearnedEntryResult(Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/mazec/RecognitionUserDictionary$4;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/mazec/RecognitionUserDictionary$4;-><init>(Lcom/metamoji/mazec/RecognitionUserDictionary;Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyGetLearnCharNumberResult(II)V
    .locals 7

    .line 140
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mLang:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecConfig;->getRecognitionImplicitLearningLimit(Ljava/lang/String;)I

    move-result v4

    .line 141
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mLang:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/mazec/MazecConfig;->getRecognitionExplicitLearningLimit(Ljava/lang/String;)I

    move-result v6

    .line 142
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/mazec/RecognitionUserDictionary$2;

    move-object v2, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/mazec/RecognitionUserDictionary$2;-><init>(Lcom/metamoji/mazec/RecognitionUserDictionary;IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyGetLearnedEntriesResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;",
            ">;)V"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/mazec/RecognitionUserDictionary$5;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/mazec/RecognitionUserDictionary$5;-><init>(Lcom/metamoji/mazec/RecognitionUserDictionary;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyLearnCharResult(Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/mazec/RecognitionUserDictionary$3;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/mazec/RecognitionUserDictionary$3;-><init>(Lcom/metamoji/mazec/RecognitionUserDictionary;Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addResultReceiver(Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiver;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mResultReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearImplicitLearnChars()V
    .locals 3

    .line 95
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v2, 0x41

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p0}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;Lcom/metamoji/mazec/util/MessageHandler;)V

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mLang:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->getRecognizer(Ljava/lang/String;)Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->resetLearning(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 104
    :goto_0
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->notifyClearImplicitLearnCharsResult(I)V

    return-void
.end method

.method public deleteLearnedEntry(Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V
    .locals 2

    .line 187
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x44

    .line 189
    invoke-virtual {v0, v1, p1, p0}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;Lcom/metamoji/mazec/util/MessageHandler;)V

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mLang:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->getRecognizer(Ljava/lang/String;)Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->deleteLearnedEntry(Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 196
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->setError(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 200
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/RecognitionUserDictionary;->notifyDeleteLearnedEntryResult(Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->destroy()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    :cond_0
    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mLang:Ljava/lang/String;

    return-object v0
.end method

.method public getLearnCharNumber()V
    .locals 3

    .line 125
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x42

    const/4 v2, 0x0

    .line 127
    invoke-virtual {v0, v1, v2, p0}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;Lcom/metamoji/mazec/util/MessageHandler;)V

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mLang:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->getRecognizer(Ljava/lang/String;)Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->getLearingCount(I)I

    move-result v1

    const/4 v2, 0x2

    .line 134
    invoke-virtual {v0, v2}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->getLearingCount(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    .line 136
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->notifyGetLearnCharNumberResult(II)V

    return-void
.end method

.method public getLearnedEntries(I)V
    .locals 5

    .line 218
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x45

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p0}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;Lcom/metamoji/mazec/util/MessageHandler;)V

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mLang:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->getRecognizer(Ljava/lang/String;)Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->getLearingCount(I)I

    move-result v1

    .line 226
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 228
    invoke-virtual {v0, p1, v3}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->getLearnedEntry(II)Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    move-result-object v4

    .line 229
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 232
    :cond_2
    invoke-direct {p0, v2}, Lcom/metamoji/mazec/RecognitionUserDictionary;->notifyGetLearnedEntriesResult(Ljava/util/List;)V

    return-void
.end method

.method public handleMessage(IJLjava/lang/Object;)V
    .locals 0

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    if-eqz p4, :cond_0

    .line 301
    move-object p2, p4

    check-cast p2, Ljava/util/List;

    .line 303
    :cond_0
    invoke-direct {p0, p2}, Lcom/metamoji/mazec/RecognitionUserDictionary;->notifyGetLearnedEntriesResult(Ljava/util/List;)V

    return-void

    :pswitch_1
    if-eqz p4, :cond_1

    .line 292
    move-object p2, p4

    check-cast p2, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    .line 294
    :cond_1
    invoke-direct {p0, p2}, Lcom/metamoji/mazec/RecognitionUserDictionary;->notifyDeleteLearnedEntryResult(Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V

    return-void

    :pswitch_2
    if-eqz p4, :cond_2

    .line 283
    move-object p2, p4

    check-cast p2, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    .line 285
    :cond_2
    invoke-direct {p0, p2}, Lcom/metamoji/mazec/RecognitionUserDictionary;->notifyLearnCharResult(Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V

    return-void

    :pswitch_3
    const/4 p1, 0x0

    if-eqz p4, :cond_3

    .line 272
    check-cast p4, Ljava/util/List;

    .line 273
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    .line 274
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_3
    move p2, p1

    .line 276
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/RecognitionUserDictionary;->notifyGetLearnCharNumberResult(II)V

    return-void

    :pswitch_4
    if-eqz p4, :cond_4

    .line 261
    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    .line 263
    :goto_1
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/RecognitionUserDictionary;->notifyClearImplicitLearnCharsResult(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x109
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public learnChar(ILjava/lang/String;Lcom/metamoji/mazec/stroke/HwStrokes;Ljava/lang/String;)V
    .locals 1

    .line 159
    new-instance v0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;

    invoke-direct {v0, p2, p3, p1, p4}, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;-><init>(Ljava/lang/String;Lcom/metamoji/mazec/stroke/HwStrokes;ILjava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x43

    .line 162
    invoke-virtual {p1, p2, v0, p0}, Lcom/metamoji/mazec/MazecIms;->sendMessage(ILjava/lang/Object;Lcom/metamoji/mazec/util/MessageHandler;)V

    return-void

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/RecognitionUserDictionary;->mLang:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/RecognitionUserDictionary;->getRecognizer(Ljava/lang/String;)Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->learnCharacter(Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;)Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 169
    :goto_0
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/RecognitionUserDictionary;->notifyLearnCharResult(Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V

    return-void
.end method
