.class Lcom/metamoji/noteanytime/MainActivity$75$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity$75;->onCompletion(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity$75;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity$75;Z)V
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

    .line 5624
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$75$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$75;

    iput-boolean p2, p0, Lcom/metamoji/noteanytime/MainActivity$75$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 5627
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/MainActivity$75$1;->val$enable:Z

    .line 5628
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    .line 5629
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getLabelName()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    .line 5631
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5632
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASSROOM_DENY_TO_PARTICIPATE_BOX_MESSAGE:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5633
    const-string v2, "%@"

    const-string v3, "%s"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5634
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5635
    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$75$1$1;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/noteanytime/MainActivity$75$1$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$75$1;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v1}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void

    .line 5643
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/MainActivity$75$1;->this$0:Lcom/metamoji/noteanytime/MainActivity$75;

    iget-object v0, v0, Lcom/metamoji/noteanytime/MainActivity$75;->val$driveId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/noteanytime/MainActivity;->displayParticipationCodeInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
