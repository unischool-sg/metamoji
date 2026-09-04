.class Lcom/metamoji/noteanytime/EditorActivity$41;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$srcInfo2:Ljava/util/Map;

.field final synthetic val$window:Lcom/metamoji/nt/NtEditorWindowController;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;Ljava/util/Map;Lcom/metamoji/nt/NtEditorWindowController;)V
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

    .line 3375
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$41;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$41;->val$srcInfo2:Ljava/util/Map;

    iput-object p3, p0, Lcom/metamoji/noteanytime/EditorActivity$41;->val$window:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3379
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$41;->val$srcInfo2:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3380
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$41;->this$0:Lcom/metamoji/noteanytime/EditorActivity;

    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$41;->val$window:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/noteanytime/EditorActivity$41;->val$srcInfo2:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/metamoji/noteanytime/EditorActivity;->-$$Nest$mhandleSendToSrcApp(Lcom/metamoji/noteanytime/EditorActivity;Lcom/metamoji/nt/NtDocument;Ljava/util/Map;)V

    .line 3391
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$41;->val$window:Lcom/metamoji/nt/NtEditorWindowController;

    sget-object v1, Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;->Auto:Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->closeDocument(Lcom/metamoji/nt/NtEditorWindowController$DiscardOption;)V

    return-void
.end method
