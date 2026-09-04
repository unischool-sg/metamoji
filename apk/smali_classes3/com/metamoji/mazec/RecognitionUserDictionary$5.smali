.class Lcom/metamoji/mazec/RecognitionUserDictionary$5;
.super Ljava/lang/Object;
.source "RecognitionUserDictionary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/RecognitionUserDictionary;->notifyGetLearnedEntriesResult(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/RecognitionUserDictionary;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/RecognitionUserDictionary;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$5;->this$0:Lcom/metamoji/mazec/RecognitionUserDictionary;

    iput-object p2, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$5;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$5;->this$0:Lcom/metamoji/mazec/RecognitionUserDictionary;

    invoke-static {v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->-$$Nest$fgetmResultReceivers(Lcom/metamoji/mazec/RecognitionUserDictionary;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiver;

    .line 240
    iget-object v2, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$5;->this$0:Lcom/metamoji/mazec/RecognitionUserDictionary;

    iget-object v3, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$5;->val$list:Ljava/util/List;

    invoke-interface {v1, v2, v3}, Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiver;->getLearnedEntriesResult(Lcom/metamoji/mazec/RecognitionUserDictionary;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method
