.class public Lcom/metamoji/ns/direction/NsDirectionManager;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboHandler;
.implements Lcom/metamoji/ns/direction/INsInvokerDelegate;
.implements Lcom/metamoji/ns/direction/INsDirectionObserver;
.implements Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$IDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;,
        Lcom/metamoji/ns/direction/NsDirectionManager$ModelDef;
    }
.end annotation


# static fields
.field public static final MMJNS_DIRECTION_MANAGER_FOLLOW_PRESENTER_INTERVAL:I = 0xfa

.field public static final MMJNS_DIRECTION_MANAGER_PRESENTER_SEND_INTERVAL:I = 0xfa

.field public static final MMJNS_DIRECTION_MANAGER_RECEIVE_OPERATION_TIMEOUT:J = 0x3e8L


# instance fields
.field private final mDetachBoothLock:Ljava/lang/Object;

.field private mDeviceIdInitializedListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;",
            ">;"
        }
    .end annotation
.end field

.field mDirectionAwaiter:Lcom/metamoji/cm/ResetableEvent;

.field mDispatchDirections:Ljava/lang/Runnable;

.field mDisposalAwaiter:Ljava/util/concurrent/CountDownLatch;

.field private mUserModeChangedListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/ns/direction/NsUserModeChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mUserPropertyChangedListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mUserPropertyInitializedListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mUserPropertyWillChangeListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mViewingRect:Landroid/graphics/RectF;

.field final m_attachBoothRequestingDic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final m_attachedBoothSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_bgTaskForReceiveAllData:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;",
            ">;"
        }
    .end annotation
.end field

.field m_bgTaskForReceiveAllDataLock:Ljava/lang/Object;

.field m_bgTaskForReflectOfflineEdit:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;",
            ">;"
        }
    .end annotation
.end field

.field m_bgTaskForReflectOfflineEditLock:Ljava/lang/Object;

.field m_collaboRestoreProcInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final m_directionHandlerLock:Ljava/lang/Object;

.field m_directionHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/ns/direction/INsDirectionHandler;",
            ">;"
        }
    .end annotation
.end field

.field m_document:Lcom/metamoji/nt/NtDocument;

.field m_featuredDcUserId:Ljava/lang/String;

.field m_followPresenterTimer:Ljava/util/Timer;

.field m_isAnomalyDetected:Z

.field m_isMarkLastReceivedDirectionCalled:Z

.field m_isUnknownDataFound:Z

.field m_lastBoothID:Ljava/lang/String;

.field m_lastFollowPresenterDate:J

.field m_lastHandlerID:Ljava/lang/String;

.field m_lastMyViewingSentDate:J

.field m_limitSequenceNo:J

.field m_limitTimeStamp:Ljava/util/Date;

.field m_markLastReceivedDirection:Lcom/metamoji/ns/direction/NsReceivedDirection;

.field m_myViewingPage:Ljava/lang/String;

.field m_myViewingRect:Landroid/graphics/RectF;

.field m_myViewingScale:F

.field m_pauseDispaching:I

.field final m_presentersViewingInfoLock:Ljava/lang/Object;

.field m_presentersViewingPage:Ljava/lang/String;

.field m_presentersViewingPositionChanged:Z

.field m_presentersViewingRect:Landroid/graphics/RectF;

.field m_presentersViewingScale:F

.field m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

.field m_receivedDirections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;"
        }
    .end annotation
.end field

.field m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

.field private m_sendingAnomalyDetectors:[Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;

.field final m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

.field m_unknownDataDirection:Lcom/metamoji/ns/direction/NsReceivedDirection;

.field m_waitingForHandler:Z


# direct methods
.method public static synthetic $r8$lambda$VbRDEQq7u4UnR-k3xuvVW2SEtfU(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager;->lambda$attachBooth$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmUserModeChangedListener(Lcom/metamoji/ns/direction/NsDirectionManager;)Lcom/metamoji/cm/CmEventListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserModeChangedListener:Lcom/metamoji/cm/CmEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserPropertyChangedListener(Lcom/metamoji/ns/direction/NsDirectionManager;)Lcom/metamoji/cm/CmEventListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserPropertyChangedListener:Lcom/metamoji/cm/CmEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewingRect(Lcom/metamoji/ns/direction/NsDirectionManager;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mViewingRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mattachBooth(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBooth(Ljava/lang/String;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mattachBoothInnerForSchool(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtPageController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothInnerForSchool(Lcom/metamoji/nt/NtPageController;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchDirections(Lcom/metamoji/ns/direction/NsDirectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->dispatchDirections()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchedDirectionCompleted(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->dispatchedDirectionCompleted(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mextractDirectionData(Lcom/metamoji/ns/direction/NsDirectionManager;[BLcom/metamoji/ns/direction/NsDirectionReceiveInfo;)Lcom/metamoji/ns/direction/NsReceivedDirection;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager;->extractDirectionData([BLcom/metamoji/ns/direction/NsDirectionReceiveInfo;)Lcom/metamoji/ns/direction/NsReceivedDirection;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfollowPresenter(Lcom/metamoji/ns/direction/NsDirectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->followPresenter()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minternalDispatchDirections(Lcom/metamoji/ns/direction/NsDirectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->internalDispatchDirections()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmakeNotifyBoothIdDic(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/ns/NsCollaboSettings;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/metamoji/ns/direction/NsDirectionManager;->makeNotifyBoothIdDic(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/ns/NsCollaboSettings;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monFollowPresenterTimer(Lcom/metamoji/ns/direction/NsDirectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->onFollowPresenterTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserModeChanged(Lcom/metamoji/ns/direction/NsDirectionManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager;->onUserModeChanged(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostSendingData(Lcom/metamoji/ns/direction/NsDirectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->postSendingData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpushReceivedDirection(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/ns/direction/NsReceivedDirection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->pushReceivedDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtDocument;)V
    .locals 11

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    .line 79
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlerLock:Ljava/lang/Object;

    .line 82
    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    invoke-direct {v1}, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    .line 97
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_featuredDcUserId:Ljava/lang/String;

    .line 102
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingInfoLock:Ljava/lang/Object;

    .line 110
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReceiveAllDataLock:Ljava/lang/Object;

    .line 111
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDisposalAwaiter:Ljava/util/concurrent/CountDownLatch;

    .line 115
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReflectOfflineEditLock:Ljava/lang/Object;

    .line 123
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDetachBoothLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 130
    iput-boolean v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_isMarkLastReceivedDirectionCalled:Z

    .line 131
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_markLastReceivedDirection:Lcom/metamoji/ns/direction/NsReceivedDirection;

    .line 155
    new-instance v2, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {v2}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserPropertyChangedListener:Lcom/metamoji/cm/CmEventListener;

    .line 156
    new-instance v2, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {v2}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserPropertyWillChangeListener:Lcom/metamoji/cm/CmEventListener;

    .line 157
    new-instance v2, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {v2}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDeviceIdInitializedListener:Lcom/metamoji/cm/CmEventListener;

    .line 158
    new-instance v2, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {v2}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserModeChangedListener:Lcom/metamoji/cm/CmEventListener;

    .line 159
    new-instance v2, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {v2}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserPropertyInitializedListener:Lcom/metamoji/cm/CmEventListener;

    .line 607
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mViewingRect:Landroid/graphics/RectF;

    .line 2276
    new-instance v2, Lcom/metamoji/cm/ResetableEvent;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    iput-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDirectionAwaiter:Lcom/metamoji/cm/ResetableEvent;

    .line 2277
    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$35;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$35;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    iput-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDispatchDirections:Ljava/lang/Runnable;

    .line 166
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    .line 167
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlers:Ljava/util/HashMap;

    .line 171
    new-instance p1, Lcom/metamoji/ns/direction/NsSendInvoker;

    invoke-direct {p1}, Lcom/metamoji/ns/direction/NsSendInvoker;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    .line 172
    new-instance p1, Lcom/metamoji/ns/direction/NsRecvInvoker;

    const-wide/16 v4, 0x3e8

    invoke-direct {p1, v4, v5}, Lcom/metamoji/ns/direction/NsRecvInvoker;-><init>(J)V

    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    .line 173
    invoke-virtual {p1, p0}, Lcom/metamoji/ns/direction/NsRecvInvoker;->setDelegate(Lcom/metamoji/ns/direction/INsInvokerDelegate;)V

    .line 176
    iput v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_pauseDispaching:I

    .line 177
    iput-boolean v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_waitingForHandler:Z

    .line 178
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receivedDirections:Ljava/util/ArrayList;

    .line 179
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastHandlerID:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastBoothID:Ljava/lang/String;

    .line 182
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    .line 183
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    .line 184
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingPage:Ljava/lang/String;

    .line 185
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingRect:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 186
    iput p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingScale:F

    const-wide/16 v4, 0x0

    .line 187
    iput-wide v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastMyViewingSentDate:J

    .line 188
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPage:Ljava/lang/String;

    .line 189
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingRect:Landroid/graphics/RectF;

    .line 190
    iput p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingScale:F

    .line 191
    iput-boolean v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPositionChanged:Z

    .line 192
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_followPresenterTimer:Ljava/util/Timer;

    .line 193
    iput-wide v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastFollowPresenterDate:J

    .line 194
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReceiveAllData:Ljava/lang/ref/WeakReference;

    .line 196
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReflectOfflineEdit:Ljava/lang/ref/WeakReference;

    .line 199
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_collaboRestoreProcInfo:Ljava/util/Map;

    .line 200
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_limitTimeStamp:Ljava/util/Date;

    const-wide/16 v4, -0x2

    .line 201
    iput-wide v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_limitSequenceNo:J

    const/4 p1, 0x2

    .line 204
    new-array p1, p1, [Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;

    new-instance v4, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    const/16 v9, 0xb4

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    invoke-direct/range {v4 .. v9}, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;-><init>(DDI)V

    aput-object v4, p1, v1

    new-instance v5, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    const/16 v10, 0x3c

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-direct/range {v5 .. v10}, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;-><init>(DDI)V

    aput-object v5, p1, v3

    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingAnomalyDetectors:[Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;

    .line 211
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 212
    invoke-virtual {v3, p0}, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->setDelegate(Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$IDelegate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_0
    iput-boolean v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_isAnomalyDetected:Z

    .line 216
    invoke-direct {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateReceiveInvokerPausing()V

    .line 218
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ns/direction/NsDirectionManager$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$1;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 228
    iput-boolean v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_isUnknownDataFound:Z

    .line 231
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->initialize()V

    .line 232
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/ns/NsCollaboManager;->setHandler(Lcom/metamoji/ns/INsCollaboHandler;)V

    return-void
.end method

.method private attachBooth(Ljava/lang/String;J)V
    .locals 2

    .line 373
    iget-boolean v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_isUnknownDataFound:Z

    if-eqz v0, :cond_0

    return-void

    .line 377
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/metamoji/ns/NsCollaboManager;->attachBooth(Ljava/lang/String;JLcom/metamoji/ns/socket/INsCollaboSocketPacketNoCallback;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 383
    const-string p3, "[DirectionManager] attach booth requested: %s, %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 385
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    monitor-enter p2

    .line 386
    :try_start_0
    iget-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private attachBoothInnerForSchool(Lcom/metamoji/nt/NtPageController;)V
    .locals 6

    .line 3016
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$47;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$47;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 3028
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    .line 3029
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    .line 3030
    invoke-direct {p0, v1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothWithOverlapCheck(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)V

    .line 3033
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getCommonLayerId()Ljava/lang/String;

    move-result-object v1

    .line 3034
    invoke-direct {p0, v1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothWithOverlapCheck(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)V

    .line 3037
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    const-string v2, "layerId"

    if-eqz v1, :cond_4

    .line 3039
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3041
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 3042
    invoke-static {v3, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3044
    invoke-direct {p0, v3, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothWithOverlapCheck(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)V

    goto :goto_0

    .line 3050
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/nt/NtPageController;->getTeacherPersonalLayerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3052
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothWithOverlapCheck(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)V

    .line 3058
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3060
    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 3062
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothWithOverlapCheck(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)V

    :cond_3
    return-void

    .line 3069
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3071
    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 3077
    :goto_1
    iget-object v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v4

    .line 3078
    invoke-virtual {v4}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v5

    if-eqz v5, :cond_7

    .line 3080
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3082
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 3083
    invoke-static {v5, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 3085
    invoke-direct {p0, v5, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothWithOverlapCheck(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)V

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    if-eqz v3, :cond_8

    .line 3093
    invoke-direct {p0, v3, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothWithOverlapCheck(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)V

    .line 3099
    :cond_8
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->presenterPersonalLayerInfo()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 3101
    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 3102
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 3103
    invoke-direct {p0, v1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothWithOverlapCheck(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)V

    .line 3108
    :cond_9
    invoke-virtual {v4}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v1

    if-eqz v1, :cond_a

    .line 3110
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->personalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 3112
    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 3113
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3114
    invoke-direct {p0, v1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothWithOverlapCheck(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)V

    .line 3121
    :cond_a
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3123
    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 3124
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 3125
    invoke-direct {p0, v1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothWithOverlapCheck(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)V

    .line 3130
    :cond_b
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 3131
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 3132
    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->currentPageChanged(Lcom/metamoji/nt/NtPageController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private attachBoothWithOverlapCheck(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)V
    .locals 2

    .line 3140
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 3142
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3145
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 3147
    invoke-virtual {p2, p1}, Lcom/metamoji/ns/NsCollaboSettings;->lastReceivedSequenceNoForBooth(Ljava/lang/String;)J

    move-result-wide v0

    .line 3148
    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBooth(Ljava/lang/String;J)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 3145
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private boothIdArrayOnPage(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtNoteController;",
            "Lcom/metamoji/nt/NtPageController;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3239
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    if-nez p4, :cond_0

    .line 3242
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3244
    invoke-static {v1}, Lcom/metamoji/nt/NtPageController;->getCommonLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3248
    :cond_0
    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 3250
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3252
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 3254
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p2

    invoke-static {p1, p3, p2}, Lcom/metamoji/forSchool/ScSchoolUtils;->getPersonalLayerIds(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 3255
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3256
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static closeDocumentDueToUnknownData()V
    .locals 2

    .line 1296
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    .line 1297
    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/metamoji/ns/direction/NsDirectionManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void
.end method

.method private dispatchDirections()V
    .locals 3

    .line 2286
    const-string v0, "NsDirectionManager.dispatchDirections()"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 2287
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2288
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receivedDirections:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2289
    const-string v1, "NsDirectionManager.dispatchDirections() : direction == null."

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 2290
    monitor-exit v0

    return-void

    .line 2292
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDirectionAwaiter:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v1}, Lcom/metamoji/cm/ResetableEvent;->reset()V

    .line 2293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2295
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDispatchDirections:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 2297
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDirectionAwaiter:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v0}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2299
    const-string v1, "NsDirectionManager.dispatchDirections interrupted."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 2293
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private dispatchedDirectionCompleted(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;)V"
        }
    .end annotation

    .line 1209
    const-string v0, "NsDirectionManager.dispatchedDirectionCompleted: (count=%d)"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboSettings;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1218
    iget-boolean v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_isMarkLastReceivedDirectionCalled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1219
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_markLastReceivedDirection:Lcom/metamoji/ns/direction/NsReceivedDirection;

    .line 1220
    iput-boolean v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_isMarkLastReceivedDirectionCalled:Z

    .line 1221
    iput-object v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_markLastReceivedDirection:Lcom/metamoji/ns/direction/NsReceivedDirection;

    :goto_0
    move-object v4, p1

    goto :goto_2

    .line 1223
    :cond_0
    iget-boolean v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_isUnknownDataFound:Z

    if-eqz v2, :cond_2

    .line 1224
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_unknownDataDirection:Lcom/metamoji/ns/direction/NsReceivedDirection;

    if-eqz v2, :cond_3

    .line 1225
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    sub-int/2addr v2, v3

    .line 1227
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/direction/NsReceivedDirection;

    goto :goto_1

    :cond_1
    move-object p1, v4

    .line 1229
    :goto_1
    iput-object v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_unknownDataDirection:Lcom/metamoji/ns/direction/NsReceivedDirection;

    goto :goto_0

    .line 1232
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/metamoji/ns/direction/NsReceivedDirection;

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 1237
    invoke-virtual {v4}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object p1

    iget-wide v5, p1, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->sequenceNo:J

    .line 1238
    invoke-virtual {v4}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    .line 1240
    invoke-virtual {v0, v5, v6, p1}, Lcom/metamoji/ns/NsCollaboSettings;->setLastReceivedSequenceNo(JLjava/lang/String;)V

    .line 1243
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 1246
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1, v3}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 1250
    :cond_4
    iput-boolean v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_waitingForHandler:Z

    .line 1253
    iget-boolean p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_isUnknownDataFound:Z

    if-eqz p1, :cond_6

    .line 1256
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    monitor-enter p1

    .line 1257
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1258
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1259
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1260
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1261
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$19;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ns/direction/NsDirectionManager$19;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    .line 1272
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->bgTaskForReceiveAllData()Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    move-result-object p1

    if-nez p1, :cond_5

    .line 1275
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v0, Lcom/metamoji/ns/direction/NsDirectionManager$20;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$20;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1288
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->unknownDataFound()V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 1260
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1292
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateReceiveInvokerPausing()V

    return-void
.end method

.method private extractDirectionData([BLcom/metamoji/ns/direction/NsDirectionReceiveInfo;)Lcom/metamoji/ns/direction/NsReceivedDirection;
    .locals 6

    const/4 v0, 0x1

    .line 1063
    invoke-static {p1, v0}, Lcom/metamoji/df/model/ModelManagerFactory;->restoreOnMemoryModelManager([BZ)Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1070
    :try_start_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1074
    const-string v2, "direction"

    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1077
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 1083
    const-string v2, "data"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1084
    instance-of v3, v2, Lcom/metamoji/df/model/IModel;

    if-eqz v3, :cond_0

    .line 1086
    check-cast v2, Lcom/metamoji/df/model/IModel;

    .line 1087
    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v3

    .line 1088
    new-instance v4, Lcom/metamoji/df/model/ModelManagerImportContext;

    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    .line 1089
    invoke-interface {v3, v2, v0, v4}, Lcom/metamoji/df/model/IModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 1096
    :cond_0
    const-string/jumbo v3, "target"

    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1099
    const-string v4, "esid"

    invoke-interface {v1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1100
    iget-object v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v4}, Lcom/metamoji/nt/NtDocument;->getEditStatusID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1102
    iput-boolean v0, p2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->bySendBack:Z

    .line 1106
    :cond_1
    new-instance v0, Lcom/metamoji/ns/direction/NsReceivedDirection;

    invoke-direct {v0, v2, p2, v3}, Lcom/metamoji/ns/direction/NsReceivedDirection;-><init>(Ljava/lang/Object;Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    return-object v0

    .line 1078
    :cond_2
    :try_start_1
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0064"

    const-string v1, "direction data version is not supported."

    invoke-direct {p2, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 1075
    :cond_3
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0063"

    const-string/jumbo v1, "type of direction data root model is not supported."

    invoke-direct {p2, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 1072
    :cond_4
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "AP0062"

    const-string v1, "direction data root model is not found."

    invoke-direct {p2, v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 1108
    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 1109
    throw p2

    .line 1065
    :cond_5
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "AP0061"

    const-string/jumbo v0, "unsupported direction data (isn\'t a model?)."

    invoke-direct {p1, p2, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method private followPresenter()V
    .locals 3

    .line 2944
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReceiveAllDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2945
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->bgTaskForReceiveAllData()Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2947
    monitor-exit v0

    return-void

    .line 2949
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2952
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReflectOfflineEditLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2953
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->bgTaskForReflectOfflineEdit()Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2955
    monitor-exit v1

    return-void

    .line 2957
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2960
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2961
    :try_start_2
    iget-boolean v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPositionChanged:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPage:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 2967
    iput-boolean v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPositionChanged:Z

    .line 2968
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2976
    :try_start_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$45;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$45;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    :try_end_3
    .catch Lcom/metamoji/cm/CmBackgroundTaskManager$CmTaskBusyException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2998
    const-string v1, "cannot follow presenter."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 2994
    :catch_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingInfoLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    .line 2995
    :try_start_4
    iput-boolean v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPositionChanged:Z

    .line 2996
    monitor-exit v1

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 2964
    :cond_3
    :goto_1
    :try_start_5
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    .line 2968
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :catchall_3
    move-exception v0

    .line 2957
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    .line 2949
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1
.end method

.method private internalDispatchDirections()V
    .locals 7

    .line 1137
    const-string v0, "NsDirectionManager.internalDispatchDirections"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1143
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receivedDirections:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1144
    const-string v1, "NsDirectionManager.internalDispatchDirections: no directions."

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1145
    monitor-exit v0

    return-void

    .line 1147
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_2

    .line 1148
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receivedDirections:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/direction/NsReceivedDirection;

    invoke-virtual {v1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->targetHandlerID()Ljava/lang/String;

    move-result-object v1

    .line 1149
    iget-object v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlers:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ns/direction/INsDirectionHandler;

    goto :goto_0

    :cond_1
    move-object v4, v3

    .line 1150
    :goto_0
    iget-object v5, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receivedDirections:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    move-object v1, v3

    move-object v4, v1

    move-object v5, v4

    .line 1152
    :goto_1
    iput-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receivedDirections:Ljava/util/ArrayList;

    .line 1153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_6

    .line 1160
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/direction/NsReceivedDirection;

    .line 1170
    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 1171
    :try_start_1
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1172
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1173
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/metamoji/ns/NsCollaboManager;->isAcceptingBooth(Ljava/lang/String;)Z

    move-result v0

    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_2

    .line 1186
    :cond_3
    const-string v0, "[DirectionManager] dispatch directions (count=%d, target=%s)"

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 1187
    iput-boolean v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_waitingForHandler:Z

    .line 1188
    invoke-direct {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateReceiveInvokerPausing()V

    .line 1190
    new-instance v0, Lcom/metamoji/ns/direction/NsDirectionManager$18;

    invoke-direct {v0, p0, v5}, Lcom/metamoji/ns/direction/NsDirectionManager$18;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/util/ArrayList;)V

    invoke-interface {v4, v5, p0, v0}, Lcom/metamoji/ns/direction/INsDirectionHandler;->handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V

    return-void

    .line 1177
    :cond_4
    :goto_2
    const-string v3, "[DirectionManager] discard unattached booth directions (count=%d, target=%s)"

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 1180
    const-string v0, "[DirectionManager] different status between CollaboManager and DirectionManager."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 1172
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1197
    :cond_6
    const-string v0, "NsDirectionManager.internalDispatchDirections: discard directions (count=%d, booth=%s target=%s)"

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_3

    :cond_7
    const/4 v3, -0x1

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v5, :cond_8

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/direction/NsReceivedDirection;

    invoke-virtual {v2}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    goto :goto_4

    :cond_8
    const-string v2, "null"

    :goto_4
    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    const-string v1, "null"

    :goto_5
    filled-new-array {v3, v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v1

    .line 1153
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private synthetic lambda$attachBooth$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic lambda$closeDocumentDueToUnknownData$1(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 1298
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1299
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 1300
    sget v2, Lcom/metamoji/noteanytime/R$string;->DIRECTION_UNSUPPORTED:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1301
    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_CLOSE:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$21;

    invoke-direct {v2}, Lcom/metamoji/ns/direction/NsDirectionManager$21;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 1310
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1311
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1312
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "closeDocumentDueToUnknownData"

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private makeDirectionData(Ljava/lang/Object;Ljava/lang/String;)[B
    .locals 6

    .line 863
    invoke-static {}, Lcom/metamoji/df/model/ModelManagerFactory;->newOnMemoryModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 867
    :try_start_0
    const-string v1, "direction"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const/4 v2, 0x1

    .line 868
    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 869
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->replaceRootModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    const-string v3, "data"

    if-eqz p1, :cond_0

    :try_start_1
    instance-of v4, p1, Lcom/metamoji/df/model/IModel;

    if-eqz v4, :cond_0

    .line 874
    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 875
    new-instance v4, Lcom/metamoji/df/model/ModelManagerImportContext;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    .line 876
    new-instance v5, Lcom/metamoji/ns/direction/NsDirectionManager$16;

    invoke-direct {v5, p0, v2}, Lcom/metamoji/ns/direction/NsDirectionManager$16;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;I)V

    invoke-virtual {v4, v5}, Lcom/metamoji/df/model/ModelManagerImportContext;->setIgnorePropNames(Ljava/util/List;)V

    .line 879
    invoke-interface {v0, p1, v2, v4}, Lcom/metamoji/df/model/IModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 880
    invoke-interface {v1, v3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 883
    :cond_0
    invoke-interface {v1, v3, p1}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 886
    :goto_0
    const-string/jumbo p1, "target"

    invoke-interface {v1, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getEditStatusID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 890
    const-string p2, "esid"

    invoke-interface {v1, p2, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_1
    new-instance p1, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {p1}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    .line 895
    invoke-virtual {p1, v2}, Lcom/metamoji/df/model/ModelManagerSaveContext;->setCramped(Z)V

    .line 896
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    .line 897
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getOnMemoryModelAsByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 901
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->close()V

    .line 903
    :cond_2
    throw p1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 901
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->close()V

    :cond_4
    return-object p1
.end method

.method private makeNotifyBoothIdDic(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/ns/NsCollaboSettings;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtNoteController;",
            "Lcom/metamoji/ns/NsCollaboSettings;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 3209
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 3210
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 3211
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3212
    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    if-eqz p3, :cond_0

    .line 3213
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p4, :cond_1

    .line 3217
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 3221
    :cond_1
    invoke-direct {p0, p1, v3, v0, p5}, Lcom/metamoji/ns/direction/NsDirectionManager;->boothIdArrayOnPage(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 3222
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3223
    invoke-virtual {p2, v4}, Lcom/metamoji/ns/NsCollaboSettings;->lastReceivedSequenceNoForBooth(Ljava/lang/String;)J

    move-result-wide v5

    .line 3224
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private onFollowPresenterTimer()V
    .locals 0

    .line 2939
    invoke-direct {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->followPresenter()V

    return-void
.end method

.method private onUserModeChanged(IZ)V
    .locals 11

    .line 1757
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 1758
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    and-int/lit8 v2, p1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 1760
    iget-object v7, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingPage:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 1762
    invoke-virtual {p0, v1, v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->safeViewingPositonChanged(Lcom/metamoji/nt/NtPageController;Z)Z

    .line 1763
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->clearLaserPointer()V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    .line 1764
    iget-object v7, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingPage:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1766
    iput-object v5, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingPage:Ljava/lang/String;

    .line 1767
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingRect:Landroid/graphics/RectF;

    .line 1768
    iput v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingScale:F

    .line 1771
    iget-object v7, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_featuredDcUserId:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1772
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/metamoji/forSchool/ScSchoolManager;->endFeaturedPersonalMode(Z)V

    .line 1774
    :cond_1
    iput-object v5, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_featuredDcUserId:Ljava/lang/String;

    .line 1776
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->clearLaserPointer()V

    .line 1780
    :cond_2
    :goto_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v7

    .line 1788
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v8

    .line 1790
    sget-object v9, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-eq v7, v9, :cond_5

    and-int/lit8 v9, v8, 0x8

    if-nez v9, :cond_5

    if-eqz v0, :cond_7

    .line 1791
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v8

    sget-object v9, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v8, v9, :cond_7

    .line 1795
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v8

    if-nez v8, :cond_3

    .line 1796
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v8

    new-instance v9, Lcom/metamoji/ns/direction/NsDirectionManager$25;

    invoke-direct {v9, p0, v0}, Lcom/metamoji/ns/direction/NsDirectionManager$25;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v8, v9}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1803
    :cond_3
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v8

    .line 1804
    invoke-virtual {v8}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v9

    sget-object v10, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v9, v10, :cond_7

    .line 1806
    invoke-virtual {v8}, Lcom/metamoji/ns/NsCollaboManager;->roomMode()Ljava/lang/String;

    move-result-object v9

    const-string v10, "readonly"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1810
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v8}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v8

    if-nez v8, :cond_4

    move v9, v4

    :cond_4
    if-eqz v9, :cond_7

    .line 1814
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v8

    new-instance v9, Lcom/metamoji/ns/direction/NsDirectionManager$26;

    invoke-direct {v9, p0, v0}, Lcom/metamoji/ns/direction/NsDirectionManager$26;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v8, v9}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1828
    :cond_5
    sget-object v9, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-eq v7, v9, :cond_7

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_7

    .line 1829
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->bgTaskForReflectOfflineEdit()Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    move-result-object v8

    if-nez v8, :cond_7

    .line 1831
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v8

    if-eqz v8, :cond_7

    .line 1832
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/ns/NsCollaboManager;->roomMode()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1833
    const-string v9, "readonly"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1834
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNoteModeForSchool()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v8

    .line 1835
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v9

    new-instance v10, Lcom/metamoji/ns/direction/NsDirectionManager$27;

    invoke-direct {v10, p0, v0, v8}, Lcom/metamoji/ns/direction/NsDirectionManager$27;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    invoke-virtual {v9, v10}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1842
    :cond_6
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v8

    new-instance v9, Lcom/metamoji/ns/direction/NsDirectionManager$28;

    invoke-direct {v9, p0, v0}, Lcom/metamoji/ns/direction/NsDirectionManager$28;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtNoteController;)V

    invoke-virtual {v8, v9}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1854
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateViewLocationRelatedCommandStatus()V

    .line 1855
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateNoteModeRelatedCommandStatus()V

    if-eqz p2, :cond_8

    if-nez v2, :cond_8

    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_8

    .line 1874
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-eq v7, v0, :cond_c

    .line 1875
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingInfoLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1876
    :try_start_0
    iput-boolean v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPositionChanged:Z

    .line 1877
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1878
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_followPresenterTimer:Ljava/util/Timer;

    if-nez v0, :cond_c

    .line 1879
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_followPresenterTimer:Ljava/util/Timer;

    .line 1880
    new-instance v3, Lcom/metamoji/ns/direction/NsDirectionManager$29;

    invoke-direct {v3, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$29;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    const-wide/16 v4, 0xfa

    const-wide/16 v6, 0xfa

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1877
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    if-eqz p2, :cond_9

    if-eqz v2, :cond_b

    .line 1896
    :cond_9
    iget-object v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingInfoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1897
    :try_start_2
    iput-object v5, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPage:Ljava/lang/String;

    .line 1898
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingRect:Landroid/graphics/RectF;

    .line 1899
    iput v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingScale:F

    .line 1900
    iput-boolean v6, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPositionChanged:Z

    .line 1901
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p2, :cond_b

    if-nez v2, :cond_b

    .line 1919
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_featuredDcUserId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1921
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/metamoji/forSchool/ScSchoolManager;->endFeaturedPersonalMode(Z)V

    goto :goto_2

    .line 1923
    :cond_a
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isStartingFeaturedPersonalMode()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1925
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/metamoji/forSchool/ScSchoolManager;->endFeaturedPersonalMode(Z)V

    .line 1931
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_followPresenterTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 1932
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1933
    iput-object v5, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_followPresenterTimer:Ljava/util/Timer;

    .line 1936
    :cond_c
    :goto_3
    const-string v0, "NsDirectionManager:onUserModeChanged:  %d : %b"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1939
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->bgTaskForReflectOfflineEdit()Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    move-result-object p1

    if-nez p1, :cond_d

    .line 1941
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 1942
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getTargetLayerType()Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;)V

    .line 1946
    :cond_d
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ns/direction/NsDirectionManager$31;

    invoke-direct {p2, p0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager$31;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 1901
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private postSendingData()V
    .locals 4

    .line 913
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 914
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const-string v2, "MMJNsShareSettings"

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboSettings;

    .line 916
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v3, Lcom/metamoji/ns/direction/NsDirectionManager$17;

    invoke-direct {v3, p0, v1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager$17;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/ns/NsCollaboSettings;Lcom/metamoji/ns/NsCollaboManager;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private pushReceivedDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;)V
    .locals 3

    .line 1117
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 1118
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->receiveInfo()Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 1122
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1123
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receivedDirections:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receivedDirections:Ljava/util/ArrayList;

    .line 1126
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receivedDirections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1129
    :cond_1
    const-string p1, "[DirectionManager] pushReceivedDirection: directions dropped."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    .line 1119
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private updateReceiveInvokerPausing()V
    .locals 3

    .line 1320
    iget v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_pauseDispaching:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_waitingForHandler:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1321
    :goto_1
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/metamoji/ns/direction/NsRecvInvoker;->isPausing()Z

    move-result v1

    if-eq v1, v0, :cond_2

    .line 1322
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "NsDirectionManager.updateReceiveInvokerPausing: receive invoker pausing = %b"

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1323
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/direction/NsRecvInvoker;->pause(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addDeviceIdInitializedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;",
            ">;)V"
        }
    .end annotation

    .line 2848
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDeviceIdInitializedListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public addNotifyBoothUpdated(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 3271
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const-string v1, "MMJNsShareSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/metamoji/ns/NsCollaboSettings;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 3272
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->makeNotifyBoothIdDic(Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/ns/NsCollaboSettings;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    .line 3274
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 3275
    iget-object p2, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance p3, Lcom/metamoji/ns/direction/NsDirectionManager$49;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$49;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/util/Map;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public addUserModeChangedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsUserModeChangedEvent;",
            ">;)V"
        }
    .end annotation

    .line 2859
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserModeChangedListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public addUserPropertyChangedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;",
            ">;)V"
        }
    .end annotation

    .line 2829
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserPropertyChangedListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public addUserPropertyInitializedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;",
            ">;)V"
        }
    .end annotation

    .line 2870
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserPropertyInitializedListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public addUserPropertyWillChangeEventListener(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;",
            ">;)V"
        }
    .end annotation

    .line 2837
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserPropertyWillChangeListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public attachBooth(Ljava/lang/String;)V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$3;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$3;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public attachBoothForSchool(Lcom/metamoji/nt/NtPageController;)V
    .locals 2

    .line 3005
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$46;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$46;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bgTaskForReceiveAllData()Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReceiveAllDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReceiveAllData:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 289
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bgTaskForReflectOfflineEdit()Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReflectOfflineEditLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReflectOfflineEdit:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public boothUpdated(Ljava/lang/String;)V
    .locals 2

    .line 2557
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$41;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$41;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public changeUserProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager$13;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public collaboBoothAttached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2619
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$42;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager$42;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public collaboDirectionReceived(Ljava/lang/String;Ljava/lang/String;[BLcom/metamoji/ns/direction/NsDirectionReceiveInfo;)V
    .locals 5

    .line 2313
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDetachBoothLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2316
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_limitTimeStamp:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 2317
    iget-object v1, p4, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->timestamp:Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/ns/NsCollaboUtils;->parseTimestampString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2318
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_limitTimeStamp:Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2322
    :cond_0
    iget-wide v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_limitSequenceNo:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    iget-wide v3, p4, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->sequenceNo:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 2323
    :goto_0
    iget-object p1, p4, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    sget-object p2, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_END:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager;->logModeChanged(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;)V

    .line 2324
    monitor-exit v0

    return-void

    .line 2328
    :cond_1
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    iget-object v2, p4, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->isAcceptingBooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2331
    const-string p1, "NsDirectionManager.collaboDirectionReceived: not accepting booth %s"

    iget-object p2, p4, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2332
    monitor-exit v0

    return-void

    .line 2336
    :cond_2
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->getDriveID()Ljava/lang/String;

    move-result-object v1

    .line 2337
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->getDocumentID()Ljava/lang/String;

    move-result-object v2

    .line 2338
    invoke-static {v1, p1}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v2, p2}, Lcom/metamoji/cm/CmUtils;->equalsString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_3

    goto :goto_2

    .line 2346
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ns/direction/NsDirectionManager$36;

    invoke-direct {p2, p0, p4}, Lcom/metamoji/ns/direction/NsDirectionManager$36;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 2359
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance p2, Lcom/metamoji/ns/direction/NsDirectionManager$37;

    invoke-direct {p2, p0, p4, p3}, Lcom/metamoji/ns/direction/NsDirectionManager$37;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;[B)V

    invoke-virtual {p1, p2}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2409
    :try_start_2
    const-string p2, "couldn\'t receive direction!"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2412
    :goto_1
    monitor-exit v0

    return-void

    .line 2339
    :cond_4
    :goto_2
    const-string p1, "NsDirectionManager.collaboDirectionReceived: not accepting note. currentDocId : %s , directionTargetDocId : %s"

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2340
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 2412
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public collaboModeChanged(Lcom/metamoji/ns/NsCollaboManager$CollaboMode;)V
    .locals 10

    .line 1339
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_4

    .line 1344
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 1349
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 1350
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserMode()I

    move-result v3

    .line 1353
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v4

    if-eqz v4, :cond_1

    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_1

    and-int/lit8 v4, v3, 0x10

    if-nez v4, :cond_1

    .line 1356
    iget-object v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingInfoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1357
    :try_start_0
    iput-boolean v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPositionChanged:Z

    .line 1358
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_followPresenterTimer:Ljava/util/Timer;

    if-nez v1, :cond_1

    .line 1360
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iput-object v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_followPresenterTimer:Ljava/util/Timer;

    .line 1361
    new-instance v5, Lcom/metamoji/ns/direction/NsDirectionManager$22;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$22;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    const-wide/16 v6, 0xfa

    const-wide/16 v8, 0xfa

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1358
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    and-int/lit8 v1, v3, 0x4

    if-eqz v1, :cond_2

    .line 1372
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/ns/direction/NsDirectionManager;->safeViewingPositonChanged(Lcom/metamoji/nt/NtPageController;Z)Z

    :cond_2
    and-int/lit8 v1, v3, 0x8

    if-nez v1, :cond_3

    .line 1377
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-eq v1, v2, :cond_3

    .line 1378
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->changeToViewMode()V

    .line 1385
    :cond_3
    sget-object v1, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;)V

    .line 1390
    const-string p1, "privateLayer"

    const-string v1, "false"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ns/NsCollaboManager;->changeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateViewLocationRelatedCommandStatus()V

    .line 1393
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateNoteModeRelatedCommandStatus()V

    return-void

    .line 1397
    :cond_4
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v0, p1, :cond_8

    .line 1404
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_followPresenterTimer:Ljava/util/Timer;

    if-eqz p1, :cond_5

    .line 1405
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    const/4 p1, 0x0

    .line 1406
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_followPresenterTimer:Ljava/util/Timer;

    .line 1410
    :cond_5
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 1414
    :cond_6
    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PRIVATE:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;)V

    .line 1417
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const-string v1, "privateLayer"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboManager;->changeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_7

    .line 1421
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1422
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_LASER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1423
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->changeToViewMode()V

    .line 1428
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateViewLocationRelatedCommandStatus()V

    .line 1429
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateNoteModeRelatedCommandStatus()V

    return-void

    .line 1433
    :cond_8
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v0, p1, :cond_b

    .line 1435
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 1436
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 1438
    sget-object v3, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->PERSONAL_OFFLINE_EDIT:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {p1, v3}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;)V

    .line 1441
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v3

    sget-object v4, Lcom/metamoji/nt/NtDocument$EditMode;->LASERMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v3, v4, :cond_9

    .line 1442
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->changeToViewMode()V

    .line 1446
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateViewLocationRelatedCommandStatus()V

    .line 1447
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateNoteModeRelatedCommandStatus()V

    .line 1449
    invoke-static {}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    move-result-object v3

    .line 1450
    invoke-virtual {v3, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1451
    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtNoteController;->setEditLayerEditable(Z)V

    return-void

    .line 1453
    :cond_a
    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtNoteController;->setEditLayerEditable(Z)V

    :cond_b
    :goto_1
    return-void
.end method

.method public collaboPostDirectionResult(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2250
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    monitor-enter p1

    .line 2251
    :try_start_0
    iget-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    invoke-virtual {p2, p3}, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->handleForPacketNo(Ljava/lang/String;)Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;

    move-result-object p2

    .line 2252
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 2254
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v0, Lcom/metamoji/ns/direction/NsDirectionManager$34;

    invoke-direct {v0, p0, p3, p2}, Lcom/metamoji/ns/direction/NsDirectionManager$34;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettingsSendingDataHandle;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p2

    .line 2252
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_0
    return-void
.end method

.method public connectStatusChanged(Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;)V
    .locals 2

    .line 1469
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 1470
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1471
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1472
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1474
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v0, p1, :cond_0

    .line 1477
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v0, Lcom/metamoji/ns/direction/NsDirectionManager$23;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$23;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void

    .line 1641
    :cond_0
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v0, p1, :cond_2

    .line 1645
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    monitor-enter p1

    .line 1646
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1647
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1648
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1651
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    monitor-enter v0

    .line 1652
    :try_start_2
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingDataTable:Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsDirectionManager$SendingDataTable;->clear()V

    .line 1653
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1655
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v0, Lcom/metamoji/ns/direction/NsDirectionManager$24;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$24;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    .line 1736
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReceiveAllDataLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1737
    :try_start_3
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReceiveAllData:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 1738
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->bgTaskForReceiveAllData()Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1740
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->connectionDisconnected()V

    .line 1743
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 1653
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception v0

    .line 1648
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_2
    return-void

    :catchall_3
    move-exception p1

    .line 1472
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method

.method currentPageChanged(Lcom/metamoji/nt/NtPageController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 577
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_1

    .line 580
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v6

    .line 581
    new-instance v3, Lcom/metamoji/ns/direction/NsDirectionManager$9;

    const/4 v5, 0x3

    move-object v4, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/ns/direction/NsDirectionManager$9;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :try_start_0
    invoke-static {v3}, Lcom/metamoji/cm/CmJson;->createJsonValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->safeURLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 596
    iget-object p2, v4, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance p3, Lcom/metamoji/ns/direction/NsDirectionManager$10;

    invoke-direct {p3, p0, v0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$10;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    move-object v4, p0

    return-void
.end method

.method public currentPageChangedTo(Lcom/metamoji/nt/NtPageController;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_collaboRestoreProcInfo:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    .line 345
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBoothForSchool(Lcom/metamoji/nt/NtPageController;)V

    return-void
.end method

.method public currentPageChangingFrom(Lcom/metamoji/nt/NtPageController;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_collaboRestoreProcInfo:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->detachBoothViolentlyForSchool(Lcom/metamoji/nt/NtPageController;Ljava/lang/Runnable;)V

    return-void
.end method

.method public detachBooth(ZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 400
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/ns/direction/NsDirectionManager;->detachBoothViolently(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    .line 402
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/ns/direction/NsDirectionManager;->detachBoothGracefully(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public detachBoothGracefully(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 414
    const-string v0, "NsDirectionManager.detachBoothGracefully %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 419
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 425
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager$4;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 440
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 435
    :try_start_2
    const-string v0, "detachBooth"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_0

    .line 440
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 443
    :cond_1
    throw p1

    :catchall_2
    move-exception p1

    .line 419
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public detachBoothViolently(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5

    .line 453
    const-string v0, "NsDirectionManager.detachBoothViolently %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 458
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x0

    .line 462
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDetachBoothLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 464
    :try_start_2
    const-string v2, "NsDirectionManager.detachBoothViolently: call preDetachBooth %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/metamoji/ns/NsCollaboManager;->preDetachBooth(Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v3, Lcom/metamoji/ns/direction/NsDirectionManager$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager$5;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 481
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 486
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    move v4, v0

    move-object v0, p1

    move p1, v4

    .line 481
    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception p1

    move v4, v0

    move-object v0, p1

    move p1, v4

    goto :goto_2

    :catch_1
    move-exception p1

    move v4, v0

    move-object v0, p1

    move p1, v4

    .line 483
    :goto_1
    :try_start_6
    const-string v1, "detachBoothNow"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 486
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :catchall_3
    move-exception v0

    :goto_2
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 488
    :cond_1
    throw v0

    :catchall_4
    move-exception p1

    .line 458
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1
.end method

.method public detachBoothViolentlyForSchool(Lcom/metamoji/nt/NtPageController;Ljava/lang/Runnable;)V
    .locals 5

    .line 3155
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3156
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->detachBoothViolently(Ljava/lang/String;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 3159
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3160
    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    .line 3161
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v3

    .line 3162
    const-string/jumbo v4, "system:common"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "system:personal_template"

    .line 3164
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "system:teacher_personal"

    .line 3166
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "system:personal"

    .line 3167
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3168
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v2

    .line 3169
    invoke-virtual {p0, v2, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->detachBoothViolently(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 3174
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public deviceIdInitialized(Ljava/lang/String;)V
    .locals 2

    .line 2646
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDeviceIdInitializedListener:Lcom/metamoji/cm/CmEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmEventListener;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2647
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDeviceIdInitializedListener:Lcom/metamoji/cm/CmEventListener;

    new-instance v1, Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;

    invoke-direct {v1, p1}, Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public didDetect(Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;",
            ">;)V"
        }
    .end annotation

    .line 2787
    iget-boolean p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_isAnomalyDetected:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2792
    iput-boolean p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_isAnomalyDetected:Z

    .line 2795
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[Direction Manager Anomaly Detected\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2797
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;

    .line 2798
    iget-object v1, v0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->startTime:Ljava/util/Date;

    iget-object v2, v0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->endTime:Ljava/util/Date;

    iget v0, v0, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$SectionInfo;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "start=%s, end=%s, count=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2800
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2802
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 2806
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ns/direction/NsDirectionManager$44;

    invoke-direct {p2, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$44;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public directableLayer(Lcom/metamoji/nt/NtLayerController;)Z
    .locals 1

    .line 717
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object p1

    .line 718
    const-string/jumbo v0, "system:private"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "system:offline_personal"

    .line 720
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispose()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_followPresenterTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 242
    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_followPresenterTimer:Ljava/util/Timer;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlers:Ljava/util/HashMap;

    .line 247
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->getHandler()Lcom/metamoji/ns/INsCollaboHandler;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 252
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->setHandler(Lcom/metamoji/ns/INsCollaboHandler;)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingAnomalyDetectors:[Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 256
    invoke-virtual {v4, v1}, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->setDelegate(Lcom/metamoji/ns/direction/NsSendingAnomalyDetector$IDelegate;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$2;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/direction/NsDirectionManager$2;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 269
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDirectionAwaiter:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {v0}, Lcom/metamoji/cm/ResetableEvent;->set()V

    .line 270
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsSendInvoker;->dispose()V

    .line 272
    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    if-eqz v0, :cond_4

    .line 275
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDisposalAwaiter:Ljava/util/concurrent/CountDownLatch;

    .line 276
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsRecvInvoker;->dispose()V

    .line 277
    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDisposalAwaiter:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 281
    const-string v1, "NsDirectionManager.dispose"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 247
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public documentModified()V
    .locals 2

    .line 2730
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void
.end method

.method public followPresenterNextTime()V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_followPresenterTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingInfoLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 687
    :try_start_0
    iput-boolean v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPositionChanged:Z

    .line 688
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 734
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturedDcUserId()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_featuredDcUserId:Ljava/lang/String;

    return-object v0
.end method

.method public invokerDidEndOperation(Lcom/metamoji/ns/direction/NsInvoker;)V
    .locals 1

    .line 2702
    :try_start_0
    const-string p1, "NsDirectionManger.invokerDidEndOperation: call dispatchDirections"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 2703
    invoke-direct {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->dispatchDirections()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2705
    const-string v0, "couldn\'t dispatch direction 2!"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public invokerWillBeginOperation(Lcom/metamoji/ns/direction/NsInvoker;)V
    .locals 0

    .line 2690
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    return-void
.end method

.method public isAttachedBooth(Ljava/lang/String;)Z
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 507
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isUnknownDataFound()Z
    .locals 1

    .line 2771
    iget-boolean v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_isUnknownDataFound:Z

    return v0
.end method

.method public logModeChanged(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;)V
    .locals 4

    .line 2424
    const-string v0, "NsDirectionManager.logModeChanged (%s) %s"

    invoke-virtual {p2}, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2426
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReceiveAllDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2427
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->bgTaskForReceiveAllData()Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2430
    sget-object v1, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_END:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    if-eq v1, p2, :cond_0

    sget-object v1, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_NONE:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    if-ne v1, p2, :cond_1

    .line 2433
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$38;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$38;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 2454
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2456
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReflectOfflineEditLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2457
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->bgTaskForReflectOfflineEdit()Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2459
    sget-object v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_END:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    if-eq v0, p2, :cond_3

    sget-object v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_NONE:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    if-ne v0, p2, :cond_4

    .line 2462
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v3, Lcom/metamoji/ns/direction/NsDirectionManager$39;

    invoke-direct {v3, p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$39;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    .line 2483
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2486
    sget-object v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_END:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    if-eq v0, p2, :cond_6

    sget-object v0, Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;->LOGMODE_NONE:Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;

    if-ne v0, p2, :cond_5

    goto :goto_1

    :cond_5
    return-void

    .line 2487
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$40;

    invoke-direct {v2, p0, v1, p2, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$40;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;ZLcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 2483
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 2454
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public markLastReceivedDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;)V
    .locals 1

    const/4 v0, 0x1

    .line 2781
    iput-boolean v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_isMarkLastReceivedDirectionCalled:Z

    .line 2782
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_markLastReceivedDirection:Lcom/metamoji/ns/direction/NsReceivedDirection;

    return-void
.end method

.method public onInvokerDisposed()V
    .locals 1

    .line 2712
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDisposalAwaiter:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 2713
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2743
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "NsDirectionManager.pageContentsChanged: on Page-%d (%s)"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2744
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->setNeedsUpdateThumbnail()V

    .line 2747
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->isCurrentPage()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2750
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->refreshDetailWindow()V

    :cond_0
    return-void
.end method

.method public pauseDispatching()V
    .locals 1

    .line 986
    iget v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_pauseDispaching:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_pauseDispaching:I

    .line 987
    invoke-direct {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateReceiveInvokerPausing()V

    return-void
.end method

.method public postDirectionAnalysis(ILjava/util/Date;Ljava/util/Date;)V
    .locals 6

    int-to-double v0, p1

    .line 2658
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 2659
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtFeature;->DirectionVelocity:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2660
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ns/direction/NsDirectionManager$43;

    invoke-direct {v3, p0, v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager$43;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;D)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 2671
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendingAnomalyDetectors:[Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2672
    invoke-virtual {v3, p1, p2, p3}, Lcom/metamoji/ns/direction/NsSendingAnomalyDetector;->monitor(ILjava/util/Date;Ljava/util/Date;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public presentersViewingPage()Ljava/lang/String;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPage:Ljava/lang/String;

    return-object v0
.end method

.method public receiveInvoker()Lcom/metamoji/ns/direction/NsRecvInvoker;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    return-object v0
.end method

.method public registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V
    .locals 3

    .line 956
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 957
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlers:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 958
    invoke-interface {p1}, Lcom/metamoji/ns/direction/INsDirectionHandler;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v1

    .line 959
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlers:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
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

.method public removeDeviceIdInitializedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsDeviceIdInitializedEvent;",
            ">;)V"
        }
    .end annotation

    .line 2852
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mDeviceIdInitializedListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeUserModeChangedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsUserModeChangedEvent;",
            ">;)V"
        }
    .end annotation

    .line 2863
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserModeChangedListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeUserPropertyChangedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;",
            ">;)V"
        }
    .end annotation

    .line 2833
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserPropertyChangedListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeUserPropertyInitializedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;",
            ">;)V"
        }
    .end annotation

    .line 2874
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserPropertyInitializedListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeUserPropertyWillChangeEventListener(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;",
            ">;)V"
        }
    .end annotation

    .line 2841
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserPropertyWillChangeListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public resetViewingLayer(Lcom/metamoji/nt/NtPageController;)V
    .locals 3

    const/4 v0, 0x0

    .line 551
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_featuredDcUserId:Ljava/lang/String;

    .line 553
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_0

    .line 556
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p1

    .line 557
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 558
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 559
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->safeURLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 560
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$7;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    .line 566
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$8;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ns/direction/NsDirectionManager$8;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/ns/NsCollaboManager;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public resumeDispatching()V
    .locals 1

    .line 998
    iget v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_pauseDispaching:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 999
    iput v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_pauseDispaching:I

    .line 1001
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->updateReceiveInvokerPausing()V

    return-void
.end method

.method public safeViewingPositonChanged(Lcom/metamoji/nt/NtPageController;Z)Z
    .locals 2

    .line 669
    const-string v0, "NsDirectionManager.safeViewingPositonChanged"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager;->viewingPositonChanged(Lcom/metamoji/nt/NtPageController;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 675
    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v1

    :catch_1
    move-exception p1

    .line 672
    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v1
.end method

.method public schoolUserModeChanged(IZ)V
    .locals 2

    .line 3188
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$48;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager$48;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;IZ)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZ)V
    .locals 7

    .line 762
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLcom/metamoji/nt/NtPageController;)V

    return-void
.end method

.method public sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLcom/metamoji/nt/NtPageController;)V
    .locals 6

    .line 780
    invoke-static {p5, p2}, Lcom/metamoji/ns/NsCollaboUtils;->currentBoothId(Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 785
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V
    .locals 7

    .line 798
    invoke-virtual {p5}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p6}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p6

    invoke-static {p5, v0, p6}, Lcom/metamoji/ns/NsCollaboUtils;->boothIdWithPageId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 800
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 813
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 828
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager;->makeDirectionData(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v2

    .line 847
    iget-object v7, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    if-eqz p3, :cond_0

    .line 832
    new-instance v0, Lcom/metamoji/ns/direction/NsDirectionManager$14;

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v3, p6

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ns/direction/NsDirectionManager$14;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;[BLjava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move-object p3, p5

    move p5, p4

    move-object p4, p6

    move-object p6, p3

    move-object p3, v2

    .line 847
    new-instance p1, Lcom/metamoji/ns/direction/NsDirectionManager$15;

    move-object p2, p0

    invoke-direct/range {p1 .. p6}, Lcom/metamoji/ns/direction/NsDirectionManager$15;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;[BLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v7, p1}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    .line 855
    invoke-direct {p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->postSendingData()V

    return-void
.end method

.method public setBgTaskForReceiveAllData(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReceiveAllDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReceiveAllData:Ljava/lang/ref/WeakReference;

    .line 295
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBgTaskForReflectOfflineEdit(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReflectOfflineEditLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReflectOfflineEdit:Ljava/lang/ref/WeakReference;

    .line 308
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCollaboRestoreProcInfo(Ljava/util/Map;)V
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

    .line 3294
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_collaboRestoreProcInfo:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3295
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_limitTimeStamp:Ljava/util/Date;

    const-wide/16 v0, -0x2

    .line 3296
    iput-wide v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_limitSequenceNo:J

    if-eqz p1, :cond_1

    .line 3298
    const-string v0, "limitTimeStamp"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3299
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_collaboRestoreProcInfo:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmUtils;->getAs(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_limitTimeStamp:Ljava/util/Date;

    .line 3301
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_collaboRestoreProcInfo:Ljava/util/Map;

    const-string v0, "limitSequenceNo"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3302
    iget-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_collaboRestoreProcInfo:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmUtils;->getAsLong(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_limitSequenceNo:J

    :cond_1
    return-void
.end method

.method public setLogMode(Z)V
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual {v0, p1}, Lcom/metamoji/ns/direction/NsRecvInvoker;->setLogMode(Z)V

    :cond_0
    return-void
.end method

.method public unknownDataFound(Lcom/metamoji/ns/direction/NsReceivedDirection;)V
    .locals 1

    const/4 v0, 0x1

    .line 2762
    iput-boolean v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_isUnknownDataFound:Z

    .line 2763
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_unknownDataDirection:Lcom/metamoji/ns/direction/NsReceivedDirection;

    return-void
.end method

.method public unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 971
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlers:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 972
    invoke-interface {p1}, Lcom/metamoji/ns/direction/INsDirectionHandler;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object p1

    .line 973
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_directionHandlers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
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

.method public updateNoteModeRelatedCommandStatus()V
    .locals 3

    .line 2901
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2904
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2905
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_VIEW:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2906
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_LASER:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2907
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_PEN:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2908
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_ERASER:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2909
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_SELECT:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2910
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CAN_NOTEMODE_TEXT:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2911
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_DETAIL_WINDOW:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2913
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_START_RECORDING:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2914
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_ADD_INDEX:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2919
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_START_OFFLINE_EDIT:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2920
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_END_OFFLINE_EDIT:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2924
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2926
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2928
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2930
    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManager;->updateEnable()V

    :cond_1
    return-void
.end method

.method public updateViewLocationRelatedCommandStatus()V
    .locals 3

    .line 2881
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2883
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2884
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2885
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_JUMP:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2886
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2887
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_BACKW:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2888
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_FORW:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2889
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_JUMP:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2890
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_BACK:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2891
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2892
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_VIEW_LOCATION:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2893
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_JUMP_LIST_MODE:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    .line 2894
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SHOW_SEARCH_TEXT_BAR:Lcom/metamoji/nt/NtCommand;

    sget-object v2, Lcom/metamoji/nt/NtCommandManager$Grayout;->AUTO:Lcom/metamoji/nt/NtCommandManager$Grayout;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtCommandManager;->enableCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/NtCommandManager$Grayout;)Z

    :cond_0
    return-void
.end method

.method public userModeChanged(IZ)V
    .locals 2

    .line 1977
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$32;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager$32;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;IZ)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public userPropertyChanged(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2025
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserPropertyWillChangeListener:Lcom/metamoji/cm/CmEventListener;

    if-eqz v0, :cond_0

    .line 2026
    new-instance v1, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;-><init>(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    .line 2033
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_receiveInvoker:Lcom/metamoji/ns/direction/NsRecvInvoker;

    new-instance v1, Lcom/metamoji/ns/direction/NsDirectionManager$33;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/metamoji/ns/direction/NsDirectionManager$33;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public userPropertyInitialized(Lcom/metamoji/ns/NsCollaboUserInfo;)V
    .locals 2

    .line 2234
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mUserPropertyInitializedListener:Lcom/metamoji/cm/CmEventListener;

    if-eqz v0, :cond_0

    .line 2235
    new-instance v1, Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;

    invoke-direct {v1, p1}, Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;-><init>(Lcom/metamoji/ns/NsCollaboUserInfo;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public viewingLayerChanged(Lcom/metamoji/nt/NtPageController;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    .line 521
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 523
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 525
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_featuredDcUserId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 526
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 527
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p1

    .line 528
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 529
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 530
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 531
    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 532
    invoke-virtual {v1, p4}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 533
    invoke-virtual {v1, p5}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 534
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->safeURLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 535
    iget-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance p4, Lcom/metamoji/ns/direction/NsDirectionManager$6;

    invoke-direct {p4, p0, v0, p1, p2}, Lcom/metamoji/ns/direction/NsDirectionManager$6;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/ns/NsCollaboManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public viewingPositonChanged(Lcom/metamoji/nt/NtPageController;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 617
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 624
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 626
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mViewingRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtPageController;->getViewportRect(Landroid/graphics/RectF;)V

    .line 628
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result p1

    .line 631
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingPage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 632
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mViewingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingRect:Landroid/graphics/RectF;

    .line 633
    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingScale:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_3

    .line 637
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p2, :cond_2

    .line 638
    iget-wide v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastMyViewingSentDate:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xfa

    cmp-long p2, v3, v5

    if-lez p2, :cond_3

    .line 639
    :cond_2
    new-instance p2, Lcom/metamoji/ns/direction/NsDirectionManager$11;

    const/4 v3, 0x6

    invoke-direct {p2, p0, v3, v0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager$11;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;ILjava/lang/String;F)V

    .line 647
    invoke-static {p2}, Lcom/metamoji/cm/CmJson;->createJsonValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 648
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->safeURLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 649
    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_sendInvoker:Lcom/metamoji/ns/direction/NsSendInvoker;

    new-instance v4, Lcom/metamoji/ns/direction/NsDirectionManager$12;

    invoke-direct {v4, p0, p2}, Lcom/metamoji/ns/direction/NsDirectionManager$12;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/ns/direction/NsSendInvoker;->invoke(Ljava/lang/Runnable;)Z

    .line 658
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingPage:Ljava/lang/String;

    .line 659
    iget-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->mViewingRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 660
    iput p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_myViewingScale:F

    .line 661
    iput-wide v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastMyViewingSentDate:J

    :cond_3
    return-void
.end method
