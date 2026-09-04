.class public Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;
.super Ljava/lang/Object;
.source "ScOfflineEditManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;
    }
.end annotation


# static fields
.field private static _sharedInstance:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasOfflineEditLayerForRootModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    .line 362
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v0

    .line 363
    new-instance v1, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$3;

    invoke-direct {v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$3;-><init>()V

    .line 374
    invoke-static {p0, v0, v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->offlineLayerIdentifiers(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;)Ljava/util/Map;

    move-result-object p0

    .line 376
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isRoomClosed()Z

    move-result v0

    .line 379
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEnabledStatusView()Z
    .locals 5

    .line 419
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 420
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 424
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 425
    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 433
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v3

    sget-object v4, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->OFFLINE_EDIT:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v3, v4, :cond_3

    .line 434
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 438
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v1

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->COLLABO:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    if-ne v1, v3, :cond_4

    .line 439
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v1, v3, :cond_4

    return v2

    .line 443
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->roomMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 444
    const-string v1, "readonly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    :goto_0
    return v2
.end method

.method static offlineLayerIdentifiers(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Lcom/metamoji/df/controller/ModelTraverser;",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 396
    new-instance v1, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;

    sget-object v2, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->CollectModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-direct {v1, p2, v0, v2}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;)V

    .line 398
    invoke-virtual {p1, p0, v1}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-object v0
.end method

.method public static sharedInstance()Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;
    .locals 1

    .line 46
    sget-object v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->_sharedInstance:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    invoke-direct {v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;-><init>()V

    sput-object v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->_sharedInstance:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    .line 49
    :cond_0
    sget-object v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->_sharedInstance:Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;

    return-object v0
.end method

.method static visitModelForLayerId(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 2

    .line 409
    check-cast p1, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;

    .line 411
    const-string v0, "layerType"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    const-string v1, "system:offline_personal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "layerId"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getIdTable()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public endOfflineEditMode()V
    .locals 3

    .line 186
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    new-instance v2, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$1;-><init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/nt/NtNoteController;)V

    .line 247
    invoke-static {v2}, Lcom/metamoji/ns/NsCollaboCommand;->collaboReceiveAllDataExec(Lcom/metamoji/ns/INsCollaboAction;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public hideOfflineEditModeInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->updateOfflineEditModeInfoLabel(Ljava/lang/String;)V

    return-void
.end method

.method public isOfflineEditEnabledNote(Lcom/metamoji/nt/NtNoteController;)Z
    .locals 2

    .line 60
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->isExistSchoolPageTypeUser()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isOfflineEditEnabledPage(Lcom/metamoji/nt/NtPageController;)Z
    .locals 2

    .line 74
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public isOfflineEditMode()Z
    .locals 2

    .line 89
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 99
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result v0

    return v0
.end method

.method public reflectOfflineEdit(Lcom/metamoji/nt/NtNoteController;Z)V
    .locals 5

    .line 296
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getNumberOfPages()I

    move-result v0

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 299
    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    .line 303
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 304
    invoke-static {v4}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->hasOfflineEditLayerForRootModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    :cond_1
    new-instance v0, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$2;-><init>(Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;ZLcom/metamoji/nt/NtNoteController;)V

    .line 347
    new-instance p1, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;

    invoke-direct {p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;-><init>()V

    .line 348
    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    invoke-direct {v2, p1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 349
    invoke-virtual {p1, v2}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;->setBgTask(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;)V

    .line 350
    invoke-virtual {p1, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager$reflectOfflineEditFinished;->setAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 351
    invoke-virtual {v2, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->setTargetPageControllers(Ljava/util/List;)V

    .line 352
    invoke-virtual {v2, p2}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->setRemoveMode(Z)V

    .line 353
    invoke-virtual {v2}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->doInBackground()V

    return-void
.end method

.method public startOfflineEditMode()V
    .locals 2

    .line 105
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditEnabledNote(Lcom/metamoji/nt/NtNoteController;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->setIsOfflineEditMode(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateOfflineEditModeInfo(Z)V
    .locals 2

    .line 124
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_4

    .line 134
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 136
    invoke-virtual {p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 137
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_OFFLINE_EDITTING:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->updateOfflineEditModeInfoLabel(Ljava/lang/String;)V

    return-void

    .line 139
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_START_OFFLINE_EDIT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 140
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_START_OFFLINE_EDIT:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->updateOfflineEditModeInfoLabel(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->hideOfflineEditModeInfo()V

    return-void

    .line 146
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->isOfflineEditMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 147
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_OFFLINE_EDITTING:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->updateOfflineEditModeInfoLabel(Ljava/lang/String;)V

    return-void

    .line 149
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/forSchool/offlineEdit/ScOfflineEditManager;->hideOfflineEditModeInfo()V

    return-void
.end method

.method updateOfflineEditModeInfoLabel(Ljava/lang/String;)V
    .locals 2

    .line 162
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 167
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 170
    invoke-interface {v1, p1}, Lcom/metamoji/nt/INtEditor;->showOfflineEditModeInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->hideOfflineEditModeInfo()V

    .line 176
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 178
    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateSchoolBtn()V

    :cond_2
    :goto_1
    return-void
.end method
