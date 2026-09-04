.class public Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;
.super Ljava/lang/Object;
.source "ScMonitoringManager.java"

# interfaces
.implements Lcom/metamoji/nt/ICommandProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$DisplayMonitorType;
    }
.end annotation


# static fields
.field private static _sharedInstance:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;


# instance fields
.field _eventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;",
            ">;"
        }
    .end annotation
.end field

.field _studentViewingPageInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private displayMonitorType:I

.field public isPageListOpened:Z

.field public offsetY:D

.field public resetMonitoringStateWhenClose:Z

.field public visibleMonitorIdArrayForGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public visibleMonitorIdArrayForUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zoomForGroup:D

.field public zoomForUser:D


# direct methods
.method public static synthetic $r8$lambda$VpbcVOvtK9sKcr6jdy_vue1im1c(Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;Lcom/metamoji/nt/NtEditorWindowController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->lambda$handleStartMonitoring$0(Lcom/metamoji/nt/NtEditorWindowController;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 48
    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->zoomForUser:D

    .line 49
    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->zoomForGroup:D

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->offsetY:D

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->resetMonitoringStateWhenClose:Z

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    .line 53
    iput-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForGroup:Ljava/util/List;

    .line 54
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->isPageListOpened:Z

    .line 55
    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->displayMonitorType:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_studentViewingPageInfo:Ljava/util/Map;

    return-void
.end method

.method private synthetic lambda$handleStartMonitoring$0(Lcom/metamoji/nt/NtEditorWindowController;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 572
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/metamoji/ns/NsCollaboManager;->changePresenter(Z)V

    .line 574
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->schoolTeacherModeMonitoring(Lcom/metamoji/nt/NtEditorWindowController;)Z

    return-void
.end method

.method public static sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;
    .locals 1

    .line 42
    sget-object v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_sharedInstance:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;-><init>()V

    sput-object v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_sharedInstance:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_sharedInstance:Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public appendUser(Lcom/metamoji/ns/NsCollaboUserInfo;)V
    .locals 3

    .line 137
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget v0, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    return-void

    .line 148
    :cond_1
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;-><init>()V

    .line 149
    iget-object v1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userId:Ljava/lang/String;

    .line 150
    iget-object v1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userName:Ljava/lang/String;

    .line 151
    iget-object v1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->classNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->classNumber:Ljava/lang/String;

    .line 152
    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->loginName:Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->loginName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 153
    iput-object p1, v0, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    .line 155
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_studentViewingPageInfo:Ljava/util/Map;

    monitor-enter p1

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_studentViewingPageInfo:Ljava/util/Map;

    iget-object v2, v0, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getStudentViewingPageInfos()Ljava/util/List;

    move-result-object p1

    .line 161
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->fireAppendStudentEvent(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    .line 157
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public closeDialog()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter v0

    .line 455
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 456
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 459
    invoke-interface {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->closeDialog()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 456
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public currentPageChanged(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 331
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringCurrentPageChangedEvent;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringCurrentPageChangedEvent;-><init>()V

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringCurrentPageChangedEvent;->pageIds:Ljava/util/List;

    .line 333
    iput-object p2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringCurrentPageChangedEvent;->pageId:Ljava/lang/String;

    .line 334
    iput-boolean p3, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringCurrentPageChangedEvent;->force:Z

    .line 337
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter p1

    .line 338
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 342
    invoke-interface {p2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->currentPageChanged(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringCurrentPageChangedEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 339
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public endReceivingData(Ljava/lang/String;)V
    .locals 3

    .line 372
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataEndedEvent;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataEndedEvent;-><init>()V

    .line 373
    iput-object p1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataEndedEvent;->layerId:Ljava/lang/String;

    .line 376
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter p1

    .line 377
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 378
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 381
    invoke-interface {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->endReceivingData(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataEndedEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 378
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method fireAppendStudentEvent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;",
            ">;)V"
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringAppendStudentEvent;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringAppendStudentEvent;-><init>()V

    .line 171
    iput-object p1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringAppendStudentEvent;->studentViewingPageInfo:Ljava/util/List;

    .line 174
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter p1

    .line 175
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 176
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 179
    invoke-interface {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->appendStudent(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringAppendStudentEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 176
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method fireRemoveStudentEvent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;",
            ">;)V"
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringRemoveStudentEvent;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringRemoveStudentEvent;-><init>()V

    .line 214
    iput-object p1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringRemoveStudentEvent;->studentViewingPageInfo:Ljava/util/List;

    .line 217
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter p1

    .line 218
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 219
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 222
    invoke-interface {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->removeStudent(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringRemoveStudentEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 219
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method fireStudentViewingPageChangedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 254
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;-><init>()V

    .line 255
    iput-object p2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;->userId:Ljava/lang/String;

    .line 256
    iput-object p3, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;->userName:Ljava/lang/String;

    .line 257
    iput-object p1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;->pageId:Ljava/lang/String;

    .line 259
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    .line 260
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p2

    .line 261
    invoke-virtual {p2, p1}, Lcom/metamoji/nt/NtNoteController;->pageIndexFromPageId(Ljava/lang/String;)I

    .line 264
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter p1

    .line 265
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 266
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 269
    invoke-interface {p2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->studentViewingPageChanged(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringStudentViewingPageChangedEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 266
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public getDisplayMonitorType()I
    .locals 3

    .line 81
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 82
    const-string v1, "MMJNtSchoolMonitoringDisplayType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPageChangedEventListener()Lcom/metamoji/cm/ICmEventHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/df/controller/PageEventContext;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;)V

    return-object v0
.end method

.method public getStudentCountViewingPage(Ljava/lang/String;)I
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_studentViewingPageInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;

    .line 618
    iget-object v2, v2, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getStudentViewingPageInfo(Ljava/lang/String;)Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_studentViewingPageInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;

    return-object p1
.end method

.method getStudentViewingPageInfos()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;",
            ">;"
        }
    .end annotation

    .line 635
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 640
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 645
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 647
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 648
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 649
    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 651
    const-string v5, "group-id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 652
    const-string v6, "TEACHER"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 656
    :cond_3
    const-string v5, "user-list"

    invoke-static {v4, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 658
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 659
    const-string v6, "user-id"

    invoke-static {v5, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 660
    const-string v7, "user-name"

    invoke-static {v5, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 661
    const-string v8, "class-number"

    invoke-static {v5, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 662
    const-string v9, "login-name"

    invoke-static {v5, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 664
    iget-object v9, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_studentViewingPageInfo:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;

    if-eqz v9, :cond_5

    .line 666
    iput-object v8, v9, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->classNumber:Ljava/lang/String;

    .line 667
    iget-object v5, v9, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 668
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    .line 670
    :cond_4
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 672
    :cond_5
    new-instance v9, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;

    invoke-direct {v9}, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;-><init>()V

    .line 673
    iput-object v6, v9, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userId:Ljava/lang/String;

    .line 674
    iput-object v7, v9, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->userName:Ljava/lang/String;

    .line 675
    iput-object v8, v9, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->classNumber:Ljava/lang/String;

    .line 676
    iput-object v5, v9, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->loginName:Ljava/lang/String;

    .line 677
    iput-object v1, v9, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    .line 678
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object v2
.end method

.method public handleStartMonitoring(Lcom/metamoji/cm/CmContext;)Z
    .locals 2

    .line 556
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 557
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_RESIGN_PRESENTER_CHECK:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    :try_start_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 566
    sget v1, Lcom/metamoji/noteanytime/R$string;->SCHOOL_MSG_EXIT_LECTURE_MODE_BEFORE_MONITORING:I

    .line 567
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->screenLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    sget v1, Lcom/metamoji/noteanytime/R$string;->SCHOOL_MSG_EXIT_ATTENTION_MODE_BEFORE_MONITORING:I

    .line 570
    :cond_0
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;Lcom/metamoji/nt/NtEditorWindowController;)V

    const/4 p1, 0x0

    invoke-static {v1, p1, v0, p1}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 578
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 583
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->schoolTeacherModeMonitoring(Lcom/metamoji/nt/NtEditorWindowController;)Z

    move-result p1

    return p1
.end method

.method public initializeManager()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_studentViewingPageInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method pageAdded(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 294
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageAddedEvent;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageAddedEvent;-><init>()V

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageAddedEvent;->pageIds:Ljava/util/List;

    .line 298
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter p1

    .line 299
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 300
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 303
    invoke-interface {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->pageAdded(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageAddedEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 300
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method pageMoved(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 311
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageMovedEvent;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageMovedEvent;-><init>()V

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageMovedEvent;->pageIds:Ljava/util/List;

    .line 315
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter p1

    .line 316
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 317
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 320
    invoke-interface {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->pageMoved(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageMovedEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 317
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method pageRemoved(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;-><init>()V

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;->pageIds:Ljava/util/List;

    .line 281
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter p1

    .line 282
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 283
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 286
    invoke-interface {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->pageRemoved(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageRemovedEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 283
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pageThumbnailUpdated(Ljava/lang/String;)V
    .locals 3

    .line 439
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageThumbnailUpdatedEvent;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageThumbnailUpdatedEvent;-><init>()V

    .line 440
    iput-object p1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageThumbnailUpdatedEvent;->pageId:Ljava/lang/String;

    .line 443
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter p1

    .line 444
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 445
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 448
    invoke-interface {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->pageThumbnailUpdated(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageThumbnailUpdatedEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 445
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pageTypeChanged(Ljava/lang/String;)V
    .locals 3

    .line 421
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageTypeChangedEvent;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageTypeChangedEvent;-><init>()V

    .line 422
    iput-object p1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageTypeChangedEvent;->pageId:Ljava/lang/String;

    .line 425
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter p1

    .line 426
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 427
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 430
    invoke-interface {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->pageTypeChanged(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPageTypeChangedEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 427
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 1

    .line 516
    sget-object v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager$2;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 521
    :cond_0
    invoke-virtual {p0, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->handleStartMonitoring(Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    return p1

    .line 518
    :cond_1
    invoke-virtual {p0, p2}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->handleStartMonitoring(Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    return p1
.end method

.method public processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeEventListener(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeUser(Lcom/metamoji/ns/NsCollaboUserInfo;)V
    .locals 2

    .line 188
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget v0, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_studentViewingPageInfo:Ljava/util/Map;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_studentViewingPageInfo:Ljava/util/Map;

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->dcUserId:Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->getStudentViewingPageInfos()Ljava/util/List;

    move-result-object p1

    .line 204
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->fireRemoveStudentEvent(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p1

    .line 200
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resetMonitoringState()V
    .locals 2

    const/4 v0, 0x1

    .line 485
    invoke-virtual {p0, v0, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->resetMonitoringState(ZZ)V

    const/4 v1, 0x0

    .line 486
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->resetMonitoringState(ZZ)V

    const-wide/16 v0, 0x0

    .line 487
    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->offsetY:D

    return-void
.end method

.method public resetMonitoringState(ZZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 492
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForGroup:Ljava/util/List;

    goto :goto_0

    .line 494
    :cond_0
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->visibleMonitorIdArrayForUser:Ljava/util/List;

    :goto_0
    if-eqz p2, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_1

    .line 498
    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->zoomForGroup:D

    return-void

    .line 500
    :cond_1
    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->zoomForUser:D

    :cond_2
    return-void
.end method

.method public saveMonitoringInfo()V
    .locals 1

    .line 506
    iget-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->resetMonitoringStateWhenClose:Z

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->resetMonitoringState()V

    const/4 v0, 0x0

    .line 508
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->resetMonitoringStateWhenClose:Z

    :cond_0
    return-void
.end method

.method schoolTeacherModeMonitoring(Lcom/metamoji/nt/NtEditorWindowController;)Z
    .locals 3

    .line 588
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 592
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 593
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 603
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v0

    .line 604
    const-string v1, "system:edit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "system:personal"

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 606
    :cond_3
    sget-object v0, Lcom/metamoji/nt/NtNoteController$TargetLayerType;->COMMON:Lcom/metamoji/nt/NtNoteController$TargetLayerType;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtNoteController;->changeTargetLayer(Lcom/metamoji/nt/NtNoteController$TargetLayerType;)V

    .line 609
    :cond_4
    new-instance p1, Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-direct {p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;-><init>()V

    .line 610
    const-string v0, "ScMonitorList"

    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->safeShow(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public screenLockChanged(Z)V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter v0

    .line 477
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 478
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 481
    invoke-interface {v1, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->screenLockChanged(Z)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 478
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDisplayMonitorType(I)V
    .locals 2

    .line 76
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 77
    const-string v1, "MMJNtSchoolMonitoringDisplayType"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    return-void
.end method

.method public startReceivingData(Ljava/lang/String;)V
    .locals 3

    .line 354
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataStartedEvent;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataStartedEvent;-><init>()V

    .line 355
    iput-object p1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataStartedEvent;->layerId:Ljava/lang/String;

    .line 358
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter p1

    .line 359
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 360
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 363
    invoke-interface {v1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->startReceivingData(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringReceivingDataStartedEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 360
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public studentViewingPageChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 233
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_studentViewingPageInfo:Ljava/util/Map;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_studentViewingPageInfo:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;

    if-eqz v1, :cond_1

    .line 240
    iput-object p1, v1, Lcom/metamoji/forSchool/monitoring/ScStudentViewingPageInfo;->pageId:Ljava/lang/String;

    .line 242
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->fireStudentViewingPageChangedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 242
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateHiddenStudentName(Z)V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter v0

    .line 466
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 467
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 470
    invoke-interface {v1, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->updateHiddenStudentName(Z)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 467
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updatePageJumpState()V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter v0

    .line 408
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 409
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 412
    invoke-interface {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->updatePageJumpState()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 409
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updatePersonalUserStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 391
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPersonalUserStatusUpdatedEvent;

    invoke-direct {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPersonalUserStatusUpdatedEvent;-><init>()V

    .line 392
    iput-object p1, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPersonalUserStatusUpdatedEvent;->userId:Ljava/lang/String;

    .line 393
    iput-object p2, v0, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPersonalUserStatusUpdatedEvent;->status:Ljava/lang/String;

    .line 396
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    monitor-enter p1

    .line 397
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->_eventListeners:Ljava/util/List;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 398
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;

    .line 401
    invoke-interface {p2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener;->updatePersonalUserStatus(Lcom/metamoji/forSchool/monitoring/ScMonitoringEventListener$ScMonitoringPersonalUserStatusUpdatedEvent;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 398
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
