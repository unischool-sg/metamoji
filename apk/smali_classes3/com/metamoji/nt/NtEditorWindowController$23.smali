.class Lcom/metamoji/nt/NtEditorWindowController$23;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->paperSizeSettingsDone(Lcom/metamoji/ui/dialog/PaperSelect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$_paperSelectDlg:Lcom/metamoji/ui/dialog/PaperSelect;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/ui/dialog/PaperSelect;)V
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

    .line 3190
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$23;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$23;->val$_paperSelectDlg:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3193
    iget-object v0, p0, Lcom/metamoji/nt/NtEditorWindowController$23;->val$_paperSelectDlg:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/PaperSelect;->get_paperSize()Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 3194
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$23;->val$_paperSelectDlg:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-virtual {v1}, Lcom/metamoji/ui/dialog/PaperSelect;->get_printSize()Lcom/metamoji/cm/SizeF;

    move-result-object v1

    .line 3195
    iget-object v2, p0, Lcom/metamoji/nt/NtEditorWindowController$23;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v2, p1, v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->setPaperSize(Ljava/util/List;Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)V

    return-void
.end method
