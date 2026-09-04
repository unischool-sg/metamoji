.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1$1;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;->call()Ljava/lang/Void;
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
.field final synthetic this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6523
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$call$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 6527
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getStartSyncFlg()Z

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->-$$Nest$sfputstatic_startSyncFlg(Z)V

    .line 6528
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {v0, p4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6529
    const-string v1, "command"

    const-string v2, "mergeNotes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6530
    const-string v1, "driveid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6531
    const-string p0, "docid"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6532
    const-string p0, "newTitle"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6533
    const-string p0, "docIds"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 6534
    invoke-virtual {p4, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 6535
    sget p0, Lcom/metamoji/noteanytime/R$anim;->slide_in_editor:I

    sget p1, Lcom/metamoji/noteanytime/R$anim;->slide_out_notelist_from_left:I

    invoke-virtual {p4, p0, p1}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

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

    .line 6523
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6526
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;

    iget-object v1, v1, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;

    iget-object v3, v3, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$newTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1$1;->this$2:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;

    iget-object v4, v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;

    iget-object v4, v4, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55;->val$appendDocIds:Ljava/util/ArrayList;

    new-instance v5, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/metamoji/ui/cabinet/NoteListViewFragment$55$1$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v5}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    const/4 v0, 0x0

    return-object v0
.end method
