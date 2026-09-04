.class Lcom/metamoji/mazec/MazecPreferenceActivity$5;
.super Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiverAdapter;
.source "MazecPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/MazecPreferenceActivity;->checkRecognitionUserDictionary(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/MazecPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/MazecPreferenceActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 400
    iput-object p1, p0, Lcom/metamoji/mazec/MazecPreferenceActivity$5;->this$0:Lcom/metamoji/mazec/MazecPreferenceActivity;

    invoke-direct {p0}, Lcom/metamoji/mazec/RecognizerUserDictionaryResultReceiverAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getLearnCharNumberResult(Lcom/metamoji/mazec/RecognitionUserDictionary;IIII)V
    .locals 0

    .line 403
    iget-object p1, p0, Lcom/metamoji/mazec/MazecPreferenceActivity$5;->this$0:Lcom/metamoji/mazec/MazecPreferenceActivity;

    invoke-static {p1}, Lcom/metamoji/mazec/MazecPreferenceActivity;->-$$Nest$fgetmListUserCharFormPreference(Lcom/metamoji/mazec/MazecPreferenceActivity;)Landroid/preference/PreferenceScreen;

    move-result-object p1

    if-gtz p2, :cond_1

    if-lez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method
