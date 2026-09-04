.class public Lcom/metamoji/ns/NsCollaboManager;
.super Ljava/lang/Object;
.source "NsCollaboManager.java"

# interfaces
.implements Lcom/metamoji/ns/socket/INsCollaboSocketHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/NsCollaboManager$CollaboType;,
        Lcom/metamoji/ns/NsCollaboManager$CollaboUserMode;,
        Lcom/metamoji/ns/NsCollaboManager$CollaboUserRole;,
        Lcom/metamoji/ns/NsCollaboManager$CollaboMode;,
        Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;,
        Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;,
        Lcom/metamoji/ns/NsCollaboManager$KeyValue;,
        Lcom/metamoji/ns/NsCollaboManager$IndicatorCommand;
    }
.end annotation


# static fields
.field private static final PROGRESSVIEW_CONNECTING:Ljava/lang/String; = "connecting"

.field private static final PROGRESSVIEW_LOGMODE_CHAT:Ljava/lang/String; = "logModeChat"

.field private static final PROGRESSVIEW_LOGMODE_PAGE:Ljava/lang/String; = "logModePage"

.field private static final PROGRESSVIEW_LOGMODE_RECORDING:Ljava/lang/String; = "logModeRecording"

.field private static final PROGRESSVIEW_LOGMODE_ROOM:Ljava/lang/String; = "logModeRoom"

.field private static mExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final mExecutorLock:Ljava/lang/Object;

.field public static final mThreadFactory:Lcom/metamoji/cm/CmThreadFactory;

.field private static final m_lockObject:Ljava/lang/Object;

.field private static final m_lockObjectForConnectRoomAfterAction:Ljava/lang/Object;

.field private static final m_lockObjectForReceiving:Ljava/lang/Object;

.field private static final m_lockObjectForRevceivingIndicatorCommand:Ljava/lang/Object;

.field private static final m_lockObjectForSending:Ljava/lang/Object;

.field private static final m_lockObjectForSendingIndicatorCommand:Ljava/lang/Object;

.field private static final m_lockObjectForUserInfoHandler:Ljava/lang/Object;

.field private static sInstance:Lcom/metamoji/ns/NsCollaboManager;


# instance fields
.field m_analysisPostDirectionCount:I

.field m_analysisStartTime:Ljava/util/Date;

.field m_analysisTimer:Ljava/util/Timer;

.field final m_attachBoothRequestingDic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final m_attachBoothSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_chatModelArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

.field m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

.field m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

.field private m_commandSuspender:Lcom/metamoji/ns/NsCollaboCommandSuspender;

.field m_connectRoomAfterAction:Lcom/metamoji/ns/INsCollaboManagerConnectRoomAfterAction;

.field m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

.field m_delayJumpPageId:Ljava/lang/String;

.field m_directionVersion:I

.field m_distributeAddressArray:[Ljava/lang/String;

.field m_distributeClass:Ljava/lang/String;

.field m_distributeCommand:Lcom/metamoji/nt/NtCommand;

.field m_distributePackage:Ljava/lang/String;

.field m_docId:Ljava/lang/String;

.field m_driveId:Ljava/lang/String;

.field m_existPresenter:Z

.field m_handler:Lcom/metamoji/ns/INsCollaboHandler;

.field m_host:Ljava/lang/String;

.field m_idleTimerDisabled:Z

.field m_isClerk:Z

.field m_isDataReceiving:Z

.field m_isDataSending:Z

.field m_isPresenter:Z

.field m_logModeBoothSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_logModeProgressDisabled:Z

.field m_nickName:Ljava/lang/String;

.field m_port:I

.field m_progressViewDic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_progressViewHideTimerDic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_protocolVersion:I

.field m_receivingIndicatorCommand:I

.field m_retryLoginTimer:Ljava/util/Timer;

.field m_roomClosed:Z

.field m_roomId:Ljava/lang/String;

.field m_roomMode:Ljava/lang/String;

.field m_roomSetting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_schoolUserMode:I

.field m_secureRoomPassword:Ljava/lang/String;

.field m_sendingIndicatorCommand:I

.field m_sessionId:Ljava/lang/String;

.field m_userId:Ljava/lang/String;

.field m_userInfoArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ns/NsCollaboUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field m_userInfoArrayHash:I

.field m_userInfoHandlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ns/INsCollaboUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field m_userMode:I

.field m_userRole:I

.field m_withSSL:Z


# direct methods
.method public static synthetic $r8$lambda$eWmtwEhbcmSWeW3JPAWHROkhYcc(Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;Lcom/metamoji/ns/socket/INsCollaboSocketPacketNoCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ns/NsCollaboManager;->lambda$attachBooth$0(Ljava/lang/String;Lcom/metamoji/ns/socket/INsCollaboSocketPacketNoCallback;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCollaboModeBar(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/ui/NsCollaboModeViewBase;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCollaboSettings(Lcom/metamoji/ns/NsCollaboManager;)Lcom/metamoji/ns/NsCollaboSettings;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager;->getCollaboSettings()Lcom/metamoji/ns/NsCollaboSettings;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideProgressViewForKeyDelay(Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->hideProgressViewForKeyDelay(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAnalysisTimer(Lcom/metamoji/ns/NsCollaboManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager;->onAnalysisTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetm_lockObject()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetm_lockObjectForReceiving()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForReceiving:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetm_lockObjectForSending()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForSending:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForSending:Ljava/lang/Object;

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForReceiving:Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForSendingIndicatorCommand:Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForRevceivingIndicatorCommand:Ljava/lang/Object;

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForConnectRoomAfterAction:Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForUserInfoHandler:Ljava/lang/Object;

    .line 1063
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager;->mExecutorLock:Ljava/lang/Object;

    .line 1064
    new-instance v0, Lcom/metamoji/cm/CmThreadFactory;

    const-string v1, "CollaboManager"

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager;->mThreadFactory:Lcom/metamoji/cm/CmThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomSetting:Ljava/util/Map;

    .line 171
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    .line 172
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothSet:Ljava/util/HashSet;

    const/4 v1, 0x0

    .line 223
    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArrayHash:I

    .line 282
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_delayJumpPageId:Ljava/lang/String;

    .line 289
    new-instance v2, Lcom/metamoji/ns/NsCollaboCommandSuspender;

    invoke-direct {v2}, Lcom/metamoji/ns/NsCollaboCommandSuspender;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_commandSuspender:Lcom/metamoji/ns/NsCollaboCommandSuspender;

    .line 339
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    .line 340
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoHandlerList:Ljava/util/ArrayList;

    const/4 v2, -0x1

    .line 341
    iput v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_protocolVersion:I

    .line 342
    iput v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_directionVersion:I

    .line 343
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_driveId:Ljava/lang/String;

    .line 344
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_docId:Ljava/lang/String;

    .line 345
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomId:Ljava/lang/String;

    .line 346
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_host:Ljava/lang/String;

    .line 347
    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_port:I

    .line 348
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_sessionId:Ljava/lang/String;

    .line 349
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_nickName:Ljava/lang/String;

    .line 350
    iput-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_isPresenter:Z

    .line 351
    iput-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_isClerk:Z

    .line 352
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userId:Ljava/lang/String;

    const/4 v2, 0x1

    .line 353
    iput v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    .line 354
    iput v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_schoolUserMode:I

    .line 355
    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userRole:I

    .line 356
    iput-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomClosed:Z

    .line 357
    iput-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_logModeProgressDisabled:Z

    .line 358
    iput-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_idleTimerDisabled:Z

    .line 360
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->initMode2InfoOnDisconnect()V

    .line 361
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_NONE:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    .line 362
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomMode:Ljava/lang/String;

    .line 363
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    .line 364
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    .line 365
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    .line 369
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_logModeBoothSet:Ljava/util/HashSet;

    .line 370
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_progressViewDic:Ljava/util/HashMap;

    .line 373
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_progressViewHideTimerDic:Ljava/util/HashMap;

    .line 377
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->clearDistributeCommandInfo()V

    .line 379
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_retryLoginTimer:Ljava/util/Timer;

    .line 385
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisTimer:Ljava/util/Timer;

    return-void
.end method

.method public static GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 3026
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3029
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private analysis()V
    .locals 2

    .line 4507
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    return-void

    .line 4511
    :cond_0
    monitor-enter v0

    .line 4512
    :try_start_0
    iget v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisPostDirectionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisPostDirectionCount:I

    .line 4513
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private endAnalysis()V
    .locals 2

    .line 4492
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$47;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboManager$47;-><init>(Lcom/metamoji/ns/NsCollaboManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private fireUpdateCollaboUserInfoEvent()V
    .locals 3

    .line 271
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForUserInfoHandler:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoHandlerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/INsCollaboUserInfo;

    .line 274
    invoke-interface {v2}, Lcom/metamoji/ns/INsCollaboUserInfo;->updateCollaboUserInfo()V

    goto :goto_0

    .line 277
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getBoolValueWithRoomSetting(Ljava/util/Map;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4318
    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->getStringValueWithRoomSetting(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4320
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method public static getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4337
    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->getStringValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4339
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2
.end method

.method private getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;
    .locals 1

    .line 1103
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCollaboSettings()Lcom/metamoji/ns/NsCollaboSettings;
    .locals 2

    .line 1116
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1118
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1120
    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/metamoji/ns/NsCollaboManager;
    .locals 1

    .line 331
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->initialize()V

    .line 332
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->sInstance:Lcom/metamoji/ns/NsCollaboManager;

    return-object v0
.end method

.method public static getStringValueWithRoomSetting(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 4328
    invoke-static {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static getStringValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 4347
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4348
    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 4350
    const-string v1, "key2"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4351
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4352
    const-string/jumbo p0, "value"

    invoke-static {v0, p0, p2}, Lcom/metamoji/ns/NsCollaboManager;->getStringValueWithRoomSetting(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2
.end method

.method private handleMode2Changed(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4544
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 4545
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->canShowEditAreaView()Z

    move-result v1

    .line 4546
    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->parseMode2Info(Ljava/util/Map;)V

    .line 4548
    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->updateEditAreaView(Z)V

    .line 4550
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->updateDeadlineInfoViewStatus()V

    .line 4553
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->updateSchoolUserMode()V

    return-void
.end method

.method private handleScoreChanged(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4561
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 4562
    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->parseScoreList(Ljava/util/Map;)V

    .line 4564
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->updateScoreInfoViewStatus()V

    return-void
.end method

.method private hideProgressViewForKeyDelay(Ljava/lang/String;)V
    .locals 4

    .line 4440
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_progressViewHideTimerDic:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    .line 4446
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 4447
    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$45;

    invoke-direct {v1, p0, v0, p1}, Lcom/metamoji/ns/NsCollaboManager$45;-><init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/util/Timer;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 4460
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_progressViewHideTimerDic:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static initialize()V
    .locals 1

    .line 322
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->sInstance:Lcom/metamoji/ns/NsCollaboManager;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager;

    invoke-direct {v0}, Lcom/metamoji/ns/NsCollaboManager;-><init>()V

    sput-object v0, Lcom/metamoji/ns/NsCollaboManager;->sInstance:Lcom/metamoji/ns/NsCollaboManager;

    :cond_0
    return-void
.end method

.method public static isShare()Z
    .locals 2

    .line 603
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$attachBooth$0(Ljava/lang/String;Lcom/metamoji/ns/socket/INsCollaboSocketPacketNoCallback;Ljava/lang/String;)V
    .locals 2

    .line 2026
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 2028
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 2033
    invoke-interface {p2, p3}, Lcom/metamoji/ns/socket/INsCollaboSocketPacketNoCallback;->action(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 2030
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onAnalysisTimer()V
    .locals 4

    .line 4520
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    return-void

    .line 4523
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4526
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisTimer:Ljava/util/Timer;

    monitor-enter v1

    .line 4527
    :try_start_0
    iget v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisPostDirectionCount:I

    const/4 v3, 0x0

    .line 4528
    iput v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisPostDirectionCount:I

    .line 4529
    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisStartTime:Ljava/util/Date;

    .line 4530
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_analysisStartTime:Ljava/util/Date;

    .line 4531
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4533
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz v1, :cond_1

    .line 4534
    invoke-interface {v1, v2, v3, v0}, Lcom/metamoji/ns/INsCollaboHandler;->postDirectionAnalysis(ILjava/util/Date;Ljava/util/Date;)V

    .line 4536
    :cond_1
    const-string/jumbo v1, "\u25a0\u25a0\u25a0 PostDirection analysis \u25a0\u25a0\u25a0  %d post/sec (%s - %s)"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    .line 4531
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V
    .locals 2

    .line 1089
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1090
    :try_start_0
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 1091
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager;->mThreadFactory:Lcom/metamoji/cm/CmThreadFactory;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/metamoji/ns/NsCollaboManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 1093
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1093
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setBoolValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4361
    const-string/jumbo p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/metamoji/ns/NsCollaboManager;->setStringValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setStringValueRoomSettingList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 4371
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4378
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "key2"

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4379
    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 4381
    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4382
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    .line 4389
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4390
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4395
    :cond_4
    const-string v0, "key1"

    const-string v3, "#ClassRoom"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4396
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4397
    const-string/jumbo p1, "value"

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private startAnalysis()V
    .locals 2

    .line 4472
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$46;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboManager$46;-><init>(Lcom/metamoji/ns/NsCollaboManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addNotifyBoothUpdated(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2125
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2128
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    invoke-virtual {v0, p1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommandAddNotifyBoothUpdated(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addUserInfoHandler(Lcom/metamoji/ns/INsCollaboUserInfo;)V
    .locals 2

    .line 237
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForUserInfoHandler:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 239
    :try_start_0
    monitor-exit v0

    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoHandlerList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoHandlerList:Ljava/util/ArrayList;

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    monitor-exit v0

    return-void

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public allowToChangeGroupByStudent()Z
    .locals 2

    .line 4135
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4139
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4140
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4141
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 4142
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->allowToChangeGroupByStudent()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public allowToEditOthersWritings()Z
    .locals 3

    .line 4114
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4117
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 4119
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 4120
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    .line 4124
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4125
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 4126
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->allowToEditOthersWritings()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public allowToJoinNote()Z
    .locals 2

    .line 4077
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4078
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4079
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 4080
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->allowToJoinNote()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public allowToOperationPage()Z
    .locals 2

    .line 4087
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4088
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4089
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 4090
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->allowToOperationPage()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public allowToSaveNoteAndCopyPage()Z
    .locals 2

    .line 4096
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4097
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4098
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 4099
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4100
    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 4101
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->allowToSaveNoteAndCopyPage()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public appendChatModel(Lcom/metamoji/un/text/model/TextModel;)I
    .locals 2

    .line 3983
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_chatModelArray:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 3988
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3992
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 3996
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_chatModelArray:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3999
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_chatModelArray:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setChatData(Ljava/util/List;)V

    .line 4001
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_chatModelArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public attachBooth(Ljava/lang/String;JLcom/metamoji/ns/socket/INsCollaboSocketPacketNoCallback;)Ljava/lang/String;
    .locals 2

    .line 2021
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2025
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p4}, Lcom/metamoji/ns/NsCollaboManager$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;Lcom/metamoji/ns/socket/INsCollaboSocketPacketNoCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommandAttachBooth(Ljava/lang/String;JLcom/metamoji/ns/socket/INsCollaboSocketPacketNoCallback;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2038
    iget-object p3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothSet:Ljava/util/HashSet;

    monitor-enter p3

    .line 2039
    :try_start_0
    iget-object p4, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    monitor-exit p3

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p2

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public changeClerk(Z)V
    .locals 2

    .line 2285
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v0, v1, :cond_0

    return-void

    .line 2290
    :cond_0
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$24;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$24;-><init>(Lcom/metamoji/ns/NsCollaboManager;Z)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method

.method public changeMembersProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2332
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v0, v1, :cond_0

    return-void

    .line 2337
    :cond_0
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$26;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/metamoji/ns/NsCollaboManager$26;-><init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method

.method public changeMode(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V
    .locals 1

    const/4 v0, 0x1

    .line 654
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->changeMode(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;Z)V

    return-void
.end method

.method public changeMode(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;Z)V
    .locals 2

    .line 665
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne p1, v0, :cond_0

    return-void

    .line 670
    :cond_0
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, p1, :cond_1

    .line 673
    monitor-exit v0

    return-void

    .line 675
    :cond_1
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    .line 677
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 688
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$5;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$5;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 717
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz p1, :cond_3

    .line 718
    iget-object p2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-interface {p1, p2}, Lcom/metamoji/ns/INsCollaboHandler;->collaboModeChanged(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V

    .line 721
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public changeMode2End()V
    .locals 2

    .line 4596
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v0, v1, :cond_0

    return-void

    .line 4601
    :cond_0
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$49;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/NsCollaboManager$49;-><init>(Lcom/metamoji/ns/NsCollaboManager;)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method

.method public changeMode2Start(Z)V
    .locals 2

    .line 4574
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v0, v1, :cond_0

    return-void

    .line 4579
    :cond_0
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$48;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$48;-><init>(Lcom/metamoji/ns/NsCollaboManager;Z)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method

.method public changePresenter(Z)V
    .locals 2

    .line 2237
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v0, v1, :cond_0

    return-void

    .line 2242
    :cond_0
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$22;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$22;-><init>(Lcom/metamoji/ns/NsCollaboManager;Z)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method

.method public changePresenter(ZLjava/lang/String;)V
    .locals 2

    .line 2261
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v0, v1, :cond_0

    return-void

    .line 2266
    :cond_0
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$23;

    invoke-direct {v0, p0, p2, p1}, Lcom/metamoji/ns/NsCollaboManager$23;-><init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method

.method public changeProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2307
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v0, v1, :cond_0

    return-void

    .line 2312
    :cond_0
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/ns/NsCollaboManager$25;-><init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method

.method public chatModelArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3976
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_chatModelArray:Ljava/util/List;

    return-object v0
.end method

.method public checkDirectionVersion(I)Z
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 2979
    iput p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_directionVersion:I

    return v0

    :cond_0
    const/4 p1, -0x1

    .line 2983
    iput p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_protocolVersion:I

    .line 2984
    iput p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_directionVersion:I

    const/4 p1, 0x0

    return p1
.end method

.method public checkProtocolVersion(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2962
    iput p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_protocolVersion:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    .line 2966
    iput p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_protocolVersion:I

    .line 2967
    iput p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_directionVersion:I

    const/4 p1, 0x0

    return p1
.end method

.method public clearDistributeCommandInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 4009
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/metamoji/ns/NsCollaboManager;->setDistributeCommandInfo(Lcom/metamoji/nt/NtCommand;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method closeSocket()V
    .locals 4

    .line 1230
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1233
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->setHandler(Lcom/metamoji/ns/socket/INsCollaboSocketHandler;)V

    .line 1234
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomId:Ljava/lang/String;

    .line 1235
    new-instance v3, Lcom/metamoji/ns/NsCollaboManager$9;

    invoke-direct {v3, p0, v0, v2}, Lcom/metamoji/ns/NsCollaboManager$9;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/ns/socket/NsCollaboSocket;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    .line 1242
    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 1246
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1247
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1248
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_logModeBoothSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 1248
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    return-object v0
.end method

.method public collaboSocketClose()V
    .locals 5

    const/4 v0, 0x1

    .line 1685
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocketWithContinueCollaboMode(Z)V

    .line 1688
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_retryLoginTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    return-void

    .line 1693
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_retryLoginTimer:Ljava/util/Timer;

    .line 1694
    new-instance v2, Lcom/metamoji/ns/NsCollaboManager$17;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/NsCollaboManager$17;-><init>(Lcom/metamoji/ns/NsCollaboManager;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1703
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboManager;->reloginRoomSocketWithDelay(Z)V

    return-void
.end method

.method public collaboSocketConnectServerFailed(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1960
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto :goto_0

    .line 1964
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocket()V

    .line 1966
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1968
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$20;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$20;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 p1, 0x0

    .line 1985
    :goto_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_ShareServer_Connect_Failed:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 1987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1989
    :cond_2
    new-instance p2, Lcom/metamoji/ns/NsCollaboManager$21;

    invoke-direct {p2, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$21;-><init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0, p2}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    if-eqz p1, :cond_3

    .line 2001
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public collaboSocketReceivedData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 1717
    :cond_0
    const-string v0, "cmd"

    invoke-static {p3, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1718
    const-string v1, "OpenConnection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    .line 1722
    :cond_1
    const-string v1, "LoginRoomResult"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1725
    invoke-virtual {p0, p3}, Lcom/metamoji/ns/NsCollaboManager;->handleLoginRoomResult(Ljava/util/Map;)V

    return-void

    .line 1727
    :cond_2
    const-string v1, "AttachBoothResult"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1730
    invoke-virtual {p0, p3, p5}, Lcom/metamoji/ns/NsCollaboManager;->handleAttachBoothResult(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    .line 1732
    :cond_3
    const-string v1, "DetachBoothResult"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1735
    invoke-virtual {p0, p3}, Lcom/metamoji/ns/NsCollaboManager;->handleDetachBoothResult(Ljava/util/Map;)V

    return-void

    .line 1737
    :cond_4
    const-string v1, "AddNotifyBoothUpdatedResult"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_0

    .line 1742
    :cond_5
    const-string v1, "ChangeModeResult"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    .line 1746
    :cond_6
    const-string v1, "ChangePropertyResult"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 1750
    :cond_7
    const-string v1, "ChangeMembersModeResult"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_0

    .line 1754
    :cond_8
    const-string v2, "ChangeMembersPropertyResult"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    .line 1758
    :cond_9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    .line 1762
    :cond_a
    const-string v1, "PostDataResult"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1765
    invoke-virtual {p0, p3, p4, p5}, Lcom/metamoji/ns/NsCollaboManager;->handlePostDirectionResult(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1767
    :cond_b
    const-string p5, "PostData"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_c

    .line 1770
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/ns/NsCollaboManager;->handleReceiveDirection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    .line 1772
    :cond_c
    const-string p1, "RoomUpdated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1775
    invoke-virtual {p0, p3}, Lcom/metamoji/ns/NsCollaboManager;->handleRoomUpdated(Ljava/util/Map;)V

    return-void

    .line 1777
    :cond_d
    const-string p1, "ModeChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1780
    invoke-virtual {p0, p3}, Lcom/metamoji/ns/NsCollaboManager;->handleModeChanged(Ljava/util/Map;)V

    return-void

    .line 1782
    :cond_e
    const-string p1, "RoleChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1785
    invoke-virtual {p0, p3}, Lcom/metamoji/ns/NsCollaboManager;->handleRoleChanged(Ljava/util/Map;)V

    return-void

    .line 1787
    :cond_f
    const-string p1, "PropertyChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    :goto_0
    return-void

    .line 1791
    :cond_10
    const-string p1, "Ping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1794
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->handlePing()V

    return-void

    .line 1796
    :cond_11
    const-string p1, "PostMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1799
    invoke-virtual {p0, p3}, Lcom/metamoji/ns/NsCollaboManager;->handlePostMessage(Ljava/util/Map;)V

    return-void

    .line 1801
    :cond_12
    const-string p1, "BoothUpdated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1804
    invoke-virtual {p0, p3}, Lcom/metamoji/ns/NsCollaboManager;->handleBoothUpdated(Ljava/util/Map;)V

    return-void

    .line 1807
    :cond_13
    const-string p1, "SettingChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1810
    invoke-virtual {p0, p3}, Lcom/metamoji/ns/NsCollaboManager;->handleSettingChanged(Ljava/util/Map;)V

    return-void

    .line 1812
    :cond_14
    const-string p1, "Mode2Changed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1815
    invoke-direct {p0, p3}, Lcom/metamoji/ns/NsCollaboManager;->handleMode2Changed(Ljava/util/Map;)V

    return-void

    .line 1817
    :cond_15
    const-string p1, "ScoreChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1820
    invoke-direct {p0, p3}, Lcom/metamoji/ns/NsCollaboManager;->handleScoreChanged(Ljava/util/Map;)V

    return-void

    .line 1822
    :cond_16
    const-string p1, "Finish"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1825
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->handleFinish()V

    return-void

    .line 1829
    :cond_17
    const-string p1, "[MMJNsCollaboManager] --- Unknown Result! ---"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method public collaboSocketReceivingData(Z)V
    .locals 2

    .line 1890
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForReceiving:Ljava/lang/Object;

    monitor-enter v0

    .line 1891
    :try_start_0
    iput-boolean p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_isDataReceiving:Z

    .line 1892
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1895
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$19;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$19;-><init>(Lcom/metamoji/ns/NsCollaboManager;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 1892
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public collaboSocketSendingData(Z)V
    .locals 2

    .line 1851
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForSending:Ljava/lang/Object;

    monitor-enter v0

    .line 1852
    :try_start_0
    iput-boolean p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_isDataSending:Z

    .line 1853
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1856
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$18;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$18;-><init>(Lcom/metamoji/ns/NsCollaboManager;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 1853
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public collaboType()Lcom/metamoji/ns/NsCollaboManager$CollaboType;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    return-object v0
.end method

.method public collaboUserMode()I
    .locals 1

    const/4 v0, 0x1

    .line 739
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserModeWithDependCurrentPageOrLayer(Z)I

    move-result v0

    return v0
.end method

.method public collaboUserModeWithDependCurrentPageOrLayer(Z)I
    .locals 4

    .line 743
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 745
    iget v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    .line 747
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x3

    .line 751
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v2

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_1

    .line 753
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isEditablePersonalLayerMode()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBelongClassStudent()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomMode:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "free"

    .line 754
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, 0x8

    if-eqz p1, :cond_2

    .line 758
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 759
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->isTeacherPersonalLayer()Z

    move-result v2

    if-eqz v2, :cond_2

    and-int/lit8 v1, v1, -0x9

    :cond_2
    if-eqz p1, :cond_3

    .line 766
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object p1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne p1, v2, :cond_3

    .line 767
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 768
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 769
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isEditablePersonalLayerForTeacher()Z

    move-result p1

    if-nez p1, :cond_3

    and-int/lit8 v1, v1, -0x9

    .line 775
    :cond_3
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->userModeDependOnMode2(I)I

    move-result p1

    return p1
.end method

.method public collaboUserRole()I
    .locals 1

    .line 788
    iget v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userRole:I

    return v0
.end method

.method public connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    return-object v0
.end method

.method decodeNickName(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3854
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 3855
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3857
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 3859
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3861
    const-string v0, "NsCollaboManager.decodeNickname"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 3865
    :cond_1
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public detachBooth(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2100
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2104
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->preDetachBooth(Ljava/lang/String;)V

    .line 2105
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    invoke-virtual {v0, p1}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommandDetachBooth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public deviceIdInitialized(Ljava/lang/String;)V
    .locals 1

    .line 4067
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz v0, :cond_0

    .line 4068
    invoke-interface {v0, p1}, Lcom/metamoji/ns/INsCollaboHandler;->deviceIdInitialized(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public didChangeConnectionMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 575
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->reloginRoomSocketWithDelay(Z)V

    return-void

    .line 581
    :cond_0
    new-instance p1, Lcom/metamoji/ns/NsCollaboManager$4;

    invoke-direct {p1, p0}, Lcom/metamoji/ns/NsCollaboManager$4;-><init>(Lcom/metamoji/ns/NsCollaboManager;)V

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method

.method public directionVersion()I
    .locals 1

    .line 3002
    iget v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_directionVersion:I

    return v0
.end method

.method public enableCommand(ZZZZZZZZ)Z
    .locals 10

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 877
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/ns/NsCollaboManager;->enableCommandDependCurrentPageOrLayer(ZZZZZZZZZ)Z

    move-result p1

    return p1
.end method

.method public enableCommandDependCurrentPageOrLayer(ZZZZZZZZZ)Z
    .locals 3

    .line 898
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->collaboType()Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    move-result-object v0

    .line 899
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_NONE:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 904
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object p2

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq p2, v1, :cond_1

    return v0

    .line 909
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserModeWithDependCurrentPageOrLayer(Z)I

    move-result p1

    if-eqz p3, :cond_3

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_3

    .line 913
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p2

    if-nez p2, :cond_2

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_3

    :cond_2
    return v2

    .line 921
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result p2

    if-nez p2, :cond_7

    if-eqz p4, :cond_5

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_5

    .line 929
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p2

    if-nez p2, :cond_4

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_5

    :cond_4
    return v2

    :cond_5
    if-eqz p5, :cond_6

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_6

    return v2

    :cond_6
    if-eqz p6, :cond_a

    and-int/2addr p1, v2

    if-eqz p1, :cond_a

    return v2

    :cond_7
    if-eqz p7, :cond_8

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_8

    return v2

    :cond_8
    if-eqz p8, :cond_9

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_9

    return v2

    :cond_9
    if-eqz p9, :cond_a

    and-int/2addr p1, v2

    if-eqz p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public executeConnectRoomAfterAction(Z)V
    .locals 3

    .line 4634
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForConnectRoomAfterAction:Ljava/lang/Object;

    monitor-enter v0

    .line 4635
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectRoomAfterAction:Lcom/metamoji/ns/INsCollaboManagerConnectRoomAfterAction;

    if-eqz v1, :cond_0

    .line 4636
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/NsCollaboManager$50;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$50;-><init>(Lcom/metamoji/ns/NsCollaboManager;Z)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 4644
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public existConnectRoomAfterAction()Z
    .locals 2

    .line 4626
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForConnectRoomAfterAction:Ljava/lang/Object;

    monitor-enter v0

    .line 4627
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectRoomAfterAction:Lcom/metamoji/ns/INsCollaboManagerConnectRoomAfterAction;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4628
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public existPresenter()Z
    .locals 1

    .line 806
    iget-boolean v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_existPresenter:Z

    return v0
.end method

.method public getCommandSuspender()Lcom/metamoji/ns/NsCollaboCommandSuspender;
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_NONE:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_commandSuspender:Lcom/metamoji/ns/NsCollaboCommandSuspender;

    return-object v0
.end method

.method public getDelayJumpPageId()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_delayJumpPageId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 2775
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v0

    .line 2776
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistributeCommandInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4032
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_distributeCommand:Lcom/metamoji/nt/NtCommand;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4035
    :cond_0
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$41;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/NsCollaboManager$41;-><init>(Lcom/metamoji/ns/NsCollaboManager;)V

    return-object v0
.end method

.method public getHandler()Lcom/metamoji/ns/INsCollaboHandler;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 2784
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomSetting()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4314
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomSetting:Ljava/util/Map;

    return-object v0
.end method

.method public getSecureRoomPassword()Ljava/lang/String;
    .locals 1

    .line 4056
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_secureRoomPassword:Ljava/lang/String;

    return-object v0
.end method

.method handleAttachBoothResult(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2050
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->isSuccess(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2052
    const-string v0, "bid"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 2055
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 2057
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2059
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2061
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2063
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2067
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 2069
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/ns/INsCollaboHandler;->collaboBoothAttached(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 2067
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void

    .line 2074
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocket()V

    return-void
.end method

.method handleBoothUpdated(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2921
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2925
    :cond_0
    const-string v0, "bid"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 2927
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    invoke-interface {v0, p1}, Lcom/metamoji/ns/INsCollaboHandler;->boothUpdated(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method handleDetachBoothResult(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2112
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->isSuccess(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2115
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocket()V

    :cond_0
    return-void
.end method

.method handleDevRoomInfo()V
    .locals 4

    .line 4408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\u63a5\u7d9a\u4e2d\u306eroomID]\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4410
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4411
    const-string v1, "[\u63a5\u7d9a\u4e2d\u306eboothID]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4412
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 4413
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4414
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4415
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4417
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 4417
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method handleFinish()V
    .locals 0

    .line 2907
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocket()V

    return-void
.end method

.method handleLoginRoomResult(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1257
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1260
    :try_start_0
    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$10;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboManager$10;-><init>(Lcom/metamoji/ns/NsCollaboManager;)V

    .line 1270
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->isSuccess(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomId:Ljava/lang/String;

    const-string/jumbo v3, "rid"

    invoke-static {p1, v3}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 1305
    :cond_0
    const-string/jumbo v2, "rtype"

    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1306
    const-string v3, "casual"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1308
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_CASUAL:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    goto :goto_0

    .line 1309
    :cond_1
    const-string v3, "formal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1311
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_FORMAL:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    goto :goto_0

    .line 1312
    :cond_2
    const-string v3, "limited"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1314
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_LIMITED:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    .line 1339
    :goto_0
    const-string/jumbo v1, "rmode"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomMode:Ljava/lang/String;

    .line 1342
    const-string/jumbo v1, "uid"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userId:Ljava/lang/String;

    .line 1343
    const-string v1, "mode"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/metamoji/ns/NsCollaboManager;->parseUserMode(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    .line 1344
    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_schoolUserMode:I

    .line 1345
    const-string/jumbo v1, "role"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/metamoji/ns/NsCollaboManager;->parseUserRole(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userRole:I

    .line 1349
    const-string/jumbo v1, "setting"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/metamoji/ns/NsCollaboManager;->parseRoomSetting(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomSetting:Ljava/util/Map;

    .line 1352
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 1353
    invoke-virtual {v1, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->parseScoreList(Ljava/util/Map;)V

    .line 1355
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->canShowEditAreaView()Z

    move-result v2

    .line 1356
    invoke-virtual {v1, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->parseMode2Info(Ljava/util/Map;)V

    .line 1358
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->onLoginRoom()V

    .line 1361
    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager;->updateEditAreaView(Z)V

    const/4 p1, 0x1

    .line 1364
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->executeConnectRoomAfterAction(Z)V

    .line 1365
    monitor-exit v0

    return-void

    .line 1317
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocket()V

    .line 1319
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1321
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ns/NsCollaboManager$12;

    invoke-direct {v3, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$12;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1334
    :cond_4
    sget p1, Lcom/metamoji/noteanytime/R$string;->Share_Version_Error_Protocol:I

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(ILcom/metamoji/ns/INsCollaboAction;)V

    .line 1335
    monitor-exit v0

    return-void

    .line 1272
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocket()V

    .line 1274
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1276
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ns/NsCollaboManager$11;

    invoke-direct {v4, p0, v2}, Lcom/metamoji/ns/NsCollaboManager$11;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1291
    :cond_6
    const-string/jumbo v2, "status"

    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1292
    invoke-static {v2, v1}, Lcom/metamoji/ns/NsCollaboUtils;->showLoginRoomErrorMessageForSocket(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1294
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_ShareServer_Connect_Failed:I

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    .line 1295
    const-string v3, "msg"

    invoke-static {p1, v3}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 1297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1299
    :cond_7
    invoke-static {v2, v1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 1301
    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1365
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method handleModeChanged(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2463
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2464
    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_0

    .line 2468
    :cond_0
    const-string v2, "NsCollaboManager.handleModeChanged(%s,%s)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2470
    const-string v2, "log"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2472
    const-string v0, "bid"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2473
    invoke-virtual {p0, v1, p1}, Lcom/metamoji/ns/NsCollaboManager;->modeChangeForLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2474
    :cond_1
    const-string p1, "presenter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "enable"

    if-eqz p1, :cond_2

    .line 2476
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 2477
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->modeChangeForPresenter(Z)V

    return-void

    .line 2478
    :cond_2
    const-string p1, "clerk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2480
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 2481
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->modeChangeForClerk(Z)V

    return-void

    .line 2482
    :cond_3
    const-string/jumbo p1, "speaker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2484
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 2485
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->modeChangeForSpeaker(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method handlePing()V
    .locals 1

    .line 2839
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$33;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/NsCollaboManager$33;-><init>(Lcom/metamoji/ns/NsCollaboManager;)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method

.method handlePostDirectionResult(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2168
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->isSuccess(Ljava/util/Map;)Z

    move-result p1

    .line 2169
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz v0, :cond_0

    .line 2170
    invoke-interface {v0, p1, p2, p3}, Lcom/metamoji/ns/INsCollaboHandler;->collaboPostDirectionResult(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method handlePostMessage(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2861
    const-string v0, "NsCollaboManager.handlePostMessage"

    const-string v1, "UTF-8"

    const-string v2, "message"

    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 2865
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 2868
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2876
    const-string/jumbo v2, "title"

    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 2877
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2878
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 2880
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2882
    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    .line 2889
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$34;

    invoke-direct {v0, p0, v4, v2}, Lcom/metamoji/ns/NsCollaboManager$34;-><init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    :catch_1
    move-exception p1

    .line 2870
    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method handleReceiveDirection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2193
    const-string v0, "NsCollaboManager.handleReceiveDirection %s"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2196
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2201
    :cond_0
    invoke-virtual {p0, p4}, Lcom/metamoji/ns/NsCollaboManager;->isAcceptingBooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2206
    :cond_1
    const-string v0, "binaryData"

    invoke-static {p3, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2209
    const-string v0, "data"

    invoke-static {p3, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 2213
    :cond_2
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2217
    :cond_3
    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    invoke-direct {v2}, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;-><init>()V

    .line 2218
    iput-object p4, v2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    .line 2219
    const-string/jumbo p4, "seq"

    invoke-static {p3, p4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p4

    int-to-long v3, p4

    iput-wide v3, v2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->sequenceNo:J

    .line 2220
    const-string/jumbo p4, "self"

    invoke-static {p3, p4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p4

    const/4 v3, 0x1

    if-ne p4, v3, :cond_4

    move v1, v3

    :cond_4
    iput-boolean v1, v2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBackFromServer:Z

    .line 2221
    iget-boolean p4, v2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBackFromServer:Z

    iput-boolean p4, v2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    .line 2222
    const-string p4, "date"

    invoke-static {p3, p4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, v2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->timestamp:Ljava/lang/String;

    .line 2223
    const-string/jumbo p4, "uid"

    invoke-static {p3, p4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->uid:Ljava/lang/String;

    .line 2224
    iget-object p3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    invoke-interface {p3, p1, p2, v0, v2}, Lcom/metamoji/ns/INsCollaboHandler;->collaboDirectionReceived(Ljava/lang/String;Ljava/lang/String;[BLcom/metamoji/ns/direction/NsDirectionReceiveInfo;)V

    return-void
.end method

.method handleRoleChanged(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2494
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2495
    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 2500
    :cond_0
    const-string v1, "enable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 2502
    const-string v1, "presenter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 2505
    :cond_1
    const-string/jumbo v1, "speaker"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 2513
    :goto_0
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 2517
    iget v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userRole:I

    if-eqz p1, :cond_2

    or-int p1, v2, v0

    .line 2515
    :try_start_0
    iput p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userRole:I

    goto :goto_1

    :cond_2
    not-int p1, v0

    and-int/2addr p1, v2

    .line 2517
    iput p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userRole:I

    .line 2519
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method handleRoomUpdated(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2354
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2355
    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2359
    :cond_0
    const-string v2, "NsCollaboManager.handleRoomUpdated(%s,%s)"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2364
    const-string/jumbo v2, "user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2369
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v0, v2, :cond_6

    .line 2372
    iget v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArrayHash:I

    .line 2377
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v4, Lcom/metamoji/ns/NsCollaboManager$27;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/metamoji/ns/NsCollaboManager$27;-><init>(Lcom/metamoji/ns/NsCollaboManager;ILjava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v4}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    .line 2409
    :cond_1
    const-string/jumbo p1, "rtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 2416
    sget-object p1, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter p1

    .line 2417
    :try_start_0
    const-string v0, "casual"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2419
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_CASUAL:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    goto :goto_0

    .line 2420
    :cond_2
    const-string v0, "formal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2422
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_FORMAL:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    goto :goto_0

    .line 2423
    :cond_3
    const-string v0, "limited"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2425
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_LIMITED:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    :goto_0
    move v3, v2

    goto :goto_1

    .line 2428
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocket()V

    .line 2434
    :goto_1
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2436
    :cond_5
    const-string/jumbo p1, "rmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2439
    sget-object p1, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter p1

    .line 2440
    :try_start_1
    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomMode:Ljava/lang/String;

    .line 2445
    monitor-exit p1

    move v3, v2

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 2452
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz p1, :cond_7

    .line 2453
    iget v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_existPresenter:Z

    invoke-interface {p1, v0, v1}, Lcom/metamoji/ns/INsCollaboHandler;->userModeChanged(IZ)V

    :cond_7
    :goto_3
    return-void
.end method

.method handleSettingChanged(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2941
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-nez v0, :cond_0

    return-void

    .line 2946
    :cond_0
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2947
    :try_start_0
    const-string/jumbo v1, "setting"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/ns/NsCollaboManager;->parseRoomSetting(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomSetting:Ljava/util/Map;

    .line 2948
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method hasConnectInfo()Z
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_host:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_port:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method hideAllProgressView()V
    .locals 4

    .line 2757
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_progressViewDic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2758
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2759
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/metamoji/ns/NsCollaboManager;->hideProgressViewForKey(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method hideProgressViewForKey(Ljava/lang/String;)V
    .locals 1

    .line 2746
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_progressViewDic:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/UiToast;

    if-eqz v0, :cond_0

    .line 2748
    invoke-virtual {v0}, Lcom/metamoji/ui/UiToast;->hide()V

    .line 2749
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_progressViewDic:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method initChatModelArray()V
    .locals 2

    .line 3939
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3943
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 3944
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getChatData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_chatModelArray:Ljava/util/List;

    goto :goto_0

    .line 3948
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_chatModelArray:Ljava/util/List;

    .line 3952
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_chatModelArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3953
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$40;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboManager$40;-><init>(Lcom/metamoji/ns/NsCollaboManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method initUserInfoArray()V
    .locals 3

    .line 3041
    iget v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArrayHash:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArrayHash:I

    .line 3045
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3046
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3048
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/NsCollaboManager$35;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/NsCollaboManager$35;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 3065
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    goto :goto_0

    .line 3068
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3069
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-lez v0, :cond_2

    .line 3073
    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager;->fireUpdateCollaboUserInfoEvent()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 3076
    iput-boolean v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_existPresenter:Z

    .line 3079
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 3080
    invoke-interface {v0, v1}, Lcom/metamoji/ns/INsCollaboHandler;->userPropertyInitialized(Lcom/metamoji/ns/NsCollaboUserInfo;)V

    :cond_3
    return-void
.end method

.method public initializeOnLoadedCollaboDocument()V
    .locals 3

    .line 465
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    const-string v2, "MMJNsShareSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboSettings;

    .line 474
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v2

    check-cast v2, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocumentEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 476
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboSettings;->getSecureRoom()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "forSchoolWithDeadline"

    .line 477
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboSettings;->getShareType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 478
    invoke-virtual {v2, v0}, Lcom/metamoji/noteanytime/EditorActivity;->setEditAreaVisibility(Z)V

    .line 503
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager;->startAnalysis()V

    return-void
.end method

.method public initializeOnOpenedCollaboDocument()V
    .locals 3

    .line 427
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/NsCollaboManager$2;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/NsCollaboManager$2;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->initChatModelArray()V

    return-void
.end method

.method public initializeOnOpeningCollaboDocument()V
    .locals 3

    .line 396
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_0
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_CASUAL:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    const/4 v1, 0x0

    .line 399
    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomMode:Ljava/lang/String;

    .line 401
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    .line 402
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    .line 403
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/NsCollaboManager$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/NsCollaboManager$1;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 403
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isAcceptingBooth(Ljava/lang/String;)Z
    .locals 2

    .line 2182
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 2183
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isCollabo()Z
    .locals 2

    .line 627
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->collaboType()Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_NONE:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLogModeProgressDisabled()Z
    .locals 1

    .line 853
    iget-boolean v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_logModeProgressDisabled:Z

    return v0
.end method

.method public isPresenter()Z
    .locals 1

    .line 797
    iget v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRoomClosed()Z
    .locals 1

    .line 830
    iget-boolean v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomClosed:Z

    return v0
.end method

.method isSuccess(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1838
    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1842
    :cond_0
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public isSupportedProtocolVersion(I)Z
    .locals 1

    .line 3018
    iget v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_protocolVersion:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isVisibleProgressView()Z
    .locals 1

    .line 2764
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_progressViewDic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isVisitor(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_0

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public loginRoomSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .line 997
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 998
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 999
    invoke-virtual {p0, v2}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocketWithContinueCollaboMode(Z)V

    .line 1007
    :cond_0
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->changeMode(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;Z)V

    .line 1011
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_driveId:Ljava/lang/String;

    .line 1012
    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_docId:Ljava/lang/String;

    .line 1013
    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomId:Ljava/lang/String;

    .line 1014
    iput-object p4, p0, Lcom/metamoji/ns/NsCollaboManager;->m_host:Ljava/lang/String;

    .line 1015
    iput p5, p0, Lcom/metamoji/ns/NsCollaboManager;->m_port:I

    .line 1016
    iput-object p6, p0, Lcom/metamoji/ns/NsCollaboManager;->m_sessionId:Ljava/lang/String;

    .line 1017
    iput-boolean p8, p0, Lcom/metamoji/ns/NsCollaboManager;->m_withSSL:Z

    .line 1020
    iput-object p7, p0, Lcom/metamoji/ns/NsCollaboManager;->m_nickName:Ljava/lang/String;

    if-nez p7, :cond_1

    .line 1023
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object p1

    .line 1024
    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboDeviceInfo;->m_nickName:Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_nickName:Ljava/lang/String;

    goto :goto_0

    .line 1025
    :cond_1
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 1027
    sget p1, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdMemberNoNickname:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_nickName:Ljava/lang/String;

    .line 1030
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->openSocket()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1033
    invoke-virtual {p0, v2, v2}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocketWithContinueCollaboMode(ZZ)V

    .line 1034
    monitor-exit v0

    return v2

    .line 1038
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->initUserInfoArray()V

    .line 1041
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1043
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ns/NsCollaboManager$6;

    invoke-direct {p2, p0}, Lcom/metamoji/ns/NsCollaboManager$6;-><init>(Lcom/metamoji/ns/NsCollaboManager;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_4
    const/4 p1, 0x1

    .line 1054
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1055
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public logoutRoomSocket()V
    .locals 1

    const/4 v0, 0x0

    .line 1499
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocketWithContinueCollaboMode(Z)V

    return-void
.end method

.method logoutRoomSocketWithContinueCollaboMode(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1508
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocketWithContinueCollaboMode(ZZ)V

    return-void
.end method

.method logoutRoomSocketWithContinueCollaboMode(ZZ)V
    .locals 5

    .line 1511
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1513
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->closeSocket()V

    const/4 v1, 0x0

    .line 1516
    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userId:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1517
    iput v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    .line 1518
    iput v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_schoolUserMode:I

    .line 1521
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->endPersonalMode()V

    .line 1522
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->clearUpdatedPersonalBoothIdSet(Ljava/lang/String;)Z

    const/4 v3, 0x0

    .line 1524
    iput v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userRole:I

    .line 1525
    iput-boolean v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomClosed:Z

    .line 1526
    iput-boolean v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_logModeProgressDisabled:Z

    .line 1528
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/metamoji/forSchool/ScSchoolManager;->initMode2InfoOnDisconnect(Z)V

    .line 1531
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->onLogoutRoom()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 1541
    sget-object p1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-virtual {p0, p1, v3}, Lcom/metamoji/ns/NsCollaboManager;->changeMode(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;Z)V

    :cond_0
    const/4 p1, -0x1

    .line 1545
    iput p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_protocolVersion:I

    .line 1546
    iput p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_directionVersion:I

    .line 1547
    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_driveId:Ljava/lang/String;

    .line 1548
    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_docId:Ljava/lang/String;

    .line 1549
    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomId:Ljava/lang/String;

    .line 1550
    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_host:Ljava/lang/String;

    .line 1551
    iput v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_port:I

    .line 1552
    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_sessionId:Ljava/lang/String;

    .line 1553
    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_nickName:Ljava/lang/String;

    .line 1554
    iput-boolean v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_isPresenter:Z

    .line 1555
    iput-boolean v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_isClerk:Z

    .line 1557
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method modeChangeForClerk(Z)V
    .locals 2

    .line 2671
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2675
    iget v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    if-eqz p1, :cond_0

    or-int/lit8 v1, v1, 0x10

    .line 2673
    :try_start_0
    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v1, -0x11

    .line 2675
    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    .line 2677
    :goto_0
    iget v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_schoolUserMode:I

    .line 2679
    iput-boolean p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_isClerk:Z

    .line 2680
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2682
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$30;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$30;-><init>(Lcom/metamoji/ns/NsCollaboManager;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 2691
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz p1, :cond_1

    .line 2692
    iget v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_existPresenter:Z

    invoke-interface {p1, v0, v1}, Lcom/metamoji/ns/INsCollaboHandler;->userModeChanged(IZ)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 2680
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method modeChangeForLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 2526
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2531
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_3

    .line 2536
    :cond_1
    sget-object v1, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_NONE:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    .line 2538
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 2540
    sget-object v1, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_START:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    .line 2542
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_logModeBoothSet:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object v9, v1

    move v7, v3

    goto :goto_1

    .line 2544
    :cond_2
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 2546
    sget-object v1, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_END:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    .line 2548
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_logModeBoothSet:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2549
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_logModeBoothSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v9, v1

    move v7, v2

    .line 2559
    :goto_1
    sget-object p1, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_NONE:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    if-eq v9, p1, :cond_4

    .line 2560
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 2561
    invoke-interface {p1}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 2565
    invoke-virtual {v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->receiveInvoker()Lcom/metamoji/ns/direction/NsRecvInvoker;

    move-result-object p1

    new-instance v4, Lcom/metamoji/ns/NsCollaboManager$28;

    move-object v5, p0

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/metamoji/ns/NsCollaboManager$28;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/ns/direction/NsDirectionManager;ZLjava/lang/String;Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;)V

    invoke-virtual {p1, v4}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    move-object v5, p0

    move-object v8, p2

    .line 2613
    :goto_2
    iget-object p1, v5, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz p1, :cond_6

    .line 2614
    invoke-interface {p1, v8, v9}, Lcom/metamoji/ns/INsCollaboHandler;->logModeChanged(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;)V

    return-void

    :cond_5
    :goto_3
    move-object v5, p0

    :cond_6
    return-void
.end method

.method modeChangeForPresenter(Z)V
    .locals 3

    .line 2622
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2629
    iget v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    if-eqz p1, :cond_0

    or-int/lit8 v1, v1, 0x4

    .line 2624
    :try_start_0
    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    const/4 v1, 0x1

    .line 2625
    iput-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_existPresenter:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 2630
    iput-boolean v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_existPresenter:Z

    :cond_1
    and-int/lit8 v1, v1, -0x5

    .line 2633
    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    .line 2635
    :goto_0
    iget v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_schoolUserMode:I

    .line 2637
    iput-boolean p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_isPresenter:Z

    .line 2638
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2640
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$29;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$29;-><init>(Lcom/metamoji/ns/NsCollaboManager;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 2662
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz p1, :cond_2

    .line 2663
    iget v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_existPresenter:Z

    invoke-interface {p1, v0, v1}, Lcom/metamoji/ns/INsCollaboHandler;->userModeChanged(IZ)V

    :cond_2
    return-void

    .line 2638
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method modeChangeForSpeaker(Z)V
    .locals 2

    .line 2700
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 2704
    iget v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v1, 0x8

    .line 2702
    :try_start_0
    iput p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v1, -0x9

    .line 2704
    iput p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    .line 2706
    :goto_0
    iget p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    iput p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_schoolUserMode:I

    .line 2707
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2710
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz v0, :cond_1

    .line 2711
    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_existPresenter:Z

    invoke-interface {v0, p1, v1}, Lcom/metamoji/ns/INsCollaboHandler;->userModeChanged(IZ)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 2707
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method onLoginRoom()V
    .locals 5

    .line 1429
    const-string v0, "[MMJNsCollaboManager] -----||||| onLoginRoom |||||-----"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1431
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    .line 1434
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->updateIdleTimerDisabled()V

    .line 1436
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1438
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ns/NsCollaboManager$13;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/ns/NsCollaboManager$13;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1459
    sget-object v2, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForSendingIndicatorCommand:Ljava/lang/Object;

    monitor-enter v2

    .line 1460
    :try_start_0
    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_sendingIndicatorCommand:I

    .line 1461
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1462
    sget-object v3, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForRevceivingIndicatorCommand:Ljava/lang/Object;

    monitor-enter v3

    .line 1463
    :try_start_1
    iput v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_receivingIndicatorCommand:I

    .line 1464
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 1461
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1469
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz v2, :cond_1

    .line 1470
    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    invoke-interface {v2, v3}, Lcom/metamoji/ns/INsCollaboHandler;->connectStatusChanged(Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;)V

    .line 1474
    :cond_1
    iget-boolean v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_isClerk:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1476
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_BECOME_CLERK:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1477
    invoke-virtual {p0, v3}, Lcom/metamoji/ns/NsCollaboManager;->changeClerk(Z)V

    goto :goto_1

    .line 1479
    :cond_2
    iput-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_isClerk:Z

    .line 1484
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_isPresenter:Z

    if-eqz v2, :cond_5

    .line 1486
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_BECOME_PRESENTER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1487
    invoke-virtual {p0, v3}, Lcom/metamoji/ns/NsCollaboManager;->changePresenter(Z)V

    return-void

    .line 1489
    :cond_4
    iput-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_isPresenter:Z

    :cond_5
    return-void
.end method

.method onLogoutRoom()V
    .locals 3

    .line 1564
    const-string v0, "[MMJNsCollaboManager] |||||----- onLogoutRoom -----|||||"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1566
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1567
    :goto_0
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    .line 1570
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->updateIdleTimerDisabled()V

    .line 1573
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->initUserInfoArray()V

    .line 1575
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1577
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/NsCollaboManager$14;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/NsCollaboManager$14;-><init>(Lcom/metamoji/ns/NsCollaboManager;Z)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1600
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz v0, :cond_2

    .line 1601
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    invoke-interface {v0, v1}, Lcom/metamoji/ns/INsCollaboHandler;->connectStatusChanged(Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;)V

    :cond_2
    return-void
.end method

.method openSocket()Z
    .locals 6

    .line 1163
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1164
    :try_start_0
    const-string v1, "[MMJNsCollaboManager] openSocket --------------------------------"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->closeSocket()V

    .line 1170
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->CONNECTING:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 1172
    :try_start_1
    new-instance v2, Lcom/metamoji/ns/socket/NsCollaboSocket;

    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_driveId:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/ns/NsCollaboManager;->m_docId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/metamoji/ns/socket/NsCollaboSocket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    .line 1173
    invoke-virtual {v2, p0}, Lcom/metamoji/ns/socket/NsCollaboSocket;->setHandler(Lcom/metamoji/ns/socket/INsCollaboSocketHandler;)V

    .line 1174
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_host:Ljava/lang/String;

    iget v4, p0, Lcom/metamoji/ns/NsCollaboManager;->m_port:I

    iget-boolean v5, p0, Lcom/metamoji/ns/NsCollaboManager;->m_withSSL:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/metamoji/ns/socket/NsCollaboSocket;->connect(Ljava/lang/String;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1184
    :try_start_2
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_nickName:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1186
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1188
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v4

    new-instance v5, Lcom/metamoji/ns/NsCollaboManager$7;

    invoke-direct {v5, p0, v3}, Lcom/metamoji/ns/NsCollaboManager$7;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v4, v5}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1206
    :cond_0
    new-instance v3, Lcom/metamoji/ns/NsCollaboManager$8;

    invoke-direct {v3, p0, v2}, Lcom/metamoji/ns/NsCollaboManager$8;-><init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x1

    .line 1222
    :try_start_3
    monitor-exit v0

    return v1

    :catch_0
    move-exception v2

    .line 1218
    const-string v3, "NsCollaboManager.openSocket"

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1219
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v2

    .line 1176
    const-string v3, "[MMJNsCollaboManager] Socket Connect Failed! ERROR : "

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1177
    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    iput-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    .line 1178
    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    .line 1223
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method parseRoomSetting(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "{\"roomSettingList\":"

    .line 4151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 4154
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const/4 v3, 0x0

    .line 4157
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4159
    const-string v4, "NsCollaboManager.parseRoomSetting"

    invoke-static {p1, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    .line 4168
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4169
    invoke-static {p1}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4171
    const-string/jumbo v0, "roomSettingList"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :cond_0
    move-object p1, v3

    .line 4173
    :goto_1
    :try_start_2
    const-string v0, "[MMJNsCollaboManager]parseRoomSetting JSON=\n%s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v0, v3

    .line 4176
    :goto_2
    const-string v4, "MMJNsCollaboManager#parseRoomSetting Failed!"

    invoke-static {p1, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object p1, v0

    :goto_3
    if-eqz p1, :cond_2

    .line 4180
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4183
    :try_start_3
    check-cast v0, Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_1

    .line 4188
    const-string v4, "key1"

    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4189
    const-string v5, "#ClassRoom"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4191
    const-string v4, "key2"

    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4192
    const-string/jumbo v5, "value"

    invoke-static {v0, v5}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 4194
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 4204
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 4205
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4206
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const-string v3, "MMJNsShareSettings"

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz v0, :cond_7

    .line 4210
    const-string v3, "allowToJoinNote"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSetting(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v3

    .line 4211
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->allowToJoinNote()Z

    move-result v5

    if-eq v3, v5, :cond_3

    .line 4213
    invoke-virtual {v0, v3}, Lcom/metamoji/ns/NsCollaboSettings;->setAllowToJoinNote(Z)V

    .line 4217
    :cond_3
    const-string v3, "allowToOpePage"

    invoke-static {v1, v3, v2}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSetting(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v3

    .line 4218
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->allowToOperationPage()Z

    move-result v5

    if-eq v3, v5, :cond_4

    .line 4220
    invoke-virtual {v0, v3}, Lcom/metamoji/ns/NsCollaboSettings;->setAllowToOperationPage(Z)V

    .line 4222
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4223
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v5, Lcom/metamoji/ns/NsCollaboManager$42;

    invoke-direct {v5, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$42;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v3, v5}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 4238
    :cond_4
    const-string v3, "allowToSaveNote"

    invoke-static {v1, v3, v4}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSetting(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v3

    .line 4239
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->allowToSaveNoteAndCopyPage()Z

    move-result v4

    if-eq v3, v4, :cond_5

    .line 4241
    invoke-virtual {v0, v3}, Lcom/metamoji/ns/NsCollaboSettings;->setAllowToSaveNoteAndCopyPage(Z)V

    .line 4243
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4244
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/ns/NsCollaboManager$43;

    invoke-direct {v4, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$43;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 4261
    :cond_5
    const-string v3, "allowToEditOths"

    invoke-static {v1, v3, v2}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSetting(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result v3

    .line 4262
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->allowToEditOthersWritings()Z

    move-result v4

    if-eq v3, v4, :cond_6

    .line 4264
    invoke-virtual {v0, v3}, Lcom/metamoji/ns/NsCollaboSettings;->setAllowToEditOthersWritings(Z)V

    .line 4266
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v4

    if-nez v4, :cond_6

    .line 4268
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v4

    new-instance v5, Lcom/metamoji/ns/NsCollaboManager$44;

    invoke-direct {v5, p0, p1, v3}, Lcom/metamoji/ns/NsCollaboManager$44;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;Z)V

    invoke-virtual {v4, v5}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 4288
    :cond_6
    const-string p1, "allowToChgGrp"

    invoke-static {v1, p1, v2}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSetting(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result p1

    .line 4289
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboSettings;->allowToChangeGroupByStudent()Z

    move-result v2

    if-eq p1, v2, :cond_7

    .line 4291
    invoke-virtual {v0, p1}, Lcom/metamoji/ns/NsCollaboSettings;->setAllowToChangeGroupByStudent(Z)V

    :cond_7
    return-object v1
.end method

.method parseString(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3873
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3874
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3875
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3876
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 3878
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3882
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 3883
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3884
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method parseUserMode(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 1375
    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$KeyValue;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboManager$KeyValue;-><init>(Lcom/metamoji/ns/NsCollaboManager;)V

    .line 1376
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1378
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 1379
    invoke-virtual {v1, p1}, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->parse(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v1, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->value:Ljava/lang/String;

    const-string v3, "enable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1380
    const-string p1, "owner"

    iget-object v3, v1, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    or-int/lit8 p1, v0, 0x2

    :goto_1
    move v0, p1

    goto :goto_0

    .line 1383
    :cond_1
    const-string p1, "guest"

    iget-object v3, v1, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 p1, v0, 0x20

    goto :goto_1

    .line 1386
    :cond_2
    const-string p1, "presenter"

    iget-object v3, v1, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    or-int/lit8 p1, v0, 0x4

    goto :goto_1

    .line 1389
    :cond_3
    const-string p1, "clerk"

    iget-object v3, v1, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    or-int/lit8 p1, v0, 0x10

    goto :goto_1

    .line 1392
    :cond_4
    const-string/jumbo p1, "speaker"

    iget-object v3, v1, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    or-int/lit8 p1, v0, 0x8

    goto :goto_1

    .line 1395
    :cond_5
    const-string/jumbo p1, "teacher"

    iget-object v3, v1, Lcom/metamoji/ns/NsCollaboManager$KeyValue;->key:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x40

    goto :goto_1

    :cond_6
    return v0
.end method

.method parseUserRole(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1412
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1414
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 1415
    const-string v2, "presenter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 p1, v0, 0x1

    :goto_1
    move v0, p1

    goto :goto_0

    .line 1417
    :cond_1
    const-string/jumbo v2, "speaker"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x2

    goto :goto_1

    :cond_2
    return v0
.end method

.method public postDirection([BLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 2143
    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager;->analysis()V

    .line 2145
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2152
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboSocket:Lcom/metamoji/ns/socket/NsCollaboSocket;

    xor-int/lit8 v7, p3, 0x1

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/ns/socket/NsCollaboSocket;->postCommandDirectionBinary([BLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2159
    const-string p2, "[MMJNsCollaboManager] postDirection Failed! ERROR : "

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public preDetachBooth(Ljava/lang/String;)V
    .locals 2

    .line 2084
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 2086
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_attachBoothSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2090
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;
    .locals 3

    .line 3917
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3919
    monitor-enter v0

    .line 3920
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3921
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3922
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3923
    iget v2, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3921
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public protocolVersion()I
    .locals 1

    .line 2994
    iget v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_protocolVersion:I

    return v0
.end method

.method releaseChatModelArray()V
    .locals 1

    const/4 v0, 0x0

    .line 3969
    iput-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_chatModelArray:Ljava/util/List;

    return-void
.end method

.method reloginRoomSocketInner()V
    .locals 2

    .line 1646
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_NONE:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1649
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboMode:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1662
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->hasConnectInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1664
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->openSocket()Z

    return-void

    .line 1667
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/NsCollaboManager$16;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/NsCollaboManager$16;-><init>(Lcom/metamoji/ns/NsCollaboManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public reloginRoomSocketWithDelay(Z)V
    .locals 3

    .line 1612
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1617
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 1623
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 1624
    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$15;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ns/NsCollaboManager$15;-><init>(Lcom/metamoji/ns/NsCollaboManager;Ljava/util/Timer;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    .line 1637
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->reloginRoomSocketInner()V

    return-void
.end method

.method removeUserInfoByUserId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 3098
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3099
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3100
    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3101
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public removeUserInfoHandler(Lcom/metamoji/ns/INsCollaboUserInfo;)V
    .locals 2

    .line 252
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForUserInfoHandler:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 254
    :try_start_0
    monitor-exit v0

    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoHandlerList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 257
    monitor-exit v0

    return-void

    .line 259
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    monitor-exit v0

    return-void

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 264
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_3

    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoHandlerList:Ljava/util/ArrayList;

    .line 267
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestAbortCommand()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_NONE:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    if-eq v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_commandSuspender:Lcom/metamoji/ns/NsCollaboCommandSuspender;

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboCommandSuspender;->resign()V

    :cond_0
    return-void
.end method

.method public requestResumeCommand()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_NONE:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    if-eq v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_commandSuspender:Lcom/metamoji/ns/NsCollaboCommandSuspender;

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboCommandSuspender;->permit()V

    :cond_0
    return-void
.end method

.method public requestSuspendCommand()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_NONE:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    if-eq v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_commandSuspender:Lcom/metamoji/ns/NsCollaboCommandSuspender;

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboCommandSuspender;->forbid()V

    :cond_0
    return-void
.end method

.method public roomId()Ljava/lang/String;
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomId:Ljava/lang/String;

    return-object v0
.end method

.method public roomMode()Ljava/lang/String;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomMode:Ljava/lang/String;

    return-object v0
.end method

.method roomUpdateByUserLogout(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3768
    const-string/jumbo v0, "uid"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3769
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArrayIndexByUserId(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 3775
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3776
    iget-object v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 3781
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3784
    const-string v0, "date"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->timestamp:Ljava/lang/String;

    .line 3787
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->updateExistPresenter()V

    .line 3790
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz p1, :cond_2

    .line 3791
    invoke-interface {p1, v2}, Lcom/metamoji/ns/INsCollaboHandler;->userPropertyInitialized(Lcom/metamoji/ns/NsCollaboUserInfo;)V

    .line 3794
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3796
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$39;

    invoke-direct {v0, p0, v2, v1}, Lcom/metamoji/ns/NsCollaboManager$39;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/ns/NsCollaboUserInfo;I)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 3823
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager;->fireUpdateCollaboUserInfoEvent()V

    return-void
.end method

.method public setConnectRoomAfterAction(Lcom/metamoji/ns/INsCollaboManagerConnectRoomAfterAction;)V
    .locals 1

    .line 4618
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObjectForConnectRoomAfterAction:Ljava/lang/Object;

    monitor-enter v0

    .line 4619
    :try_start_0
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectRoomAfterAction:Lcom/metamoji/ns/INsCollaboManagerConnectRoomAfterAction;

    .line 4620
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDelayJumpPageId(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_delayJumpPageId:Ljava/lang/String;

    return-void
.end method

.method public setDistributeCommandInfo(Lcom/metamoji/nt/NtCommand;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4020
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_distributeCommand:Lcom/metamoji/nt/NtCommand;

    .line 4021
    iput-object p2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_distributeAddressArray:[Ljava/lang/String;

    .line 4022
    iput-object p3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_distributePackage:Ljava/lang/String;

    .line 4023
    iput-object p4, p0, Lcom/metamoji/ns/NsCollaboManager;->m_distributeClass:Ljava/lang/String;

    return-void
.end method

.method public setHandler(Lcom/metamoji/ns/INsCollaboHandler;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    return-void
.end method

.method public setLogModeProgressDisabled(Z)V
    .locals 1

    .line 847
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 848
    :try_start_0
    iput-boolean p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_logModeProgressDisabled:Z

    .line 849
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRoomClosed()V
    .locals 2

    .line 837
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 838
    :try_start_0
    iput-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomClosed:Z

    .line 839
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSecureRoomPassword(Ljava/lang/String;)V
    .locals 0

    .line 4048
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_secureRoomPassword:Ljava/lang/String;

    return-void
.end method

.method showProgressView(ILjava/lang/String;)V
    .locals 1

    .line 2725
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_progressViewHideTimerDic:Ljava/util/HashMap;

    invoke-static {v0, p2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2727
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_progressViewHideTimerDic:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2728
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void

    .line 2733
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_progressViewDic:Ljava/util/HashMap;

    invoke-static {v0, p2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/UiToast;

    if-nez v0, :cond_1

    .line 2735
    invoke-static {p1}, Lcom/metamoji/ns/ui/NsCollaboProgressView;->progress(I)Lcom/metamoji/ui/UiToast;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2737
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_progressViewDic:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method sortUserInfoArray(I)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3493
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3494
    iget v2, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 3495
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3496
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3497
    iget-boolean p1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    .line 3498
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return p1

    .line 3502
    :cond_1
    iget v0, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 3505
    iget v0, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, p1

    :goto_0
    if-lez v0, :cond_3

    .line 3510
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3511
    iget-boolean v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v3, :cond_3

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_3

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_2

    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eq v0, p1, :cond_2a

    .line 3520
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3521
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0

    :cond_4
    move v0, p1

    :goto_2
    if-lez v0, :cond_6

    .line 3531
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3532
    iget-boolean v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v3, :cond_6

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_6

    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-eq v0, p1, :cond_7

    .line 3540
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3541
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0

    .line 3545
    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_a

    .line 3546
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3547
    iget v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_8

    iget v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_a

    :cond_8
    iget v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_a

    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    .line 3550
    invoke-virtual {p0, v2}, Lcom/metamoji/ns/NsCollaboManager;->isVisitor(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    move v0, v3

    goto :goto_4

    :cond_a
    :goto_5
    if-eq v0, p1, :cond_2a

    .line 3556
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3557
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0

    .line 3564
    :cond_b
    iget v0, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_21

    .line 3567
    iget v0, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_12

    move v0, p1

    :goto_6
    if-lez v0, :cond_d

    .line 3573
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3574
    iget-boolean v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v3, :cond_d

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_d

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_d

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_c

    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_d
    :goto_7
    if-eq v0, p1, :cond_e

    .line 3584
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3585
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0

    .line 3589
    :cond_e
    :goto_8
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_11

    .line 3590
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3591
    iget v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_f

    iget v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_11

    :cond_f
    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    .line 3593
    invoke-virtual {p0, v2}, Lcom/metamoji/ns/NsCollaboManager;->isVisitor(I)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_9

    :cond_10
    move v0, v3

    goto :goto_8

    :cond_11
    :goto_9
    if-eq v0, p1, :cond_2a

    .line 3599
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3600
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0

    .line 3605
    :cond_12
    iget v0, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1a

    move v0, p1

    :goto_a
    if-lez v0, :cond_15

    .line 3611
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3612
    iget-boolean v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v3, :cond_15

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_15

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_15

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_13

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_15

    :cond_13
    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_14

    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_14

    goto :goto_b

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_15
    :goto_b
    if-eq v0, p1, :cond_16

    .line 3624
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3625
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0

    .line 3629
    :cond_16
    :goto_c
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_19

    .line 3630
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3631
    iget v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_17

    iget v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_17

    iget v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_19

    :cond_17
    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    .line 3634
    invoke-virtual {p0, v2}, Lcom/metamoji/ns/NsCollaboManager;->isVisitor(I)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_d

    :cond_18
    move v0, v3

    goto :goto_c

    :cond_19
    :goto_d
    if-eq v0, p1, :cond_2a

    .line 3640
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3641
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0

    :cond_1a
    move v0, p1

    :goto_e
    if-lez v0, :cond_1c

    .line 3652
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3653
    iget-boolean v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v3, :cond_1c

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1c

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_1c

    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1b

    goto :goto_f

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_1c
    :goto_f
    if-eq v0, p1, :cond_1d

    .line 3662
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3663
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0

    .line 3667
    :cond_1d
    :goto_10
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_20

    .line 3668
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3669
    iget v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_1e

    iget v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1e

    iget v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_20

    :cond_1e
    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    .line 3672
    invoke-virtual {p0, v2}, Lcom/metamoji/ns/NsCollaboManager;->isVisitor(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_11

    :cond_1f
    move v0, v3

    goto :goto_10

    :cond_20
    :goto_11
    if-eq v0, p1, :cond_2a

    .line 3678
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3679
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0

    .line 3689
    :cond_21
    iget v0, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_27

    move v0, p1

    :goto_12
    if-lez v0, :cond_23

    .line 3695
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3696
    iget-boolean v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-nez v3, :cond_23

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_23

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_23

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_23

    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    .line 3700
    invoke-virtual {p0, v3}, Lcom/metamoji/ns/NsCollaboManager;->isVisitor(I)Z

    move-result v3

    if-eqz v3, :cond_22

    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_22

    goto :goto_13

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_23
    :goto_13
    if-eq v0, p1, :cond_24

    .line 3707
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3708
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0

    .line 3712
    :cond_24
    :goto_14
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_26

    .line 3713
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3714
    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ns/NsCollaboManager;->isVisitor(I)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_15

    :cond_25
    move v0, v3

    goto :goto_14

    :cond_26
    :goto_15
    if-eq v0, p1, :cond_2a

    .line 3720
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3721
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0

    :cond_27
    move v0, p1

    .line 3731
    :goto_16
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_29

    .line 3732
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3733
    iget v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    invoke-virtual {p0, v4}, Lcom/metamoji/ns/NsCollaboManager;->isVisitor(I)Z

    move-result v4

    if-eqz v4, :cond_28

    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_28

    goto :goto_17

    :cond_28
    move v0, v3

    goto :goto_16

    :cond_29
    :goto_17
    if-eq v0, p1, :cond_2a

    .line 3740
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3741
    iget-object p1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v0

    :cond_2a
    return p1
.end method

.method public terminateOnCloseCollaboDocument()V
    .locals 4

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0, v0, v0}, Lcom/metamoji/ns/NsCollaboManager;->logoutRoomSocketWithContinueCollaboMode(ZZ)V

    .line 513
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->releaseChatModelArray()V

    .line 515
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_0
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboType;->COLLABO_NONE:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_collaboType:Lcom/metamoji/ns/NsCollaboManager$CollaboType;

    const/4 v1, 0x0

    .line 517
    iput-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_roomMode:Ljava/lang/String;

    .line 518
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 520
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ns/NsCollaboManager$3;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/ns/NsCollaboManager$3;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/nt/NtEditorWindowController;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 544
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ns/NsCollaboManager;->endAnalysis()V

    .line 548
    sget-object v2, Lcom/metamoji/ns/NsCollaboManager;->mExecutorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 549
    :try_start_1
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 550
    sput-object v1, Lcom/metamoji/ns/NsCollaboManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 551
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 553
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 555
    :try_start_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 556
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 559
    const-string v2, "NsCollaboManager.terminateOnCloseCollaboDocument"

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 560
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 551
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 518
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method updateExistPresenter()V
    .locals 4

    .line 3893
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 3895
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3896
    iget v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3902
    :goto_0
    iget-boolean v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_existPresenter:Z

    if-eq v2, v1, :cond_2

    .line 3903
    iput-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_existPresenter:Z

    .line 3906
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz v2, :cond_2

    .line 3907
    iget v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userMode:I

    invoke-interface {v2, v3, v1}, Lcom/metamoji/ns/INsCollaboHandler;->userModeChanged(IZ)V

    .line 3910
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateIdleTimerDisabled()V
    .locals 4

    .line 2792
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2796
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2800
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 2806
    :cond_2
    iget-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_idleTimerDisabled:Z

    if-eqz v1, :cond_3

    .line 2807
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/NsCollaboManager$31;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/NsCollaboManager$31;-><init>(Lcom/metamoji/ns/NsCollaboManager;Landroid/view/Window;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    .line 2813
    iput-boolean v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_idleTimerDisabled:Z

    .line 2817
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    .line 2818
    iget-object v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_connectStatus:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v2, v3, :cond_4

    const-string v2, "MMJCollaboSleepMode"

    const/4 v3, 0x1

    .line 2819
    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2820
    iput-boolean v3, p0, Lcom/metamoji/ns/NsCollaboManager;->m_idleTimerDisabled:Z

    .line 2821
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/NsCollaboManager$32;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/NsCollaboManager$32;-><init>(Lcom/metamoji/ns/NsCollaboManager;Landroid/view/Window;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method updatePersonalModeInfoView(Lcom/metamoji/ns/NsCollaboUserInfo;)V
    .locals 3

    .line 3827
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3832
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 3833
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3834
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3836
    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3837
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->personalModeInfoDic()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 3838
    :cond_1
    const-string v1, "isGroup"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3839
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->isOnlinePersonalId(Ljava/lang/String;Z)Z

    move-result p1

    .line 3840
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 3841
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getPersonalModeInfoView()Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/forSchool/ui/ScPersonalModeInfoView;->updateColor(Z)V

    return-void

    .line 3843
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    return-void

    .line 3846
    :cond_3
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3847
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    :cond_4
    :goto_1
    return-void
.end method

.method public updateSchoolUserMode()V
    .locals 3

    .line 4426
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v0

    .line 4428
    iput v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_schoolUserMode:I

    .line 4430
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz v1, :cond_0

    .line 4431
    iget-boolean v2, p0, Lcom/metamoji/ns/NsCollaboManager;->m_existPresenter:Z

    invoke-interface {v1, v0, v2}, Lcom/metamoji/ns/INsCollaboHandler;->schoolUserModeChanged(IZ)V

    :cond_0
    return-void
.end method

.method updateUserInfo(Ljava/util/Map;ZZ)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 3133
    const-string/jumbo v2, "uid"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 3134
    const-string/jumbo v2, "self"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 3135
    invoke-static {v2, v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 3136
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/ns/NsCollaboManager;->decodeNickName(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 3141
    invoke-virtual {v1, v7}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArrayIndexByUserId(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    .line 3145
    new-instance v2, Lcom/metamoji/ns/NsCollaboUserInfo;

    invoke-direct {v2}, Lcom/metamoji/ns/NsCollaboUserInfo;-><init>()V

    .line 3152
    iget-object v8, v1, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 3148
    invoke-interface {v8, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v10, v3

    move v8, v4

    move v9, v8

    goto :goto_1

    .line 3152
    :cond_1
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3153
    iget-object v8, v1, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    move v9, v4

    move v10, v8

    move v8, v9

    goto :goto_1

    .line 3157
    :cond_2
    iget-object v8, v1, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3158
    iget v9, v8, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    move v10, v2

    move-object v2, v8

    move v8, v3

    .line 3162
    :goto_1
    iput-boolean v5, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    .line 3163
    iput-object v7, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    .line 3164
    iput v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    .line 3165
    iput-object v6, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    .line 3166
    iput-boolean v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->isPrivateLayer:Z

    .line 3167
    const-string v11, "date"

    invoke-static {v0, v11}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->timestamp:Ljava/lang/String;

    .line 3168
    const-string v11, ""

    iput-object v11, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    .line 3169
    iput-object v11, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->classNumber:Ljava/lang/String;

    .line 3173
    const-string v12, "dcid"

    invoke-static {v0, v12}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    .line 3175
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 3178
    invoke-virtual {v12}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 3181
    iget-object v14, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/metamoji/forSchool/ScSchoolUtils;->getMemberDic(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 3183
    const-string v14, "loginName"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    .line 3184
    const-string v14, "classNumber"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->classNumber:Ljava/lang/String;

    goto :goto_2

    .line 3186
    :cond_3
    iput-object v11, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    .line 3187
    iput-object v11, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->classNumber:Ljava/lang/String;

    .line 3197
    :cond_4
    :goto_2
    const-string v13, "mode"

    invoke-static {v0, v13}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Lcom/metamoji/ns/NsCollaboManager;->parseString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    .line 3198
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 3199
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v3

    move/from16 v17, v15

    move-object/from16 v18, v11

    move-object v11, v12

    move-object/from16 v16, v14

    move/from16 v12, v17

    move v14, v12

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/String;

    .line 3200
    const-string v4, "enable"

    move/from16 v20, v5

    invoke-static {v13, v3}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3201
    const-string v5, "owner"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_e

    .line 3204
    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    goto/16 :goto_7

    .line 3206
    :cond_5
    const-string v5, "guest"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_e

    .line 3209
    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    goto/16 :goto_7

    .line 3211
    :cond_6
    const-string v5, "presenter"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v4, :cond_7

    .line 3214
    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    :cond_7
    if-eqz p2, :cond_e

    and-int/lit8 v3, v9, 0x4

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    if-eq v3, v4, :cond_e

    .line 3222
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    if-eqz v4, :cond_9

    .line 3224
    sget v3, Lcom/metamoji/noteanytime/R$string;->ToastMsg_Become_Chair_With_Name:I

    .line 3225
    sget v5, Lcom/metamoji/noteanytime/R$string;->ToastMsg_Become_Chair_With_Name_For_Info:I

    :goto_5
    move/from16 v17, v3

    move v15, v5

    goto :goto_6

    .line 3227
    :cond_9
    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->screenLocked()Z

    move-result v3

    if-nez v3, :cond_a

    .line 3228
    sget v3, Lcom/metamoji/noteanytime/R$string;->ToastMsg_Resign_Chair_With_Name:I

    .line 3229
    sget v5, Lcom/metamoji/noteanytime/R$string;->ToastMsg_Resign_Chair_With_Name:I

    goto :goto_5

    :cond_a
    :goto_6
    move v14, v4

    const/4 v12, 0x1

    goto :goto_7

    .line 3237
    :cond_b
    const-string v5, "clerk"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v4, :cond_e

    .line 3240
    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    goto :goto_7

    .line 3242
    :cond_c
    const-string/jumbo v5, "speaker"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz v4, :cond_e

    .line 3245
    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    goto :goto_7

    .line 3247
    :cond_d
    const-string/jumbo v5, "teacher"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v4, :cond_e

    .line 3250
    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    :cond_e
    :goto_7
    move/from16 v5, v20

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_f
    move/from16 v20, v5

    .line 3256
    const-string v3, "prop"

    invoke-static {v0, v3}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/NsCollaboManager;->parseString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 3257
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 3258
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3260
    const-string v5, "privateLayer"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 3261
    const-string/jumbo v5, "true"

    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->isPrivateLayer:Z

    goto :goto_8

    .line 3262
    :cond_11
    const-string/jumbo v5, "schoolPersonalStatus"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3264
    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->schoolPersonalStatus:Ljava/lang/String;

    goto :goto_8

    :cond_12
    if-nez v8, :cond_14

    .line 3270
    iget v3, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    if-eq v9, v3, :cond_13

    goto :goto_9

    :cond_13
    move v4, v10

    goto :goto_a

    .line 3274
    :cond_14
    :goto_9
    invoke-virtual {v1, v10}, Lcom/metamoji/ns/NsCollaboManager;->sortUserInfoArray(I)I

    move-result v3

    move v4, v3

    :goto_a
    if-eqz v11, :cond_15

    .line 3284
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    move-object v9, v0

    new-instance v0, Lcom/metamoji/ns/NsCollaboManager$36;

    move-object/from16 v21, v3

    move v13, v15

    move/from16 v15, v17

    move-object/from16 v22, v18

    move/from16 v5, v20

    move-object v3, v2

    move v2, v8

    move/from16 v8, p3

    invoke-direct/range {v0 .. v15}, Lcom/metamoji/ns/NsCollaboManager$36;-><init>(Lcom/metamoji/ns/NsCollaboManager;ZLcom/metamoji/ns/NsCollaboUserInfo;IZLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILcom/metamoji/nt/NtEditorWindowController;ZIZI)V

    move-object v2, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_b

    :cond_15
    move-object v9, v0

    move-object v3, v2

    move-object/from16 v22, v18

    :goto_b
    if-eqz v12, :cond_16

    .line 3406
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->updateExistPresenter()V

    if-eqz v11, :cond_16

    .line 3408
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ns/NsCollaboManager$37;

    invoke-direct {v2, v1, v14, v11, v6}, Lcom/metamoji/ns/NsCollaboManager$37;-><init>(Lcom/metamoji/ns/NsCollaboManager;ZLcom/metamoji/nt/NtEditorWindowController;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_16
    if-eqz p3, :cond_19

    .line 3449
    iget-object v0, v1, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    if-eqz v0, :cond_19

    if-eqz v9, :cond_18

    .line 3450
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_d

    .line 3454
    :cond_17
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3455
    invoke-static {v9, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3456
    iget-object v5, v1, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    invoke-interface {v5, v3, v2, v4}, Lcom/metamoji/ns/INsCollaboHandler;->userPropertyChanged(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 3452
    :cond_18
    :goto_d
    iget-object v0, v1, Lcom/metamoji/ns/NsCollaboManager;->m_handler:Lcom/metamoji/ns/INsCollaboHandler;

    move-object/from16 v2, v22

    invoke-interface {v0, v3, v2, v2}, Lcom/metamoji/ns/INsCollaboHandler;->userPropertyChanged(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    :cond_19
    invoke-direct {v1}, Lcom/metamoji/ns/NsCollaboManager;->fireUpdateCollaboUserInfoEvent()V

    .line 3465
    invoke-direct {v1}, Lcom/metamoji/ns/NsCollaboManager;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3467
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ns/NsCollaboManager$38;

    invoke-direct {v3, v1, v0}, Lcom/metamoji/ns/NsCollaboManager$38;-><init>(Lcom/metamoji/ns/NsCollaboManager;Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void
.end method

.method public userId()Ljava/lang/String;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userId:Ljava/lang/String;

    return-object v0
.end method

.method public userInfoArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/NsCollaboUserInfo;",
            ">;"
        }
    .end annotation

    .line 3088
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    return-object v0
.end method

.method userInfoArrayIndexByUserId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 3115
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3116
    iget-object v1, p0, Lcom/metamoji/ns/NsCollaboManager;->m_userInfoArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 3117
    iget-object v1, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
