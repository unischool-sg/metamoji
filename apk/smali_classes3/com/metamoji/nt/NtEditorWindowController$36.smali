.class Lcom/metamoji/nt/NtEditorWindowController$36;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->handleConvertText(Lcom/metamoji/tle/TextLineExtractType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$editor:Lcom/metamoji/nt/INtEditor;

.field final synthetic val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/INtEditor;Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;)V
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

    .line 4605
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$36;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$36;->val$editor:Lcom/metamoji/nt/INtEditor;

    iput-object p3, p0, Lcom/metamoji/nt/NtEditorWindowController$36;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4608
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$36;->val$editor:Lcom/metamoji/nt/INtEditor;

    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$36;->val$viewForSI:Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;

    invoke-interface {v0, v1}, Lcom/metamoji/nt/INtEditor;->detachViewForSoftInput(Landroid/view/View;)V

    return-void
.end method
