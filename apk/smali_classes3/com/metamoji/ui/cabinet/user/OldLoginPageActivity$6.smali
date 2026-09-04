.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$6;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 602
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$6;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    .line 608
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-eq p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0xa0

    if-ne p1, p2, :cond_2

    .line 609
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$6;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    iget-boolean p1, p1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_simpleLoginMode:Z

    .line 615
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$6;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    .line 610
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_txtCoLoginId(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/common/UiEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$6;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_className:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$6;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_idNumber:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$6;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_txtPassword(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/common/UiEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 611
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$6;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$mhandleLoginButtonTap(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return p3

    .line 615
    :cond_1
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_txtCoLoginId(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/common/UiEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$6;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_txtLoginName(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/common/UiEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$6;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$fgetm_txtPassword(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/common/UiEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 616
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$6;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$mhandleLoginButtonTap(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return p3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
