.class Lcom/metamoji/nt/cabinet/user/management/UserManagement$1;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/user/management/UserManagement;->openUserManagement(Landroidx/fragment/app/FragmentManager;Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;ILjava/util/ArrayList;ILcom/metamoji/ui/cabinet/user/management/UserManagementDialog$Mode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/cabinet/user/management/UserManagement;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/user/management/UserManagement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/UserManagement$1;->this$0:Lcom/metamoji/nt/cabinet/user/management/UserManagement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    return-void
.end method
