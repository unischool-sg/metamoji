.class Lcom/metamoji/noteanytime/EditorActivity$66;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->notifyTitleUpdated(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;)V
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

    .line 5800
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$66;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$66;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5803
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$66;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    sget v1, Lcom/metamoji/noteanytime/R$id;->editor_title_text:I

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 5805
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$66;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5807
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$66;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_historyBarDriver:Lcom/metamoji/ui/HistoryBarDriver;

    invoke-virtual {v0}, Lcom/metamoji/ui/HistoryBarDriver;->notifyTitleChanged()V

    return-void
.end method
