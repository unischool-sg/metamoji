.class Lcom/metamoji/ui/cabinet/user/LoginUser$5;
.super Ljava/lang/Object;
.source "LoginUser.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/LoginUser;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/LoginUser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 301
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser$5;->this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 304
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 306
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/LoginUser$5;->this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;

    iget-boolean p2, p2, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_retry:Z

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->onCloseDialog(ZZ)V

    :cond_0
    return-void
.end method
