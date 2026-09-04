.class Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$5;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;->onCompleted(ZLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

.field final synthetic val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;Lcom/metamoji/nt/NtEditorWindowController;)V
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

    .line 438
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$5;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$5;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$5;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 442
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->canShowEditAreaView()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 443
    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setEditAreaVisibility(Z)V

    :cond_0
    return-void
.end method
