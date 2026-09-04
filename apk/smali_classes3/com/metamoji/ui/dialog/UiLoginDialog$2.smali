.class Lcom/metamoji/ui/dialog/UiLoginDialog$2;
.super Ljava/lang/Object;
.source "UiLoginDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiLoginDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/UiLoginDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/UiLoginDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog$2;->this$0:Lcom/metamoji/ui/dialog/UiLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog$2;->this$0:Lcom/metamoji/ui/dialog/UiLoginDialog;

    const/4 p2, 0x0

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/ui/dialog/UiLoginDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 104
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiLoginDialog$2;->this$0:Lcom/metamoji/ui/dialog/UiLoginDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/UiLoginDialog;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
