.class Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;
.super Ljava/lang/Object;
.source "DriveMemberDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iget-object v0, v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 153
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;->this$0:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;

    iget-object v2, v2, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 154
    const-string v3, "checked"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
