.class Lcom/metamoji/ns/NsCollaboManager$37$1;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboManager$37;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/NsCollaboManager$37;

.field final synthetic val$finalUserName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboManager$37;Ljava/lang/String;)V
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

    .line 3424
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$37$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$37;

    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager$37$1;->val$finalUserName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    if-nez p1, :cond_1

    .line 3429
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager$37$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$37;

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboManager$37;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz p1, :cond_0

    .line 3431
    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->updateAttentionArea()V

    .line 3434
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_ATTENTION_END_BY_PRESENTER:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    .line 3436
    const-string v0, "%@"

    const-string v1, "%s"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3437
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager$37$1;->this$1:Lcom/metamoji/ns/NsCollaboManager$37;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboManager$37;->val$nickName:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager$37$1;->val$finalUserName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
