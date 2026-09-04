.class Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$1;
.super Lcom/metamoji/mazec/ui/HwStrokeAdapter;
.source "RecognizeUserDictionaryAddCharFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 43
    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$1;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;

    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HwStrokeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyStrokeUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$1;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;

    invoke-virtual {p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->strokesChanged()V

    return-void
.end method
