.class Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$4;
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

    .line 73
    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$4;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$4;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;

    invoke-virtual {p1}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->registerStrokes()V

    return-void
.end method
