.class public Lcom/metamoji/un/web/UnWebUnitContainerExtender;
.super Lcom/metamoji/un/image/UnImageUnitContainerExtender;
.source "UnWebUnitContainerExtender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;-><init>()V

    return-void
.end method

.method private handleAddWebUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 2

    .line 187
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/un/web/UnWebUnitContainerExtender$2;-><init>(Lcom/metamoji/un/web/UnWebUnitContainerExtender;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleChangeWebPage(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 1

    .line 219
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object p1

    .line 220
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 222
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/metamoji/un/web/UnWebUnit;

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/web/UnWebUnit;

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/metamoji/un/web/UnWebUnit;->updateWebPage()V

    :cond_0
    return-void
.end method

.method private handleUpdateWebPageIntenal(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 122
    const-string/jumbo v0, "unitId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-virtual {p2, v0}, Lcom/metamoji/nt/NtNoteController;->findUnitById(Ljava/lang/String;)Lcom/metamoji/nt/NtUnitController;

    move-result-object p2

    const-class v0, Lcom/metamoji/un/web/UnWebUnit;

    invoke-static {p2, v0}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/web/UnWebUnit;

    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p2}, Lcom/metamoji/un/web/UnWebUnit;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtUnitController;

    .line 127
    invoke-virtual {v0, p2}, Lcom/metamoji/nt/NtUnitController;->selectUnit(Lcom/metamoji/nt/NtUnitController;)V

    .line 130
    const-string/jumbo v0, "url"

    const-string v2, "https://www.google.com"

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    const-string v2, "imageSource"

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/Blob;

    .line 134
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/metamoji/un/web/UnWebUnitContainerExtender$1;-><init>(Lcom/metamoji/un/web/UnWebUnitContainerExtender;Lcom/metamoji/cm/Blob;Lcom/metamoji/un/web/UnWebUnit;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public commandsForChildUnit(Lcom/metamoji/nt/NtUnitController;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtUnitController;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtUnitCommandInfo;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$web"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    invoke-static {}, Lcom/metamoji/nt/pm/PmNoBrowsingMushroom;->isMushroomEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v2

    sget-object v4, Lcom/metamoji/nt/NtFeature;->AppUnavailableWebUnit:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v2, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    new-instance v2, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_WEBPAGE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_OPEN_IN_BROWSER:I

    .line 47
    invoke-virtual {p1, v5}, Lcom/metamoji/nt/NtUnitController;->loadResourceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5, v1, v3}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    new-instance v2, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_EDIT_WEBIMAGE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_EditWebPage:I

    .line 56
    invoke-virtual {p1, v5}, Lcom/metamoji/nt/NtUnitController;->loadResourceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5, v1, v3}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 58
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v2, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_DISPLAY_QR_CODE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DISPLAY_QR_CODE:I

    .line 65
    invoke-virtual {p1, v5}, Lcom/metamoji/nt/NtUnitController;->loadResourceString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v4, p1, v1, v3}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 67
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    return-object v1
.end method

.method protected createImageUnitModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Lcom/metamoji/cm/CmContext;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 173
    invoke-static {p1, p2}, Lcom/metamoji/un/web/UnWebUnit;->createWebModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 174
    const-string/jumbo p2, "url"

    const-string v0, "https://www.google.com"

    invoke-virtual {p3, p2, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 175
    const-string p3, "requestURL"

    invoke-interface {p1, p3, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)Z
    .locals 2

    .line 85
    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->name()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "command = %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/metamoji/un/web/UnWebUnitContainerExtender$3;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    invoke-static {p3}, Lcom/metamoji/forSchool/qrcode/ScQRCodeCommand;->handleDisplayQRCode(Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 98
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/web/UnWebUnitContainerExtender;->handleUpdateWebPageIntenal(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 95
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/un/web/UnWebUnitContainerExtender;->handleEditImage(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 92
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/web/UnWebUnitContainerExtender;->handleChangeWebPage(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 89
    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/web/UnWebUnitContainerExtender;->handleAddWebUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0
.end method
