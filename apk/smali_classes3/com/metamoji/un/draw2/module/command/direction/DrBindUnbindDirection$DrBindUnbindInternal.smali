.class Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;
.super Ljava/lang/Object;
.source "DrBindUnbindDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrBindUnbindInternal"
.end annotation


# instance fields
.field private m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_nextLinkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

.field private m_prevLinkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;-><init>()V

    return-void
.end method

.method public static getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 117
    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method public static getNextLinkageFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/linkage/DrLinkage;
    .locals 1

    .line 121
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->restoreFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p0

    return-object p0
.end method

.method public static getNextLinkageModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 137
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static getPrevLinkageFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/linkage/DrLinkage;
    .locals 1

    .line 129
    const-string v0, "p"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->restoreFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p0

    return-object p0
.end method

.method public static getPrevLinkageModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 141
    const-string v0, "p"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static setNextLinkageModelToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 148
    const-string v0, "n"

    if-eqz p1, :cond_0

    .line 149
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 151
    :cond_0
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setPrevLinkageModelToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 156
    const-string v0, "p"

    if-eqz p1, :cond_0

    .line 157
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 159
    :cond_0
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method


# virtual methods
.method elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method model()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method nextLinkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_nextLinkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    return-object v0
.end method

.method prevLinkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_prevLinkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    return-object v0
.end method

.method public restoreFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_model:Lcom/metamoji/df/model/IModel;

    .line 65
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 66
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->getNextLinkageFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_nextLinkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    .line 67
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->getPrevLinkageFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_prevLinkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    return-void
.end method

.method public saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "i"

    if-eqz v0, :cond_0

    .line 81
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 83
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public saveNextLinkageToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_nextLinkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    const-string v1, "n"

    if-eqz v0, :cond_1

    .line 89
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 92
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_nextLinkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->saveToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    return-void

    .line 96
    :cond_1
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public savePrevLinkageToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_prevLinkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    const-string v1, "p"

    if-eqz v0, :cond_1

    .line 102
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 105
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_prevLinkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->saveToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    return-void

    .line 109
    :cond_1
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public saveToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->saveNextLinkageToModel(Lcom/metamoji/df/model/IModel;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->savePrevLinkageToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method setModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method setNextLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_nextLinkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    return-void
.end method

.method setPrevLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->m_prevLinkage:Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    return-void
.end method
