.class Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;
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

.field final synthetic val$editor:Lcom/metamoji/nt/INtEditor;

.field final synthetic val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/INtEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 410
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;->this$0:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin;

    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;->val$editor:Lcom/metamoji/nt/INtEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->closeDocument(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;)V

    .line 415
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
