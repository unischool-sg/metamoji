.class public Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;
.super Ljava/lang/Object;
.source "UnDummyUnitContainerExtender.java"

# interfaces
.implements Lcom/metamoji/nt/INtUnitContainerExtender;


# static fields
.field static _position:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commandsForChildUnit(Lcom/metamoji/nt/NtUnitController;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method find_dummy_unit_model(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 158
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$dummy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 161
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 162
    invoke-virtual {p0, p1}, Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;->find_dummy_unit_model(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 161
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method handleAddDummyUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 4

    .line 66
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/metamoji/un/dummy/UnDummyUnit;->createNewDummyUnitModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "width"

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 71
    const-string v1, "height"

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    if-nez p1, :cond_0

    .line 75
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 78
    :cond_0
    const-string/jumbo v1, "tapPos"

    sget-object v2, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->CENTERCENTER:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 80
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 81
    const-string/jumbo v2, "toFocus"

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p2, v0, p1}, Lcom/metamoji/nt/NtUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method handleAddImageUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 4

    if-nez p1, :cond_0

    .line 89
    const-string p1, "No context, No image."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    const-string v0, "image"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/Blob;

    if-nez v0, :cond_1

    .line 94
    const-string p1, "No image data."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_1
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v2

    .line 100
    invoke-virtual {v0}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->registerAttachment(Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    .line 103
    invoke-static {v1, v0}, Lcom/metamoji/un/image/UnImageUnit;->createImageModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "width"

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 107
    const-string v1, "height"

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 111
    sget v1, Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;->_position:I

    invoke-static {v1}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->valueOf(I)Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    move-result-object v1

    const-string/jumbo v2, "tapPos"

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    sget v1, Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;->_position:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;->_position:I

    .line 115
    const-string/jumbo v1, "toFocus"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p2, v0, p1}, Lcom/metamoji/nt/NtUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method handleAddPageAndImage(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 8

    if-nez p1, :cond_0

    .line 171
    const-string p1, "No context, No image."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_0
    const-string v0, "image"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/Blob;

    if-nez v0, :cond_1

    .line 176
    const-string p1, "No image data."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v2, v0

    .line 181
    :try_start_0
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 182
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v3

    .line 183
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/nt/NtDocumentTemplate;->newPage(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 184
    invoke-virtual {p0, v4}, Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;->find_dummy_unit_model(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 186
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object p2

    .line 187
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v2, v6, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->registerAttachment(Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 189
    invoke-static {v3, p2}, Lcom/metamoji/un/image/UnImageUnit;->createImageModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 192
    const-string/jumbo v1, "width"

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    invoke-interface {p2, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 193
    const-string v1, "height"

    invoke-interface {p2, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 197
    const-string/jumbo v1, "tapPos"

    sget-object v2, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->CENTERCENTER:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    const-string/jumbo v1, "toFocus"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    invoke-interface {v5, p2}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/nt/NtNoteController;->addPagesCore(Ljava/util/List;ILjava/lang/String;ZZZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 209
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method handleAddTextUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 3

    .line 122
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender$1;-><init>(Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;)V

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez p1, :cond_0

    .line 147
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 150
    :cond_0
    const-string/jumbo v1, "tapPos"

    sget-object v2, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->CENTERCENTER:Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 152
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 153
    const-string/jumbo v2, "toFocus"

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p2, v0, p1}, Lcom/metamoji/nt/NtUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)Z
    .locals 2

    .line 41
    sget-object v0, Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender$2;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;->handleAddPageAndImage(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 49
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;->handleAddTextUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 43
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/un/dummy/UnDummyUnitContainerExtender;->handleAddDummyUnit(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0
.end method
