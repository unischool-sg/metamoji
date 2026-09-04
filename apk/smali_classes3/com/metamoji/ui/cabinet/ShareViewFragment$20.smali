.class Lcom/metamoji/ui/cabinet/ShareViewFragment$20;
.super Ljava/lang/Object;
.source "ShareViewFragment.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;->startEditorActivity(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
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

.field final synthetic val$copiedDocId:Ljava/lang/String;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$isReadOnly:Z


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2431
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;->val$activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;->val$docId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;->val$driveId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;->val$isReadOnly:Z

    iput-object p5, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;->val$copiedDocId:Ljava/lang/String;

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

    .line 2431
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;->call()Ljava/lang/Void;

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

    const/4 v0, 0x1

    .line 2434
    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$sfput_isEditing(Z)V

    .line 2435
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->getStartSyncFlg()Z

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/ShareViewFragment;->-$$Nest$sfputstatic_startSyncFlg(Z)V

    .line 2436
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;->val$activity:Landroidx/fragment/app/FragmentActivity;

    const-class v2, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2437
    const-string v1, "command"

    const-string v2, "editNote"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2438
    const-string v1, "docid"

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;->val$docId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2439
    const-string v1, "driveid"

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;->val$driveId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2440
    const-string v1, "IsReadOnly"

    iget-boolean v2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;->val$isReadOnly:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2441
    const-string v1, "copiedDocId"

    iget-object v2, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;->val$copiedDocId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2442
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;->val$activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 2443
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/ShareViewFragment$20;->val$activity:Landroidx/fragment/app/FragmentActivity;

    sget v1, Lcom/metamoji/noteanytime/R$anim;->slide_in_editor:I

    sget v2, Lcom/metamoji/noteanytime/R$anim;->slide_out_notelist_from_left:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    const/4 v0, 0x0

    return-object v0
.end method
