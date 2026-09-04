.class Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$5;
.super Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiverAdapter;
.source "RecognizeUserDictionaryAddCharFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->setupLanguage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$5;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;

    invoke-direct {p0}, Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiverAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getLearnCharNumberResult(Lcom/metamoji/mazec/RecognitionUserDictionary;IIII)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$5;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->learnCharNumberHasGotten(IIII)V

    return-void
.end method

.method public learnCharResult(Lcom/metamoji/mazec/RecognitionUserDictionary;Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$5;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->learnCharHasDone(Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V

    return-void
.end method
