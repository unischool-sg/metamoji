.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$36$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$36;->onCompletion(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$36;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$36;Z)V
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

    .line 4220
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$36$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$36;

    iput-boolean p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$36$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4223
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$36$1;->val$enable:Z

    .line 4226
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$36$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$36;

    if-eqz v0, :cond_0

    .line 4224
    iget-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$36;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_inviteBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/common/UiButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void

    .line 4226
    :cond_0
    iget-object v0, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$36;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_inviteBtn(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/common/UiButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void
.end method
