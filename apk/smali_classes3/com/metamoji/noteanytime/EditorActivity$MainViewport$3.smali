.class Lcom/metamoji/noteanytime/EditorActivity$MainViewport$3;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->documentEditorPrepared(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$mode:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$MainViewport;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V
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

    .line 2107
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$3;->this$0:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$3;->val$mode:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$3;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2110
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$3;->this$0:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$3;->val$mode:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$3;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->documentEditorPrepared(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V

    return-void
.end method
