.class Lcom/metamoji/noteanytime/EditorActivity$70;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->updateJumpLabel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$label:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Landroid/widget/TextView;)V
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

    .line 6240
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$70;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$70;->val$label:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6242
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$70;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_jumpList:Lcom/metamoji/nt/itemlist/NtJumpList;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$70;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v1}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity$70;->val$label:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/itemlist/NtJumpList;->updateTabLabel(Lcom/metamoji/nt/NtNoteController;Landroid/widget/TextView;)V

    .line 6243
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$70;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {v0}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$mupdateJumpNavigationButtons(Lcom/metamoji/noteanytime/EditorActivity;)V

    return-void
.end method
