.class Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$3;
.super Ljava/lang/Object;
.source "NsCollaboPasswordSettingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 159
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 174
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 164
    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 165
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordCheckBox:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    .line 167
    :try_start_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 169
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    iget-object p2, p2, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    .line 174
    :cond_1
    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    .line 175
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->requestFocus()Z

    .line 177
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordHash:Ljava/lang/String;

    .line 179
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$3;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
