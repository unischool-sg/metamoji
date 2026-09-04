.class Lcom/metamoji/ui/cabinet/user/UserView$1;
.super Ljava/lang/Object;
.source "UserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/UserView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/UserView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/UserView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/UserView$1;->this$0:Lcom/metamoji/ui/cabinet/user/UserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/UserView$1;->this$0:Lcom/metamoji/ui/cabinet/user/UserView;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/UserView;->m_callback:Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/UserView$1;->this$0:Lcom/metamoji/ui/cabinet/user/UserView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/ui/cabinet/user/UserView;->-$$Nest$mfinish(Lcom/metamoji/ui/cabinet/user/UserView;Z)V

    .line 55
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/UserView$1;->this$0:Lcom/metamoji/ui/cabinet/user/UserView;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/UserView;->m_callback:Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;

    invoke-virtual {p1}, Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;->OnClickEntryUserButton_UserViewTaskCallBack()V

    .line 56
    iget-object p1, p0, Lcom/metamoji/ui/cabinet/user/UserView$1;->this$0:Lcom/metamoji/ui/cabinet/user/UserView;

    iget-object p1, p1, Lcom/metamoji/ui/cabinet/user/UserView;->m_callback:Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;

    invoke-virtual {p1}, Lcom/metamoji/nt/cabinet/user/UserViewTaskCallBack;->OnDestroy_UserViewTaskCallBack()V

    :cond_0
    return-void
.end method
