.class Lcom/metamoji/noteanytime/EditorActivity$67;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->updatePageLabel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$label:Landroid/widget/TextView;

.field final synthetic val$sheet:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtNoteController;Landroid/widget/TextView;)V
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

    .line 5860
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$67;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$67;->val$sheet:Lcom/metamoji/nt/NtNoteController;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$67;->val$label:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5862
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$67;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity;->_pageList:Lcom/metamoji/nt/itemlist/NtPageList;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$67;->val$sheet:Lcom/metamoji/nt/NtNoteController;

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity$67;->val$label:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/itemlist/NtPageList;->updateTabLabel(Lcom/metamoji/nt/NtNoteController;Landroid/widget/TextView;)V

    .line 5863
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$67;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->updatePageNavigationButtons()V

    return-void
.end method
