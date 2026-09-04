.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForGetMemberList.java"


# instance fields
.field m_getNickNamesMapFromServerAfterAction:Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;

.field m_nickNamesMapFromServer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public memberDicArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 38
    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->m_getNickNamesMapFromServerAfterAction:Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;

    .line 39
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->m_nickNamesMapFromServer:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 0

    .line 140
    invoke-super {p0, p1, p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->onCompleted(ZLjava/lang/Throwable;)V

    .line 143
    iget-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->m_getNickNamesMapFromServerAfterAction:Lcom/metamoji/ns/task/INsGetNickNamesMapFromServerAfterAction;

    if-eqz p1, :cond_0

    .line 144
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList$2;

    invoke-direct {p2, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList$2;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected taskExec()V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->memberDicArray:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 52
    :cond_0
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 58
    :cond_1
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetMemberList;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetMemberList;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 59
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->memberDicArray:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetMemberList;->memberDicArray:Ljava/util/List;

    .line 62
    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v1

    .line 64
    sget v2, Lcom/metamoji/noteanytime/R$string;->GetMemberList_Requesting:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v2, 0x1

    .line 65
    invoke-virtual {v1, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 69
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetMemberList;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->cancel()Z

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 96
    invoke-virtual {v1, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 100
    const-string v1, "memberList"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 104
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 105
    sget v3, Lcom/metamoji/noteanytime/R$string;->NickName_UnKnown:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 107
    const-string/jumbo v4, "roomID"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 108
    const-string/jumbo v5, "userID"

    invoke-static {v3, v5}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 109
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    .line 112
    :cond_5
    invoke-static {v5, v4}, Lcom/metamoji/ns/NsCollaboSettings;->makeNickNamesMapKeyForUserID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    const-string v5, "nickname"

    invoke-static {v3, v5}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_1

    .line 120
    :cond_6
    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 122
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v5

    goto :goto_1

    :catch_0
    move-exception v3

    .line 124
    const-string v5, "NsCollaboBgTaskForGetMemberList.Base64decode"

    invoke-static {v3, v5}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_4

    .line 128
    iget-object v5, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->m_nickNamesMapFromServer:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 129
    iget-object v5, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->m_nickNamesMapFromServer:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;->cancel()Z

    .line 72
    const-string v1, "NsCollaboBgTaskForGetMemberList.taskExec"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 76
    sget v2, Lcom/metamoji/noteanytime/R$string;->GetMemberList_Msg_Failed:I

    invoke-static {v0, v2}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList$1;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForGetMemberList;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 84
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_7
    :goto_2
    return-void
.end method
