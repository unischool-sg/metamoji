.class Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$2;
.super Ljava/lang/Object;
.source "RecognizeUserDictionaryAddCharFormActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 49
    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$2;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 54
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, p1, :cond_1

    .line 56
    :cond_0
    iget-object p2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity$2;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;

    invoke-virtual {p2}, Lcom/metamoji/mazec/RecognizeUserDictionaryAddCharFormActivity;->registerStrokes()V

    :cond_1
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
