.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$34$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3976
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3980
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;->val$driveId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3982
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 3983
    const-string v1, "MostRecentUsedNoteTemplateId"

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;->val$item:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3984
    const-string v1, "MostRecentUsedSheetId"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->removeValue(Ljava/lang/String;)V

    .line 3986
    :cond_0
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getStartSyncFlg()Z

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$sfputstatic_startSyncFlg(Z)V

    .line 3988
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_currentDisplayedFolder(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->TEMPLATE_FOLDER_INFO:Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3991
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3992
    const-string v2, "command"

    const-string v3, "copyFromTemplateAsNew"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3993
    const-string v2, "docid"

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;->val$item:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3994
    const-string v2, "driveid"

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;->val$item:Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$Item;->getDriveId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3995
    const-string v2, "giveTags"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3996
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 3997
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$34;->this$0:Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$fget_activity(Lcom/metamoji/ui/cabinet/NoteListViewFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$anim;->slide_in_editor:I

    sget v2, Lcom/metamoji/noteanytime/R$anim;->slide_out_notelist_from_left:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
