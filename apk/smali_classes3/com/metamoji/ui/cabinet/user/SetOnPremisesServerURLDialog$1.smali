.class Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog$1;
.super Ljava/lang/Object;
.source "SetOnPremisesServerURLDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog$1;->this$0:Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    .line 62
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 p3, 0xa0

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 63
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog$1;->this$0:Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/cabinet/user/SetOnPremisesServerURLDialog;->onDone(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
