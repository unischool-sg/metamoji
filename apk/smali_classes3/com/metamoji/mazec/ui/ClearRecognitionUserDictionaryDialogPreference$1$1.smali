.class Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1$1;
.super Ljava/lang/Object;
.source "ClearRecognitionUserDictionaryDialogPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;->clearImplicitLearnCharsResult(Lcom/metamoji/mazec/RecognitionUserDictionary;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;

.field final synthetic val$sender:Lcom/metamoji/mazec/RecognitionUserDictionary;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;Lcom/metamoji/mazec/RecognitionUserDictionary;)V
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

    .line 39
    iput-object p1, p0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1$1;->this$1:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;

    iput-object p2, p0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1$1;->val$sender:Lcom/metamoji/mazec/RecognitionUserDictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1$1;->val$sender:Lcom/metamoji/mazec/RecognitionUserDictionary;

    invoke-virtual {v0}, Lcom/metamoji/mazec/RecognitionUserDictionary;->dispose()V

    .line 43
    iget-object v0, p0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1$1;->this$1:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;

    iget-object v0, v0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;->this$0:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

    iget v1, v0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->mUserRecogDictCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->mUserRecogDictCount:I

    .line 44
    iget-object v0, p0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1$1;->this$1:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;

    iget-object v0, v0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;->this$0:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

    iget v0, v0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->mUserRecogDictCount:I

    if-gtz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1$1;->this$1:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;

    iget-object v0, v0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;->this$0:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->fireUpdateEvent()V

    :cond_0
    return-void
.end method
