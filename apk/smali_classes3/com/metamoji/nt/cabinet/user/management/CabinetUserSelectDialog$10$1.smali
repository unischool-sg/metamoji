.class Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;
.super Ljava/lang/Object;
.source "CabinetUserSelectDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

.field final synthetic val$infoResults:Lcom/metamoji/cs/dc/response/CsGetAllGroupsResponse;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;Lcom/metamoji/cs/dc/response/CsGetAllGroupsResponse;)V
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

    .line 946
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->val$infoResults:Lcom/metamoji/cs/dc/response/CsGetAllGroupsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 954
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->val$infoResults:Lcom/metamoji/cs/dc/response/CsGetAllGroupsResponse;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsGetAllGroupsResponse;->groups:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 955
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->val$infoResults:Lcom/metamoji/cs/dc/response/CsGetAllGroupsResponse;

    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsGetAllGroupsResponse;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    move v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 956
    const-string v6, "name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 960
    const-string v7, "id"

    invoke-static {v5, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 965
    iget-object v8, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    iget-object v8, v8, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v8, v8, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->groupDicList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    iget-object v9, v9, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {v9, v6, v7}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->createGroupDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    :cond_0
    iget-object v6, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    iget-object v6, v6, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v6, v6, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectGroupId:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 971
    :cond_1
    const-string v6, "driveId"

    invoke-static {v5, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 972
    iget-object v6, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    iget-object v6, v6, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v6, v6, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectDriveId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v3, v4

    :cond_2
    add-int/2addr v4, v2

    goto :goto_0

    :cond_3
    move v3, v1

    .line 981
    :cond_4
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iput-boolean v2, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_groupDicListInitialized:Z

    .line 984
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->changeSelectGroupButtonDisable(Z)V

    .line 989
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    if-le v3, v2, :cond_5

    .line 988
    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->changeSelectGroup(I)V

    goto :goto_2

    .line 989
    :cond_5
    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectGroupId:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectGroupId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectDriveId:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectDriveId:Ljava/lang/String;

    .line 990
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 992
    :cond_7
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-virtual {v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->updateList()V

    .line 994
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectGroupId:Ljava/lang/String;

    .line 995
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10$1;->this$1:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    iget-object v0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;->this$0:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    iput-object v1, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectDriveId:Ljava/lang/String;

    return-void
.end method
