.class public Lcom/metamoji/un/text/UnTextUnitContainerExtender;
.super Ljava/lang/Object;
.source "UnTextUnitContainerExtender.java"

# interfaces
.implements Lcom/metamoji/nt/INtUnitContainerExtender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commandsForChildUnit(Lcom/metamoji/nt/NtUnitController;)Ljava/util/List;
    .locals 7
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

    .line 35
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 36
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_TEXTUNIT_STYLE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    new-instance v3, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_TEXTUNIT_STYLE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextUnitStyle:I

    .line 41
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 58
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v3

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_TEXTUNIT_STYLE_TO_SYSTEM:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 61
    new-instance v4, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v5, Lcom/metamoji/nt/NtCommand;->CMD_TEXTUNIT_STYLE_TO_SYSTEM:Lcom/metamoji/nt/NtCommand;

    sget v6, Lcom/metamoji/noteanytime/R$string;->ContextMenu_TextUnitStyle_To_System:I

    .line 63
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3, v1, v2}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v3

    sget-object v4, Lcom/metamoji/nt/NtFeature;->AppUseQRCodeReader:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 78
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->extractText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 80
    new-instance p1, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_DISPLAY_QR_CODE:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DISPLAY_QR_CODE:I

    .line 82
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v4, v3, v1, v2}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    if-nez v0, :cond_3

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0

    :cond_5
    return-object v1
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)Z
    .locals 6

    .line 108
    sget-object v0, Lcom/metamoji/un/text/UnTextUnitContainerExtender$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return v0

    .line 157
    :cond_0
    invoke-static {p3}, Lcom/metamoji/forSchool/qrcode/ScQRCodeCommand;->handleDisplayQRCode(Lcom/metamoji/nt/NtUnitController;)V

    return v1

    .line 144
    :cond_1
    invoke-virtual {p3}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object p1

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne v1, p2, :cond_2

    .line 146
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    .line 147
    instance-of p2, p1, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz p2, :cond_2

    .line 148
    check-cast p1, Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->commandTextUnitStyle()V

    :cond_2
    return v1

    .line 112
    :cond_3
    invoke-virtual {p3}, Lcom/metamoji/nt/NtUnitController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    .line 113
    invoke-virtual {p3}, Lcom/metamoji/nt/NtUnitController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 117
    invoke-virtual {p3}, Lcom/metamoji/nt/NtUnitController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, -0x8

    .line 118
    invoke-virtual {p3}, Lcom/metamoji/nt/NtUnitController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, -0x8

    .line 120
    const-string/jumbo v4, "width"

    invoke-interface {p1, v4}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 121
    invoke-interface {p1, v4, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 122
    :cond_4
    const-string v2, "height"

    invoke-interface {p1, v2}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 123
    invoke-interface {p1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    :cond_5
    if-nez p2, :cond_6

    .line 127
    new-instance p2, Lcom/metamoji/cm/CmContext;

    invoke-direct {p2}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 130
    :cond_6
    const-string/jumbo v2, "tapPos"

    sget-object v3, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->LEFTTOP:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {p2, v2, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string/jumbo v2, "toFocus"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string/jumbo v2, "toSelect"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p3, p1, p2}, Lcom/metamoji/nt/NtUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V

    return v1
.end method
