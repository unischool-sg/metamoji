.class Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$2;
.super Ljava/lang/Object;
.source "NsCollaboPasswordSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 126
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 132
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    iget-object p1, p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordText:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 134
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$2;->this$0:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    iput-object p2, p1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordHash:Ljava/lang/String;

    :cond_0
    return-void
.end method
