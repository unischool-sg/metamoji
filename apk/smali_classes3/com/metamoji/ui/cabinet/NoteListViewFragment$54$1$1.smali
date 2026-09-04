.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6463
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6463
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6466
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getStartSyncFlg()Z

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$sfputstatic_startSyncFlg(Z)V

    .line 6467
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6468
    const-string v1, "command"

    const-string v2, "copyNote"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6469
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;->val$docId:Ljava/lang/String;

    const-string v2, "docid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6470
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;->val$driveId:Ljava/lang/String;

    const-string v2, "driveid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6471
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v1}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 6472
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$54;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$anim;->slide_in_editor:I

    sget v2, Lcom/metamoji/noteanytime/R$anim;->slide_out_notelist_from_left:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    const/4 v0, 0x0

    return-object v0
.end method
