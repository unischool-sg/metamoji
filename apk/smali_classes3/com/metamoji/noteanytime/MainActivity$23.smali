.class Lcom/metamoji/noteanytime/MainActivity$23;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/MainActivity;->deleteAllTagsFromHiddenNotes(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/MainActivity;

.field final synthetic val$boxName:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$maintenancedDocIdsFinal:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/MainActivity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 1433
    iput-object p1, p0, Lcom/metamoji/noteanytime/MainActivity$23;->this$0:Lcom/metamoji/noteanytime/MainActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/MainActivity$23;->val$boxName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/noteanytime/MainActivity$23;->val$maintenancedDocIdsFinal:Ljava/util/List;

    iput-object p4, p0, Lcom/metamoji/noteanytime/MainActivity$23;->val$driveId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1436
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_DELETE_ALL_TAGS_FROM_NOTES:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 1437
    const-string v1, "%@"

    const-string v2, "%s"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1438
    iget-object v1, p0, Lcom/metamoji/noteanytime/MainActivity$23;->val$boxName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    new-instance v1, Lcom/metamoji/ui/dialog/DocumentListDialog;

    invoke-direct {v1}, Lcom/metamoji/ui/dialog/DocumentListDialog;-><init>()V

    const/4 v2, 0x1

    .line 1441
    iput-boolean v2, v1, Lcom/metamoji/ui/dialog/DocumentListDialog;->isShowCloseButton:Z

    const/4 v3, 0x0

    .line 1442
    iput-boolean v3, v1, Lcom/metamoji/ui/dialog/DocumentListDialog;->isShowCancelButton:Z

    .line 1443
    iput-boolean v2, v1, Lcom/metamoji/ui/dialog/DocumentListDialog;->displayNoteNameOnly:Z

    .line 1444
    iput-boolean v3, v1, Lcom/metamoji/ui/dialog/DocumentListDialog;->openNoteIfTapped:Z

    .line 1445
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DIALOG_TITLE_DISPLAY_NOTES:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/DocumentListDialog;->setDlgTitleResourceId(I)V

    .line 1447
    new-instance v2, Lcom/metamoji/noteanytime/MainActivity$23$1;

    invoke-direct {v2, p0}, Lcom/metamoji/noteanytime/MainActivity$23$1;-><init>(Lcom/metamoji/noteanytime/MainActivity$23;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/DocumentListDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 1459
    iget-object v2, p0, Lcom/metamoji/noteanytime/MainActivity$23;->val$maintenancedDocIdsFinal:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1460
    iget-object v4, p0, Lcom/metamoji/noteanytime/MainActivity$23;->val$driveId:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/metamoji/ui/dialog/DocumentListDialog;->addPathInfoWithDriveId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1463
    :cond_0
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/DocumentListDialog;->setMessage(Ljava/lang/String;)V

    .line 1464
    const-string v0, "DocumentListDialog"

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/dialog/DocumentListDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
