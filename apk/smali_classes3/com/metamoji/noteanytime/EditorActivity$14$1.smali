.class Lcom/metamoji/noteanytime/EditorActivity$14$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$14;->onCompleted(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/noteanytime/EditorActivity$14;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$14;Ljava/lang/Throwable;)V
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

    .line 1419
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$14$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$14;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$14$1;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1422
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$14$1;->val$e:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$14$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$14;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity$14;->val$viewport:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$EditOperation;->Restore:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->documentEditorPrepared(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V

    return-void

    .line 1427
    :cond_0
    const-string v1, "Restore Failed"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$14$1;->this$1:Lcom/metamoji/noteanytime/EditorActivity$14;

    iget-object v0, v0, Lcom/metamoji/noteanytime/EditorActivity$14;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->returnToCabinet()V

    return-void
.end method
