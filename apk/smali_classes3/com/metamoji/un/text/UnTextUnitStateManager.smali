.class public Lcom/metamoji/un/text/UnTextUnitStateManager;
.super Ljava/lang/Object;
.source "UnTextUnitStateManager.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboUserInfo;
.implements Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;


# static fields
.field public static final MMJUNTEXT_STATEMANAGER_LOSTFOCUSPREFIX:Ljava/lang/String; = "[!lostfocus]"

.field private static s_sharedInstance:Lcom/metamoji/un/text/UnTextUnitStateManager;


# instance fields
.field _collaboModifiedOnIdle:Z

.field private _docEditting:Z

.field private _editUserCheckTimer:Ljava/util/Timer;

.field private _editUserInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/text/UnTextUnitEditUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _focusTextUnit:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/un/text/UnTextUnit;",
            ">;"
        }
    .end annotation
.end field

.field private _textUnitsInCurrentPage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/un/text/UnTextUnit;",
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
.method static bridge synthetic -$$Nest$fget_editUserCheckTimer(Lcom/metamoji/un/text/UnTextUnitStateManager;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserCheckTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_editUserCheckTimer(Lcom/metamoji/un/text/UnTextUnitStateManager;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserCheckTimer:Ljava/util/Timer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCollaboPropertyChanged(Lcom/metamoji/un/text/UnTextUnitStateManager;Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->handleCollaboPropertyChanged(Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveAllEditUserInfo(Lcom/metamoji/un/text/UnTextUnitStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->removeAllEditUserInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopUserCheckTimer(Lcom/metamoji/un/text/UnTextUnitStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->stopUserCheckTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtimerCheckEditUser(Lcom/metamoji/un/text/UnTextUnitStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->timerCheckEditUser()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 615
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_userPropertyChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 52
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_focusTextUnit:Ljava/lang/ref/WeakReference;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_docEditting:Z

    .line 56
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserCheckTimer:Ljava/util/Timer;

    return-void
.end method

.method private changeEditStatePropertyWidthUnitId(Ljava/lang/String;Z)V
    .locals 2

    .line 247
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 257
    const-string p1, "[!lostfocus]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    :cond_0
    const-string p1, "editTextUnit"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->changeUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private checkEditUserEnabled()V
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 717
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextUnitStateManager$4;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextUnitStateManager$4;-><init>(Lcom/metamoji/un/text/UnTextUnitStateManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCollaboEditUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 368
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArray()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 373
    iget-object v2, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    new-instance p1, Ljava/lang/String;

    iget-object v0, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getEditUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/un/text/UnTextUnitEditUserInfo;
    .locals 3

    .line 828
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    .line 829
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

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
            "Lcom/metamoji/un/text/UnTextUnitEditUserInfo;",
            ">;"
        }
    .end annotation

    .line 864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 865
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    .line 866
    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 867
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
            "Lcom/metamoji/un/text/UnTextUnitEditUserInfo;",
            ">;"
        }
    .end annotation

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 845
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    .line 847
    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 849
    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 850
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 126
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getUserInfo()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_5

    .line 130
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->removeEditUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 142
    :cond_3
    const-string v1, "editTextUnit"

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 143
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->receiveInvoker()Lcom/metamoji/ns/direction/NsRecvInvoker;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextUnitStateManager$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/text/UnTextUnitStateManager$1;-><init>(Lcom/metamoji/un/text/UnTextUnitStateManager;Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    return-void

    .line 169
    :cond_4
    const-string v1, "privateLayer"

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsUserPropertyChangedEvent;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 170
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->receiveInvoker()Lcom/metamoji/ns/direction/NsRecvInvoker;

    move-result-object p1

    new-instance v0, Lcom/metamoji/un/text/UnTextUnitStateManager$2;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/UnTextUnitStateManager$2;-><init>(Lcom/metamoji/un/text/UnTextUnitStateManager;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private isCurrentPageController(Lcom/metamoji/df/controller/DfPageController;)Z
    .locals 1

    if-eqz p1, :cond_4

    .line 589
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 599
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
    .locals 5

    .line 511
    invoke-static {}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->hideAllLabels()V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    .line 519
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 520
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 523
    invoke-direct {p0, v3, v2}, Lcom/metamoji/un/text/UnTextUnitStateManager;->setCollaboUserToTextUnit(ZLcom/metamoji/un/text/UnTextUnit;)V

    goto :goto_0

    .line 527
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 528
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setCollaboUserToTextUnit(ZLcom/metamoji/un/text/UnTextUnit;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 574
    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/UnTextUnit;->setCollaboOtherEdittingFlag(Z)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 576
    invoke-virtual {p2, p1}, Lcom/metamoji/un/text/UnTextUnit;->setCollaboOtherEdittingFlag(Z)V

    return-void
.end method

.method public static sharedInstance()Lcom/metamoji/un/text/UnTextUnitStateManager;
    .locals 1

    .line 63
    sget-object v0, Lcom/metamoji/un/text/UnTextUnitStateManager;->s_sharedInstance:Lcom/metamoji/un/text/UnTextUnitStateManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/metamoji/un/text/UnTextUnitStateManager;

    invoke-direct {v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;-><init>()V

    sput-object v0, Lcom/metamoji/un/text/UnTextUnitStateManager;->s_sharedInstance:Lcom/metamoji/un/text/UnTextUnitStateManager;

    .line 67
    :cond_0
    sget-object v0, Lcom/metamoji/un/text/UnTextUnitStateManager;->s_sharedInstance:Lcom/metamoji/un/text/UnTextUnitStateManager;

    return-object v0
.end method

.method private stopUserCheckTimer()V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 817
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserCheckTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private timerCheckEditUser()V
    .locals 9

    .line 741
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->stopUserCheckTimer()V

    .line 743
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 748
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArray()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 750
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto/16 :goto_2

    .line 754
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    monitor-enter v2

    .line 755
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_8

    .line 758
    iget-object v4, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    .line 762
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 764
    iget-boolean v8, v6, Lcom/metamoji/ns/NsCollaboUserInfo;->isPrivateLayer:Z

    if-nez v8, :cond_2

    invoke-virtual {v4}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v8

    iget-object v6, v6, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 773
    invoke-virtual {v4}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 776
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 778
    :cond_3
    invoke-virtual {v4}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/metamoji/un/text/UnTextUnitStateManager;->changeEditStatePropertyWidthUnitId(Ljava/lang/String;Z)V

    goto :goto_1

    .line 785
    :cond_4
    invoke-static {}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 787
    invoke-virtual {v4}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->hideLabel(Ljava/lang/String;)V

    .line 791
    :cond_5
    iget-object v5, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 792
    iget-object v5, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 796
    :cond_6
    invoke-virtual {v4}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/metamoji/un/text/UnTextUnitStateManager;->isEdittingByOtherUsers(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 797
    iget-object v5, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 798
    iget-object v5, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v4, :cond_7

    .line 801
    invoke-direct {p0, v7, v4}, Lcom/metamoji/un/text/UnTextUnitStateManager;->setCollaboUserToTextUnit(ZLcom/metamoji/un/text/UnTextUnit;)V

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 807
    :cond_8
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 752
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->removeAllEditUserInfo()V

    return-void
.end method


# virtual methods
.method public addEditUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 421
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnitStateManager;->getEditUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 424
    monitor-exit v0

    return-void

    .line 427
    :cond_0
    invoke-static {p1, p2}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->createTextUnitEditUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    move-result-object v1

    .line 430
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnitStateManager;->getEditUserInfosWithExceptUnitId(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 432
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    .line 433
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/metamoji/un/text/UnTextUnitStateManager;->removeEditUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 445
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 450
    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->setCollaboUserToTextUnit(ZLcom/metamoji/un/text/UnTextUnit;)V

    .line 453
    invoke-static {}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 455
    invoke-direct {p0, p2}, Lcom/metamoji/un/text/UnTextUnitStateManager;->getCollaboEditUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->showLabel(Ljava/lang/String;Lcom/metamoji/un/text/UnTextUnit;Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 439
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addTextUnitInPage(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/df/controller/DfPageController;)V
    .locals 6

    .line 273
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 278
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 283
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 288
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    goto :goto_1

    .line 296
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 302
    invoke-direct {p0, p2}, Lcom/metamoji/un/text/UnTextUnitStateManager;->isCurrentPageController(Lcom/metamoji/df/controller/DfPageController;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    .line 308
    :cond_6
    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->getEditUserInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 312
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 314
    invoke-static {}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 317
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    .line 318
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 319
    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/metamoji/un/text/UnTextUnitStateManager;->getCollaboEditUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "label"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v4, "userid"

    invoke-virtual {v2}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    :cond_7
    invoke-virtual {v0, v1, p1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->showLabelWithLabels(Ljava/util/ArrayList;Lcom/metamoji/un/text/UnTextUnit;)V

    const/4 p2, 0x1

    .line 326
    invoke-direct {p0, p2, p1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->setCollaboUserToTextUnit(ZLcom/metamoji/un/text/UnTextUnit;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public changeEditStateProperty(Lcom/metamoji/un/text/UnTextUnit;Z)V
    .locals 0

    .line 238
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnitStateManager;->changeEditStatePropertyWidthUnitId(Ljava/lang/String;Z)V

    return-void
.end method

.method public checkRestoreEditUserInfo()V
    .locals 6

    .line 390
    invoke-static {}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 394
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 397
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    .line 398
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->userId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 399
    iget-object v4, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    iget-object v4, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    .line 403
    invoke-direct {p0, v5, v4}, Lcom/metamoji/un/text/UnTextUnitStateManager;->setCollaboUserToTextUnit(ZLcom/metamoji/un/text/UnTextUnit;)V

    .line 404
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/metamoji/un/text/UnTextUnitStateManager;->getCollaboEditUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v4, v3}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->showLabel(Ljava/lang/String;Lcom/metamoji/un/text/UnTextUnit;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_focusTextUnit:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    return-object v0
.end method

.method public getOtherEdittingUserIdWithUnitId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 546
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 551
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userId()Ljava/lang/String;

    move-result-object v0

    .line 553
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    .line 555
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 556
    invoke-virtual {v3}, Lcom/metamoji/un/text/UnTextUnitEditUserInfo;->getEditUserId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public isEdittingByOtherUsers(Ljava/lang/String;)Z
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->getOtherEdittingUserIdWithUnitId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isVerticalWriting()Z
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 223
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getTextModel()Lcom/metamoji/un/text/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v0

    return v0
.end method

.method public onDocumentEditEnd()V
    .locals 2

    .line 667
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->stopUserCheckTimer()V

    .line 670
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->removeAllEditUserInfo()V

    .line 673
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_docEditting:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 676
    iput-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_docEditting:Z

    .line 678
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 682
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 683
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmTaskManager;->removeOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    .line 686
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 688
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/NsCollaboManager;->removeUserInfoHandler(Lcom/metamoji/ns/INsCollaboUserInfo;)V

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_userPropertyChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    if-eqz v0, :cond_3

    .line 693
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 695
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 697
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 699
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_userPropertyChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->removeUserPropertyChangedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    :cond_2
    const/4 v0, 0x0

    .line 703
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_userPropertyChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    :cond_3
    :goto_0
    return-void
.end method

.method public onDocumentEditStart()V
    .locals 2

    .line 621
    iget-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_docEditting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 624
    iput-boolean v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_docEditting:Z

    .line 627
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 632
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 637
    invoke-virtual {v1, p0}, Lcom/metamoji/cm/CmTaskManager;->addOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V

    .line 639
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->initialize()V

    .line 640
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 643
    invoke-virtual {v1, p0}, Lcom/metamoji/ns/NsCollaboManager;->addUserInfoHandler(Lcom/metamoji/ns/INsCollaboUserInfo;)V

    .line 646
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 648
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_userPropertyChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    if-nez v1, :cond_1

    .line 649
    new-instance v1, Lcom/metamoji/un/text/UnTextUnitStateManager$3;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextUnitStateManager$3;-><init>(Lcom/metamoji/un/text/UnTextUnitStateManager;)V

    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_userPropertyChangedListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 654
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->addUserPropertyChangedEventListener(Lcom/metamoji/cm/ICmEventHandler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onIdle()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_collaboModifiedOnIdle:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_collaboModifiedOnIdle:Z

    .line 92
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->sendTextUnitData()V

    :cond_0
    return-void
.end method

.method public removeEditUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    monitor-enter v0

    .line 477
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextUnitStateManager;->getEditUserInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/un/text/UnTextUnitEditUserInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 481
    monitor-exit v0

    return-void

    .line 485
    :cond_0
    invoke-static {}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 487
    invoke-virtual {v2, p2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->hideLabel(Ljava/lang/String;)V

    .line 491
    :cond_1
    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_editUserInfoArray:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 492
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->isEdittingByOtherUsers(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 496
    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 497
    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 500
    invoke-direct {p0, p2, p1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->setCollaboUserToTextUnit(ZLcom/metamoji/un/text/UnTextUnit;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 492
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeTextUnitInPage(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_textUnitsInCurrentPage:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static {}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 356
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->hideLabelWithTextUnit(Lcom/metamoji/un/text/UnTextUnit;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public requestKillTextUnitFocus()V
    .locals 1

    .line 878
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->requestKillFocus()V

    :cond_0
    return-void
.end method

.method public requestSuspendProcess()V
    .locals 4

    .line 893
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 897
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 901
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 907
    :cond_2
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->isShowTextUnitLocationView()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 908
    invoke-virtual {v0, v2, v2}, Lcom/metamoji/nt/NtNoteController;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V

    return-void

    .line 910
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 912
    instance-of v3, v1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v3, :cond_4

    .line 913
    move-object v2, v1

    check-cast v2, Lcom/metamoji/un/text/UnTextUnit;

    :cond_4
    if-eqz v2, :cond_5

    .line 918
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->requestKillFocus()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setCollaboModifiedFlagOnIdle(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_collaboModifiedOnIdle:Z

    return-void
.end method

.method public setFocusTextUnit(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v1, 0x0

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/text/UnTextUnitStateManager;->changeEditStateProperty(Lcom/metamoji/un/text/UnTextUnit;Z)V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_focusTextUnit:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 205
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/metamoji/un/text/UnTextUnitStateManager;->_focusTextUnit:Ljava/lang/ref/WeakReference;

    .line 208
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->focusTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->changeEditStateProperty(Lcom/metamoji/un/text/UnTextUnit;Z)V

    :cond_1
    return-void
.end method

.method public updateCollaboUserInfo()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextUnitStateManager;->checkEditUserEnabled()V

    return-void
.end method

.method public updateEditUserInfos()V
    .locals 1

    .line 464
    invoke-static {}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->updateLabels()V

    :cond_0
    return-void
.end method
