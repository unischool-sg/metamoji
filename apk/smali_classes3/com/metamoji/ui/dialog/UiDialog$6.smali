.class Lcom/metamoji/ui/dialog/UiDialog$6;
.super Ljava/lang/Object;
.source "UiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiDialog;->setContentView(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/UiDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/UiDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 701
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog$6;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 708
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog$6;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/UiDialog;->-$$Nest$fgetmVisibility(Lcom/metamoji/ui/dialog/UiDialog;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 709
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog$6;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/UiDialog;->-$$Nest$fgetmOonoDialog(Lcom/metamoji/ui/dialog/UiDialog;)Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_0

    .line 710
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog$6;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/UiDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/ui/dialog/UiDialog;->-$$Nest$fputmOonoDialog(Lcom/metamoji/ui/dialog/UiDialog;Landroid/app/Dialog;)V

    .line 712
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog$6;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/UiDialog;->-$$Nest$fgetmOonoDialog(Lcom/metamoji/ui/dialog/UiDialog;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 714
    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    :cond_1
    return-void
.end method
