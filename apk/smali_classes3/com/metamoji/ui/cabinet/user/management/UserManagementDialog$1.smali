.class Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$1;
.super Ljava/lang/Object;
.source "UserManagementDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$1;->this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$1;->this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->rebuildAdapter()V

    return-void
.end method
