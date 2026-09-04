.class Lcom/metamoji/noteanytime/EditorActivity$MainViewport$2;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->initOpenDocumentHandler(Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;",
        ">;"
    }
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

    .line 2073
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$2;->this$0:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$2;->val$mode:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$2;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;)V
    .locals 2

    .line 2076
    iget-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$2;->this$0:Lcom/metamoji/noteanytime/EditorActivity$MainViewport;

    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$2;->val$mode:Lcom/metamoji/nt/NtEditorWindowController$EditOperation;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$2;->val$extras:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport;->-$$Nest$meditDocument(Lcom/metamoji/noteanytime/EditorActivity$MainViewport;Lcom/metamoji/nt/NtEditorWindowController$EditOperation;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2073
    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;

    invoke-virtual {p0, p1}, Lcom/metamoji/noteanytime/EditorActivity$MainViewport$2;->invoke(Lcom/metamoji/noteanytime/EditorActivity$ViewSizeChangedArg;)V

    return-void
.end method
