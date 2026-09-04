.class Lcom/metamoji/mazec/RecognitionUserDictionary$2;
.super Ljava/lang/Object;
.source "RecognitionUserDictionary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/RecognitionUserDictionary;->notifyGetLearnCharNumberResult(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/RecognitionUserDictionary;

.field final synthetic val$expCount:I

.field final synthetic val$expLimit:I

.field final synthetic val$impCount:I

.field final synthetic val$impLimit:I


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/RecognitionUserDictionary;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$2;->this$0:Lcom/metamoji/mazec/RecognitionUserDictionary;

    iput p2, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$2;->val$impCount:I

    iput p3, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$2;->val$impLimit:I

    iput p4, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$2;->val$expCount:I

    iput p5, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$2;->val$expLimit:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 145
    iget-object v0, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$2;->this$0:Lcom/metamoji/mazec/RecognitionUserDictionary;

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

    move-object v2, v1

    check-cast v2, Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiver;

    .line 146
    iget-object v3, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$2;->this$0:Lcom/metamoji/mazec/RecognitionUserDictionary;

    iget v4, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$2;->val$impCount:I

    iget v5, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$2;->val$impLimit:I

    iget v6, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$2;->val$expCount:I

    iget v7, p0, Lcom/metamoji/mazec/RecognitionUserDictionary$2;->val$expLimit:I

    invoke-interface/range {v2 .. v7}, Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiver;->getLearnCharNumberResult(Lcom/metamoji/mazec/RecognitionUserDictionary;IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method
