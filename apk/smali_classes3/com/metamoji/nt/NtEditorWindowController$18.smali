.class Lcom/metamoji/nt/NtEditorWindowController$18;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->handleAddTextUnitForLabel(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$context:Lcom/metamoji/cm/CmContext;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V
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

    .line 2032
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$18;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$18;->val$context:Lcom/metamoji/cm/CmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2035
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$18;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2037
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->closeDetailWindow()V

    .line 2039
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2040
    new-instance v1, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;

    invoke-direct {v1, v0}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 2041
    new-instance v2, Lcom/metamoji/nt/NtEditorWindowController$18$1;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/nt/NtEditorWindowController$18$1;-><init>(Lcom/metamoji/nt/NtEditorWindowController$18;Lcom/metamoji/ui/dialog/TextUnitAddForLabel;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 2050
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "TextUnitAddForLabel"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
