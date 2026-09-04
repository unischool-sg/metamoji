.class Lcom/metamoji/mazec/RecognitionUserDictionary$1;
.super Ljava/lang/Object;
.source "RecognitionUserDictionary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/RecognitionUserDictionary;->notifyClearImplicitLearnCharsResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/RecognitionUserDictionary;

.field final synthetic val$res:I


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/RecognitionUserDictionary;I)V
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

    .line 108
    iput-object p1, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$1;->this$0:Lcom/metamoji/mazec/RecognitionUserDictionary;

    iput p2, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$1;->val$res:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$1;->this$0:Lcom/metamoji/mazec/RecognitionUserDictionary;

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

    .line 112
    iget-object v2, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$1;->this$0:Lcom/metamoji/mazec/RecognitionUserDictionary;

    iget v3, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$1;->val$res:I

    invoke-interface {v1, v2, v3}, Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiver;->clearImplicitLearnCharsResult(Lcom/metamoji/mazec/RecognitionUserDictionary;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
