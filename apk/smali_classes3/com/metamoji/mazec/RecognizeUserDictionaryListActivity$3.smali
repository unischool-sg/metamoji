.class Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$3;
.super Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiverAdapter;
.source "RecognizeUserDictionaryListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->setupLanguage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$3;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;

    invoke-direct {p0}, Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiverAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteLearnedEntryResult(Lcom/metamoji/mazec/RecognitionUserDictionary;Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$3;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->learnedEntryDeleted(Lcom/metamoji/mazec/RecognitionUserDictionary;Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)V

    return-void
.end method

.method public getLearnedEntriesResult(Lcom/metamoji/mazec/RecognitionUserDictionary;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/RecognitionUserDictionary;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$3;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->updateRegisteredLearningInfo(Lcom/metamoji/mazec/RecognitionUserDictionary;Ljava/util/List;)V

    return-void
.end method
