.class Lcom/metamoji/noteanytime/EditorActivity$42;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnCompleted;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity;->saveOnClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$activity:Lcom/metamoji/noteanytime/EditorActivity;

.field final synthetic val$bLogout:Z

.field final synthetic val$docid:Ljava/lang/String;

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 3393
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$42;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$42;->val$docid:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$42;->val$driveId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/metamoji/noteanytime/EditorActivity$42;->val$bLogout:Z

    iput-object p5, p0, Lcom/metamoji/noteanytime/EditorActivity$42;->val$activity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    .line 3396
    sput-boolean v0, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->CLOSING:Z

    .line 3397
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$42;->val$docid:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "finished saving %s"

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3399
    const-string v1, "NoteSaveError"

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3401
    :cond_0
    sget-boolean p1, Lcom/metamoji/noteanytime/MainActivity;->_IsShareViewMode:Z

    if-eqz p1, :cond_1

    .line 3402
    invoke-static {}, Lcom/metamoji/ui/cabinet/ShareViewObserver;->getInstance()Lcom/metamoji/ui/cabinet/ShareViewObserver;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$42;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity$42;->val$docid:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/ui/cabinet/ShareViewObserver;->notifyRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3405
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->getInstance()Lcom/metamoji/ui/cabinet/user/NoteListObserver;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$42;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity$42;->val$docid:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/ui/cabinet/user/NoteListObserver;->notifyRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 3407
    :goto_0
    iget-boolean p1, p0, Lcom/metamoji/noteanytime/EditorActivity$42;->val$bLogout:Z

    if-eqz p1, :cond_2

    .line 3408
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$42;->val$activity:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->Logout(Landroidx/fragment/app/FragmentActivity;)V

    return-void

    .line 3411
    :cond_2
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$42;->val$driveId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->checkAndRunAutoSync(ZLjava/lang/String;)V

    return-void
.end method
