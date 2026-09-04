.class Lcom/metamoji/ns/direction/NsDirectionManager$33;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->userPropertyChanged(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

.field final synthetic val$val:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2033
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iput-object p4, p0, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$val:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v1, p0

    .line 2036
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$key:Ljava/lang/String;

    const-string/jumbo v2, "viewingPosition"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x4

    const/4 v8, 0x2

    if-eqz v0, :cond_3

    .line 2038
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget v0, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 2040
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$val:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->safeURLDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2044
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2045
    invoke-static {v4}, Lcom/metamoji/cm/CmJson;->jsonValueToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2046
    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_0

    .line 2047
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2050
    const-string v4, "NsDirectionManager.userPropertyChanged"

    invoke-static {v0, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2054
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_1

    goto/16 :goto_2

    .line 2059
    :cond_1
    iget-object v4, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v4, v4, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPage:Ljava/lang/String;

    .line 2061
    iget-object v4, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v4, v4, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingInfoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2062
    :try_start_1
    iget-object v5, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPage:Ljava/lang/String;

    .line 2063
    iget-object v5, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 2064
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v11, v10

    .line 2065
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v13, v10

    .line 2066
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v9, v10

    .line 2067
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v19, v3

    move-object/from16 v20, v4

    float-to-double v3, v15

    move-wide/from16 v17, v3

    move-wide v15, v9

    .line 2063
    :try_start_2
    invoke-static/range {v11 .. v18}, Lcom/metamoji/cm/RectUtils;->RectBySize(DDDD)Landroid/graphics/RectF;

    move-result-object v3

    iput-object v3, v5, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingRect:Landroid/graphics/RectF;

    .line 2068
    iget-object v3, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    const/4 v4, 0x5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v3, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingScale:F

    .line 2069
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-boolean v7, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPositionChanged:Z

    .line 2070
    monitor-exit v20

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v20, v4

    :goto_1
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_2
    move/from16 v19, v3

    .line 2055
    const-string v0, "invalid viewing position %s"

    iget-object v3, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$val:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2087
    :goto_3
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v3, Lcom/metamoji/ns/direction/NsDirectionManager$33$2;

    invoke-direct {v3, v1}, Lcom/metamoji/ns/direction/NsDirectionManager$33$2;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$33;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_3
    move/from16 v19, v3

    .line 2102
    :goto_4
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$key:Ljava/lang/String;

    const-string/jumbo v3, "viewingLayer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2104
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget v0, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x4

    .line 2150
    iget-object v3, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$val:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2105
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->safeURLDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2109
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2110
    invoke-static {v3}, Lcom/metamoji/cm/CmJson;->jsonValueToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2111
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_4

    .line 2112
    check-cast v0, Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    .line 2115
    const-string v3, "NsDirectionManager.userPropertyChanged"

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_6

    .line 2118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v8, :cond_5

    goto :goto_6

    .line 2131
    :cond_5
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v3

    .line 2133
    iget-object v4, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v4, v4, Lcom/metamoji/ns/direction/NsDirectionManager;->m_featuredDcUserId:Ljava/lang/String;

    if-nez v4, :cond_a

    if-eqz v3, :cond_a

    iget-boolean v3, v3, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v3, :cond_a

    .line 2134
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2135
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2136
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v5, v19

    .line 2137
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2138
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v9, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v0, Lcom/metamoji/ns/direction/NsDirectionManager$33$4;

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ns/direction/NsDirectionManager$33$4;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$33;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v0}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 2119
    :cond_6
    :goto_6
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_featuredDcUserId:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 2120
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$33$3;

    invoke-direct {v2, v1}, Lcom/metamoji/ns/direction/NsDirectionManager$33$3;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$33;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 2150
    :cond_7
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->safeURLDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2154
    :try_start_4
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2155
    invoke-static {v2}, Lcom/metamoji/cm/CmJson;->jsonValueToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2156
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_8

    .line 2157
    check-cast v0, Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    .line 2160
    const-string v2, "NsDirectionManager.userPropertyChanged"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_8
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_9

    .line 2163
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v8, :cond_a

    .line 2164
    :cond_9
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_featuredDcUserId:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 2165
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$33$5;

    invoke-direct {v2, v1}, Lcom/metamoji/ns/direction/NsDirectionManager$33$5;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$33;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    .line 2185
    :cond_a
    :goto_8
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$key:Ljava/lang/String;

    const-string v2, "currentPage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2186
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2188
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$val:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->safeURLDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2192
    :try_start_5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2193
    invoke-static {v2}, Lcom/metamoji/cm/CmJson;->jsonValueToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2194
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_b

    .line 2195
    check-cast v0, Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v9, v0

    goto :goto_9

    :catchall_5
    move-exception v0

    .line 2198
    const-string v2, "NsDirectionManager.userPropertyChanged"

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_b
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_c

    .line 2202
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2203
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2204
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2205
    iget-object v4, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v4, v4, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v5, Lcom/metamoji/ns/direction/NsDirectionManager$33$6;

    invoke-direct {v5, v1, v0, v2, v3}, Lcom/metamoji/ns/direction/NsDirectionManager$33$6;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$33;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    .line 2218
    :cond_c
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-static {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$fgetmUserPropertyChangedListener(Lcom/metamoji/ns/direction/NsDirectionManager;)Lcom/metamoji/cm/CmEventListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2219
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-static {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$fgetmUserPropertyChangedListener(Lcom/metamoji/ns/direction/NsDirectionManager;)Lcom/metamoji/cm/CmEventListener;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;

    iget-object v3, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    iget-object v4, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$key:Ljava/lang/String;

    iget-object v5, v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;->val$val:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;-><init>(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method
