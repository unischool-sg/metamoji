.class Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;
.super Ljava/lang/Object;
.source "DrGroupDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrGroupInternal"
.end annotation


# instance fields
.field elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation
.end field

.field executionType:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

.field groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field m_memberMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;",
            ">;"
        }
    .end annotation
.end field

.field model:Lcom/metamoji/df/model/IModel;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->m_memberMap:Ljava/util/HashMap;

    .line 154
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    return-void
.end method


# virtual methods
.method addMember(Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->m_memberMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->saveMemberToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;)V

    :cond_0
    return-void
.end method

.method checkMemberWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->m_memberMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method getAllMembers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->m_memberMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getMemberWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->m_memberMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;

    return-object p1
.end method

.method memberCount()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->m_memberMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method removeAllMembers()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->removeAllMembersFromModel(Lcom/metamoji/df/model/IModel;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->m_memberMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method removeAllMembersFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 330
    const-string v0, "m"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 332
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 333
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    :cond_0
    return-void
.end method

.method removeMemberFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 1

    .line 323
    const-string v0, "m"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 325
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_0
    return-void
.end method

.method removeMemberWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->m_memberMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->removeMemberFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->m_memberMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method restoreFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 241
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->model:Lcom/metamoji/df/model/IModel;

    .line 244
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    .line 247
    const-string v0, "g"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 250
    const-string v0, "m"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->allPropertyNames(Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 255
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->arrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 267
    :cond_2
    new-instance v3, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;

    invoke-direct {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;-><init>()V

    .line 268
    iput-object v1, v3, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 269
    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->setProperties(Ljava/util/List;)V

    .line 270
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->m_memberMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method saveAllMembersToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 300
    const-string v0, "m"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 302
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 303
    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->m_memberMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;

    .line 306
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method saveExecutionTypeToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    const-string/jumbo v2, "t"

    if-ne v0, v1, :cond_0

    .line 285
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 287
    :cond_0
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveGroupIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "g"

    if-eqz v0, :cond_0

    .line 293
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 295
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveMemberToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;)V
    .locals 2

    .line 311
    const-string v0, "m"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-nez v1, :cond_0

    .line 313
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 314
    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 316
    :cond_0
    iget-object p1, p2, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->getProperties()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->saveExecutionTypeToModel(Lcom/metamoji/df/model/IModel;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->saveGroupIdToModel(Lcom/metamoji/df/model/IModel;)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->saveAllMembersToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method
