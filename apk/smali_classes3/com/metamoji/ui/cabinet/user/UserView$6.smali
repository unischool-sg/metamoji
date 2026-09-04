.class Lcom/metamoji/ui/cabinet/user/UserView$6;
.super Ljava/lang/Object;
.source "UserView.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


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

    .line 111
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/UserView$6;->this$0:Lcom/metamoji/ui/cabinet/user/UserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 2

    .line 115
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/UserView$6;->this$0:Lcom/metamoji/ui/cabinet/user/UserView;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/UserView;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/UserView$6;->this$0:Lcom/metamoji/ui/cabinet/user/UserView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/UserView;->-$$Nest$mhandleOnCancelClose(Lcom/metamoji/ui/cabinet/user/UserView;Z)V

    :cond_1
    :goto_0
    return-void
.end method
