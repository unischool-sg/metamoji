.class public Lcom/metamoji/un/draw2/module/DrModule;
.super Ljava/lang/Object;
.source "DrModule.java"


# static fields
.field public static final MODEL_TYPE:Ljava/lang/String; = "M"


# instance fields
.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 6

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 40
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object p1

    if-nez p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    new-instance v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setLinkageManager(Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;)V

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object p1

    if-nez p1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    new-instance v0, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;-><init>()V

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setIntervalManager(Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;)V

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    new-instance v1, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    invoke-direct {v1, v0}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;-><init>(Lcom/metamoji/cm/RectEx;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setMeshManager(Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;)V

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->cancelInitialization()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_2

    .line 63
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object p1

    if-nez p1, :cond_6

    .line 65
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 66
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-string v1, "SM"

    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-nez p1, :cond_5

    .line 68
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->newEmptyStyleManagerModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 69
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_4
    move-object p1, v0

    .line 72
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    new-instance v2, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->idPrefix()J

    move-result-wide v3

    invoke-direct {v2, p1, v3, v4}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;-><init>(Lcom/metamoji/df/model/IModel;J)V

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setStyleManager(Lcom/metamoji/un/draw2/library/style/DrStStyleManager;)V

    .line 75
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result p1

    if-nez p1, :cond_6

    .line 76
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->setCleanAlways(Z)V

    .line 81
    :cond_6
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->cancelInitialization()Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_2

    .line 86
    :cond_7
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object p1

    if-nez p1, :cond_a

    .line 88
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 89
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-string v1, "EM"

    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-nez p1, :cond_9

    .line 91
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->newEmptyElementManagerModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 92
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    :cond_8
    move-object p1, v0

    .line 95
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    new-instance v2, Lcom/metamoji/un/draw2/module/element/DrElementManager;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->idPrefix()J

    move-result-wide v4

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;-><init>(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;J)V

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setElementManager(Lcom/metamoji/un/draw2/module/element/DrElementManager;)V

    .line 99
    :cond_a
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->cancelInitialization()Z

    move-result p1

    if-eqz p1, :cond_b

    goto/16 :goto_2

    .line 104
    :cond_b
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->clean()V

    .line 107
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object p1

    if-nez p1, :cond_e

    .line 109
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 110
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-string v0, "GM"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-nez p1, :cond_c

    .line 112
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->newEmptyGroupManagerModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 113
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_c
    move-object v0, p1

    .line 116
    :cond_d
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    new-instance v1, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->idPrefix()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;-><init>(Lcom/metamoji/df/model/IModel;J)V

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setGroupManager(Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;)V

    .line 120
    :cond_e
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->cancelInitialization()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_2

    .line 125
    :cond_f
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object p1

    if-nez p1, :cond_10

    .line 126
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    new-instance v0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setCommandManager(Lcom/metamoji/un/draw2/module/command/DrCommandManager;)V

    .line 130
    :cond_10
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object p1

    if-nez p1, :cond_11

    .line 131
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    new-instance v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->idPrefix()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;J)V

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setSelectionManager(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;)V

    :cond_11
    :goto_2
    return-void
.end method

.method public static getElementManagerModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 189
    :cond_0
    const-string v0, "EM"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static newEmptyModuleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 198
    const-string v0, "M"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 200
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static newModuleModelWithElementManagerModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 212
    invoke-static {p3}, Lcom/metamoji/un/draw2/module/DrModule;->newEmptyModuleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 214
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p1

    :cond_0
    if-eqz p0, :cond_1

    .line 217
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    const-string v0, "EM"

    invoke-static {v0, p0, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 220
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 221
    const-string p0, "SM"

    invoke-static {p0, p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 223
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 224
    const-string p0, "GM"

    invoke-static {p0, p2, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_3
    return-object p3
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->destroy()V

    .line 144
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setCommandManager(Lcom/metamoji/un/draw2/module/command/DrCommandManager;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->destroy()V

    .line 148
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setSelectionManager(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;)V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->destroy()V

    .line 152
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setLinkageManager(Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;)V

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->destroy()V

    .line 156
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setElementManager(Lcom/metamoji/un/draw2/module/element/DrElementManager;)V

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->destroy()V

    .line 160
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setMeshManager(Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;)V

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 163
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->destroy()V

    .line 164
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setGroupManager(Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;)V

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 167
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->destroy()V

    .line 168
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setStyleManager(Lcom/metamoji/un/draw2/library/style/DrStStyleManager;)V

    .line 170
    :cond_6
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 171
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->destroy()V

    .line 172
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setIntervalManager(Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;)V

    .line 174
    :cond_7
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/DrModule;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    return-void
.end method
