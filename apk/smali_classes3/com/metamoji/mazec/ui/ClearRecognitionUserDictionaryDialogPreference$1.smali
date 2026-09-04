.class Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;
.super Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiverAdapter;
.source "ClearRecognitionUserDictionaryDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->onDialogClosed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;->this$0:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

    invoke-direct {p0}, Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiverAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public clearImplicitLearnCharsResult(Lcom/metamoji/mazec/RecognitionUserDictionary;I)V
    .locals 3

    .line 39
    iget-object p2, p0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;->this$0:Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;

    iget-object p2, p2, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1$1;-><init>(Lcom/metamoji/mazec/ui/ClearRecognitionUserDictionaryDialogPreference$1;Lcom/metamoji/mazec/RecognitionUserDictionary;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
