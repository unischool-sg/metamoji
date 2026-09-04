.class Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$1;
.super Ljava/lang/Object;
.source "NsCollaboPasswordSettingDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

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

    .line 119
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordHash:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordHash:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordHash:Ljava/lang/String;

    .line 122
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$1;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
