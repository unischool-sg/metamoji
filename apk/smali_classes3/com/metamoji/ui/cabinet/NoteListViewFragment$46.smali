.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment;->startEditorActivity(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V
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
.field final synthetic val$activity:Landroidx/fragment/app/FragmentActivity;

.field final synthetic val$cmdAfterSheareNoteOpenedInfo:Ljava/util/Map;

.field final synthetic val$command:Ljava/lang/String;

.field final synthetic val$copiedDocId:Ljava/lang/String;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$isReadOnly:Z

.field final synthetic val$pageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5033
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$docId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$driveId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$pageId:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$isReadOnly:Z

    iput-object p7, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$copiedDocId:Ljava/lang/String;

    iput-object p8, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$cmdAfterSheareNoteOpenedInfo:Ljava/util/Map;

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

    .line 5033
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->call()Ljava/lang/Void;

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

    .line 5036
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getStartSyncFlg()Z

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$sfputstatic_startSyncFlg(Z)V

    .line 5037
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$activity:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5038
    const-string v1, "command"

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$command:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5039
    const-string v1, "docid"

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$docId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5040
    const-string v1, "driveid"

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$driveId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5041
    const-string v1, "pageid"

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$pageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5042
    const-string v1, "IsReadOnly"

    iget-boolean v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$isReadOnly:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5043
    const-string v1, "copiedDocId"

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$copiedDocId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5044
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$cmdAfterSheareNoteOpenedInfo:Ljava/util/Map;

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "cmdAfterSheareNoteOpenedInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5045
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 5046
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$46;->val$activity:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/metamoji/noteanytime/R$anim;->slide_in_editor:I

    sget v2, Lcom/metamoji/noteanytime/R$anim;->slide_out_notelist_from_left:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    const/4 v0, 0x0

    return-object v0
.end method
