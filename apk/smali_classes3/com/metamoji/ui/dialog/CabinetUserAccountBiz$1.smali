.class Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$1;
.super Ljava/lang/Object;
.source "CabinetUserAccountBiz.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$1;->this$0:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 110
    new-instance p1, Lcom/metamoji/ui/cabinet/user/ChangePassword;

    invoke-direct {p1}, Lcom/metamoji/ui/cabinet/user/ChangePassword;-><init>()V

    .line 118
    iget-object v0, p0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz$1;->this$0:Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/user/ChangePassword;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/cabinet/user/ChangePassword;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method
