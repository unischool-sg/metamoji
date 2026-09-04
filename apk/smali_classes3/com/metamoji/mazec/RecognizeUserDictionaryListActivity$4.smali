.class Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$4;
.super Ljava/lang/Object;
.source "RecognizeUserDictionaryListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->updateCharsPanel(Lcom/metamoji/mazec/ui/FlowLayout;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;

.field final synthetic val$charsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;Lcom/metamoji/mazec/ui/FlowLayout;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 179
    iput-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$4;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;

    iput-object p2, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$4;->val$charsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    iput p3, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$4;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 182
    iget-object p1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$4;->this$0:Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;

    iget-object v0, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$4;->val$charsPanel:Lcom/metamoji/mazec/ui/FlowLayout;

    iget v1, p0, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity$4;->val$idx:I

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/mazec/RecognizeUserDictionaryListActivity;->selectCurrentChar(Lcom/metamoji/mazec/ui/FlowLayout;I)V

    return-void
.end method
