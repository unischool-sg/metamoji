.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForGetShareViewList.java"


# static fields
.field static s_companyId:Ljava/lang/String;

.field static s_email:Ljava/lang/String;

.field static s_password:Ljava/lang/String;

.field static s_qwd:Ljava/lang/String;


# instance fields
.field m_canChangeCondition:Z

.field m_completionAction:Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;

.field m_errorMsg:Ljava/lang/String;

.field m_roomArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_searchCondDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_sortCondList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_subTaskForAccountCheck:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;

.field m_subTaskForShareCollect:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;

.field public roomId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_canChangeCondition:Z

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_searchCondDic:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_sortCondList:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_completionAction:Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;

    .line 59
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForAccountCheck:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;

    .line 60
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForShareCollect:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;

    return-void
.end method

.method private taskExec(Z)V
    .locals 3

    .line 156
    const-string v0, "[GetShareViewList] --- task Start! ---"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->clearLoginInfoCache()V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 169
    :cond_1
    sget-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_email:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 170
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    sget-object v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_email:Ljava/lang/String;

    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_companyId:Ljava/lang/String;

    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->clearLoginInfoCache()V

    .line 182
    :cond_3
    sget-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_email:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_password:Ljava/lang/String;

    if-nez v0, :cond_5

    sget-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_qwd:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 183
    :cond_4
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForAccountCheck:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;

    .line 184
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->doInBackground()V

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForShareCollect:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;

    if-nez v0, :cond_6

    .line 190
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;

    invoke-direct {v0, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForShareCollect:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;

    .line 191
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->doInBackground()V

    .line 195
    :catch_0
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForAccountCheck:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;

    if-eqz v0, :cond_7

    iget-boolean v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->isCompleted:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForShareCollect:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;

    iget-boolean v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->isCompleted:Z

    if-nez v0, :cond_9

    :cond_8
    const-wide/16 v0, 0xa

    .line 198
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :cond_9
    const-string v0, "[GetShareViewList] --- \u2460\uff06\u2461 Completed!"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForAccountCheck:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;

    if-eqz v0, :cond_b

    .line 206
    iget-object v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->email:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 208
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->cancel()Z

    return-void

    .line 212
    :cond_a
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForAccountCheck:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;

    iget-object v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->email:Ljava/lang/String;

    sput-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_email:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForAccountCheck:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;

    iget-object v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->password:Ljava/lang/String;

    sput-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_password:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForAccountCheck:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;

    iget-object v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->qwd:Ljava/lang/String;

    sput-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_qwd:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForAccountCheck:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;

    iget-object v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->companyId:Ljava/lang/String;

    sput-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_companyId:Ljava/lang/String;

    .line 223
    :cond_b
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->getShareViewListExec(Z)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 352
    monitor-enter p0

    .line 354
    :try_start_0
    const-string v0, "[GetShareViewList] --- task Cancel."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_canChangeCondition:Z

    .line 359
    invoke-super {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->cancel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForAccountCheck:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskAccountCheck;->cancel()Z

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForShareCollect:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->cancel()Z

    :cond_1
    const/4 v0, 0x1

    .line 370
    monitor-exit p0

    return v0

    .line 373
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method clearLoginInfoCache()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    sput-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_email:Ljava/lang/String;

    .line 139
    sput-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_password:Ljava/lang/String;

    .line 140
    sput-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_qwd:Ljava/lang/String;

    .line 143
    sput-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_companyId:Ljava/lang/String;

    return-void
.end method

.method public doInBackground()V
    .locals 1

    .line 69
    invoke-static {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->registerTask(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_taskId:I

    .line 73
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method

.method getShareViewListExec(Z)V
    .locals 7

    .line 232
    const-string v0, "[GetShareViewList] --- getShareViewListExec Start!"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 241
    :cond_0
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_searchCondDic:Ljava/util/Map;

    .line 243
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_sortCondList:Ljava/util/List;

    const/4 v2, 0x0

    .line 244
    iput-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_searchCondDic:Ljava/util/Map;

    .line 245
    iput-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_sortCondList:Ljava/util/List;

    .line 246
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 248
    new-instance v3, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;

    invoke-direct {v3, p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 249
    sget-object v4, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_email:Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->email:Ljava/lang/String;

    .line 250
    sget-object v4, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_password:Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->password:Ljava/lang/String;

    .line 251
    sget-object v4, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_qwd:Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->qwd:Ljava/lang/String;

    .line 254
    sget-object v4, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->s_companyId:Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->companyId:Ljava/lang/String;

    .line 256
    iput-object v0, v3, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->searchCondDic:Ljava/util/Map;

    .line 257
    iput-object v1, v3, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->sortCondList:Ljava/util/List;

    .line 259
    iget-object v4, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForShareCollect:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;

    iget-object v4, v4, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->shareDocListJson:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_subTaskForShareCollect:Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;

    iget-object v4, v4, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->shareDocListJson:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v4, "[]"

    :goto_0
    iput-object v4, v3, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->shareDocListJson:Ljava/lang/String;

    .line 261
    iput-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 265
    :try_start_1
    invoke-virtual {v3}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    iput-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 272
    throw p1

    :catch_0
    move-exception v3

    .line 271
    iput-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    .line 275
    :goto_1
    monitor-enter p0

    .line 276
    :try_start_2
    iget-object v4, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_searchCondDic:Ljava/util/Map;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 281
    iput-boolean v4, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_canChangeCondition:Z

    .line 283
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_3

    .line 287
    const-string v0, "[GetShareViewList] --- getShareViewListExec RETRY!!!"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->getShareViewListExec(Z)V

    goto/16 :goto_3

    .line 291
    :cond_3
    const-string v4, "[GetShareViewList] --- getShareViewListExec END!"

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    if-eqz v2, :cond_6

    if-nez p1, :cond_5

    .line 297
    invoke-static {v2}, Lcom/metamoji/ns/service/NsCollaboServiceException;->errorCodeFromException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 299
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0x321

    if-ne p1, v3, :cond_5

    .line 302
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 303
    :try_start_4
    iget-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_searchCondDic:Ljava/util/Map;

    if-nez p1, :cond_4

    .line 304
    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_searchCondDic:Ljava/util/Map;

    .line 305
    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_sortCondList:Ljava/util/List;

    .line 307
    :cond_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 308
    :try_start_5
    invoke-direct {p0, v5}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->taskExec(Z)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 307
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1

    .line 316
    :catch_1
    :cond_5
    sget p1, Lcom/metamoji/noteanytime/R$string;->ShareView_Msg_GetList_Failed:I

    invoke-static {v2, p1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_errorMsg:Ljava/lang/String;

    .line 317
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->cancel()Z

    .line 318
    const-string p1, "NsCollaboBgTaskForGetShareViewList.taskExec"

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-nez v3, :cond_7

    .line 321
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->cancel()Z

    goto :goto_3

    .line 325
    :cond_7
    const-string/jumbo p1, "statusCode"

    invoke-static {v3, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 327
    :try_start_8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    .line 328
    const-string/jumbo p1, "result"

    invoke-static {v3, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 329
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 330
    check-cast p1, Ljava/util/Map;

    const-string/jumbo v0, "roomList"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_roomArray:Ljava/util/List;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 339
    :catch_2
    :cond_8
    sget p1, Lcom/metamoji/noteanytime/R$string;->ShareView_Msg_GetList_Failed:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_errorMsg:Ljava/lang/String;

    .line 340
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->cancel()Z

    :goto_3
    return-void

    :catchall_2
    move-exception p1

    .line 283
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 246
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p1
.end method

.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 2

    .line 383
    invoke-super {p0, p1, p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->onCompleted(ZLjava/lang/Throwable;)V

    .line 386
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->isCancelled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 387
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[GetShareViewList] --- task Completed! isSuccess : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 389
    iget-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_completionAction:Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;

    if-eqz p2, :cond_0

    .line 390
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_roomArray:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_errorMsg:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;->onCompleted(ZLjava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCondition(Ljava/util/Map;Ljava/util/List;Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;",
            ")Z"
        }
    .end annotation

    .line 95
    monitor-enter p0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    const-string p1, "[GetShareViewList] --- change Condition Failed... (already task cancelled.)"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 100
    monitor-exit p0

    return v1

    .line 104
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_canChangeCondition:Z

    if-nez v0, :cond_1

    .line 105
    const-string p1, "[GetShareViewList] --- change Condition Failed..."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 106
    monitor-exit p0

    return v1

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    if-eqz v0, :cond_2

    .line 111
    const-string v0, "[GetShareViewList] --- connection Cancel!"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    invoke-virtual {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->connectionCancel()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    .line 124
    :cond_2
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_searchCondDic:Ljava/util/Map;

    .line 125
    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_sortCondList:Ljava/util/List;

    .line 126
    iput-object p3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->m_completionAction:Lcom/metamoji/ns/task/INsGetShareViewListCompletionAction;

    .line 127
    const-string p1, "[GetShareViewList] --- change Condition Success!!"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 128
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected taskExec()V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewList;->taskExec(Z)V

    return-void
.end method
