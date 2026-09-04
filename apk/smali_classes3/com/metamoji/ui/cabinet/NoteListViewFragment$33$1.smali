.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$33$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3939
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3942
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 3943
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$33;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$anim;->slide_in_editor:I

    sget v2, Lcom/metamoji/noteanytime/R$anim;->slide_out_notelist_from_left:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    return-void
.end method
