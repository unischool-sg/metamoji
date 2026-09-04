.class Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;
.super Ljava/lang/Object;
.source "CabinetUserSelectDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

.field final synthetic val$infoResults:Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 844
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->this$2:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->val$infoResults:Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 850
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 851
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 852
    iget-object v3, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->val$infoResults:Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;->users:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 853
    iget-object v3, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->val$infoResults:Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;

    iget-object v3, v3, Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 854
    const-string/jumbo v6, "uuid"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 855
    const-string v7, "name"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 857
    const-string v8, "loginName"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 860
    const-string v9, "isTeacher"

    invoke-static {v5, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    .line 862
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    .line 868
    iget-object v9, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->this$2:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

    if-eqz v5, :cond_2

    .line 866
    iget-object v9, v9, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v9, v9, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {v9, v6, v7, v5, v8}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->createUserDic(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 868
    :cond_2
    iget-object v9, v9, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v9, v9, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {v9, v6, v7, v5, v8}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->createUserDic(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 873
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 874
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 875
    iget-object v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->this$2:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

    iget-object v1, v1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v1, v1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->val$groupDic:Ljava/util/Map;

    const-string/jumbo v2, "userList"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->this$2:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_indicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->this$2:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->changeSelectGroupButtonDisable(Z)V

    .line 884
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->this$2:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectGroupId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->this$2:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectGroupId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->this$2:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectDriveId:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->this$2:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectDriveId:Ljava/lang/String;

    .line 885
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 886
    :cond_5
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->this$2:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->updateList()V

    .line 890
    :cond_6
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->this$2:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-boolean v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_groupDicListInitialized:Z

    if-nez v0, :cond_7

    .line 891
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1$1;->this$2:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->getGroupList()V

    :cond_7
    return-void
.end method
