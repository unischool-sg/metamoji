.class Lcom/metamoji/ui/dialog/DocumentPassword$2;
.super Ljava/lang/Object;
.source "DocumentPassword.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentPassword;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentPassword;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentPassword;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentPassword$2;->this$0:Lcom/metamoji/ui/dialog/DocumentPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentPassword$2;->this$0:Lcom/metamoji/ui/dialog/DocumentPassword;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/DocumentPassword;->-$$Nest$fget_txtPassword(Lcom/metamoji/ui/dialog/DocumentPassword;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 129
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentPassword$2;->this$0:Lcom/metamoji/ui/dialog/DocumentPassword;

    if-eqz p2, :cond_0

    .line 126
    invoke-static {p1}, Lcom/metamoji/ui/dialog/DocumentPassword;->-$$Nest$fget_chkPassword(Lcom/metamoji/ui/dialog/DocumentPassword;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    return-void

    .line 129
    :cond_0
    invoke-static {p1}, Lcom/metamoji/ui/dialog/DocumentPassword;->-$$Nest$fget_chkPassword(Lcom/metamoji/ui/dialog/DocumentPassword;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    .line 130
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentPassword$2;->this$0:Lcom/metamoji/ui/dialog/DocumentPassword;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/DocumentPassword;->-$$Nest$fget_chkPassword(Lcom/metamoji/ui/dialog/DocumentPassword;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->requestFocus()Z

    return-void
.end method
