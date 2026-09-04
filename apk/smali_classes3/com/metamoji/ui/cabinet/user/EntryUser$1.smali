.class Lcom/metamoji/ui/cabinet/user/EntryUser$1;
.super Ljava/lang/Object;
.source "EntryUser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/EntryUser;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/EntryUser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$1;->this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 184
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$1;->this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/EntryUser;->_this:Lcom/metamoji/ui/cabinet/user/EntryUser;

    .line 185
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/EntryUser;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$1;->this$0:Lcom/metamoji/ui/cabinet/user/EntryUser;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/EntryUser;->_this:Lcom/metamoji/ui/cabinet/user/EntryUser;

    .line 186
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/EntryUser;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "tos"

    sget v2, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Policy:I

    .line 184
    invoke-static {p1, v0, v1, v2}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->jumpURL(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;I)V

    return-void
.end method
