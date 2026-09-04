.class Lcom/metamoji/ui/cabinet/user/EntryUser$3;
.super Ljava/lang/Object;
.source "EntryUser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/EntryUser;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/EntryUser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$3;->this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 219
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$3;->this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/EntryUser;->-$$Nest$mcheckInput(Lcom/metamoji/ui/cabinet/user/EntryUser;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$3;->this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/EntryUser;->_this:Lcom/metamoji/ui/cabinet/user/EntryUser;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/user/EntryUser;->-$$Nest$msetInputControlEnabled(Lcom/metamoji/ui/cabinet/user/EntryUser;Z)V

    .line 221
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 222
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$3;->this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_nickname:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nickname"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$3;->this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_mailAddress:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mailaddress"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$3;->this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_password:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$3;->this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/EntryUser;->m_callback:Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;

    invoke-virtual {v0, p1}, Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;->OnClickEntryButton_EntryUserTaskCallBack(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
