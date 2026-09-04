.class public Lcom/metamoji/forSchool/ScSchoolManager;
.super Ljava/lang/Object;
.source "ScSchoolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;,
        Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;,
        Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;,
        Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final SCHOOL_MEMBER_MAXIMUM:I = 0x12c

.field public static final SCORESTATUSDIC_KEY_ISREPORTED:Ljava/lang/String; = "isReported"

.field public static final SCORESTATUSDIC_KEY_REPORTEDDATE_FIRST:Ljava/lang/String; = "reportedDateFirst"

.field public static final SCORESTATUSDIC_KEY_REPORTEDDATE_LAST:Ljava/lang/String; = "reportedDateLast"

.field public static final SCORESTATUSDIC_KEY_SCORE:Ljava/lang/String; = "score"

.field public static final SCORESTATUSDIC_KEY_STATUS:Ljava/lang/String; = "status"

.field private static _sharedInstance:Lcom/metamoji/forSchool/ScSchoolManager;


# instance fields
.field private _collaboUserIdToDcUserIdDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field _featuredPersonalModeInfoDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field _isScreenLocked:Z

.field _isScreenLocking:Z

.field _isScreenUnlocking:Z

.field _isStartingFeaturedPersonalMode:Z

.field private _isTeacher:Z

.field _lockScreen:Lcom/metamoji/forSchool/ui/ScLockScreenView;

.field _personalModeInfoDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field _saveLockScreenInfo:Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;

.field private _schoolPersonalStatusDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field _updatedPersonalBoothIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _userModeChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsUserModeChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private _userPropertyChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private _userPropertyInitializedEventListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private _userPropertyWillChangeEventListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;",
            ">;"
        }
    .end annotation
.end field

.field public deliverDriveId:Ljava/lang/String;

.field public deliverTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_afterMode2:I

.field m_beforeMode2:I

.field m_deadlineEndTime:Ljava/util/Date;

.field m_deadlineStartTime:Ljava/util/Date;

.field m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

.field m_endReportMode2:I

.field m_lockMode2:I

.field m_mode2:I

.field m_remandMode2:I

.field m_reportMode2:I

.field m_scoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_testingMode2:I

.field m_validFlag:I


# direct methods
.method static bridge synthetic -$$Nest$fget_isTeacher(Lcom/metamoji/forSchool/ScSchoolManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCollaboUserInfo(Lcom/metamoji/forSchool/ScSchoolManager;Ljava/lang/String;)Lcom/metamoji/ns/NsCollaboUserInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->getCollaboUserInfo(Ljava/lang/String;)Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideLockScreenView(Lcom/metamoji/forSchool/ScSchoolManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->hideLockScreenView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCollaboUserModeChanged(Lcom/metamoji/forSchool/ScSchoolManager;Lcom/metamoji/ns/direction/NsUserModeChangedEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->onCollaboUserModeChanged(Lcom/metamoji/ns/direction/NsUserModeChangedEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCollaboUserPropertyChanged(Lcom/metamoji/forSchool/ScSchoolManager;Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->onCollaboUserPropertyChanged(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCollaboUserPropertyInitialized(Lcom/metamoji/forSchool/ScSchoolManager;Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->onCollaboUserPropertyInitialized(Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCollaboUserPropertyWillChange(Lcom/metamoji/forSchool/ScSchoolManager;Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->onCollaboUserPropertyWillChange(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_saveLockScreenInfo:Lcom/metamoji/forSchool/ScSchoolManager$ScLockScreenInfo;

    const/4 v1, 0x0

    .line 132
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isStartingFeaturedPersonalMode:Z

    .line 136
    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->deliverDriveId:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->deliverTags:Ljava/util/List;

    .line 158
    new-instance v2, Lcom/metamoji/forSchool/ScSchoolManager$1;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/ScSchoolManager$1;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;)V

    iput-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_userModeChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 163
    new-instance v2, Lcom/metamoji/forSchool/ScSchoolManager$2;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/ScSchoolManager$2;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;)V

    iput-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_userPropertyChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 168
    new-instance v2, Lcom/metamoji/forSchool/ScSchoolManager$3;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/ScSchoolManager$3;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;)V

    iput-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_userPropertyWillChangeEventListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 173
    new-instance v2, Lcom/metamoji/forSchool/ScSchoolManager$4;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/ScSchoolManager$4;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;)V

    iput-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_userPropertyInitializedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 189
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_schoolPersonalStatusDic:Ljava/util/Map;

    .line 190
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_collaboUserIdToDcUserIdDic:Ljava/util/Map;

    .line 192
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenLocking:Z

    .line 193
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenUnlocking:Z

    .line 194
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenLocked:Z

    .line 195
    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_lockScreen:Lcom/metamoji/forSchool/ui/ScLockScreenView;

    .line 196
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    .line 197
    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    .line 199
    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    .line 202
    invoke-direct {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->initMode2Info()V

    return-void
.end method

.method private deadlineModeWithModeValue(I)Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 2342
    sget-object p1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    return-object p1

    :cond_0
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 2344
    sget-object p1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->READONLY:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    return-object p1

    .line 2346
    :cond_1
    sget-object p1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->DONTSEE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    return-object p1
.end method

.method private endPersonalMode(Z)V
    .locals 4

    .line 1415
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1419
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1420
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 1422
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v1

    .line 1423
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1424
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->requestKillFocus()V

    .line 1429
    :cond_1
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const-string v2, "personalId"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1430
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v1

    if-nez v1, :cond_2

    .line 1431
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1433
    const-string v3, "layerId"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 1437
    :goto_0
    iput-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 1441
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->correctTargetLayer()V

    .line 1443
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    .line 1446
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result p1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    iget-boolean p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    if-nez p1, :cond_3

    .line 1448
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNoteModeForSchool()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p1

    .line 1449
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtNoteController;->changeToNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    .line 1452
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result p1

    if-eqz p1, :cond_4

    .line 1454
    iget-boolean p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    if-nez p1, :cond_4

    .line 1455
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager;->updateSchoolUserMode()V

    .line 1460
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFlipUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnitManager;->updateAllFlipUnit()V

    .line 1463
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->updateAllUnit()V

    .line 1466
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updateScoreInfoViewStatus()V

    .line 1469
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->clearLaserPointer()V

    .line 1472
    :cond_5
    iget-boolean p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    if-nez p1, :cond_6

    if-eqz v1, :cond_6

    .line 1473
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1475
    invoke-virtual {p1, v1, v2}, Lcom/metamoji/ns/direction/NsDirectionManager;->detachBoothGracefully(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private getCollaboUserInfo(Ljava/lang/String;)Lcom/metamoji/ns/NsCollaboUserInfo;
    .locals 3

    .line 1634
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1636
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArray()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1638
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 1639
    iget-object v2, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getScoreUserInfoDic(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
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

    .line 2450
    monitor-enter p0

    .line 2453
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_scoreList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2454
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2456
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_scoreList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2457
    check-cast v3, Ljava/util/Map;

    .line 2458
    const-string v4, "roomId"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2459
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2460
    const-string v0, "status"

    invoke-static {v3, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_3

    .line 2472
    const-string v0, "userList"

    invoke-static {v3, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 2473
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2474
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2475
    check-cast v2, Ljava/util/Map;

    .line 2476
    const-string v3, "userId"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2477
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 2484
    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 2485
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private hideLockScreenView()V
    .locals 2

    .line 702
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolManager$8;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ScSchoolManager$8;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initMode2Info()V
    .locals 1

    .line 2084
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    .line 2086
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->initMode2InfoOnDisconnect()V

    return-void
.end method

.method private onCollaboUserModeChanged(Lcom/metamoji/ns/direction/NsUserModeChangedEvent;)V
    .locals 1

    .line 283
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserModeChangedEvent;->getUserMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserModeChangedEvent;->getExistPresneter()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->onCollaboUserModeChangedForLockScreen(IZ)V

    return-void
.end method

.method private onCollaboUserModeChangedForLockScreen(IZ)V
    .locals 0

    if-eqz p2, :cond_2

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->endPersonalMode()V

    .line 751
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_1

    .line 753
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object p1

    .line 754
    invoke-virtual {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->closeDialog()V

    :cond_1
    :goto_0
    return-void

    .line 759
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->hideLockScreenView()V

    return-void
.end method

.method private onCollaboUserPropertyChanged(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
    .locals 3

    .line 299
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager;->onCollaboUserPropertyChangedForPersonalStatus(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->onCollaboUserPropertyChangedForLockScreen(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onCollaboUserPropertyChangedForLockScreen(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 768
    const-string v0, "schoolLockScreen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 773
    :cond_0
    iget p1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    .line 774
    const-string p1, "true"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 775
    invoke-direct {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->showLockScreenView()V

    return-void

    .line 777
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->hideLockScreenView()V

    :cond_2
    :goto_0
    return-void
.end method

.method private onCollaboUserPropertyChangedForPersonalStatus(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 508
    iget-object v0, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_schoolPersonalStatusDic:Ljava/util/Map;

    monitor-enter v0

    if-eqz p2, :cond_2

    .line 515
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "schoolPersonalStatus"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 516
    iget-object p2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_collaboUserIdToDcUserIdDic:Ljava/util/Map;

    iget-object v1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 521
    const-string p2, ""

    goto :goto_0

    .line 524
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 529
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_4

    .line 530
    :cond_3
    const-string p3, "notyet"

    .line 534
    :cond_4
    iget-object p2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_collaboUserIdToDcUserIdDic:Ljava/util/Map;

    iget-object v1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 535
    iget-object p2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_collaboUserIdToDcUserIdDic:Ljava/util/Map;

    iget-object v1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_5
    iget-object p2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_schoolPersonalStatusDic:Ljava/util/Map;

    iget-object v1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 540
    iget-object p2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_schoolPersonalStatusDic:Ljava/util/Map;

    iget-object v1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_6
    iget p2, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_7

    goto :goto_1

    .line 545
    :cond_7
    iget-object p2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_schoolPersonalStatusDic:Ljava/util/Map;

    iget-object v1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    iget-boolean p2, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-eqz p2, :cond_8

    .line 552
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 553
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 554
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolStatusBtn(Ljava/lang/String;)V

    .line 560
    :cond_8
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$5;

    invoke-direct {v0, p0, p1, p3}, Lcom/metamoji/forSchool/ScSchoolManager$5;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 548
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    :goto_3
    return-void
.end method

.method private onCollaboUserPropertyInitialized(Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;)V
    .locals 1

    .line 325
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;->getUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->onCollaboUserPropertyInitializedForPersonalStatus(Lcom/metamoji/ns/NsCollaboUserInfo;)V

    .line 326
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyInitializedEvent;->getUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->onCollaboUserPropertyInitializedForLockScreen(Lcom/metamoji/ns/NsCollaboUserInfo;)V

    return-void
.end method

.method private onCollaboUserPropertyInitializedForLockScreen(Lcom/metamoji/ns/NsCollaboUserInfo;)V
    .locals 0

    if-nez p1, :cond_0

    .line 807
    invoke-direct {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->hideLockScreenView()V

    :cond_0
    return-void
.end method

.method private onCollaboUserPropertyInitializedForPersonalStatus(Lcom/metamoji/ns/NsCollaboUserInfo;)V
    .locals 4

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 579
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_schoolPersonalStatusDic:Ljava/util/Map;

    monitor-enter v1

    if-nez p1, :cond_1

    .line 583
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_schoolPersonalStatusDic:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 584
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 586
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_schoolPersonalStatusDic:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 587
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_collaboUserIdToDcUserIdDic:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_1

    .line 592
    :cond_1
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_collaboUserIdToDcUserIdDic:Ljava/util/Map;

    iget-object v3, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 595
    iget-object v3, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_schoolPersonalStatusDic:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-object v3, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_collaboUserIdToDcUserIdDic:Ljava/util/Map;

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 606
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolManager$6;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/forSchool/ScSchoolManager$6;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 602
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onCollaboUserPropertyWillChange(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
    .locals 2

    .line 310
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->onCollaboUserPropertyWillChangeForLockScreen(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onCollaboUserPropertyWillChangeForLockScreen(Lcom/metamoji/ns/NsCollaboUserInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 788
    const-string v0, "schoolLockScreen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 793
    :cond_0
    iget p1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 794
    const-string p1, "true"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 795
    invoke-direct {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->showLockScreenView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;
    .locals 1

    .line 182
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager;->_sharedInstance:Lcom/metamoji/forSchool/ScSchoolManager;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ScSchoolManager;-><init>()V

    sput-object v0, Lcom/metamoji/forSchool/ScSchoolManager;->_sharedInstance:Lcom/metamoji/forSchool/ScSchoolManager;

    .line 185
    :cond_0
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager;->_sharedInstance:Lcom/metamoji/forSchool/ScSchoolManager;

    return-object v0
.end method

.method private showLockScreenView()V
    .locals 2

    .line 667
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolManager$7;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ScSchoolManager$7;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addUpdatedBoothId(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)V
    .locals 3

    .line 845
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    monitor-enter v0

    .line 848
    :try_start_0
    invoke-static {p1}, Lcom/metamoji/nt/NtPageController;->getPageIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 852
    invoke-virtual {p2, p1}, Lcom/metamoji/ns/NsCollaboSettings;->addUpdatedBoothId(Ljava/lang/String;)V

    goto :goto_0

    .line 855
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 856
    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getPageController(Ljava/lang/String;)Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-eqz p2, :cond_2

    if-eqz v1, :cond_2

    .line 859
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p2}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 860
    :cond_1
    iget-object p2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 864
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public canShowEditAreaView()Z
    .locals 4

    .line 2371
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2373
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->ordinal()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2384
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineMode()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-result-object v0

    sget-object v3, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->DONTSEE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-ne v0, v3, :cond_2

    return v2

    .line 2376
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineMode()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-result-object v0

    sget-object v3, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->DONTSEE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public changeUserPropertyForSchoolPersonalStatus(Ljava/lang/String;)V
    .locals 2

    .line 491
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    const-string v1, "schoolPersonalStatus"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->changeUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearUpdatedPersonalBoothIdSet(Ljava/lang/String;)Z
    .locals 6

    .line 817
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 821
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 822
    monitor-exit v0

    return v1

    .line 825
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 826
    iget-object v3, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 827
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 828
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 831
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 832
    iget-object v4, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 834
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 836
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsUpdatedBoothIdArrayFromPageId(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)Z
    .locals 3

    .line 932
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    monitor-enter v0

    .line 934
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/metamoji/ns/NsCollaboSettings;->containsUpdatedBoothIdArray(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 936
    monitor-exit v0

    return v2

    .line 938
    :cond_0
    invoke-static {p1}, Lcom/metamoji/nt/NtPageController;->getCommonLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 939
    invoke-virtual {p2, v1}, Lcom/metamoji/ns/NsCollaboSettings;->containsUpdatedBoothIdArray(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 941
    monitor-exit v0

    return v2

    :cond_1
    if-eqz p1, :cond_3

    .line 944
    iget-object p2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 945
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 947
    monitor-exit v0

    return v2

    :cond_3
    const/4 p1, 0x0

    .line 951
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 952
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public correctFeaturedPersonalMode()V
    .locals 11

    .line 1764
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1768
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1772
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 1778
    :cond_2
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    const-string v2, "isGroup"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1779
    iget-object v3, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    const-string v4, "personalId"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1780
    iget-object v5, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    const-string v6, "isTeacherPersonalLayer"

    invoke-static {v5, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1781
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v7

    .line 1782
    invoke-virtual {v7}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v8

    sget-object v9, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    const/4 v10, 0x0

    if-ne v8, v9, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v8, 0x2

    if-eqz v1, :cond_6

    .line 1787
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    .line 1788
    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v5

    if-eq v5, v8, :cond_4

    goto :goto_0

    .line 1793
    :cond_4
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtNoteController;->getGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 1798
    :cond_5
    iget-object v5, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    const-string v7, "personalName"

    invoke-static {v5, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1799
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1801
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    .line 1802
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    return-void

    .line 1813
    :cond_6
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 1814
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_7

    .line 1815
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    if-ne v1, v8, :cond_7

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    if-eqz v5, :cond_8

    .line 1821
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1822
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    return-void

    .line 1826
    :cond_8
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1839
    :goto_0
    invoke-virtual {v7}, Lcom/metamoji/ns/NsCollaboManager;->presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1843
    invoke-virtual {p0, v10}, Lcom/metamoji/forSchool/ScSchoolManager;->endFeaturedPersonalMode(Z)V

    return-void

    .line 1846
    :cond_9
    iget-boolean v0, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-eqz v0, :cond_a

    .line 1847
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolTeacherModeFree()V

    :cond_a
    :goto_1
    return-void

    .line 1831
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    return-void
.end method

.method public correctPersonalMode()V
    .locals 7

    .line 1690
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1694
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1698
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1704
    :cond_2
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const-string v2, "isGroup"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1705
    iget-object v3, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const-string v4, "personalId"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1709
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    .line 1710
    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    goto :goto_1

    .line 1715
    :cond_3
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtNoteController;->getGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 1720
    :cond_4
    iget-object v5, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const-string v6, "personalName"

    invoke-static {v5, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1721
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1723
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    .line 1724
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    :cond_5
    :goto_0
    return-void

    .line 1734
    :cond_6
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 1735
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    goto :goto_1

    .line 1740
    :cond_7
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1752
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->endPersonalMode()V

    return-void

    .line 1745
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    return-void
.end method

.method public correctTargetLayer()V
    .locals 4

    .line 1485
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1487
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1489
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 1490
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v2

    .line 1492
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/metamoji/ns/NsCollaboUserInfo;->isMyself:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->TEACHER_PERSONAL:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getTargetLayerType()Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 1495
    :cond_0
    sget-object v2, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;Ljava/util/Map;Z)V

    .line 1500
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 1501
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1503
    iget-boolean v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    if-nez v2, :cond_2

    .line 1504
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1505
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->updatePageStatusForSchool(Z)V

    .line 1511
    :cond_2
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 1512
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1513
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->updatePageStatusForSchool(Z)V

    :cond_3
    return-void
.end method

.method public deadlineEndMode()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;
    .locals 1

    .line 2355
    iget v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_afterMode2:I

    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineModeWithModeValue(I)Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-result-object v0

    return-object v0
.end method

.method public deadlineEndTime()Ljava/util/Date;
    .locals 1

    .line 2363
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineEndTime:Ljava/util/Date;

    return-object v0
.end method

.method public deadlineMode()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;
    .locals 2

    .line 2322
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineStatus()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2335
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    return-object v0

    .line 2332
    :cond_0
    iget v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_afterMode2:I

    goto :goto_0

    .line 2329
    :cond_1
    iget v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_testingMode2:I

    goto :goto_0

    .line 2326
    :cond_2
    iget v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_beforeMode2:I

    .line 2337
    :goto_0
    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineModeWithModeValue(I)Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-result-object v0

    return-object v0

    .line 2324
    :cond_3
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->DONTSEE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    return-object v0
.end method

.method public deadlinePrevStartMode()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;
    .locals 1

    .line 2351
    iget v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_beforeMode2:I

    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->deadlineModeWithModeValue(I)Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    move-result-object v0

    return-object v0
.end method

.method public deadlineStartTime()Ljava/util/Date;
    .locals 1

    .line 2359
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStartTime:Ljava/util/Date;

    return-object v0
.end method

.method public deadlineStatus()Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;
    .locals 2

    .line 2311
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    sget-object v1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    if-eq v0, v1, :cond_0

    .line 2312
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v0

    .line 2313
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-eq v0, v1, :cond_0

    .line 2314
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->OFFLINE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    return-object v0

    .line 2317
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    return-object v0
.end method

.method public enableAfterMode()Z
    .locals 2

    .line 2307
    iget v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_afterMode2:I

    const/16 v1, 0x13

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableBeforeMode()Z
    .locals 2

    .line 2300
    iget v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_beforeMode2:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public endFeaturedPersonalMode(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1140
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->endFeaturedPersonalMode(ZZ)V

    return-void
.end method

.method public endFeaturedPersonalMode(ZZ)V
    .locals 5

    .line 1145
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1149
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1150
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 1152
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnitStateManager;->sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;

    move-result-object v2

    .line 1153
    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1154
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->requestKillFocus()V

    .line 1159
    :cond_1
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    const-string v3, "personalId"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1161
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v2

    if-nez v2, :cond_2

    .line 1162
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1164
    const-string v4, "layerId"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 1168
    :goto_0
    iput-object v3, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 1171
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1173
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 1174
    invoke-virtual {p1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->resetViewingLayer(Lcom/metamoji/nt/NtPageController;)V

    :cond_3
    if-eqz p2, :cond_5

    .line 1180
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->correctTargetLayer()V

    .line 1182
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    .line 1185
    iget-boolean p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    if-nez p1, :cond_4

    .line 1186
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getNoteModeForSchool()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object p1

    .line 1187
    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtNoteController;->changeToNoteMode(Lcom/metamoji/nt/NtNoteController$NoteMode;)V

    .line 1189
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager;->updateSchoolUserMode()V

    .line 1193
    :cond_4
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getFlipUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnitManager;->updateAllFlipUnit()V

    .line 1196
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->updateAllUnit()V

    .line 1199
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updateScoreInfoViewStatus()V

    .line 1202
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->clearLaserPointer()V

    .line 1205
    :cond_5
    iget-boolean p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    if-nez p1, :cond_7

    if-eqz v2, :cond_7

    .line 1206
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1208
    invoke-virtual {p1, v2, v3}, Lcom/metamoji/ns/direction/NsDirectionManager;->detachBoothViolently(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_6
    const/4 p1, 0x0

    .line 1210
    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtNoteController;->updatePageStatusForSchool(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public endPersonalMode()V
    .locals 1

    const/4 v0, 0x1

    .line 1410
    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->endPersonalMode(Z)V

    return-void
.end method

.method public existUpdatedBooth(Lcom/metamoji/ns/NsCollaboSettings;)Z
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    monitor-enter v0

    .line 958
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboSettings;->existUpdatedBooth()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 959
    monitor-exit v0

    return v1

    .line 961
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 962
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public featuredPersonalModeInfoDic()Ljava/util/Map;
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

    .line 1054
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    return-object v0
.end method

.method public featuredPersonalModePersonalLayerInfo()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1218
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1220
    monitor-enter v0

    .line 1221
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 1222
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    const-string v0, "isGroup"

    invoke-static {v2, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "isGroup"

    invoke-static {v2, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1224
    const-string v4, "personalId"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1225
    const-string v5, "personalName"

    invoke-static {v2, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1226
    const-string v6, "isTeacherPersonalLayer"

    invoke-static {v2, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v3, "isTeacherPersonalLayer"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 1228
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1230
    invoke-virtual {v3}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1231
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1232
    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    if-eqz v0, :cond_4

    .line 1236
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    .line 1238
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 1239
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 1240
    invoke-virtual {v3, v4, v5}, Lcom/metamoji/nt/NtPageController;->getTeacherPersonalLayerInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1243
    :cond_2
    invoke-virtual {v3, v4, v5}, Lcom/metamoji/nt/NtPageController;->getPersonalGroupLayerInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1245
    :cond_3
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 1247
    invoke-virtual {v3, v1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1252
    :cond_4
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 1253
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 1254
    invoke-virtual {v3, v4, v5}, Lcom/metamoji/nt/NtPageController;->getTeacherPersonalLayerInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1257
    :cond_5
    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1222
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_6
    return-object v1
.end method

.method getDeadlineInfoView()Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;
    .locals 1

    .line 2063
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2065
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 2067
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getDeadlineInfoView()Lcom/metamoji/forSchool/ui/ScDeadlineInfoView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getScoreInfoView()Lcom/metamoji/forSchool/ui/ScScoreInfoView;
    .locals 1

    .line 2073
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2075
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 2077
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getScoreInfoView()Lcom/metamoji/forSchool/ui/ScScoreInfoView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initMode2Info(Lcom/metamoji/nt/NtDocument;)V
    .locals 1

    .line 2093
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    if-eqz p1, :cond_0

    .line 2094
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2095
    const-string v0, "MMJNsShareSettings"

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ns/NsCollaboSettings;

    if-eqz p1, :cond_0

    .line 2096
    const-string v0, "forSchoolWithDeadline"

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboSettings;->getShareType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2098
    sget-object p1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->OFFLINE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    .line 2100
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->initMode2InfoOnDisconnect()V

    .line 2105
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$10;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ScSchoolManager$10;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initMode2InfoOnDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 2124
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->initMode2InfoOnDisconnect(Z)V

    return-void
.end method

.method public initMode2InfoOnDisconnect(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2129
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->canShowEditAreaView()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2132
    :goto_0
    monitor-enter p0

    .line 2133
    :try_start_0
    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_validFlag:I

    .line 2134
    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_lockMode2:I

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_remandMode2:I

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_endReportMode2:I

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_reportMode2:I

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_afterMode2:I

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_testingMode2:I

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_beforeMode2:I

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_mode2:I

    .line 2145
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->OFFLINE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    :goto_1
    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    const/4 v0, 0x0

    .line 2146
    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStartTime:Ljava/util/Date;

    .line 2147
    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineEndTime:Ljava/util/Date;

    .line 2148
    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_scoreList:Ljava/util/List;

    .line 2149
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 2153
    invoke-virtual {p0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->updateEditAreaView(Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 2149
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public initializeOnOpenningCollaboDocument()V
    .locals 2

    .line 209
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_userModeChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->addUserModeChangedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 217
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_userPropertyChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->addUserPropertyChangedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 218
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_userPropertyWillChangeEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->addUserPropertyWillChangeEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 219
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_userPropertyInitializedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->addUserPropertyInitializedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isEditablePersonalLayerForTeacher()Z
    .locals 4

    .line 407
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 412
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 417
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 419
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 421
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 422
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 423
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 426
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->isTeacherPersonalLayerId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 432
    :cond_2
    invoke-static {v2}, Lcom/metamoji/nt/NtPageController;->getUserIdFromTeacherPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 433
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 434
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    return v1

    .line 440
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v1, v2, :cond_5

    .line 441
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->changeToViewMode()V

    :cond_5
    const/4 v0, 0x0

    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public isEditablePersonalLayerMode()Z
    .locals 7

    .line 335
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 336
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 338
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 340
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 341
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    .line 342
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    .line 345
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v2, v3, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->changeToViewMode()V

    :cond_0
    return v1

    .line 351
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 353
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBelongClassStudent()Z

    move-result v0

    return v0

    .line 357
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->presenterPersonalLayerInfo()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    .line 358
    const-string v5, "layerId"

    if-eqz v3, :cond_3

    .line 359
    invoke-static {v2, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 360
    invoke-static {v3, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 361
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 363
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v3

    if-eq v3, v4, :cond_3

    return v1

    .line 368
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 369
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 373
    invoke-static {v2, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 374
    invoke-static {v3, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 375
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 383
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v3

    if-eq v3, v4, :cond_6

    .line 385
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 387
    invoke-static {v2, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 388
    invoke-static {v3, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 389
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 391
    iget-boolean v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v2, v3, :cond_5

    .line 392
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->changeToViewMode()V

    :cond_5
    return v1

    :cond_6
    return v4

    :cond_7
    return v1
.end method

.method public isFeaturedPersonalMode()Z
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPersonalMode()Z
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 273
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 274
    iget-boolean v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->readOnlyUser:Z

    return v0
.end method

.method public isScreenLock()Z
    .locals 1

    .line 628
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenLocking:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenLocked:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isScreenLocking()Z
    .locals 1

    .line 632
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenLocking:Z

    return v0
.end method

.method public isScreenUnlocking()Z
    .locals 1

    .line 636
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenUnlocking:Z

    return v0
.end method

.method public isStartingFeaturedPersonalMode()Z
    .locals 1

    .line 1062
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isStartingFeaturedPersonalMode:Z

    return v0
.end method

.method public isTeacher()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    return v0
.end method

.method public lockScreen(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 645
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenLocking:Z

    goto :goto_0

    .line 647
    :cond_0
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenUnlocking:Z

    .line 650
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 652
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 654
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 656
    const-string p1, "true"

    goto :goto_1

    :cond_1
    const-string p1, "false"

    :goto_1
    const-string v1, "schoolLockScreen"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->changeUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public mode2()I
    .locals 1

    .line 2293
    iget v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_mode2:I

    return v0
.end method

.method public nextPersonForFeaturedPersonalMode()V
    .locals 5

    .line 1309
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    const-string v1, "isGroup"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1310
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    const-string v2, "personalId"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1312
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 1313
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 1314
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1320
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager;->nextPersonalLayerInfoDic(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1322
    const-string v2, "layerId"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1323
    invoke-static {v2}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1324
    const-string v3, "layerName"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    move-object v3, v2

    goto :goto_0

    .line 1327
    :cond_0
    invoke-virtual {p0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->nextUserDic(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1329
    iget-object v3, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userName:Ljava/lang/String;

    .line 1330
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v3, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1337
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager;->startFeaturedPersonalMode(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public nextPersonForPersonalMode()V
    .locals 5

    .line 1893
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const-string v1, "isGroup"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1894
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const-string v2, "personalId"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1896
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 1897
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 1898
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1904
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager;->nextPersonalLayerInfoDic(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1906
    const-string v2, "layerId"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1907
    invoke-static {v2}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1908
    const-string v3, "layerName"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    move-object v3, v2

    goto :goto_0

    .line 1911
    :cond_0
    invoke-virtual {p0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->nextUserDic(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1913
    iget-object v3, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userName:Ljava/lang/String;

    .line 1914
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v3, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    .line 1921
    :cond_2
    invoke-virtual {p0, v0, v3, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->startPersonalMode(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public nextPersonalLayerInfoDic(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/nt/NtPageController;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2020
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfoList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 2021
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 2022
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 2024
    const-string v4, "layerId"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_4

    .line 2029
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2031
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    move v4, v3

    .line 2036
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "memberList"

    if-ge v4, v5, :cond_3

    .line 2037
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2038
    invoke-static {v0, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2039
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_5

    .line 2045
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2046
    invoke-static {v0, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2047
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public nextUserDic(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScUserListItemData;
    .locals 1

    .line 1953
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1958
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    .line 1959
    invoke-virtual {v0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->nextUserDic(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object p1

    return-object p1
.end method

.method public parseMode2Info(Ljava/util/Map;)V
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

    .line 2161
    monitor-enter p0

    .line 2162
    :try_start_0
    const-string v0, "validFlag"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_validFlag:I

    .line 2163
    const-string v0, "mode2"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_mode2:I

    .line 2164
    const-string v0, "beforeMode2"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_beforeMode2:I

    .line 2165
    const-string v0, "testingMode2"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_testingMode2:I

    .line 2166
    const-string v0, "afterMode2"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_afterMode2:I

    .line 2168
    const-string v0, "reportMode2"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_reportMode2:I

    .line 2169
    const-string v0, "endReportMode2"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_endReportMode2:I

    .line 2170
    const-string v0, "remandMode2"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_remandMode2:I

    .line 2171
    const-string v0, "lockMode2"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_lockMode2:I

    .line 2174
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2175
    :goto_0
    const-string v2, "startEnd"

    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v1

    if-nez v0, :cond_1

    .line 2178
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    .line 2192
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->OFFLINE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    goto :goto_1

    .line 2188
    :cond_2
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->END:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    goto :goto_1

    .line 2185
    :cond_3
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->RUNNING:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    goto :goto_1

    .line 2182
    :cond_4
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;->PREVSTART:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStatus:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineStatus;

    .line 2198
    :goto_1
    const-string v0, "startTime"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineStartTime:Ljava/util/Date;

    .line 2200
    const-string v0, "endTime"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_deadlineEndTime:Ljava/util/Date;

    .line 2201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public parseScoreList(Ljava/util/Map;)V
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

    const-string v0, "{\"temp\":"

    .line 2400
    monitor-enter p0

    const/4 v1, 0x0

    .line 2401
    :try_start_0
    iput-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_scoreList:Ljava/util/List;

    .line 2403
    const-string v2, "scoreList"

    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 2407
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2409
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2411
    :try_start_2
    const-string v2, "ScSchoolManager.parseScoreList"

    invoke-static {p1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 2416
    :try_start_3
    new-instance p1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2417
    invoke-static {p1}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2419
    const-string v0, "temp"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_scoreList:Ljava/util/List;

    .line 2420
    const-string p1, "[MMJScSchoolManager]parseScoreList JSON=%s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2423
    :try_start_4
    const-string v0, "[MMJScSchoolManager]parseScoreList Failed!"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2428
    :cond_0
    :goto_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$14;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ScSchoolManager$14;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    .line 2436
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public personalIdForPersonalModeInfoView()Ljava/lang/String;
    .locals 2

    .line 1035
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 1044
    const-string v1, "personalId"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public personalModeInfoDic()Ljava/util/Map;
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

    .line 1344
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    return-object v0
.end method

.method public personalModePersonalLayerInfo()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1653
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1654
    const-string v2, "isGroup"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1655
    iget-object v2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const-string v3, "personalId"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1656
    iget-object v3, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const-string v4, "personalName"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 1658
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1660
    invoke-virtual {v4}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1661
    invoke-virtual {v4}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1662
    invoke-virtual {v4}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v4

    if-eqz v0, :cond_1

    .line 1666
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 1668
    invoke-virtual {v4, v2, v3}, Lcom/metamoji/nt/NtPageController;->getPersonalGroupLayerInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1669
    :cond_0
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1671
    invoke-virtual {v4, v1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1676
    :cond_1
    invoke-virtual {v4, v2}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public personalNameForPersonalModeInfoView()Ljava/lang/String;
    .locals 2

    .line 1013
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 1022
    const-string v1, "personalName"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public presenterPersonalLayerInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 455
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->presenterUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 461
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public prevPersonForFeaturedPersonalMode()V
    .locals 5

    .line 1274
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    const-string v1, "isGroup"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1275
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    const-string v2, "personalId"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1277
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 1278
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 1279
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1285
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager;->prevPersonalLayerInfoDic(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1287
    const-string v2, "layerId"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1288
    invoke-static {v2}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1289
    const-string v3, "layerName"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    move-object v3, v2

    goto :goto_0

    .line 1292
    :cond_0
    invoke-virtual {p0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->prevUserDic(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1294
    iget-object v3, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userName:Ljava/lang/String;

    .line 1295
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v3, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1302
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager;->startFeaturedPersonalMode(ZLjava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public prevPersonForPersonalMode()V
    .locals 5

    .line 1858
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const-string v1, "isGroup"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1859
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const-string v2, "personalId"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1861
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 1862
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 1863
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1869
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/forSchool/ScSchoolManager;->prevPersonalLayerInfoDic(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1871
    const-string v2, "layerId"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1872
    invoke-static {v2}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1873
    const-string v3, "layerName"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    move-object v3, v2

    goto :goto_0

    .line 1876
    :cond_0
    invoke-virtual {p0, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->prevUserDic(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1878
    iget-object v3, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userName:Ljava/lang/String;

    .line 1879
    iget-object v1, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v3, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    .line 1886
    :cond_2
    invoke-virtual {p0, v0, v3, v1}, Lcom/metamoji/forSchool/ScSchoolManager;->startPersonalMode(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public prevPersonalLayerInfoDic(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/nt/NtPageController;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1973
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfoList()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    const/4 v1, 0x0

    .line 1975
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1976
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1977
    const-string v3, "layerId"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_4

    .line 1982
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_1

    .line 1985
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, -0x1

    :goto_1
    move v3, v2

    .line 1989
    :goto_2
    const-string v4, "memberList"

    if-ltz v3, :cond_3

    .line 1990
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1991
    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1992
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1997
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-le v3, v2, :cond_5

    .line 1998
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1999
    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2000
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public prevUserDic(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScUserListItemData;
    .locals 1

    .line 1933
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1938
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    .line 1939
    invoke-virtual {v0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->prevUserDic(Ljava/lang/String;)Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object p1

    return-object p1
.end method

.method public removeUpdatedBoothId(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)Z
    .locals 3

    .line 874
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    monitor-enter v0

    .line 877
    :try_start_0
    invoke-static {p1}, Lcom/metamoji/nt/NtPageController;->getPageIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    .line 881
    monitor-exit v0

    return v2

    .line 884
    :cond_0
    invoke-virtual {p2, p1}, Lcom/metamoji/ns/NsCollaboSettings;->removeUpdatedBoothId(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 887
    :cond_1
    iget-object p2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 888
    monitor-exit v0

    return v2

    .line 890
    :cond_2
    iget-object p2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 891
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 893
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeUpdatedBoothIdFromPageId(Ljava/lang/String;Lcom/metamoji/ns/NsCollaboSettings;)Z
    .locals 3

    .line 903
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    monitor-enter v0

    .line 907
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/metamoji/ns/NsCollaboSettings;->removeUpdatedBoothId(Ljava/lang/String;)Z

    move-result v1

    .line 912
    invoke-static {p1}, Lcom/metamoji/nt/NtPageController;->getCommonLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 913
    invoke-virtual {p2, v2}, Lcom/metamoji/ns/NsCollaboSettings;->removeUpdatedBoothId(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    move v1, v2

    .line 918
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->clearUpdatedPersonalBoothIdSet(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 921
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 922
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public schoolPersonalStatusDic()Ljava/util/Map;
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

    .line 469
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_schoolPersonalStatusDic:Ljava/util/Map;

    return-object v0
.end method

.method public scoreEnabled()Z
    .locals 2

    .line 2440
    monitor-enter p0

    .line 2441
    :try_start_0
    iget v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_validFlag:I

    const v1, 0x800c

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 2442
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scoreList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2446
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_scoreList:Ljava/util/List;

    return-object v0
.end method

.method public scoreStatusInfoDic()Ljava/util/Map;
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

    const/4 v0, 0x0

    .line 2489
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreStatusInfoDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public scoreStatusInfoDic(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
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

    .line 2492
    monitor-enter p0

    .line 2493
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2495
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->scoreEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2496
    const-string p1, "status"

    sget-object v1, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2497
    monitor-exit p0

    return-object v0

    :cond_0
    if-nez p1, :cond_2

    .line 2502
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2504
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2507
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalIdForPersonalModeInfoView()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2508
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_7

    .line 2513
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBelongClassStudentWithUserId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    .line 2518
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/ScSchoolManager;->getScoreUserInfoDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2521
    const-string v1, "report"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 2524
    const-string v3, "reportedDateFirst"

    const-string v4, "firstReportTime"

    invoke-static {v1, v4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2525
    const-string v3, "reportedDateLast"

    const-string v4, "latestReportTime"

    invoke-static {v1, v4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2527
    const-string v3, "opCode"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 2529
    const-string v1, "status"

    sget-object v3, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->REPORTED:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    const-string v1, "isReported"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2534
    :cond_4
    const-string v1, "score"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 2537
    const-string v1, "updateTime"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/ns/NsShareViewCommand;->convertDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2539
    const-string v1, "status"

    sget-object v3, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->SCORED:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2540
    const-string v1, "isReported"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2541
    const-string v1, "score"

    const-string v2, "score"

    invoke-static {p1, v2}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2545
    :cond_5
    const-string p1, "status"

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2546
    monitor-exit p0

    return-object v0

    .line 2550
    :cond_6
    const-string p1, "status"

    sget-object v1, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->NOTREPORT:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2551
    monitor-exit p0

    return-object v0

    .line 2514
    :cond_7
    :goto_1
    const-string p1, "status"

    sget-object v1, Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;->NONE:Lcom/metamoji/forSchool/ScSchoolManager$ScoreStatus;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2515
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 2552
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public screenLocked()Z
    .locals 1

    .line 623
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isScreenLocked:Z

    return v0
.end method

.method public startFeaturedPersonalMode(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1068
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1072
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 1074
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    const-string v2, "isTeacherPersonalLayer"

    const-string v3, "personalName"

    const-string v4, "personalId"

    const-string v5, "isGroup"

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 1076
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    .line 1077
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    .line 1078
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    .line 1079
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 1083
    :cond_1
    invoke-virtual {p0, v6, v6}, Lcom/metamoji/forSchool/ScSchoolManager;->endFeaturedPersonalMode(ZZ)V

    :cond_2
    if-eqz p2, :cond_7

    if-nez p3, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v1, 0x1

    .line 1092
    :try_start_0
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isStartingFeaturedPersonalMode:Z

    .line 1094
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    .line 1095
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    invoke-interface {p1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_featuredPersonalModeInfoDic:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    iget-boolean p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    if-nez p1, :cond_4

    .line 1103
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->changeToViewMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->correctTargetLayer()V

    .line 1116
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    .line 1119
    iget-boolean p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    if-nez p1, :cond_5

    .line 1120
    :goto_1
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager;->updateSchoolUserMode()V

    .line 1124
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFlipUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnitManager;->updateAllFlipUnit()V

    .line 1127
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->updateAllUnit()V

    .line 1130
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->clearLaserPointer()V

    .line 1132
    iput-boolean v6, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isStartingFeaturedPersonalMode:Z

    return-void

    :catchall_0
    move-exception p1

    .line 1114
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->correctTargetLayer()V

    .line 1116
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    .line 1119
    iget-boolean p2, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    if-nez p2, :cond_6

    .line 1120
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ns/NsCollaboManager;->updateSchoolUserMode()V

    .line 1124
    :cond_6
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFlipUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/flip/UnFlipUnitManager;->updateAllFlipUnit()V

    .line 1127
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->updateAllUnit()V

    .line 1130
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->clearLaserPointer()V

    .line 1132
    iput-boolean v6, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isStartingFeaturedPersonalMode:Z

    .line 1133
    throw p1

    .line 1114
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->correctTargetLayer()V

    .line 1116
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    .line 1119
    iget-boolean p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    if-nez p1, :cond_5

    goto :goto_1
.end method

.method public startPersonalMode(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1356
    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->endPersonalMode(Z)V

    .line 1358
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1362
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 1365
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 1369
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    .line 1370
    const-string v2, "isGroup"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const-string v1, "personalId"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    iget-object p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_personalModeInfoDic:Ljava/util/Map;

    const-string p2, "personalName"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    if-nez p1, :cond_2

    .line 1377
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->changeToViewMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->correctTargetLayer()V

    .line 1390
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    .line 1393
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFlipUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/flip/UnFlipUnitManager;->updateAllFlipUnit()V

    .line 1396
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->updateAllUnit()V

    .line 1399
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updateScoreInfoViewStatus()V

    .line 1402
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->clearLaserPointer()V

    return-void

    :catchall_0
    move-exception p1

    .line 1388
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->correctTargetLayer()V

    .line 1390
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updatePersonalModeInfoView()V

    .line 1393
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFlipUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/flip/UnFlipUnitManager;->updateAllFlipUnit()V

    .line 1396
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->updateAllUnit()V

    .line 1399
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->updateScoreInfoViewStatus()V

    .line 1402
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->clearLaserPointer()V

    .line 1403
    throw p1
.end method

.method public terminateOnCloseCollaboDocument()V
    .locals 2

    .line 227
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_userModeChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->removeUserModeChangedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 239
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_userPropertyChangedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->removeUserPropertyChangedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 240
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_userPropertyWillChangeEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->removeUserPropertyWillChangeEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 241
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_userPropertyInitializedEventListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->removeUserPropertyInitializedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 245
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->resetMonitoringState()V

    return-void
.end method

.method public updateDeadlineInfoViewStatus()V
    .locals 2

    .line 2262
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolManager$13;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ScSchoolManager$13;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateEditAreaView(Z)V
    .locals 2

    .line 2208
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->canShowEditAreaView()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2212
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolManager$11;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/forSchool/ScSchoolManager$11;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;Z)V

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void

    .line 2240
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/forSchool/ScSchoolManager$12;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ScSchoolManager$12;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updatePersonalModeInfoView()V
    .locals 2

    .line 1523
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolManager$9;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ScSchoolManager$9;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSchoolUserLicense()V
    .locals 1

    .line 252
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->updateSchoolUserLicense(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    return-void
.end method

.method public updateSchoolUserLicense(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
    .locals 1

    .line 259
    const-string v0, "TEACHER"

    invoke-virtual {p1, v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isLicenseValid(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_isTeacher:Z

    return-void
.end method

.method public updateScoreInfoViewStatus()V
    .locals 2

    .line 2560
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/ScSchoolManager$15;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ScSchoolManager$15;-><init>(Lcom/metamoji/forSchool/ScSchoolManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public userIdFromDcUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 473
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_collaboUserIdToDcUserIdDic:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_collaboUserIdToDcUserIdDic:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 478
    iget-object v3, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_collaboUserIdToDcUserIdDic:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 479
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public userModeDependOnMode2(I)I
    .locals 2

    .line 2278
    iget v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_validFlag:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2280
    iget v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_mode2:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    and-int/lit8 p1, p1, -0x9

    :cond_0
    return p1
.end method

.method public validFlag()I
    .locals 1

    .line 2289
    iget v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->m_validFlag:I

    return v0
.end method

.method public validateUpdatedBoothIdArray(Ljava/util/List;Lcom/metamoji/ns/NsCollaboSettings;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/ns/NsCollaboSettings;",
            ")Z"
        }
    .end annotation

    .line 971
    invoke-virtual {p2, p1}, Lcom/metamoji/ns/NsCollaboSettings;->validateUpdatedBoothIdArray(Ljava/util/List;)Z

    move-result p2

    .line 975
    iget-object v0, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    monitor-enter v0

    .line 976
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 977
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v2, :cond_2

    aget-object v7, v1, v4

    .line 981
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/metamoji/nt/NtPageController;->getPageIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 992
    :cond_0
    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 993
    iget-object v5, p0, Lcom/metamoji/forSchool/ScSchoolManager;->_updatedPersonalBoothIdSet:Ljava/util/Set;

    invoke-interface {v5, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move v5, v6

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 997
    :cond_2
    monitor-exit v0

    if-nez p2, :cond_4

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    return v3

    :cond_4
    :goto_2
    return v6

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
