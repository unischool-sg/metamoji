.class Lcom/metamoji/ui/cabinet/user/RequiredEula$2;
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

    .line 153
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula$2;->this$0:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 156
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula$2;->this$0:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/RequiredEula;->_this:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    .line 157
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/RequiredEula;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula$2;->this$0:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/RequiredEula;->_this:Lcom/metamoji/ui/cabinet/user/RequiredEula;

    .line 158
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/RequiredEula;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "privacy"

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Privacy:I

    .line 156
    invoke-static {p1, v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->jumpURL(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;I)V

    return-void
.end method
