.class Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$2;
.super Ljava/lang/Object;
.source "UserManagementDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;Landroid/content/Intent;)V
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

    .line 190
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 196
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$2;->val$intent:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
