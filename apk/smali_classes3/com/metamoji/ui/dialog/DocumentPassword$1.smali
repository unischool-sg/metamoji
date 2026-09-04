.class Lcom/metamoji/ui/dialog/DocumentPassword$1;
.super Ljava/lang/Object;
.source "DocumentPassword.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 105
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentPassword$1;->this$0:Lcom/metamoji/ui/dialog/DocumentPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 111
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentPassword$1;->this$0:Lcom/metamoji/ui/dialog/DocumentPassword;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/DocumentPassword;->-$$Nest$fput_passwordHash(Lcom/metamoji/ui/dialog/DocumentPassword;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentPassword$1;->this$0:Lcom/metamoji/ui/dialog/DocumentPassword;

    invoke-static {p1}, Lcom/metamoji/ui/dialog/DocumentPassword;->-$$Nest$fget_txtPassword(Lcom/metamoji/ui/dialog/DocumentPassword;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
