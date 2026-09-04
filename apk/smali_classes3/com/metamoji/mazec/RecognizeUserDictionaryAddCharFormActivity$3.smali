.class Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$3;
.super Ljava/lang/Object;
.source "RecognizeUserDictionaryAddCharFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 66
    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$3;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$3;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;

    invoke-virtual {p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->clearStrokes()V

    return-void
.end method
