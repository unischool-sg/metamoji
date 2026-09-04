.class Lcom/metamoji/nt/NtUnitController$3;
.super Ljava/lang/Object;
.source "NtUnitController.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitController;->handleChangeStrokeStyle(Lcom/metamoji/cm/CmContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitController;

.field final synthetic val$dlg:Lcom/metamoji/ui/dialog/PenSettings2;

.field final synthetic val$selectData:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/ui/dialog/PenSettings2;Ljava/lang/Object;)V
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

    .line 600
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitController$3;->this$0:Lcom/metamoji/nt/NtUnitController;

    iput-object p2, p0, Lcom/metamoji/nt/NtUnitController$3;->val$dlg:Lcom/metamoji/ui/dialog/PenSettings2;

    iput-object p3, p0, Lcom/metamoji/nt/NtUnitController$3;->val$selectData:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 605
    iget-object p1, p0, Lcom/metamoji/nt/NtUnitController$3;->this$0:Lcom/metamoji/nt/NtUnitController;

    iget-object p2, p0, Lcom/metamoji/nt/NtUnitController$3;->val$dlg:Lcom/metamoji/ui/dialog/PenSettings2;

    invoke-virtual {p2}, Lcom/metamoji/ui/dialog/PenSettings2;->getPenStyle()Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/nt/NtUnitController$3;->val$selectData:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/nt/NtUnitController;->applyPenStyle(Lcom/metamoji/nt/share/NtPenStyle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
