.class public Lcom/metamoji/nt/NtUnitStateManager;
.super Ljava/lang/Object;
.source "NtUnitStateManager.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboUserInfo;
.implements Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;


# static fields
.field private static s_sharedInstance:Lcom/metamoji/nt/NtUnitStateManager;


# instance fields
.field private _docEditting:Z

.field private _editUserCheckTimer:Ljava/util/Timer;

.field private _editUserInfoArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtUnitEditUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _unitsInCurrentPage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/nt/NtUnitController;",
            ">;"
        }
    .end annotation
.end field

.field private _userPropertyChangedListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget_editUserCheckTimer(Lcom/metamoji/nt/NtUnitStateManager;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserCheckTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_editUserCheckTimer(Lcom/metamoji/nt/NtUnitStateManager;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserCheckTimer:Ljava/util/Timer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCollaboPropertyChanged(Lcom/metamoji/nt/NtUnitStateManager;Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtUnitStateManager;->handleCollaboPropertyChanged(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveAllEditUserInfo(Lcom/metamoji/nt/NtUnitStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitStateManager;->removeAllEditUserInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopUserCheckTimer(Lcom/metamoji/nt/NtUnitStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitStateManager;->stopUserCheckTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtimerCheckEditUser(Lcom/metamoji/nt/NtUnitStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitStateManager;->timerCheckEditUser()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 487
    iput-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_userPropertyChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_unitsInCurrentPage:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_docEditting:Z

    .line 57
    iput-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserCheckTimer:Ljava/util/Timer;

    return-void
.end method

.method private checkEditUserEnabled()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 593
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitStateManager$4;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtUnitStateManager$4;-><init>(Lcom/metamoji/nt/NtUnitStateManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCollaboEditUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 291
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArray()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 296
    iget-object v2, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    new-instance p1, Ljava/lang/String;

    iget-object v0, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getEditUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/NtUnitEditUserInfo;
    .locals 3

    .line 693
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtUnitEditUserInfo;

    .line 694
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getEditUserInfos(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtUnitEditUserInfo;",
            ">;"
        }
    .end annotation

    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 730
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtUnitEditUserInfo;

    .line 731
    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 732
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getEditUserInfosWithExceptUnitId(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtUnitEditUserInfo;",
            ">;"
        }
    .end annotation

    .line 708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 710
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtUnitEditUserInfo;

    .line 712
    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 714
    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 715
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private handleCollaboPropertyChanged(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
    .locals 3

    .line 103
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 126
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_5

    .line 130
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtUnitEditUserInfo;

    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/metamoji/nt/NtUnitStateManager;->removeEditUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 141
    :cond_3
    const-string v1, "privateLayer"

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 142
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->receiveInvoker()Lcom/metamoji/ns/direction/NsRecvInvoker;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/NtUnitStateManager$1;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtUnitStateManager$1;-><init>(Lcom/metamoji/nt/NtUnitStateManager;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void

    .line 154
    :cond_4
    const-string v1, "recordingSoundUnit"

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->receiveInvoker()Lcom/metamoji/ns/direction/NsRecvInvoker;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitStateManager$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtUnitStateManager$2;-><init>(Lcom/metamoji/nt/NtUnitStateManager;Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private isCurrentPageController(Lcom/metamoji/df/controller/DfPageController;)Z
    .locals 1

    if-eqz p1, :cond_4

    .line 461
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private removeAllEditUserInfo()V
    .locals 2

    .line 420
    invoke-static {}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->hideAllLabels()V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    monitor-enter v0

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 427
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static sharedInstance()Lcom/metamoji/nt/NtUnitStateManager;
    .locals 1

    .line 64
    sget-object v0, Lcom/metamoji/nt/NtUnitStateManager;->s_sharedInstance:Lcom/metamoji/nt/NtUnitStateManager;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/metamoji/nt/NtUnitStateManager;

    invoke-direct {v0}, Lcom/metamoji/nt/NtUnitStateManager;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtUnitStateManager;->s_sharedInstance:Lcom/metamoji/nt/NtUnitStateManager;

    .line 68
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtUnitStateManager;->s_sharedInstance:Lcom/metamoji/nt/NtUnitStateManager;

    return-object v0
.end method

.method private stopUserCheckTimer()V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 682
    iput-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserCheckTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private timerCheckEditUser()V
    .locals 7

    .line 617
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitStateManager;->stopUserCheckTimer()V

    .line 619
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 624
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArray()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 626
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_2

    .line 630
    :cond_1
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    monitor-enter v1

    .line 631
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_6

    .line 634
    iget-object v3, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtUnitEditUserInfo;

    .line 638
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 640
    iget-boolean v6, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->isPrivateLayer:Z

    if-nez v6, :cond_2

    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 661
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 663
    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->hideLabel(Ljava/lang/String;)V

    .line 667
    :cond_4
    iget-object v3, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 668
    iget-object v3, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 672
    :cond_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 628
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitStateManager;->removeAllEditUserInfo()V

    return-void
.end method


# virtual methods
.method public addEditUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    monitor-enter v0

    .line 343
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtUnitStateManager;->getEditUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/NtUnitEditUserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 346
    monitor-exit v0

    return-void

    .line 349
    :cond_0
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtUnitEditUserInfo;->createUnitEditUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/NtUnitEditUserInfo;

    move-result-object v1

    .line 352
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtUnitStateManager;->getEditUserInfosWithExceptUnitId(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 354
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtUnitEditUserInfo;

    .line 355
    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/metamoji/nt/NtUnitStateManager;->removeEditUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 367
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_unitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_unitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    if-eqz p1, :cond_2

    .line 373
    invoke-static {}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 375
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtUnitStateManager;->getCollaboEditUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->showLabel(Ljava/lang/String;Lcom/metamoji/nt/NtUnitController;Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 361
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addUnitInPage(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/df/controller/DfPageController;)V
    .locals 6

    .line 198
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 203
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 208
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    goto :goto_1

    .line 221
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getUnitId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 227
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtUnitStateManager;->isCurrentPageController(Lcom/metamoji/df/controller/DfPageController;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    .line 233
    :cond_6
    iget-object p2, p0, Lcom/metamoji/nt/NtUnitStateManager;->_unitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtUnitStateManager;->getEditUserInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 237
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 239
    invoke-static {}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtUnitEditUserInfo;

    .line 243
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 244
    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/metamoji/nt/NtUnitStateManager;->getCollaboEditUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "label"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v4, "userid"

    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :cond_7
    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->showLabelWithLabels(Ljava/util/List;Lcom/metamoji/nt/NtUnitController;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public checkRestoreEditUserInfo()V
    .locals 6

    .line 313
    invoke-static {}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 320
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtUnitEditUserInfo;

    .line 321
    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->userId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 322
    iget-object v4, p0, Lcom/metamoji/nt/NtUnitStateManager;->_unitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    iget-object v4, p0, Lcom/metamoji/nt/NtUnitStateManager;->_unitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtUnitController;

    if-eqz v4, :cond_0

    .line 326
    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/metamoji/nt/NtUnitStateManager;->getCollaboEditUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v4, v3}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->showLabel(Ljava/lang/String;Lcom/metamoji/nt/NtUnitController;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getUnitsInPage()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/metamoji/nt/NtUnitController;",
            ">;"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_unitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isEdittingByOtherUsers(Ljava/lang/String;)Z
    .locals 5

    .line 436
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 441
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userId()Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v2, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtUnitEditUserInfo;

    .line 445
    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public onDocumentEditEnd()V
    .locals 2

    .line 539
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitStateManager;->stopUserCheckTimer()V

    .line 542
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitStateManager;->removeAllEditUserInfo()V

    .line 545
    iget-boolean v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_docEditting:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_docEditting:Z

    .line 550
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_unitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 554
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 555
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmTaskManager;->removeOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    .line 558
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/NsCollaboManager;->removeUserInfoHandler(Lcom/metamoji/ns/INsCollaboUserInfo;)V

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_userPropertyChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    if-eqz v0, :cond_3

    .line 565
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 567
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 569
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 571
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_userPropertyChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->removeUserPropertyChangedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    :cond_2
    const/4 v0, 0x0

    .line 575
    iput-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_userPropertyChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    :cond_3
    :goto_0
    return-void
.end method

.method public onDocumentEditStart()V
    .locals 2

    .line 493
    iget-boolean v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_docEditting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 496
    iput-boolean v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_docEditting:Z

    .line 499
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 509
    invoke-virtual {v1, p0}, Lcom/metamoji/cm/CmTaskManager;->addOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    .line 511
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->initialize()V

    .line 512
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 515
    invoke-virtual {v1, p0}, Lcom/metamoji/ns/NsCollaboManager;->addUserInfoHandler(Lcom/metamoji/ns/INsCollaboUserInfo;)V

    .line 518
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_userPropertyChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    if-nez v1, :cond_1

    .line 521
    new-instance v1, Lcom/metamoji/nt/NtUnitStateManager$3;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtUnitStateManager$3;-><init>(Lcom/metamoji/nt/NtUnitStateManager;)V

    iput-object v1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_userPropertyChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 526
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->addUserPropertyChangedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onIdle()V
    .locals 0

    return-void
.end method

.method public removeEditUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    monitor-enter v0

    .line 397
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtUnitStateManager;->getEditUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/nt/NtUnitEditUserInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 401
    monitor-exit v0

    return-void

    .line 405
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 407
    invoke-virtual {v1, p2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->hideLabel(Ljava/lang/String;)V

    .line 411
    :cond_1
    iget-object p2, p0, Lcom/metamoji/nt/NtUnitStateManager;->_editUserInfoArray:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 412
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeUnitInPage(Lcom/metamoji/nt/NtUnitController;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getUnitId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_unitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitStateManager;->_unitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-static {}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->hideLabelWithUnit(Lcom/metamoji/nt/NtUnitController;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateCollaboUserInfo()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitStateManager;->checkEditUserEnabled()V

    return-void
.end method

.method public updateEditUserInfos()V
    .locals 1

    .line 384
    invoke-static {}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->updateLabels()V

    :cond_0
    return-void
.end method
