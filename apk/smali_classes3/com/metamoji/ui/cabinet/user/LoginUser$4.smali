.class Lcom/metamoji/ui/cabinet/user/LoginUser$4;
.super Ljava/lang/Object;
.source "LoginUser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 253
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/LoginUser$4;->this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser$4;->this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/metamoji/ui/cabinet/user/LoginUser;->m_retry:Z

    .line 257
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/LoginUser$4;->this$0:Lcom/metamoji/ui/cabinet/user/LoginUser;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/LoginUser;->_this:Lcom/metamoji/ui/cabinet/user/LoginUser;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/LoginUser;->onCancel(Landroid/view/View;)V

    return-void
.end method
