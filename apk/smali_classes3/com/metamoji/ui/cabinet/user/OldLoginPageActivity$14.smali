.class Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$14;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 746
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$14;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 749
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$14;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    invoke-static {p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->-$$Nest$mhideKeyboard(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    .line 750
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$14;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    sget v0, Lcom/metamoji/noteanytime/R$id;->otherPanel:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 751
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 752
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$14;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    iput-boolean v1, p1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_expandOtherPanel:Z

    return-void

    .line 755
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 756
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$14;->this$0:Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->m_expandOtherPanel:Z

    return-void
.end method
