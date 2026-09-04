.class Lcom/metamoji/ui/cabinet/user/RequiredEula$3;
.super Ljava/lang/Object;
.source "RequiredEula.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/RequiredEula;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/RequiredEula;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/RequiredEula;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula$3;->this$0:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula$3;->this$0:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_callback:Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula$3;->this$0:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/RequiredEula;->_this:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/user/RequiredEula;->-$$Nest$msetInputControlEnabled(Lcom/metamoji/ui/cabinet/user/RequiredEula;Z)V

    .line 175
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula$3;->this$0:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/RequiredEula;->m_callback:Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

    invoke-virtual {p1}, Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;->OnClickYesButton_RequiredEulaTaskCallBack()V

    :cond_0
    return-void
.end method
