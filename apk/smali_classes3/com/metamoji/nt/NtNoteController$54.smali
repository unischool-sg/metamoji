.class Lcom/metamoji/nt/NtNoteController$54;
.super Ljava/lang/Object;
.source "NtNoteController.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtNoteController;->showPenAttr(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/PenSettings2;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/ui/dialog/PenSettings2;I)V
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

    .line 6793
    iput-object p1, p0, Lcom/metamoji/nt/NtNoteController$54;->this$0:Lcom/metamoji/nt/NtNoteController;

    iput-object p2, p0, Lcom/metamoji/nt/NtNoteController$54;->val$dlg:Lcom/metamoji/ui/dialog/PenSettings2;

    iput p3, p0, Lcom/metamoji/nt/NtNoteController$54;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 6798
    iget-object p1, p0, Lcom/metamoji/nt/NtNoteController$54;->this$0:Lcom/metamoji/nt/NtNoteController;

    iget-object p2, p0, Lcom/metamoji/nt/NtNoteController$54;->val$dlg:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/PenSettings2;->getPenStyle()Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p2

    iget p3, p0, Lcom/metamoji/nt/NtNoteController$54;->val$index:I

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtNoteController;->changePenSettings(Lcom/metamoji/nt/share/NtPenStyle;I)V

    :cond_0
    return-void
.end method
