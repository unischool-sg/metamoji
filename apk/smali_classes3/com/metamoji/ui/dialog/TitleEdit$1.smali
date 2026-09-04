.class Lcom/metamoji/ui/dialog/TitleEdit$1;
.super Ljava/lang/Object;
.source "TitleEdit.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/TitleEdit;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/TitleEdit;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/TitleEdit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TitleEdit$1;->this$0:Lcom/metamoji/ui/dialog/TitleEdit;

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

    .line 182
    iget-object p1, p0, Lcom/metamoji/ui/dialog/TitleEdit$1;->this$0:Lcom/metamoji/ui/dialog/TitleEdit;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/TitleEdit;->_param:Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;

    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit$1;->this$0:Lcom/metamoji/ui/dialog/TitleEdit;

    invoke-static {p2}, Lcom/metamoji/ui/dialog/TitleEdit;->-$$Nest$fget_editText(Lcom/metamoji/ui/dialog/TitleEdit;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->title:Ljava/lang/String;

    return-void
.end method
