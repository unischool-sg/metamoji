.class Lcom/metamoji/forSchool/ScSchoolUtils$1;
.super Ljava/lang/Object;
.source "ScSchoolUtils.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ScSchoolUtils;->correctUserLoginName(Lcom/metamoji/nt/NtNoteController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$sortedGroupList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/metamoji/nt/NtNoteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1419
    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolUtils$1;->val$sortedGroupList:Ljava/util/List;

    iput-object p2, p0, Lcom/metamoji/forSchool/ScSchoolUtils$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 7

    .line 1422
    check-cast p1, Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;

    .line 1424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_5

    .line 1425
    iget-object v1, p1, Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;->users:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 1426
    iget-object p1, p1, Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;->users:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "loginName"

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1427
    const-string v3, "uuid"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1428
    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1429
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1430
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1434
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolUtils$1;->val$sortedGroupList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1435
    check-cast v1, Ljava/util/Map;

    .line 1436
    const-string v3, "user-list"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1438
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1439
    check-cast v4, Ljava/util/Map;

    .line 1440
    const-string v5, "user-id"

    invoke-static {v4, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1442
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1443
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1444
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1445
    const-string v6, "login-name"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1449
    :cond_3
    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->sortUserArray(Ljava/util/List;)V

    goto :goto_1

    .line 1452
    :cond_4
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolUtils$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolUtils$1;->val$sortedGroupList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->setGroupListNotSendDirection(Ljava/util/List;)V

    :cond_5
    return-void
.end method
