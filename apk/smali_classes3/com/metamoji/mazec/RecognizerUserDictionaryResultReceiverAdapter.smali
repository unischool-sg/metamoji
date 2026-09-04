.class public Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiverAdapter;
.super Ljava/lang/Object;
.source "RecognizerUserDictionaryResultReceiverAdapter.java"

# interfaces
.implements Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearImplicitLearnCharsResult(Lcom/metamoji/mazec/RecognitionUserDictionary;I)V
    .locals 0

    return-void
.end method

.method public deleteLearnedEntryResult(Lcom/metamoji/mazec/RecognitionUserDictionary;Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V
    .locals 0

    return-void
.end method

.method public getLearnCharNumberResult(Lcom/metamoji/mazec/RecognitionUserDictionary;IIII)V
    .locals 0

    return-void
.end method

.method public getLearnedEntriesResult(Lcom/metamoji/mazec/RecognitionUserDictionary;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/RecognitionUserDictionary;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public learnCharResult(Lcom/metamoji/mazec/RecognitionUserDictionary;Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V
    .locals 0

    return-void
.end method
