.class Lcom/metamoji/nt/NtEditorWindowController$18$1;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtEditorWindowController$18;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/TextUnitAddForLabel;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController$18;Lcom/metamoji/ui/dialog/TextUnitAddForLabel;)V
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

    .line 2041
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$18$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$18;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$18$1;->val$dlg:Lcom/metamoji/ui/dialog/TextUnitAddForLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 2045
    iget-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$18$1;->val$dlg:Lcom/metamoji/ui/dialog/TextUnitAddForLabel;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/TextUnitAddForLabel;->getResultColor()I

    move-result p1

    .line 2046
    iget-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$18$1;->this$1:Lcom/metamoji/nt/NtEditorWindowController$18;

    iget-object p2, p2, Lcom/metamoji/nt/NtEditorWindowController$18;->val$context:Lcom/metamoji/cm/CmContext;

    invoke-static {p2, p1}, Lcom/metamoji/un/text/UnTextUnit;->addTextUnitForLabel(Lcom/metamoji/cm/CmContext;I)V

    :cond_0
    return-void
.end method
