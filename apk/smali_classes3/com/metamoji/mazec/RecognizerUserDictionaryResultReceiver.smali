.class public interface abstract Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiver;
.super Ljava/lang/Object;
.source "RecognizerUserDictionaryResultReceiver.java"


# virtual methods
.method public abstract clearImplicitLearnCharsResult(Lcom/metamoji/mazec/RecognitionUserDictionary;I)V
.end method

.method public abstract deleteLearnedEntryResult(Lcom/metamoji/mazec/RecognitionUserDictionary;Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V
.end method

.method public abstract getLearnCharNumberResult(Lcom/metamoji/mazec/RecognitionUserDictionary;IIII)V
.end method

.method public abstract getLearnedEntriesResult(Lcom/metamoji/mazec/RecognitionUserDictionary;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/RecognitionUserDictionary;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract learnCharResult(Lcom/metamoji/mazec/RecognitionUserDictionary;Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V
.end method
