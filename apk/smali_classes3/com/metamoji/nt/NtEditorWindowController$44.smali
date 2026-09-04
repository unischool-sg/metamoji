.class Lcom/metamoji/nt/NtEditorWindowController$44;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->isVisibleSearchTextBar()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$visible:Lcom/metamoji/nt/NtEditorWindowController$1TextBarVisible;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtEditorWindowController$1TextBarVisible;)V
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

    .line 5494
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$44;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$44;->val$visible:Lcom/metamoji/nt/NtEditorWindowController$1TextBarVisible;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5497
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$44;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_editorPage(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5498
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$44;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v0}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_editorPage(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getSearchTextBar()Lcom/metamoji/nt/NtSearchTextBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5499
    invoke-virtual {v0}, Lcom/metamoji/nt/NtSearchTextBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5500
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$44;->val$visible:Lcom/metamoji/nt/NtEditorWindowController$1TextBarVisible;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/metamoji/nt/NtEditorWindowController$1TextBarVisible;->visible:Z

    :cond_0
    return-void
.end method
